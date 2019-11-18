From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: remove 408MHz operating point from px30
Date: Mon, 18 Nov 2019 01:58:36 +0100
Message-ID: <4318673.vLX1ueDYfg@phil>
References: <20191116095220.31122-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191116095220.31122-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com, kever.yang@rock-chips.com, cl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 16. November 2019, 10:52:20 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> It looks like the px30 is running unstable at this 408MHz operating point.
> This shows in stalled threads and other big numbers of kernel exception.
> 
> At 600MHz and above it instead works stable and as expected. As the 408MHz
> point doesn't even decrease the voltage compared to 600MHz, just drop this
> 408MHz operating point for now.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

applied
