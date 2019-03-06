From: Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/6] clk: Remove recursion in clk_core_{prepare,
 enable}()
Date: Wed, 06 Mar 2019 13:16:16 -0800
Message-ID: <155190697673.20095.8507456124067904731__31640.5360282928$1551906999$gmane$org@swboyd.mtv.corp.google.com>
References: <20190305044936.22267-1-dbasehore@chromium.org>
 <20190305044936.22267-2-dbasehore@chromium.org>
 <155181177527.20095.15680753964583935841@swboyd.mtv.corp.google.com>
 <CAGAzgso9-1j2XDsHQn+RbSTtV8Vqideu_nG=2qCJD94iyaxFFQ@mail.gmail.com>
 <CAGAzgsp0fWbH1f7gRKvhTotvdHMAL8gWw1bTKpVHfW9hJddXAw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAGAzgsp0fWbH1f7gRKvhTotvdHMAL8gWw1bTKpVHfW9hJddXAw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "dbasehore ." <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: =?UTF-8?Q?aisheng=2Edong=40nxp=2Ecom=2C?=
List-Id: linux-rockchip.vger.kernel.org

Quoting dbasehore . (2019-03-05 20:11:57)
> On Tue, Mar 5, 2019 at 5:35 PM dbasehore . <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> >
> > On Tue, Mar 5, 2019 at 10:49 AM Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> > >
> > > Quoting Derek Basehore (2019-03-04 20:49:31)
> > > > From: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
> > > >
> > > > Enabling and preparing clocks can be written quite naturally with
> > > > recursion. We start at some point in the tree and recurse up the
> > > > tree to find the oldest parent clk that needs to be enabled or
> > > > prepared. Then we enable/prepare and return to the caller, going
> > > > back to the clk we started at and enabling/preparing along the
> > > > way. This also unroll the recursion in unprepare,disable which can
> > > > just be done in the order of walking up the clk tree.
> > > >
> > > > The problem is recursion isn't great for kernel code where we
> > > > have a limited stack size. Furthermore, we may be calling this
> > > > code inside clk_set_rate() which also has recursion in it, so
> > > > we're really not looking good if we encounter a tall clk tree.
> > > >
> > > > Let's create a stack instead by looping over the parent chain and
> > > > collecting clks of interest. Then the enable/prepare becomes as
> > > > simple as iterating over that list and calling enable.
> > > >
> > > > Modified verison of https://lore.kernel.org/patchwork/patch/814369/
> > > > -Fixed kernel warning
> > > > -unrolled recursion in unprepare/disable too
> > > >
> > > > Cc: Jerome Brunet <jbrunet-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
> > > > Signed-off-by: Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
> > > > Signed-off-by: Derek Basehore <dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> > > > ---
> > >
> > > From the original post:
> > >
> > > "I have some vague fear that this may not work if a clk op is framework
> > > reentrant and attemps to call consumer clk APIs from within the clk ops.
> > > If the reentrant call tries to add a clk that's already in the list then
> > > we'll corrupt the list. Ugh."
> > >
> > > Do we have this sort of problem here? Or are you certain that we don't
> > > have clks that prepare or enable something that is already in the
> > > process of being prepared or enabled?
> >
> > I can look into whether anything's doing this and add a WARN_ON which
> > returns an error if we ever hit that case. If this is happening on
> > some platform, we'd want to correct that anyways.
> >
> 
> Also, if we're ever able to move to another locking scheme (hopefully
> soon...), we can make the prepare/enable locks non-reentrant. Then if
> anyone recursively calls back into the framework for another
> prepare/enable, they will deadlock. I guess that's one way of making
> sure no one does that.
> 

Sure, but we can't regress the system by making prepare and enable
non-reentrant. I was thinking we could write a Coccinelle script that
looks for suspects by matching against a clk_ops structure and then
picks out the prepare and enable ops from them and looks in those
functions for calls to clk_prepare_enable() or clk_prepare() or
clk_enable(). I don't know if or how it's possible to descend into the
call graph from the clk_ops function to check for clk API calls, so we
probably need to add the WARN_ON to help us find these issues at runtime
too.

You can use this cocci script to start poking at it though:

<smpl>
@ prepare_enabler @
identifier func;
identifier hw;
position p;
expression E;
@@
int func@p(struct clk_hw *hw)
{
...
(
clk_prepare_enable(E);
|
clk_prepare(E);
|
clk_enable(E);
)
...
}

@ has_preparer depends on prepare_enabler @
identifier ops;
identifier prepare_enabler.func;
position p;
@@
struct clk_ops ops = {
...,
.prepare = func@p,
...
};

