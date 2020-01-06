From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 4/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq' property
Date: Mon, 6 Jan 2020 10:38:29 +0900
Message-ID: <76616499-7c19-06b1-461a-28ae17a76c60@samsung.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
        <CGME20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9@epcas1p1.samsung.com>
        <20191217055738.28445-5-cw00.choi@samsung.com> <20191226210119.GA8706@bogus>
        <a54e4275-012e-77d9-bdbe-1aab64b5c12b@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <a54e4275-012e-77d9-bdbe-1aab64b5c12b@samsung.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh@kernel.org>
Cc: krzk@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

Gently Ping.

On 12/27/19 9:09 AM, Chanwoo Choi wrote:
> On 12/27/19 6:01 AM, Rob Herring wrote:
>> On Tue, Dec 17, 2019 at 02:57:33PM +0900, Chanwoo Choi wrote:
>>> In order to remove the deprecated 'devfreq' property, replace with
>>> new 'exynos,parent-bus' property in order to get the parent devfreq device
>>> in devicetree file instead of 'devfreq' property. But, to guarantee the
>>> backward-compatibility, keep the support 'devfreq' property.
>>>
>>> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
>>> ---
>>>  .../bindings/devfreq/exynos-bus.txt           | 16 +++++++--------
>>>  drivers/devfreq/exynos-bus.c                  | 20 ++++++++++++-------
>>>  2 files changed, 21 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
>>> index e71f752cc18f..c948cee01124 100644
>>> --- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
>>> +++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
>>> @@ -45,7 +45,7 @@ Required properties only for parent bus device:
>>>    of buses.
>>>  
>>>  Required properties only for passive bus device:
>>> -- devfreq: the parent bus device.
>>> +- exynos,parent-bus: the parent bus device.
>>
>> If you are going to do something new, why not use the interconnect 
>> binding here?
> 
> As I knew, interconnect make the data path among multiple nodes
> and set the average and peak bandwidth to the specific data path.
> 
> It means that some data will be flowed from node_a to node_d
> or the reverse way because each node has the tightly coupled
> dependency for data flow.
> 
> 	node_a <-> node_b <-> node_c <-> node_d
> 
> 
> On the other hand, exynos-bus.c driver is not related to 'data path'.
> Each bus just need to control the their own frequency and voltage.
> But, share the power line (regulator) between exynos-bus device
> even if there are no any dependency of data flow.
> 
> 'exynos,parent-bus' property just indicate the specific
> devfreq device(parent bus device) which controls
> the shared power line(regulator) in order to prevent
> the h/w problem due to the wrong pair of frequency and voltage.
> 
> 'exynos,parent-bus' property is only used to catch
> the change timing of shared power line.
> 
> 
> And,
> as you commented, there are some data path among the exynos-bus
> devices for the display h/w as following:
> 
> 	bus_display -> bus_leftbus -> bus_dmc
> 
> In order to make the data path between bus devices,
> interconnect binding is required. This approach[1] was posted.
> [1] https://patchwork.kernel.org/cover/11305265/
> - [RFC,v3,0/7] PM / devfreq: Simple QoS for exynos-bus using interconnect
> 

Are there any other commentss?


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics
