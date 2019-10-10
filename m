From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix RockPro64 sdmmc settings
Date: Thu, 10 Oct 2019 23:30:26 +0200
Message-ID: <2055831.6uBfQfHlXk@phil>
References: <20191004203213.4995-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191004203213.4995-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 4. Oktober 2019, 22:32:13 CEST schrieb Soeren Moch:
> According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
> connected to a microSD (TF card) slot. Remove the cap-mmc-highspeed
> property of the sdmmc controller, since no mmc card can be connected here.
> 
> [1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> 
> Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
> Signed-off-by: Soeren Moch <smoch@web.de>

applied as fix for 5.4

Thanks
Heiko
