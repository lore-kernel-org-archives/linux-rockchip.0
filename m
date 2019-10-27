From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: remove px30 default optee node
Date: Sun, 27 Oct 2019 19:22:36 +0100
Message-ID: <3461884.ytE3v2kofO@phil>
References: <20191023224409.3550-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191023224409.3550-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 24. Oktober 2019, 00:44:09 CET schrieb Heiko Stuebner:
> Having a default optee node in a soc devicetree is not really good.
> For one there is no guarantee that any tee got loaded and there's even
> the possibility that a completely different TEE got loaded.
> 
> OP-Tee however will insert relevant nodes to the devicetree (firmware
> +reserved memory sections) during its own startup, so there really is
> no need to provide a default node.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied for 5.5
