From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] PCI: use IDA to manage domain number if not getting it from DT
Date: Wed, 22 Mar 2017 17:42:24 +0800
Message-ID: <1490175744-22727-1-git-send-email-shawn.lin@rock-chips.com>
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
To: Bjorn Helgaas <bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Wenrui Li <wenrui.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

If not getting domain number from DT, the domain number will
keep increasing once doing unbind/bind RC drivers. This could
introduce pointless tree view of lspci as shows below:

-+-[0001:00]---00.0-[01]----00.0
  \-[0000:00]-

The more test we do, the lengthier it would be. The more serious
issue is that if attaching two hierarchies for two different domains
belonging to two root bridges, so when doing unbind/bind test for one
of them and keep the other, then the domain number would finally
overflow and make the two hierarchies of devices share the some domain
number but actually they shouldn't. So it looks like we need to invent
a new indexing ID mechanism to manage domain number. This patch
introduces idr to achieve our purpose.

Cc: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/pci/pci.c    | 11 +++++++----
 drivers/pci/remove.c |  5 +++++
 include/linux/pci.h  |  2 ++
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index a881c0d..1752ccc 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -11,6 +11,7 @@
 #include <linux/kernel.h>
 #include <linux/delay.h>
 #include <linux/dmi.h>
+#include <linux/idr.h>
 #include <linux/init.h>
 #include <linux/of.h>
 #include <linux/of_pci.h>
@@ -5172,15 +5173,16 @@ static void pci_no_domains(void)
 }
 
 #ifdef CONFIG_PCI_DOMAINS
-static atomic_t __domain_nr = ATOMIC_INIT(-1);
+DEFINE_IDA(__domain_nr);
 
 int pci_get_new_domain_nr(void)
 {
-	return atomic_inc_return(&__domain_nr);
+	return ida_simple_get(&__domain_nr, 0, sizeof(u64), GFP_KERNEL);
 }
 
 #ifdef CONFIG_PCI_DOMAINS_GENERIC
-static int of_pci_bus_find_domain_nr(struct device *parent)
+static int of_pci_bus_find_domain_nr(struct pci_bus *bus,
+				     struct device *parent)
 {
 	static int use_dt_domains = -1;
 	int domain = -1;
@@ -5224,12 +5226,13 @@ static int of_pci_bus_find_domain_nr(struct device *parent)
 		domain = -1;
 	}
 
+	bus->use_dt_domains = use_dt_domains;
 	return domain;
 }
 
 int pci_bus_find_domain_nr(struct pci_bus *bus, struct device *parent)
 {
-	return acpi_disabled ? of_pci_bus_find_domain_nr(parent) :
+	return acpi_disabled ? of_pci_bus_find_domain_nr(bus, parent) :
 			       acpi_pci_bus_find_domain_nr(bus);
 }
 #endif
diff --git a/drivers/pci/remove.c b/drivers/pci/remove.c
index 73a03d3..ad93378 100644
--- a/drivers/pci/remove.c
+++ b/drivers/pci/remove.c
@@ -157,6 +157,11 @@ void pci_remove_root_bus(struct pci_bus *bus)
 	list_for_each_entry_safe(child, tmp,
 				 &bus->devices, bus_list)
 		pci_remove_bus_device(child);
+	#ifdef CONFIG_PCI_DOMAINS_GENERIC
+	if (!bus->use_dt_domains)
+		ida_simple_remove(&__domain_nr, bus->domain_nr);
+	#endif
+
 	pci_remove_bus(bus);
 	host_bridge->bus = NULL;
 
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 6732d32..235b336 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -505,6 +505,7 @@ struct pci_bus {
 	unsigned char	cur_bus_speed;	/* enum pci_bus_speed */
 #ifdef CONFIG_PCI_DOMAINS_GENERIC
 	int		domain_nr;
+	int		use_dt_domains;
 #endif
 
 	char		name[48];
@@ -1449,6 +1450,7 @@ static inline int pci_enable_ptm(struct pci_dev *dev, u8 *granularity)
  * configuration space.
  */
 #ifdef CONFIG_PCI_DOMAINS
+extern struct ida __domain_nr;
 extern int pci_domains_supported;
 int pci_get_new_domain_nr(void);
 #else
-- 
1.9.1
