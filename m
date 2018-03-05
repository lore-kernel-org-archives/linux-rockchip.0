From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] soc: rockchip: power-domain: Add a sanity check on
 pd->num_clks
Date: Mon, 5 Mar 2018 17:33:31 +0800
Message-ID: <d0a0c26a-885e-72fb-3ce9-96944f137227@rock-chips.com>
References: <20180305091722.22246-1-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180305091722.22246-1-jeffy.chen@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-rockchip@lists.infradead.org, Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jeffy,

On 2018/3/5 17:17, Jeffy Chen wrote:
> The of_count_phandle_with_args() can fail and return error(for example,
> rk3399 pd_vio doesn't have clocks). That would break the pd probe.
> 
> Add a sanity check on pd->num_clks to avoid that.
> 
> Fixes: 65084121d59d ("soc: rockchip: power-domain: use clk_bulk APIs")
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
Tested-by: Shawn Lin <shawn.lin@rock-chips.com>
