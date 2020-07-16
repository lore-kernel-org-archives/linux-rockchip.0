From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC PATCH v1 1/2] dt-bindings: arm: rockchip: add A95X Z2
 description
Date: Thu, 16 Jul 2020 14:34:08 +0100
Message-ID: <56b1447d-6c62-9e73-a7ce-08fb70096a97@arm.com>
References: <20200620134659.4592-1-jbx6244@gmail.com>
 <20200620134659.4592-2-jbx6244@gmail.com> <20200715192935.GA684031@bogus>
 <14b39efe-f38b-b471-560d-1ecaeafc5dd5@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <14b39efe-f38b-b471-560d-1ecaeafc5dd5@gmail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-07-16 13:05, Johan Jonker wrote:
> Hi Rob,
> 
> The A95X Z2 boxes are sold by various vendors/manufacturers/web shops.
> The box it self only shows a label with a model name.
> Determining the true vendor is a kind of tricky for a outsider of the
> business.
> Could you advise what would be a save choice to the rather rigid vendor
> requirements.
> Is for example this a option:
> 
>    "^a95x,.*":
>      description: A95X
> 
> Is there someone who can give more info on this subject?

FWIW we already have some "A95X" branded things attributed to Nexbox in 
upstream DTs, however, the evidence from scraping around the internet 
suggests that the closest thing to an original vendor for the "A95X Z2" 
model is probably these folks:

https://zkmagic.en.alibaba.com/

Robin.

> 
> Kind regards,
> 
> Johan Jonker
> 
> On 7/15/20 9:29 PM, Rob Herring wrote:
>> On Sat, Jun 20, 2020 at 03:46:58PM +0200, Johan Jonker wrote:
>>> Add A95X Z2 description for a board with rk3318 processor.
>>>
>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>> ---
>>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> index d4a404509..3d44b3cf0 100644
>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>> @@ -25,6 +25,11 @@ properties:
>>>             - const: vamrs,rock960
>>>             - const: rockchip,rk3399
>>>   
>>> +      - description: A95X Z2
>>> +        items:
>>> +          - const: a95x,z2
>>
>> Need to document vendor prefix.
>>
>>> +          - const: rockchip,rk3318
>>> +
>>>         - description: Amarula Vyasa RK3288
>>>           items:
>>>             - const: amarula,vyasa-rk3288
>>> -- 
>>> 2.11.0
>>>
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
