## Grid-Layout columns equally distributed  
#GridLayout #equal-space  #gap-between-every-element 

- Below horizontal orientation, 3 column,  

```xml
<GridLayout  
    android:id="@+id/gridLayout"  
    android:layout_width="match_parent"  
    android:layout_height="wrap_content"  
    android:columnCount="3"  
    android:orientation="horizontal">  
  
    <Button        android:id="@+id/btn1"  
        android:layout_width="0dp"  
        android:layout_height="wrap_content"  
        android:text="Button 2"  
        android:layout_columnWeight="1"  
        android:layout_margin="8dp"/>  
    <Button        android:id="@+id/btn2"  
        android:layout_width="0dp"  
        android:layout_height="wrap_content"  
        android:text="Button 1"  
        android:layout_columnWeight="1"  
        android:layout_margin="8dp"/>  
    <Button        android:id="@+id/btn3"  
        android:layout_width="0dp"  
        android:layout_height="wrap_content"  
        android:text="Button 1"  
        android:layout_columnWeight="1"  
        android:layout_margin="8dp"/>  
    <!-- Add more grid items here -->  
  
</GridLayout>

```

- 

```xml
<GridLayout 
		  
    android:layout_width="match_parent"  
    android:layout_height="wrap_content"  
    android:columnCount="3"  
  
    android:orientation="horizontal">  
  
    <GridLayout        android:id="@+id/gridLayout"  
        android:layout_width="wrap_content"  
        android:layout_height="wrap_content"  
        android:layout_rowWeight="1"  
        android:layout_columnWeight="1"  
        android:orientation="vertical"  
  
        android:rowCount="3">  
  
        <Button            android:id="@+id/btn1"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_rowWeight="1"  
            android:layout_margin="8dp"  
            android:text="Button 2" />  
  
        <Button            android:id="@+id/btn2"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_rowWeight="2"  
            android:layout_margin="8dp"  
            android:text="Button 2" />  
  
        <Button            android:id="@+id/btn3"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_rowWeight="2"  
            android:layout_margin="8dp"  
            android:text="Button 2" />  
  
  
        <!-- Add more grid items here -->  
  
    </GridLayout>  
    <!-- Add more grid items here -->  
    <GridLayout  
        android:id="@+id/gridLayout"  
        android:layout_width="wrap_content"  
        android:layout_height="wrap_content"  
        android:layout_rowWeight="1"  
        android:layout_columnWeight="1"  
        android:orientation="vertical"  
  
        android:rowCount="3">  
  
        <Button            android:id="@+id/btn1"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_rowWeight="1"  
            android:layout_margin="8dp"  
            android:text="Button 2" />  
  
        <Button            android:id="@+id/btn2"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_rowWeight="2"  
            android:layout_margin="8dp"  
            android:text="Button 2" />  
  
        <Button            android:id="@+id/btn3"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_rowWeight="2"  
            android:layout_margin="8dp"  
            android:text="Button 2" />  
  
  
        <!-- Add more grid items here -->  
  
    </GridLayout>  
  
  
  
        <GridLayout            android:id="@+id/gridLayout"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:layout_rowWeight="1"  
            android:layout_columnWeight="1"  
            android:orientation="vertical"  
  
            android:rowCount="3">  
  
            <Button                android:id="@+id/btn1"  
                android:layout_width="wrap_content"  
                android:layout_height="wrap_content"  
                android:layout_rowWeight="1"  
                android:layout_margin="8dp"  
                android:text="Button 2" />  
  
            <Button                android:id="@+id/btn2"  
                android:layout_width="wrap_content"  
                android:layout_height="wrap_content"  
                android:layout_rowWeight="2"  
                android:layout_margin="8dp"  
                android:text="Button 2" />  
  
            <Button                android:id="@+id/btn3"  
                android:layout_width="wrap_content"  
                android:layout_height="wrap_content"  
                android:layout_rowWeight="2"  
                android:layout_margin="8dp"  
                android:text="Button 2" />  
  
  
            <!-- Add more grid items here -->  
  
        </GridLayout>  
  
  
</GridLayout>
```

