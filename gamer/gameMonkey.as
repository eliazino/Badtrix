package 
{

	public class gameMonkey{
		public function gameMonkey(){
			// constructor code
		}
		public function inRange(min:Number, max:Number, val:Number):Boolean{
			if(val > min && val < max){
				return true;
			}else{
				return false;
			}
		}
		public function getAmovement(boardPos:Array, seedX:Number, seedY:Number):int{
			var seedXmin = Math.floor(seedX);
			var seedYmin = Math.floor(seedY);
			var Counter = 0;
			var boards = boardPos;
			while (Counter < 9){
				if((seedXmin == Math.floor(boardPos[Counter][0])) && (seedYmin == Math.floor(boardPos[Counter][1]))){
					break;
				}else{
				}
				Counter += 1;
			}
			var possMo:Array =  getTile(Counter);
			trace("selected board possition: "+Counter.toString());
			var selectedMo = (possMo.length == 1)? possMo[0] : possMo[Math.floor(Math.random() * ((possMo.length-1) - 0 + 1)) + 0];
			trace("selected movement: "+selectedMo.toString());
			return selectedMo;
		}
		public function getTile(tileInd:int):Array{
			var possibleTrips:Array = new Array();
			switch (tileInd){
				case 0:
					possibleTrips[0] = 4;
					break;
				case 1:
					possibleTrips = [3, 5];
					break;
				case 2:
					possibleTrips[0] = 4;
					break;
				case 3:
					possibleTrips = [1, 7];
					break;
				case 4:
					possibleTrips = [0, 2, 6, 8]; 
					break;
				case 5:
					possibleTrips = [1, 7];
					break;
				case 6:
					possibleTrips[0] = 4;
					break;
				case 7:
					possibleTrips = [3, 5];
					break;
				case 8:
					possibleTrips[0] = 4;
					break;
				
			}
			return possibleTrips;
		}
		public function verifyLoc(from:String, to:String):Boolean{
			switch(from){
				//Tile 1
				case "R11" :
					if (to == "R22"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 2;
				case "R12" :
					if (to == "R21" || to == "R23"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 3
				case "R13" :
					if (to == "R22"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 4
				case "R21" :
					if(to == "R12" || to == "R32"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 5
				case "R22" :
					if (to == "R11" || to == "R13" || to == "R33" || to == "R31"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 6
				case "R23" :
					if (to == "R12" || to == "R32"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 7
				case "R31" :
					if (to == "R22"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 8
				case "R32" :
					if (to == "R21" || to == "R23"){
						return true;
					}else{
						return false;
					}
					break;
				//Tile 9
				case "R33" :
					if (to == "R22"){
						return true;
					}else{
						return false;
					}
					break;
				default :
					return false;
					break
			}
		}

	}

}