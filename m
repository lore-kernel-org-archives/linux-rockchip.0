From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] clk: rockchip: add sclk_mac_lbtest to rk3188_critical_clocks
Date: Wed, 22 Jul 2020 21:21:07 +0200
Message-ID: <159544564767.763387.12839655099512768766.b4-ty@sntech.de>
References: <20200722161820.5316-1-knaerzche@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200722161820.5316-1-knaerzche@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alex Bee <knaerzche@gmail.com>, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 22 Jul 2020 18:18:20 +0200, Alex Bee wrote:
> Since the loopbacktest clock is not exported and is not touched in the
> driver, it has to be added to rk3188_critical_clocks to be protected from
> being disabled and in order to get the emac working.

Applied, thanks!

[1/1] clk: rockchip: add sclk_mac_lbtest to rk3188_critical_clocks
      commit: ef990bcad58cf1d13c5a49191a2c2342eb8d6709

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
