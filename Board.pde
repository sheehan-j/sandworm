class Board {
  int size, numOfBoxes, xPos, yPos;
  private int boxSize = 30;

  Board( int xPos, int yPos, int numOfBoxes) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.numOfBoxes = numOfBoxes;
    size = boxSize * numOfBoxes;
  }

  void display() {
    fill(255, 0, 0);
    
    strokeWeight(1);
    
    for (int i = 0; i<= numOfBoxes; i++) {
      line(xPos + (i*boxSize), yPos, xPos + (i*boxSize), yPos + size);
    }

    for (int j = 0; j <= numOfBoxes; j++) {
      line(xPos, yPos + (j*boxSize), xPos + size, yPos + (j*boxSize));
    }
  }
  
  int getBoxSize() {
    return boxSize;
  }
  
  int getXPos(){
    return xPos;
  }
  
  int getYPos(){
    return yPos;
  }
  
  float getTopBound(){
    return yPos;
  }
  
  float getBottomBound(){
    return yPos + size;
  }
  
  float getLeftBound(){
    return xPos;
  }
  
  float getRightBound(){
    return xPos + size;
  }
}
