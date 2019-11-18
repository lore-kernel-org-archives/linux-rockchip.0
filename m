From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Fix min voltage for rk3399-firefly vdd_log
Date: Mon, 18 Nov 2019 02:04:57 +0100
Message-ID: <2125664.Zgi4m6pvVL@phil>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191111005158.25070-1-kever.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 11. November 2019, 01:51:56 CET schrieb Kever Yang:
> The min/max value of vdd_log is decide by pwm IO voltage and its
> resistors, the rk3399-firefly board's pwm regulator circuit is designed
> for IO voltage at 1.8V, while the board actually use 3.0V for IO, which
> at last lead to the min-microvolt to '430mV' instead of '800mV'.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

applied for 5.6 (or maybe still 5.5)

Thanks
Heiko
