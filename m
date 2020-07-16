From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: arm: rockchip: add A95X Z2
 description
Date: Thu, 16 Jul 2020 20:18:16 +0100
Message-ID: <7811d168-6f41-adda-bd64-e7475b239863@arm.com>
References: <20200620134659.4592-1-jbx6244@gmail.com>
 <20200620134659.4592-2-jbx6244@gmail.com> <20200715192935.GA684031@bogus>
 <14b39efe-f38b-b471-560d-1ecaeafc5dd5@gmail.com>
 <56b1447d-6c62-9e73-a7ce-08fb70096a97@arm.com>
 <544f9182-034b-6309-a945-72b5a34ee2e8@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <544f9182-034b-6309-a945-72b5a34ee2e8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-16 17:11, Johan Jonker wrote:
> On 7/16/20 3:34 PM, Robin Murphy wrote:
>> On 2020-07-16 13:05, Johan Jonker wrote:
>>> Hi Rob,
>>>
>>> The A95X Z2 boxes are sold by various vendors/manufacturers/web shops.
>>> The box it self only shows a label with a model name.
>>> Determining the true vendor is a kind of tricky for a outsider of the
>>> business.
>>> Could you advise what would be a save choice to the rather rigid vendor
>>> requirements.
>>> Is for example this a option:
>>>
>>>     "^a95x,.*":
>>>       description: A95X
>>>
>>> Is there someone who can give more info on this subject?
>>
>> FWIW we already have some "A95X" branded things attributed to Nexbox in
>> upstream DTs, however, the evidence from scraping around the internet
>> suggests that the closest thing to an original vendor for the "A95X Z2"
>> model is probably these folks:
>>
>> https://zkmagic.en.alibaba.com/
> 
> That's where I got my update/backup img from.
> A mail was sent, but what if they all claim to be a 'official' or
> 'direct' store?

Well, at some point we have to make a judgement call if the facts aren't 
easy to come by, but it's already clear that "A95X" is not a vendor but 
some kind of generic model name apparently used by multiple vendors. We 
already have "nexbox,a95x" as a binding for another model, and a 
plausible idea of who's responsible for this one, so I think 
"zkmagic,a95x-z2" would be the appropriate binding here. It's hardly the 
end of the world if it's not 100% accurate, but that's no excuse not to 
at least try.

Robin.

> 
> option 1:
> 
>        - description: A95X Z2
>          items:
>            - const: a95x,z2
> 
>    "^a95x,.*":
>      description: A95X
> 
> or option 2:
> 
>        - description: Zkmagic A95X Z2
>          items:
>            - const: zkmagic,a95x-z2
> 
>    "^zkmagic,.*":
>      description: Shenzhen Zkmagic Technology Co., Ltd.
> 
> I'ld rather prefer a short neutral name like option 1 just to be save. ;)
> For the completeness there seems to be:
> a95x a2
> a95x a3
> a95x f1
> a95x f2
> a95x f3
> a95x max
> a95x max plus
> a95x r1
> a95x r2
> a95x r3
> a95x r5
> a95x z2
> a95x z2 +
> 
> Any advice welcome..
> 
> Johan
> 
>>
>> Robin.
>>
>>>
>>> Kind regards,
>>>
>>> Johan Jonker
>>>
>>> On 7/15/20 9:29 PM, Rob Herring wrote:
>>>> On Sat, Jun 20, 2020 at 03:46:58PM +0200, Johan Jonker wrote:
>>>>> Add A95X Z2 description for a board with rk3318 processor.
>>>>>
>>>>> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>>>> ---
>>>>>    Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>>>>    1 file changed, 5 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>>> b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>>> index d4a404509..3d44b3cf0 100644
>>>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>>> @@ -25,6 +25,11 @@ properties:
>>>>>              - const: vamrs,rock960
>>>>>              - const: rockchip,rk3399
>>>>>    +      - description: A95X Z2
>>>>> +        items:
>>>>> +          - const: a95x,z2
>>>>
>>>> Need to document vendor prefix.
>>>>
>>>>> +          - const: rockchip,rk3318
>>>>> +
>>>>>          - description: Amarula Vyasa RK3288
>>>>>            items:
>>>>>              - const: amarula,vyasa-rk3288
>>>>> -- 
>>>>> 2.11.0
>>>>>
>>>
>>>
>>> _______________________________________________
>>> Linux-rockchip mailing list
>>> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>>
> 
