package _posts;
public class stackheaptest {
    public int n = 5;
    public static void changeIntMethod(int nValue, int nRefn, stackheaptest nRef) {
        System.out.println(nValue);
        System.out.println(nRef.n);
        System.out.println(nRef.n);
        nValue += 10;
        nRefn += 10;
        nRef.n += 10;
        System.out.println(nValue);
        System.out.println(nRefn);
        System.out.println(nRef.n);
    }
    public static void main(String[] args) {
        int nValue = 5; 
        stackheaptest nRef = new stackheaptest();
        System.out.println(nValue);
        System.out.println(nRef.n);
        System.out.println(System.identityHashCode(nRef));
        System.out.println(nRef.n);
        nRef.changeIntMethod(nValue, nRef.n, nRef);
        System.out.println(nValue);
        System.out.println(nRef.n);
        System.out.println(System.identityHashCode(nRef));
        System.out.println(nRef.n);
    }
}