From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drivers/clk/rockchip/clk-rk3228.c: add 1.464GHz clock rate
Date: Fri, 17 May 2019 00:23:42 +0200
Message-ID: <5025740.0R6fdBNFxo@phil>
References: <20190516124437.4906-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190516124437.4906-1-justin.swartz@risingedge.co.za>
Sender: linux-kernel-owner@vger.kernel.org
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Justin,

Am Donnerstag, 16. Mai 2019, 14:44:36 CEST schrieb Justin Swartz:
> Add missing 1.464GHz clock rate to rk3228_cpuclk_rates[]
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

I've applied the patch for kernel 5.3 and adapted the subject
plus commit message a bit to:

"clk: rockchip: add 1.464GHz cpu-clock rate to rk3228
    
Add missing 1.464GHz clock rate to rk3228_cpuclk_rates[], which gets
referenced in the operating points but wasn't defined till now."

So just for you next submissions:
The patch subject should match the subsystem prefix which you can see with
something like "git log --oneline drivers/clk/rockchip" and the commit
message can be as verbose as you like.

So just to clarify, no need to change anything for this patch, just to
keep in mind for future patches :-) .

Thanks
Heiko
