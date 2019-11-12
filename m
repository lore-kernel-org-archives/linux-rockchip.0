From: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Tue, 12 Nov 2019 09:51:52 +0100
Message-ID: <c5519934-2715-d5cd-a236-0fec9a41dc67@fivetechno.de>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
 <88ad7dc9-5299-791b-e285-7775ddf885ba@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <88ad7dc9-5299-791b-e285-7775ddf885ba@web.de>
Content-Language: de-DE
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?S=c3=b6ren_Moch?= <smoch@web.de>, Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: Mark Rutland <mark.rutland@arm.com>, =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>, linux-kernel@vger.kernel.org, Alexis Ballier <aballier@gentoo.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Hugh Cole-Baker <sigmaris@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, Andy Yan <andyshrk@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Vicente Bergas <vicencb@gmail.com>, Oskari Lemmela <oskari@lemmela.net>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>, Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>, Ezequiel Garcia <ezequiel@collabora.com>, Vivek Unune <npcomplete13@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Thanks Sören,

Am 12.11.19 um 09:44 schrieb Sören Moch:
> On 12.11.19 09:16, Markus Reichl wrote:
>> Hi Kever,
>>
>> have a rk3399-roc-pc running mainline U-Boot and kernel and vdd_log is
>> showing 1118 mV.
>> Is this a danger for the board?
> I think yes. What I read vdd_log on rk3399 must not exceed 1.0V.
>> How to fix it?
> You probably need to do something like [1].

will measure and come up with a patch.

> 
> [1] https://patchwork.kernel.org/patch/11173465/
> 
> Gruß,
> Sören
>> Btw. vin-supply for this pwm-regulator is ignored and I could not find it
>> in bindings doc.
>>
> Gruß,
-- 
Markus Reichl
