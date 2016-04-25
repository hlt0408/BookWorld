package controller;

public class CartItemBean {
    private String strAuthor;
    private String strTitle;
    private double dblUnitCost;
    private int iQuantity;
    private double dblTotalCost;
     
    public String getAuthor() {
        return strAuthor;
    }
    public void setAuthor(String strAuthor) {
        this.strAuthor = strAuthor;
    }
    public String getTitle() {
        return strTitle;
    }
    public void setTitle(String strTitle) {
        this.strTitle = strTitle;
    }
    public double getUnitCost() {
        return dblUnitCost;
    }
    public void setUnitCost(double dblUnitCost) {
        this.dblUnitCost = dblUnitCost;
    }
    public int getQuantity() {
        return iQuantity;
    }
    public void setQuantity(int quantity) {
        iQuantity = quantity;
    }
    public double getTotalCost() {
        return dblTotalCost;
    }
    public void setTotalCost(double dblTotalCost) {
        this.dblTotalCost = dblTotalCost;
    }
}
