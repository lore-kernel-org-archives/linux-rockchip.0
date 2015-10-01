From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH v3] clk: rockchip: reset init state before mmc card
 initialization
Date: Thu, 1 Oct 2015 16:37:01 -0700
Message-ID: <20151001233701.GY19319@codeaurora.org>
References: <1441325733-4131-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1441325733-4131-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 09/04, Shawn Lin wrote:
> mmc host controller's IO input/output timing is unpredictable if
> bootloader execute tuning for HS200 mode. It might make kernel failed
> to initialize mmc card in identification mode. The root cause is
> tuning phase and degree setting for HS200 mode in bootloader aren't
> applicable to that of identification mode in kernel stage. Anyway, we
> can't force all bootloaders to reset tuning phase and degree setting
> before into kernel. Simply reset it in rockchip_clk_register_mmc.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---

Applied to clk-next

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
