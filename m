From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdd_log on rk3399-roc-pc
Date: Mon, 18 Nov 2019 02:03:42 +0100
Message-ID: <1963448.kY1Vgr51ze@phil>
References: <20191111005158.25070-1-kever.yang@rock-chips.com> <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de> <d786ef47-eda8-3994-2ef2-fc4a584bcdcc@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <d786ef47-eda8-3994-2ef2-fc4a584bcdcc@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Soeren Moch <smoch@web.de>, Kever Yang <kever.yang@rock-chips.com>, Mark Rutland <mark.rutland@arm.com>, Andrius =?utf-8?B?xaB0aWtvbmFz?= <andrius@stikonas.eu>, Alexis Ballier <aballier@gentoo.org>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>, Ezequiel Garcia <ezequiel@collabora.com>, Elaine Zhang <zhangqing@rock-chips.com>, Andy Yan <andyshrk@gmail.com>, linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Oskari Lemmela <oskari@lemmela.net>, Nick Xie <nick@khadas.com>, Peter Robinson <pbrobinson@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplet>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 12. November 2019, 12:42:09 CET schrieb Markus Reichl:
> On rk3399 vdd_log shall not exceed 1.0 V. On rk3399-roc-pc
> vdd_log is presently 1118 mV. Fix by setting the min voltage
> of the respective pwm-regulator down to 450 mV.
> This results in a vdd_log of 953 mV.
> Specify the supply to silence warning.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6 (or maybe still 5.5)

Thanks
Heiko