@ has_enabler depends on prepare_enabler @
identifier ops;
identifier prepare_enabler.func;
position p;
@@
struct clk_ops ops = {
...,
.enable = func@p,
...
};

@script:python@
pf << prepare_enabler.p;
@@

coccilib.report.print_report(pf[0],"WARNING something bad called from clk op")

</smpl>

I ran it and found one hit in the davinci clk driver where the driver
manually turns a clk on to ensure a PLL locks. Hopefully that's a
different clk tree than the current one so that it's not an issue.

We already have quite a few grep hits for clk_prepare_enable() in
drivers/clk/ too but I think those are mostly drivers that haven't
converted to using critical clks so they have setup code to do that for
them. I suppose it would also be good to dig through all those drivers
and move them to the critical clk flag. For example, here's a patch for
the highbank driver that should definitely be moved to critical clks.

-----8<-----
diff --git a/drivers/clk/clk-highbank.c b/drivers/clk/clk-highbank.c
index 8e4581004695..bd328b0eb243 100644
--- a/drivers/clk/clk-highbank.c
+++ b/drivers/clk/clk-highbank.c
@@ -17,7 +17,6 @@
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/err.h>
-#include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/io.h>
 #include <linux/of.h>
@@ -272,7 +271,7 @@ static const struct clk_ops periclk_ops = {
 	.set_rate = clk_periclk_set_rate,
 };
 
-static __init struct clk *hb_clk_init(struct device_node *node, const struct clk_ops *ops)
+static void __init hb_clk_init(struct device_node *node, const struct clk_ops *ops, unsigned long clkflags)
 {
 	u32 reg;
 	struct hb_clk *hb_clk;
@@ -284,11 +283,11 @@ static __init struct clk *hb_clk_init(struct device_node *node, const struct clk
 
 	rc = of_property_read_u32(node, "reg", &reg);
 	if (WARN_ON(rc))
-		return NULL;
+		return;
 
 	hb_clk = kzalloc(sizeof(*hb_clk), GFP_KERNEL);
 	if (WARN_ON(!hb_clk))
-		return NULL;
+		return;
 
 	/* Map system registers */
 	srnp = of_find_compatible_node(NULL, NULL, "calxeda,hb-sregs");
@@ -301,7 +300,7 @@ static __init struct clk *hb_clk_init(struct device_node *node, const struct clk
 
 	init.name = clk_name;
 	init.ops = ops;
-	init.flags = 0;
+	init.flags = clkflags;
 	parent_name = of_clk_get_parent_name(node, 0);
 	init.parent_names = &parent_name;
 	init.num_parents = 1;
@@ -311,33 +310,31 @@ static __init struct clk *hb_clk_init(struct device_node *node, const struct clk
 	rc = clk_hw_register(NULL, &hb_clk->hw);
 	if (WARN_ON(rc)) {
 		kfree(hb_clk);
-		return NULL;
+		return;
 	}
-	rc = of_clk_add_hw_provider(node, of_clk_hw_simple_get, &hb_clk->hw);
-	return hb_clk->hw.clk;
+	of_clk_add_hw_provider(node, of_clk_hw_simple_get, &hb_clk->hw);
 }
 
 static void __init hb_pll_init(struct device_node *node)
 {
-	hb_clk_init(node, &clk_pll_ops);
+	hb_clk_init(node, &clk_pll_ops, 0);
 }
 CLK_OF_DECLARE(hb_pll, "calxeda,hb-pll-clock", hb_pll_init);
 
 static void __init hb_a9periph_init(struct device_node *node)
 {
-	hb_clk_init(node, &a9periphclk_ops);
+	hb_clk_init(node, &a9periphclk_ops, 0);
 }
 CLK_OF_DECLARE(hb_a9periph, "calxeda,hb-a9periph-clock", hb_a9periph_init);
 
 static void __init hb_a9bus_init(struct device_node *node)
 {
-	struct clk *clk = hb_clk_init(node, &a9bclk_ops);
-	clk_prepare_enable(clk);
+	hb_clk_init(node, &a9bclk_ops, CLK_IS_CRITICAL);
 }
 CLK_OF_DECLARE(hb_a9bus, "calxeda,hb-a9bus-clock", hb_a9bus_init);
 
 static void __init hb_emmc_init(struct device_node *node)
 {
-	hb_clk_init(node, &periclk_ops);
+	hb_clk_init(node, &periclk_ops, 0);
 }
 CLK_OF_DECLARE(hb_emmc, "calxeda,hb-emmc-clock", hb_emmc_init);
