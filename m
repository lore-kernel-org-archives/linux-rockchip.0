From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 01/13] arm64: dts: rockchip: fix iface clock-name on px30 iommus
Date: Thu, 31 Oct 2019 15:15:49 +0100
Message-ID: <8112330.DWCu6rFsBr@phil>
References: <20190917082659.25549-1-heiko@sntech.de> <2015322.eFjuJPvpNX@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2015322.eFjuJPvpNX@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, linux-rockchip@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 3. Oktober 2019, 23:25:51 CET schrieb Heiko Stuebner:
> Am Dienstag, 17. September 2019, 10:26:47 CEST schrieb Heiko Stuebner:
> > The iommu clock names are aclk+iface not aclk+hclk as in the vendor kernel,
> > so fix that in the px30.dtsi
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> 
> applied patches 1-11 for 5.5
> 
> Patches 12+13 need the corresponding phy change to land first

also applied 12+13 now
