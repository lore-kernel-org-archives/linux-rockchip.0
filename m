From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: make clk_half_divider_ops static
Date: Mon, 28 Oct 2019 16:38:48 -0700
Message-ID: <20191028233848.C8214214E0@mail.kernel.org>
References: <20191017105348.8061-1-ben.dooks@codethink.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191017105348.8061-1-ben.dooks@codethink.co.uk>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@lists.codethink.co.uk
Cc: Heiko Stuebner <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, linux-rockchip@lists.infradead.org, "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Quoting Ben Dooks (Codethink) (2019-10-17 03:53:48)
> The clk_half_divider_ops is not used outside or declared
> outside of drivers/clk/rockchip/clk-half-divider.c so make
> it static to avoid the following warning:
> 
> drivers/clk/rockchip/clk-half-divider.c:142:22: warning: symbol 'clk_half_divider_ops' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
