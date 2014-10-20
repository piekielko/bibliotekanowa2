package pl.altkom.biblioteka.model;

import java.io.Serializable;
import java.util.Comparator;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

public class Ksiazka implements Serializable, Comparable {

    private long id;
    
    @NotEmpty(message="Pole wymagane")
    private String tytul;
    
    @NotEmpty(message="Pole wymagane")
    private String opis;
    
    
    @NotEmpty(message="Pole wymagane")
    @Pattern(regexp="[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ\\\\.\\\\\\-\\\\\\s]*", message="Pole nie może zawierać cyfr i znaków specjalnych")
    private String imieAutora;
    
    
    @NotEmpty(message="Pole wymagane")
    @Pattern(regexp="[a-zA-ZżźćńółęąśŻŹĆĄŚĘŁÓŃ\\\\.\\\\\\-\\\\\\s]*", message="Pole nie może zawierać cyfr i znaków specjalnych")
    private String nazwiskoAutora;
    
    @Pattern(regexp="[a-zA-Z]+", message="Pole nie może zawierać cyfr")
    @NotEmpty(message="Pole nie może być puste")
    private String krajPochodzenia;
    
    @Range(min=1, max=99, message = "Liczba książek powinna się zawięrać pomiędzy 1 a 99")
    private int ilosc;
    
    @NotEmpty(message="Pole nie może być puste")
    private String kategoria;

    public Ksiazka(long id, String tytul, String opis, String imieAutora, String nazwiskoAutora, String krajPochodzenia, int ilosc, String kategoria) {
        this.id = id;
        this.tytul = tytul;
        this.opis = opis;
        this.imieAutora = imieAutora;
        this.nazwiskoAutora = nazwiskoAutora;
        this.krajPochodzenia = krajPochodzenia;
        this.ilosc = ilosc;
        this.kategoria = kategoria;
    }

    public Ksiazka() {
    }
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getImieAutora() {
        return imieAutora;
    }

    public void setImieAutora(String imieAutora) {
        this.imieAutora = imieAutora;
    }

    public String getNazwiskoAutora() {
        return nazwiskoAutora;
    }

    public void setNazwiskoAutora(String nazwiskoAutora) {
        this.nazwiskoAutora = nazwiskoAutora;
    }

    public String getKrajPochodzenia() {
        return krajPochodzenia;
    }

    public void setKrajPochodzenia(String krajPochodzenia) {
        this.krajPochodzenia = krajPochodzenia;
    }

    public int getIlosc() {
        return ilosc;
    }

    public void setIlosc(int ilosc) {
        this.ilosc = ilosc;
    }

    public String getKategoria() {
        return kategoria;
    }

    public void setKategoria(String kategoria) {
        this.kategoria = kategoria;
    }

   

    @Override
    public int compareTo(Object o) {
        return -1;
    }
}
