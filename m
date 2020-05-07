From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: rockchip-rga: Add PX30 compatible
Date: Fri, 8 May 2020 01:01:47 +0200
Message-ID: <b3d65325-7383-f89b-f493-6219904c8931@gmail.com>
References: <20200430164245.1630174-2-paul.kocialkowski@bootlin.com>
 <ed1ac7d6-12d3-5480-3699-70a88595cac2@gmail.com>
 <20200507202337.GJ2422122@aptenodytes>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200507202337.GJ2422122@aptenodytes>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: devicetree@vger.kernel.org, ezequiel@collabora.com, hansverk@cisco.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mchehab@kernel.org, robh+dt@kernel.org, thomas.petazzoni@bootlin.com
List-Id: linux-rockchip.vger.kernel.org

Hi Paul,

With help of enum each additional compatibility string with fall back
'rockchip,rk3288-rga' adds only 1 extra line instead of 3.

See my and Heiko's response at the review of 'rockchip-saradc.yaml'.

Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
bindings to yaml
https://lore.kernel.org/lkml/a35bdff4-601e-6186-584e-9a0b88cf3dbb@gmail.com/

The response of robh when I did something similar wrong as this patch.

Re: [PATCH 1/2] dt-bindings: usb: dwc2: add compatible property for
rk3328 usb
https://lore.kernel.org/lkml/20200310192933.GA15236@bogus/

Example of an approved patch with enum.

[PATCH v2 1/2] dt-bindings: usb: dwc2: add compatible property for
rk3328 usb
https://lore.kernel.org/lkml/20200311122121.8912-1-jbx6244@gmail.com/

Kind regards,

Johan

On 5/7/20 10:23 PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Thu 30 Apr 20, 23:24, Johan Jonker wrote:
>> Hi Paul,
>>
>>>
>>> Add a new compatible for the PX30 Rockchip SoC, which also features
>>> a RGA block. It is compatible with the RK3288 RGA block.
>>>
>>> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>>> ---
>>>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>> index dd645ddccb07..740586299da9 100644
>>> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
>>> @@ -23,6 +23,9 @@ properties:
>>
>>
>>>        - items:
>>>            - const: rockchip,rk3228-rga
>>>            - const: rockchip,rk3288-rga
>>> +      - items:
>>> +          - const: rockchip,px30-rga
>>> +          - const: rockchip,rk3288-rga
>>
>> Use enum.
>>
>>       - items:
>>           - enum:
>>             - rockchip,px30-rga
>>             - rockchip,rk3228-rga
>>           - const: rockchip,rk3288-rga
> 
> Are you sure about this? The rk3228 above does it as I did it and other examples
> like allwinner,sun4i-a10-csi.yaml appear to be doing the same too.

The use of enum starts from 2 or more identical fall back strings.
'allwinner,sun4i-a10-csi.yaml' has 2 different fall back strings.

properties:
  compatible:
    oneOf:
      - const: allwinner,sun4i-a10-csi1
      - const: allwinner,sun7i-a20-csi0
      - items:
        - const: allwinner,sun7i-a20-csi1
        - const: allwinner,sun4i-a10-csi1
      - items:
        - const: allwinner,sun8i-r40-csi0
        - const: allwinner,sun7i-a20-csi0

> 
> The case with rockchip,rk3288-rga alone already seems covered.
See yaml examples in the links above.

> 
> Cheers,
> 
> Paul
> 
>>>  
>>>    reg:
>>>      maxItems: 1
>>> -- 
>>> 2.26.0
>>
> 
