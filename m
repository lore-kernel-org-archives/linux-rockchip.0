From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: arm: rockchip: add A95X Z2
 description
Date: Thu, 16 Jul 2020 14:05:17 +0200
Message-ID: <14b39efe-f38b-b471-560d-1ecaeafc5dd5@gmail.com>
References: <20200620134659.4592-1-jbx6244@gmail.com>
 <20200620134659.4592-2-jbx6244@gmail.com> <20200715192935.GA684031@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200715192935.GA684031@bogus>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

The A95X Z2 boxes are sold by various vendors/manufacturers/web shops.
The box it self only shows a label with a model name.
Determining the true vendor is a kind of tricky for a outsider of the
business.
Could you advise what would be a save choice to the rather rigid vendor
requirements.
Is for example this a option:

  "^a95x,.*":
    description: A95X

Is there someone who can give more info on this subject?

Kind regards,

Johan Jonker

On 7/15/20 9:29 PM, Rob Herring wrote:
> On Sat, Jun 20, 2020 at 03:46:58PM +0200, Johan Jonker wrote:
>> Add A95X Z2 description for a board with rk3318 processor.
>>
>> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index d4a404509..3d44b3cf0 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -25,6 +25,11 @@ properties:
>>            - const: vamrs,rock960
>>            - const: rockchip,rk3399
>>  
>> +      - description: A95X Z2
>> +        items:
>> +          - const: a95x,z2
> 
> Need to document vendor prefix.
> 
>> +          - const: rockchip,rk3318
>> +
>>        - description: Amarula Vyasa RK3288
>>          items:
>>            - const: amarula,vyasa-rk3288
>> -- 
>> 2.11.0
>>
