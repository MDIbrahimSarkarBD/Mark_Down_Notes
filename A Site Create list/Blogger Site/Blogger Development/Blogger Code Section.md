
## title show blog title
```xml
<b:if cond='data:title != ""'>
      <h2><data:title/></h2>
</b:if>
```

```xml
 
```




## CSS Add 
- <b:skin> tag
example:
```xml
<b:skin>  
 <style type='text/css'>  
 /*  
  * Variable definitions:  
  *  <Variable name='bgcolor' description='Page Background Color'  
      type='color' default='#fff'/>  
  */  
 body {  
   background: $bgcolor;  
   margin: 0;  
   padding: 40px 20px;  
 }  
 </style>
</b:skin>
```


## Widget Tags for Layouts
### Types of tags

This section describes the HTML you can use inside of the closing tags.

1. Includes (b:include)
2. Data Output (data:)
3. Loops (b:loop)
4. If, elseif & else (b:if)
5. Switches (b:switch)
6. Attribute expressions (expr:)
7. Evaluated Expressions (b:eval)
8. Variable alias (b:with)
