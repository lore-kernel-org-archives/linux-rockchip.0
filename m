From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [RFC PATCH] irqchip/gic-v3: Try to distribute irq affinity to the
 less distributed CPU
Date: Fri, 18 May 2018 17:47:46 +0800
Message-ID: <1526636866-209210-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

gic-v3 seems only suppot distribute hwirq to one CPU in dispite of
setting it via /proc/irq/*/smp_affinity.

My RK3399 platform has 6 CPUs and I was trying to bind the emmc
irq, whose hwirq is 43 and virq is 30, to all cores

echo 3f > /proc/irq/30/smp_affinity

but the I/O test still shows the irq was fired to CPU0. For really
user case, we may try to distribute different hwirqs to different cores,
with the hope of distributing to a less irq-binded core as possible.
Otherwise, as current implementation, gic-v3 always distribute it
to the first masked cpu, which is what cpumask_any_and actually did in
practice now on my platform.

So I was thinking to record how much hwirqs are distributed to each
core and try to pick up the least used one.

This patch is rather rough with slightly test on my board. Just for
asking advice from wisdom of your. :)

Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/irqchip/irq-gic-v3.c | 30 +++++++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 5 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 5a67ec0..b838fda 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -65,6 +65,7 @@ struct gic_chip_data {
 
 static struct gic_kvm_info gic_v3_kvm_info;
 static DEFINE_PER_CPU(bool, has_rss);
+static DEFINE_PER_CPU(int, bind_irq_nr);
 
 #define MPIDR_RS(mpidr)			(((mpidr) & 0xF0UL) >> 4)
 #define gic_data_rdist()		(this_cpu_ptr(gic_data.rdists.rdist))
@@ -340,7 +341,7 @@ static u64 gic_mpidr_to_affinity(unsigned long mpidr)
 	       MPIDR_AFFINITY_LEVEL(mpidr, 2) << 16 |
 	       MPIDR_AFFINITY_LEVEL(mpidr, 1) << 8  |
 	       MPIDR_AFFINITY_LEVEL(mpidr, 0));
-
+	per_cpu(bind_irq_nr, mpidr) += 1;
 	return aff;
 }
 
@@ -774,15 +775,31 @@ static void gic_smp_init(void)
 static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 			    bool force)
 {
-	unsigned int cpu;
+	unsigned int cpu = 0, min_irq_nr_cpu;
 	void __iomem *reg;
 	int enabled;
 	u64 val;
+	cpumask_t local;
+	u8 aff;
 
-	if (force)
+	if (force) {
 		cpu = cpumask_first(mask_val);
-	else
-		cpu = cpumask_any_and(mask_val, cpu_online_mask);
+	} else {
+		cpu = cpumask_and(&local, mask_val, cpu_online_mask);
+		if (cpu) {
+			min_irq_nr_cpu = cpumask_first(&local);
+			for_each_cpu(cpu, &local) {
+				if (per_cpu(bind_irq_nr, cpu) <
+						per_cpu(bind_irq_nr, min_irq_nr_cpu))
+					min_irq_nr_cpu = cpu;
+			}
+
+			cpu = min_irq_nr_cpu;
+
+		} else {
+			cpu = cpumask_any_and(mask_val, cpu_online_mask);
+		}
+	}
 
 	if (cpu >= nr_cpu_ids)
 		return -EINVAL;
@@ -796,6 +813,9 @@ static int gic_set_affinity(struct irq_data *d, const struct cpumask *mask_val,
 		gic_mask_irq(d);
 
 	reg = gic_dist_base(d) + GICD_IROUTER + (gic_irq(d) * 8);
+	aff = readq_relaxed(reg) & 0xff; //arch_gicv3.h
+	if (per_cpu(bind_irq_nr, aff))
+		per_cpu(bind_irq_nr, aff) -= 1;
 	val = gic_mpidr_to_affinity(cpu_logical_map(cpu));
 
 	gic_write_irouter(val, reg);
-- 
1.9.1
