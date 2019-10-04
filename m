From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: fix RockPro64 vdd-log regulator settings
Date: Fri, 04 Oct 2019 22:04:11 +0200
Message-ID: <3200327.mLoWUYiBOS@phil>
References: <20191003215036.15023-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191003215036.15023-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 3. Oktober 2019, 23:50:34 CEST schrieb Soeren Moch:
> The RockPro64 schematic [1] page 18 states a min voltage of 0.8V and a
> max voltage of 1.4V for the VDD_LOG pwm regulator. However, there is an
> additional note that the pwm parameter needs to be modified.
> From the schematics a voltage range of 0.8V to 1.7V can be calculated.
> Additional voltage measurements on the board show that this fix indeed
> leads to the correct voltage, while without this fix the voltage was set
> too high.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> 
> Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Soeren Moch <smoch@web.de>

applied as fix  for 5.4

Thanks for going that extra mile with all the calculations and measurements
Heiko
