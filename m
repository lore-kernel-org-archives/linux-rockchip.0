From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: Don't yell about bad mmc phases when getting
Date: Fri, 03 May 2019 15:11:23 -0700
Message-ID: <155692148370.12939.291938595926908281@swboyd.mtv.corp.google.com>
References: <20190503212208.223232-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190503212208.223232-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: hal@halemmerich.com, linux-rockchip@lists.infradead.org, mka@chromium.org, Douglas Anderson <dianders@chromium.org>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Quoting Douglas Anderson (2019-05-03 14:22:08)
> At boot time, my rk3288-veyron devices yell with 8 lines that look
> like this:
>   [    0.000000] rockchip_mmc_get_phase: invalid clk rate
>=20
> This is because the clock framework at clk_register() time tries to
> get the phase but we don't have a parent yet.
>=20
> While the errors appear to be harmless they are still ugly and, in
> general, we don't want yells like this in the log unless they are
> important.
>=20
> There's no real reason to be yelling here.  We can still return
> -EINVAL to indicate that the phase makes no sense without a parent.
> If someone really tries to do tuning and the clock is reported as 0
> then we'll see the yells in rockchip_mmc_set_phase().
>=20
> Fixes: 4bf59902b500 ("clk: rockchip: Prevent calculating mmc phase if clo=
ck rate is zero")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Change looks fine, but this driver should call clk_hw_get_rate() on the
clk instead of clk_get_rate(). Unless that needs to recalc the rate for
some reason?

Also, we don't check for errors from clk_ops::get_phase() in clk.c
before storing away the result into the clk_core::phase member. I
suppose we should skip the store in this case so that debugfs results
don't look odd.

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index aa51756fd4d6..2455b2c43386 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2606,14 +2606,14 @@ EXPORT_SYMBOL_GPL(clk_set_phase);
=20
 static int clk_core_get_phase(struct clk_core *core)
 {
-	int ret;
+	int ret =3D 0;
=20
-	clk_prepare_lock();
+	lockdep_assert_held(&prepare_lock);
 	/* Always try to update cached phase if possible */
 	if (core->ops->get_phase)
-		core->phase =3D core->ops->get_phase(core->hw);
-	ret =3D core->phase;
-	clk_prepare_unlock();
+		ret =3D core->ops->get_phase(core->hw);
+	if (ret >=3D 0)
+		core->phase =3D ret;
=20
 	return ret;
 }
@@ -2627,10 +2627,16 @@ static int clk_core_get_phase(struct clk_core *core)
  */
 int clk_get_phase(struct clk *clk)
 {
+	int ret;
+
 	if (!clk)
 		return 0;
=20
-	return clk_core_get_phase(clk->core);
+	clk_prepare_unlock();
+	ret =3D clk_core_get_phase(clk->core);
+	clk_prepare_unlock();
+
+	return ret;
 }
 EXPORT_SYMBOL_GPL(clk_get_phase);
=20
@@ -2850,16 +2856,24 @@ static struct hlist_head *orphan_list[] =3D {
 static void clk_summary_show_one(struct seq_file *s, struct clk_core *c,
 				 int level)
 {
+	int phase;
+
 	if (!c)
 		return;
=20
-	seq_printf(s, "%*s%-*s %7d %8d %8d %11lu %10lu %5d %6d\n",
+	seq_printf(s, "%*s%-*s %7d %8d %8d %11lu %10lu ",
 		   level * 3 + 1, "",
 		   30 - level * 3, c->name,
 		   c->enable_count, c->prepare_count, c->protect_count,
-		   clk_core_get_rate(c), clk_core_get_accuracy(c),
-		   clk_core_get_phase(c),
-		   clk_core_get_scaled_duty_cycle(c, 100000));
+		   clk_core_get_rate(c), clk_core_get_accuracy(c));
+
+	phase =3D clk_core_get_phase(c);
+	if (phase >=3D 0)
+		seq_printf(s, "%5d", phase);
+	else
+		seq_printf(s, "-----");
+
+	seq_printf(s, " %6d\n", clk_core_get_scaled_duty_cycle(c, 100000));
 }
=20
 static void clk_summary_show_subtree(struct seq_file *s, struct clk_core *=
c,
@@ -2899,6 +2913,8 @@ DEFINE_SHOW_ATTRIBUTE(clk_summary);
=20
 static void clk_dump_one(struct seq_file *s, struct clk_core *c, int level)
 {
+	int phase;
+
 	if (!c)
 		return;
=20
@@ -2909,7 +2925,9 @@ static void clk_dump_one(struct seq_file *s, struct c=
lk_core *c, int level)
 	seq_printf(s, "\"protect_count\": %d,", c->protect_count);
 	seq_printf(s, "\"rate\": %lu,", clk_core_get_rate(c));
 	seq_printf(s, "\"accuracy\": %lu,", clk_core_get_accuracy(c));
-	seq_printf(s, "\"phase\": %d,", clk_core_get_phase(c));
+	phase =3D clk_core_get_phase(c);
+	if (phase >=3D 0)
+		seq_printf(s, "\"phase\": %d,", phase);
 	seq_printf(s, "\"duty_cycle\": %u",
 		   clk_core_get_scaled_duty_cycle(c, 100000));
 }
@@ -3248,10 +3266,7 @@ static int __clk_core_init(struct clk_core *core)
 	 * Since a phase is by definition relative to its parent, just
 	 * query the current clock phase, or just assume it's in phase.
 	 */
-	if (core->ops->get_phase)
-		core->phase =3D core->ops->get_phase(core->hw);
-	else
-		core->phase =3D 0;
+	clk_core_get_phase(core);
=20
 	/*
 	 * Set clk's duty cycle.
