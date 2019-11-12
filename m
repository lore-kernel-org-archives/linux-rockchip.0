From: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Tue, 12 Nov 2019 12:06:36 +0100
Message-ID: <f2c34d85-4d71-d9ff-99ea-044e6354fc87@fivetechno.de>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
 <17e14b30-02ee-2379-8891-088677924479@rock-chips.com>
 <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>, Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: Mark Rutland <mark.rutland@arm.com>, =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>, Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>, devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Robin Murphy <robin.murphy@arm.com>, Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>, Oskari Lemmela <oskari@lemmela.net>, Akash Gajjar <akash@openedev.com>, Nick Xie <nick@khadas.com>, Peter Robinson <pbrobinson@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>, linux-arm-kernel@lists.infradead.orgAnd
List-Id: linux-rockchip.vger.kernel.org

Dear Sore, Kever,

Am 12.11.19 um 11:19 schrieb Soeren Moch:
> 
> 
> On 12.11.19 11:02, Kever Yang wrote:
>> Markus,
>>
>>
>> On 2019/11/12 下午4:16, Markus Reichl wrote:
>>> Hi Kever,
>>>
>>> have a rk3399-roc-pc running mainline U-Boot and kernel and vdd_log is
>>> showing 1118 mV.
>>
>> The rk3399-roc-pc have the same vdd_log circuit in schematic, so it
>> should like the patch 1/3 of
>>
>> this patch set.
>>
>> I don't understand who is setting this value, maybe the default value
>> without pwm regulator enabled?
>>
>>> Is this a danger for the board?
>>> How to fix it?
>>
>> The best way is to set correct min/max microvolt of the
>> regulator(measure with PWM output low and high),
> I didn't look into the schematic of this board, but if it is similar to
> RockPro64, setting the pwm regulator to the max voltage of 1.7V will
> probably kill the rk3399 immediately. So I recommend not to do this...
> 
It has to be set to 450mV - 1400mV to give 953mV.
I will come out with a patch that fixes this.

> Regards,
> Soeren
>>
>> (note that if  no driver touch the regulator, the PWM is default
>> input, not output;)
>> to
>> and set a init-microvolt for U-Boot driver, and I think no kernel
>> driver touch this regulator now.
>>
>>
>> Thanks,
>>
>> - Kever
>>
>>> Btw. vin-supply for this pwm-regulator is ignored and I could not
>>> find it
>>> in bindings doc.
>>>
>>> Gruß,
>>
>>
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

Gruß,
-- 
Markus Reichl
