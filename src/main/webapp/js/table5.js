


class Hero {
	static figure = ['★','♥','■','♬','♠','●','♣','▲'];
	static color = [   'Plum',
									'MistyRose',
								    'plum',
								    'lightyellow',
								    'lightblue',
								    'Aquamarine',
								    'White',
								    'Salmon' ]
	
	constructor(row,cell) {
		// 아래의 실행문은 content assist를 위함
		/** @type {HTMLTableDataCellElement} */	
		let target = table.rows[row].cells[cell];
		target.tabIndex = 1;
		do{
			target.style.color = Hero.color[parseInt(Math.random()*8)];
			target.style.background = Hero.color[parseInt(Math.random()*8)];
		}while(target.style.color == target.style.background);
		target.innerText = Hero.figure[parseInt(Math.random()*8)];
//		target.innerText = String.fromCodePoint('A'.charCodeAt(0)+parseInt(Math.random()*26));
		this.target = target;
		
		this.target.onkeydown = e => this.keydown(e);
		this.target.onclick = e => this.click(e);
	}
	
	
	
	/** @param {KeyboardEvent} e */
	keydown(e) {
		console.log(e.key)
		
		switch(e.key) {
			case "ArrowUp":
				this.up();
			break;
			case "ArrowDown":
				this.down();
			break;
			case "ArrowLeft":
				this.left();
			break;
			case "ArrowRight":
				this.right();
			break;
		}
	}
	
	
	
	/** @param {MouseEvent} e */
	click(e){
			e.stopPropagation();
	}
		
		
		
	
	up() {
		console.log("UP...");
	}
	down() {
		console.log("DOWN...");
	}
	left() {
		console.log("LEFT...");
		let hero = this.target;
		let hero_left = hero.previousElementSibling
		if (hero_left!=null) {
			hero_left.remove();
			hero.after(hero_left);
		}
	}
	right() {
		console.log("RIFHT...");
		let hero = this.target;
		let hero_right = hero.nextElementSibling;
		if (hero_right!=null) {
			hero_right.remove();
			hero.before(hero_right);
		}
	}
	
}




window.onload = function() {

	/** @type {HTMLTableElement} */
	let table = document.querySelector("#table");

	let hero1 = new Hero(5,5);
	let hero2 = new Hero(10,10);
	let hero3 = new Hero(15,15);
	let hero4 = new Hero(19,25);
	let hero5 = new Hero(13,39);
	
	
	table.onclick = function() {
		hero1.target.focus()
		console.log("table click...");
	}	
}



