From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add PCIe nodes on rk3399-rockpro64
Date: Fri, 17 May 2019 11:22:05 +0200
Message-ID: <45858032.MVTSb7sYM0@phil>
References: <20190509170314.12806-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190509170314.12806-1-katsuhiro@katsuster.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 9. Mai 2019, 19:03:14 CEST schrieb Katsuhiro Suzuki:
> This patch adds PCIe, PCIe phy and pinctrl (for PERST#) nodes for
> RockPro64 board.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 5.3 after a bit of alphabetical sorting
- num-lanes above pinctrl properties
- pcie-perst above pcie-pwr-on pinctrl entry


Heiko
