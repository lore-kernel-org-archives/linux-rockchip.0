From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Date: Mon, 27 Apr 2020 16:13:59 +0100
Message-ID: <94e7671f-2d11-b2f7-e049-b90893c61ab2@arm.com>
References: <20200427073132.29997-3-wens@kernel.org>
 <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
 <CAGb2v66Piu5_2bdqvWV3eEn2Se_y1MNKWvvYBv_J7DA-8jBhbQ@mail.gmail.com>
 <65d15254-08da-895c-1a0c-ef6ce231b620@gmail.com>
 <CAGb2v65fGYguNoksq5Dyx3HTKeYg+U82TiQSL+NO8AUcQJQj5w@mail.gmail.com>
 <74a984fc-ce57-211b-936c-2d77e2e642bb@gmail.com>
 <a81840d3-813b-51b5-767c-e0d9d270200e@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a81840d3-813b-51b5-767c-e0d9d270200e-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Chen-Yu Tsai <wens-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, jacek.anaszewski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-leds-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, dmurphy-l0cyMroinI0@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-04-27 3:12 pm, Johan Jonker wrote:
> Hi,
> 
>>> So for fixing up the LED node names, we'd probably want the following:
>>>
>>>      diy_led: led-0
>>>      yellow_led: led-1
>>>      work_led: led-2
> 
> Change proposal for led nodes to comply with preexisting dts.
> Does this work?
> 
> diy_led: led_0: led-0
> yellow_led: led_1: led-1
> work_led: led_2: led-2

Yuck, why?

Labels are simply human-readable source annotations for the sake of 
referencing nodes more easily. Meaningful label names - that correlate 
to SoC or board components, schematic names, or physical labels on the 
board/device - make the DT sources easier to read, review, and maintain. 
There are a handful of cases where one node might have multiple labels, 
e.g. if two logical supply nets come from the same regulator on certain 
board variants, but there is zero point in defining redundant labels 
that just meaninglessly echo the DT's own structure.

> blue: led_0: led-0
> 
> A check does not give any warnings.

I should hope not. Labels are there to be consumed by DT compilers (and 
whatever symbolic overlay handlers count as... DT linkers, maybe?) - 
they have no business being within the scope of the bindings that define 
a contract for system software consuming the final DTB.

Robin.

> make -k ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml
> 
>>
>> That doesn't look pretty either.
>> Would like to hear the maintainers view on how to handle other cases
>> without 'led' like for example 'blue' for mk808.
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
