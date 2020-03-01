From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix px30 lvds ports
Date: Sun, 01 Mar 2020 13:08:14 +0100
Message-ID: <2545261.sFBgo7PXyB@phil>
References: <20200121222055.4068166-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200121222055.4068166-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 21. Januar 2020, 23:20:54 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The lvds controller has two ports. port@0 for the connection
> to the display controller(s) and port@1 for the connection to
> the panel, so should have a ports node covering the port@x nodes.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

applied for 5.7
