package shixi.project;

public class Aarraylist1 {
    private String name;
    private String eprice;
    private int number;
    private String price;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEprice() {
        return eprice;
    }

    public void setEprice(String eprice) {
        this.eprice = eprice;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Aarraylist1() {
    }

    public Aarraylist1(String name, String eprice, int number, String price) {
        this.name = name;
        this.eprice = eprice;
        this.number = number;
        this.price = price;
    }
}
