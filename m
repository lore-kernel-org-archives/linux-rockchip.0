From: Xing Zheng <zhengxing@rock-chips.com>
Subject: [PATCH 4/5] clk: rockchip: add a COMPOSITE_FRACMUX_NOGATE type
Date: Mon, 29 Feb 2016 19:26:00 +0800
Message-ID: <1456745161-12954-5-git-send-email-zhengxing@rock-chips.com>
References: <1456745161-12954-1-git-send-email-zhengxing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1456745161-12954-1-git-send-email-zhengxing@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: huangtao@rock-chips.com, heiko@sntech.de, Xing Zheng <zhengxing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, elaine.zhang@rock-chips.com, jay.xu@rock-chips.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Because there are some frac clock mux nodes don't need gate node on
the RK3399.

Signed-off-by: Xing Zheng <zhengxing@rock-chips.com>
---

 drivers/clk/rockchip/clk.h |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 36b4938..bfafd67 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -463,6 +463,22 @@ struct rockchip_clk_branch {
 		.child		= ch,				\
 	}
 
+#define COMPOSITE_FRACMUX_NOGATE(_id, cname, pname, f, mo, df, ch) \
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_fraction_divider,	\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= 16,				\
+		.div_width	= 16,				\
+		.div_flags	= df,				\
+		.gate_offset	= -1,				\
+		.child		= ch,				\
+	}
+
 #define MUX(_id, cname, pnames, f, o, s, w, mf)			\
 	{							\
 		.id		= _id,				\
-- 
1.7.9.5
