From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 5/8] clk: rockchip: allow more than 2 parents for cpuclk
Date: Wed, 09 Dec 2015 22:35:01 +0100
Message-ID: <23012912.PzBkfOmh31@phil>
References: <1449651853-1667-1-git-send-email-jeffy.chen@rock-chips.com> <1449651853-1667-6-git-send-email-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1449651853-1667-6-git-send-email-jeffy.chen@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: linux@arm.linux.org.uk, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 9. Dezember 2015, 17:04:10 schrieb Jeffy Chen:
> RK3228's armclk has 3 parents, so allow cpuclk to have
> more than 2 parents.
> 
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>

applied to my clk branch for 4.5

Thanks
Heiko
