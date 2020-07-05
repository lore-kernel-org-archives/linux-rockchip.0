From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] clk: rockchip: use separate compatibles for rk3288w-cru
Date: Sun,  5 Jul 2020 12:18:54 +0200
Message-ID: <159394432444.305208.6716969954746405813.b4-ty@sntech.de>
References: <20200703154948.260369-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20200703154948.260369-1-heiko@sntech.de>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: ezequiel@collabora.com, mturquette@baylibre.com, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, linux-clk@vger.kernel.org, jagan@amarulasolutions.com, mylene.josserand@collabora.com, linux-kernel@vger.kernel.org, sboyd@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 3 Jul 2020 17:49:48 +0200, Heiko Stuebner wrote:
> Commit 1627f683636d ("clk: rockchip: Handle clock tree for rk3288w variant")
> added the check for rk3288w-specific clock-tree changes but in turn would
> require a double-compatible due to re-using the main rockchip,rk3288-cru
> compatible as entry point.
> 
> The binding change actually describes the compatibles as one or the other
> so adapt the code accordingly and add a real second entry-point for the
> clock controller.

Applied, thanks!

[1/1] clk: rockchip: use separate compatibles for rk3288w-cru
      commit: 0a7f99aad259d223ce69c03e792c7e2bfcf8c2c6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
