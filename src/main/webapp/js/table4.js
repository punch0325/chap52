


class Hero {
	
	constructor() {
		// 아래의 실행문은 content assist를 위함
		/** @type {HTMLTableDataCellElement} */	
		let target = table.rows[10].cells[20];
		target.tabIndex = 1;
		target.style.color = 'hotpink';
		target.style.background = 'lightblue';
		target.innerText = '♥'
		this.target = target;
		
		this.target.onkeydown = e => this.keydown(e);
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

	let hero = new Hero();
	
	table.onclick = function() {
		hero.target.focus()
		console.log("table click...");
	}	
}



