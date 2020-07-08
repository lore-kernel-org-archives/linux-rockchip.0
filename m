From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RESEND PATCH] Revert "clk: rockchip: fix wrong mmc sample phase shift for rk3328"
Date: Wed,  8 Jul 2020 16:23:12 +0200
Message-ID: <159421818548.390170.4458225200930874828.b4-ty@sntech.de>
References: <c80eb52e34c03f817586b6b7912fbd4e31be9079.1589475794.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <c80eb52e34c03f817586b6b7912fbd4e31be9079.1589475794.git.robin.murphy@arm.com>
Sender: linux-clk-owner@vger.kernel.org
To: mturquette@baylibre.com, Robin Murphy <robin.murphy@arm.com>, sboyd@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 18 Jun 2020 18:56:29 +0100, Robin Murphy wrote:
> This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.
> 
> According to a subsequent revert in the vendor kernel, the original
> change was based on unclear documentation and was in fact incorrect.
> 
> Emprically, my board's HS200 eMMC at 200MHZ apparently gets lucky with a
> phase where this had no impact, but limiting max-frequency to 150MHz to
> match the nominal capability of the I/O pins made it virtually unusable,
> constantly throwing errors and retuning. With this revert, it starts
> behaving perfectly at 150MHz too.

Applied, thanks!

[1/1] clk: rockchip: Revert "fix wrong mmc sample phase shift for rk3328"
      commit: 465931e70881476a210d44705102ef8b6ee6cdb0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
