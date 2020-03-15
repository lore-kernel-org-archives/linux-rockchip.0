From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Date: Sun, 15 Mar 2020 15:11:51 +0100
Message-ID: <a35bdff4-601e-6186-584e-9a0b88cf3dbb@gmail.com>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200315112223.07dd863b@archlinux>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200315112223.07dd863b@archlinux>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: knaack.h-Mmb7MZpHnFY@public.gmane.org, lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org, pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jonathan,

For compatible strings with identical fallback we use 'enum' to combine,
so instead of 3 only 1 additional line is needed for each new SoC patch.

properties:
  compatible:
    oneOf:
      - const: rockchip,saradc
      - const: rockchip,rk3066-tsadc
      - const: rockchip,rk3399-saradc
      - items:
          - enum:
            - rockchip,px30-saradc
            - rockchip,rk3308-saradc
            - rockchip,rk3328-saradc
            - rockchip,rv1108-saradc
          - const: rockchip,rk3399-saradc

[..]
vs
[..]

properties:
  compatible:
    oneOf:
      - const: rockchip,saradc
      - const: rockchip,rk3066-tsadc
      - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,px30-saradc
          - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,rk3308-saradc
          - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,rk3328-saradc
          - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,rv1108-saradc
          - const: rockchip,rk3399-saradc


Check with:

make ARCH=arm menuconfig
# select Rockchip platform

make -k ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml

make -k ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml

make ARCH=arm64 menuconfig
# select Rockchip platform

make -k ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml

Caution with:

'allOf' and 'additionalProperties: false'
does not completely validate DTS or examples!

On 3/15/20 12:22 PM, Jonathan Cameron wrote:
> On Fri, 13 Mar 2020 14:29:24 +0100
> Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> Current dts files with 'saradc' nodes are manually verified.
>> In order to automate this process rockchip-saradc.txt
>> has to be converted to yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
> Hi Johan,
>
> A question inline which may just be my lack of yaml knowledge
> showing itself!
>
> Jonathan
>

>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: rockchip,saradc
>> +      - const: rockchip,rk3066-tsadc
>> +      - const: rockchip,rk3399-saradc
>> +      - items:
>> +          - enum:
>> +            - rockchip,rk3328-saradc
>> +            - rockchip,rv1108-saradc
>> +          - const: rockchip,rk3399-saradc
>
> My yaml knowledge isn't great.  Why do we have this nested
> structure rather than a straight forward list?
>
