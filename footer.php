
      <div class="footer">
        <div class="footer_head">

        <div class="row foot_row"> 
        <div class="large-6 columns"><p class="fo_text">Kontakta oss</p></div>

        <div class="large-6 columns"><p class="fo_text">Frågor?</p></div>
        </div> 
        
        </div>

        <div class="footer_body">
        
        <div class="large-6 columns footer_info_section p_none">
        
        <div class="foot_block"> 
        <div class="half_row"> 
          <div class="large-6 columns p_none fl1"><p class="fl_h">Webbdesigner</p>
<p>Bastugatan 14A<br/>
11820, Stockholm
</p></div>
          <div class="large-6 columns p_none fl2"><p class="fl_h">Följ oss</p>
          <p><a href="#"><img src="img/ico/facebook_ico.png"/></a>
          	 <a href="#"><img src="img/ico/twitter_ico.png"/></a>
          	 <a href="#"><img src="img/ico/dribble_ico.png"/></a>
          </p></div>
        </div> 
       </div>
        
         <div class="foot_block"> 
        <div class="half_row"> 
          <div class="large-12 columns p_none fl3">
	          <a href="mailto:info@webbdesignler.se"><img src="img/mail.png"/></a>
          </div>
        </div>
        </div>
         
        <div class="foot_block foot_block_last"> 
        <div class="half_row"> 
          <div class="large-12 columns p_none fl4">
	          <input type="text" placeholder="Prenumerera på vårt nyhetsbrev" class=""/>
          </div>
        </div>
        </div> 
          
        </div>


        <div class="large-6 columns footer_form_section"> 
        	
        	<div class="half_row left"> 
			      <p>
				    <span>Har du funderingar på hur just vi kan hjälpa dig?</span>
					Tveka inte med att höra av dig via vårt kontaktformulär eller telefon! Vi pratar mer än gärna om hur vi kan 				optimera, förbättra och hjälpa just din hemsida till att uppnå önskat mål! Design, sökmotoroptimering, 						försäljnings-konvertering eller programmering.
				      
			      </p>  
			      
		        <div class="large-6 columns p_none col1">
			        <input type="text" placeholder="Namn" class="first_input"/>
			        <input type="text" placeholder="E-postadress" class=""/>
			        <input type="text" placeholder="Telefonnummer" class=""/>
			        
		        </div>
		        
		        <div class="large-6 columns p_none col2">
		        	<textarea placeholder="Meddelande..."></textarea>
		        	<div class="footer_button_wrap"><button class="s_button" type="submit">Skicka</button></div>
		        </div>
		     </div>
	        
	     
        </div>
        

        </div>

        <div class="the_footer"> 
          <div class="row">
            <div class="left">  
            <img src="img/webbdesigner_logo_green.png"/>
            </div>

            <div class="right">
            <p>Copyright © 2013 Webbdesigner - Swecompetence AB</p> 
            </div>

          </div>
        </div>

      </div>




  </div> <!--Wrapper Div -->
    
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/viewportchecker.js"></script>
    
    <script>
      $(document).foundation();
      $('body').stellar();
      
      /***--[ For Animation on viewport ]--********************************/
      
      jQuery(document).ready(function() {
      
      
      jQuery('.h_t1').addClass("hidden").viewportChecker({
        classToAdd: 'visible animated fadeInDown',
        offset: 100
       });
       
       jQuery('.h_heading').addClass("hidden").viewportChecker({
        classToAdd: 'visible animated fadeInUp',
        offset: 100
       });
       
       jQuery('.h_sub_text').addClass("hidden").viewportChecker({
        classToAdd: 'visible animated fadeInUp',
        offset: 100
       });
       
       
       
    jQuery('.project_t').addClass("hidden").viewportChecker({
        classToAdd: 'visible animated zoomIn',
        offset: 100
       });
       
       
        /*
   jQuery('.project_t span').addClass("hidden").viewportChecker({
        classToAdd: 'visible animated rubberBand',
        offset: 50
       });
*/
       
       $('.fe_text span').addClass("hidden").viewportChecker({classToAdd: 'visible animated flipInY'});
       
       
       $('.process_list li').addClass("hidden").viewportChecker({classToAdd: 'visible animated pulse'});
       
       $('.project_detail .pc1').addClass("hidden").viewportChecker({classToAdd: 'visible animated fadeIn'});
       $('.project_detail .pc2').addClass("hidden").viewportChecker({classToAdd: 'visible animated fadeIn'});
       $('.project_detail .pc3').addClass("hidden").viewportChecker({classToAdd: 'visible animated fadeIn'});
       
       
       
    
       
       
});

    </script>
   

  </body>
</html>
