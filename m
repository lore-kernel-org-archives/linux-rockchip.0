From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Delete an error message for a failed memory allocation in rockchip_clk_register_cpuclk()
Date: Sat, 30 Sep 2017 12:43:09 +0200
Message-ID: <3649654.h95jfH98gt@phil>
References: <dfcd3f8a-f858-ab71-b08c-e5b2e3005d7c@users.sourceforge.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <dfcd3f8a-f858-ab71-b08c-e5b2e3005d7c@users.sourceforge.net>
Sender: linux-clk-owner@vger.kernel.org
To: SF Markus Elfring <elfring@users.sourceforge.net>
Cc: linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 27. September 2017, 11:44:30 CEST schrieb SF Markus Elfring:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Wed, 27 Sep 2017 11:38:17 +0200
> 
> Omit an extra message for a memory allocation failure in this function.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>

applied for 4.15 after shortening the patch subject a bit


Thanks
Heiko