## Grid Layout 3 Column spacing between elements is equal
#GridLayout3Column 
```xml
<GridLayout 	  
    android:layout_width="match_parent"  
    android:layout_height="wrap_content"  
    android:columnCount="3"  
    android:orientation="horizontal"> 
	<Button  
	    android:id="@+id/countStart"  
	    android:layout_width="0dp"  
	    android:layout_height="wrap_content"  
	    android:text="Start"  
	    android:layout_columnWeight="1"  
	    android:layout_margin="8dp"/>  
	  
	<Button  
	    android:id="@+id/countPause"  
	    android:layout_width="0dp"  
	    android:layout_height="wrap_content"  
	    android:text="Pause"  
	    android:layout_columnWeight="1"  
	    android:layout_margin="8dp"/>  
	  
	<Button  
	    android:id="@+id/btn3"  
	    android:layout_width="0dp"  
	    android:layout_height="wrap_content"  
	    android:text="Clear"  
	    android:layout_columnWeight="1"  
	    android:layout_margin="8dp"/>
</GridLayout> 
```

## Grid Layout 2 Row 3 Column Group spacing between elements is equal
#GridLayout2Row3Column
```xml
<GridLayout  
    android:id="@+id/gridLayout"  
    android:layout_width="match_parent"  
    android:layout_height="wrap_content"  
    android:rowCount="2"  
    android:orientation="vertical"  
    android:background="#FFEB3B"  
    android:layout_marginTop="20dp">  
    <LinearLayout        android:layout_width="match_parent"  
        android:layout_height="wrap_content"  
        android:layout_rowWeight="1"  
        android:weightSum="3">  
  
        <TextView            android:id="@+id/counterTextView"  
            android:layout_width="match_parent"  
            android:layout_height="wrap_content"  
            android:layout_marginTop="10dp"  
            android:text="Counter: 0"  
            android:textAlignment="center"  
            android:textSize="30sp" />  
  
  
    </LinearLayout>  
    <LinearLayout        android:layout_width="match_parent"  
        android:layout_height="wrap_content"  
        android:layout_rowWeight="1"  
        android:weightSum="3">  
        <Button            android:id="@+id/countStart"  
            android:layout_width="0dp"  
            android:layout_height="wrap_content"  
            android:text="Start"  
            android:layout_weight="1"  
            android:layout_margin="8dp"/>  
        <Button            android:id="@+id/countStart"  
            android:layout_width="0dp"  
            android:layout_height="wrap_content"  
            android:text="Start"  
            android:layout_weight="1"  
            android:layout_margin="8dp"/>  
        <Button            android:id="@+id/countStart"  
            android:layout_width="0dp"  
            android:layout_height="wrap_content"  
            android:text="Start"  
            android:layout_weight="1"  
            android:layout_margin="8dp"/>  
  
  
    </LinearLayout>    <!-- Add more grid items here -->  
  
</GridLayout>
```

```xml
<HorizontalScrollView  
    android:layout_width="match_parent"  
    android:layout_height="wrap_content">  
    <LinearLayout        
	   android:layout_width="wrap_content"  
        android:layout_height="wrap_content"  
        android:orientation="horizontal">  
        <Button            
            android:id="@+id/countStart"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:text="Start"  
            android:layout_columnWeight="1"  
            android:layout_margin="8dp"/>  
  
        <Button            
            android:id="@+id/countPause"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:text="Pause"  
            android:layout_columnWeight="1"  
            android:layout_margin="8dp"/>  
  
        <Button            
            android:id="@+id/btn3"  
            android:layout_width="wrap_content"  
            android:layout_height="wrap_content"  
            android:text="Clear"  
            android:layout_columnWeight="1"  
            android:layout_margin="8dp"/>  
    </LinearLayout>    
</HorizontalScrollView>
```
