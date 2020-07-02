From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: add rk3288 ISP and DPHY
Date: Thu, 2 Jul 2020 18:32:53 +0100
Message-ID: <34801fe8-cc4f-ed52-674d-ee291f508e05@arm.com>
References: <karthik.poduval@gmail.com>
 <20200406073017.19462-1-karthik.poduval@gmail.com>
 <20200406073017.19462-4-karthik.poduval@gmail.com>
 <2fc95890-f938-30a5-a163-bf3fa2e223df@gmail.com>
 <CAFP0Ok-NxDDF8TMP4pN=xn6w3H=TYqN3DMfGW-vuiC5qB-Oj5g@mail.gmail.com>
 <CAFP0Ok9XGzVbghbnOOyfXiOOc5-a94uFRu7sD5wXz9sr-+AYEA@mail.gmail.com>
 <9407b6c3-b932-5904-18ff-7c6cbf6bcc8b@gmail.com>
 <ec0e43f0-95af-c0b0-c51b-ea2db4194931@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ec0e43f0-95af-c0b0-c51b-ea2db4194931-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, karthik poduval <karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-02 17:27, Helen Koike wrote:
[...]
> I suggest this:
> 
>    clocks:
>      maxItems: 5
>      minItems: 3
>      description:
>        rk3288 clocks
>          ISP clock
>          ISP AXI clock
>          ISP AHB clock
>          ISP Pixel clock
>          ISP JPEG source clock
>        rk3399 isp0 clocks
>          ISP clock
>          ISP AXI wrapper clock
>          ISP AHB wrapper clock
>        rk3399 isp1 clocks
>          ISP clock
>          ISP AXI wrapper clock
>          ISP AHB wrapper clock
>          ISP Pixel wrapper clock
> 
>    clock-names:
>      oneOf:
>        # rk3288 clocks
>        - items:
>          - const: clk_isp
>          - const: aclk_isp
>          - const: hclk_isp
>          - const: pclk_isp_in
>          - const: sclk_isp_jpe
>        # rk3399 isp0 clocks
>        - items:
>          - const: clk_isp
>          - const: aclk_isp_wrap
>          - const: hclk_isp_wrap
>        # rk3399 isp1 clocks
>        - items:
>          - const: clk_isp
>          - const: aclk_isp_wrap
>          - const: hclk_isp_wrap
>          - const: pclk_isp_wrap

FWIW this looks a little more involved than it might need to be. Ideally 
we're describing things from the point of view of what inputs the device 
itself wants, so the details of exactly *how* a particular SoC's clock 
tree delivers them shouldn't matter to the binding, only to the actual 
clock specifier values ultimately given in the DT.

 From the ISP's PoV, it seems like we've got the fairly standard core 
clock, ACLK and HCLK trio, plus a pixel clock for RK3288 and RK3399 
ISP1, plus a JPEG source clock for RK3288. I'd be inclined to model that 
as simply something like:

     clock-names:
       minItems: 3
       maxItems: 5
       items:
       - const: isp
       - const: aclk
       - const: hclk
       - const: pclk
       - const: sclk_jpe

Plus then not only do we have a nice clean binding, but we avoid all the 
unnecessary faff of having to deal with the "same" clocks by different 
names in drivers, and sidestep the conundrum of what to do when the next 
SoC comes along providing the basic ISP clocks from yet again 
slightly-differently-named branches of its clock tree.

Robin.
