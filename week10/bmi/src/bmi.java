public class bmi {
	private double h;
	private double w;
	public double getH() {
		return h;
	}
	public void setH(double h) {
		this.h = h;
	}
	public double getW() {
		return w;
	}
	public void setW(double w) {
		this.w = w;
	}
	public double getBMI() {
		h/=100;
		return w/(h*h);
	}
	
}
