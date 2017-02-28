From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH 1/4] clk: rockchip: add "," to
 mux_pll_src_apll_dpll_gpll_usb480m_p on rk3036
Date: Mon, 27 Feb 2017 23:33:06 -0800
Message-ID: <20170228073306.GK25384@codeaurora.org>
References: <20170228051420.7214-1-heiko@sntech.de>
 <20170228051420.7214-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20170228051420.7214-2-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 02/28, Heiko Stuebner wrote:
> The mux_pll_src_apll_dpll_gpll_usb480m_p parent list was missing a ","
> between the 3rd and 4th parent names, making them fall together and thus
> lookups fail. Fix that.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Subtle. Fixes tag?

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
