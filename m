From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory
 nodenames
Date: Fri, 13 Mar 2020 10:47:55 +0100
Message-ID: <5af5bdfd-3522-9066-8bde-84a5e468be32@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
 <1784340.9KJLpVao5L@phil> <2a5ef6fc-2487-91ef-24ce-97dd47b0a137@gmail.com>
 <7869677.iSBujUIW6u@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7869677.iSBujUIW6u@phil>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko, Rob,

From https://coreboot.org/status/board-status.html

The only supported boards listed are:

Veyron Rockchip RK3288 boards
Veyron Mickey Rockchip RK3288 board
Veyron Rialto Rockchip RK3288 board
Gru Rockchip RK3399 reference board

Fixed with:
ARM: dts: rockchip: Remove @0 from the veyron memory node
https://patchwork.kernel.org/patch/10688081/

The problem is rk3288-veyron only I think.
Else fix coreboot to comply with DT rules, not the other way around.
Will make v2.

Can robh give advice here?

Thanks

On 3/6/20 12:58 AM, Heiko Stuebner wrote:
> Hi Johan, Rob,
> 
> Am Donnerstag, 5. März 2020, 23:21:52 CET schrieb Johan Jonker:
>> Goal was to reduce the error output of existing code a little bit,
>> so that we can use it for the review of new patches.
>> Some questions:
>> As I don't have the hardware, where else is coreboot used?
>> Is this a rk3288-veyron.dtsi problem only?
>> ie. Is it a option to produce a patch serie v2 without veyron?
>> Can someone help testing?
> 
> I believe that is more question for @Rob :
> 
> In the past we said that it would be ok to have "memory" nodes without
> address, so "memory {}" instead of "memory@0 {}", simply because
> bootloaders mess up sometimes.
> 
> Question now would be how to make the yaml bindings happy.
> 
> Thanks
> Heiko
> 
> 
>>
>> Johan
>>
>> On 3/5/20 10:31 PM, Heiko Stuebner wrote:
>>> Hi Johan,
>>>
>>> Am Mittwoch, 4. März 2020, 08:40:50 CET schrieb Johan Jonker:
>>>> A test with the command below gives for example this error:
>>>>
>>>> arch/arm/boot/dts/rk3288-tinker.dt.yaml: /: memory:
>>>> False schema does not allow
>>>> {'device_type': ['memory'], 'reg': [[0, 0, 0, 2147483648]]}
>>>>
>>>> The memory nodes all have a reg property that requires '@' in
>>>> the nodename. Fix this error by adding the missing '@0' to
>>>> the involved memory nodenames.
>>>>
>>>> make ARCH=arm dtbs_check
>>>> DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
>>>> schemas/root-node.yaml
>>>
>>> changes to memory nodes you sadly cannot do in such an automated fashion.
>>> If you read the comment in rk3288-veyron.dtsi you'll see that a previous
>>> similar iteration broke all of those machines as their coreboot doesn't
>>> copy with memory@0 and would insert another memory node without @0
>>>
>>> In the past iteration the consensus then was that memory without @0
>>> is also ok (as it isn't changeable anyway).
>>>
>>
>>> As I don't really want to repeat that, I'd like actual hardware tests
>>> before touching memory nodes.
>>
>> Any suggestion/feedback rapport welcome.
>>
>>>
>>> Heiko
>>>
>>>
>>
> 
> 
> 
> 
