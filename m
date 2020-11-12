Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F741C63697
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 17:55:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE0CA21D40
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 17:55:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="h1SjH4Hr";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ti.com header.i=@ti.com header.b="e3bGjXdc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE0CA21D40
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Tvtoqk4fL4eNgkvjSr6noUa9/UM49wmEjkmSVtz+3Q=; b=h1SjH4HrK4G1YuO0XTFP7p/gC
	spwHTwQySvd4+cWRg/O1DNWRFnZQw9ZqRxD3lFJrTvY9dy41lTTUGN6IaGeA1dkrf4tyakgK2+d7Z
	3gYe2DH3ilXbljlkovkbS7nh5mnNl6npMtD/HLsTzqOi3jzgT1tIEPk09ZC2I6bhVLiufSKugztDn
	iIEKOF3/62fiam1ff6gBs+Wzyadr5OmR0+q28SPUwTxqHVlVV9osVSSUGW4L4TUuus7hCy37EAzmB
	yPsO4rmar6wGYLw8J/J/Ydwnwqmo1Xq23tFl4ck5sdQlJ1lTToFOco1ASWjffYvzFeWTBOov2eD4M
	HM1rLH4/A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdGoF-0003U0-8e; Thu, 12 Nov 2020 17:54:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdGnj-0003Ht-Q6; Thu, 12 Nov 2020 17:54:31 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ACHsJwZ055804;
 Thu, 12 Nov 2020 11:54:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1605203659;
 bh=OGbCluNMFYG6+JkGXeTpWGq0Yq7jW6KuFE4M51a90Qw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=e3bGjXdc2kJ/Hd3Ls1x1OE4vtxEdHWAcVG/9GN50Otkq4NETpaS3zlrnA1bKYS0AE
 X4urDzzAp+6ODdyUkLrorsm3Q0RodHUNTZpE9FWM/qpRTdXflzm3MHv143l6ArasQn
 HD5hupB82eOyiZTmFSIyDf4JEoH4xa7ZjYgVMIFs=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ACHsIiY027791
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Nov 2020 11:54:18 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 12
 Nov 2020 11:54:18 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 12 Nov 2020 11:54:18 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ACHrx9s094087;
 Thu, 12 Nov 2020 11:54:13 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, Tom Joseph
 <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel
 <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 2/6] PCI: endpoint: Add support to add virtual function in
 endpoint core
Date: Thu, 12 Nov 2020 23:23:54 +0530
Message-ID: <20201112175358.2653-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201112175358.2653-1-kishon@ti.com>
References: <20201112175358.2653-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_125428_076263_6C2118E6 
X-CRM114-Status: GOOD (  24.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support to add virtual function in endpoint core. The virtual
function can only be associated with a physical function instead of a
endpoint controller. Provide APIs to associate a virtual function with
a physical function here.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c |  2 +-
 drivers/pci/endpoint/pci-epf-core.c | 96 ++++++++++++++++++++++++++++-
 include/linux/pci-epf.h             | 16 ++++-
 3 files changed, 111 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index cc8f9eb2b177..fe6d23849502 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -548,7 +548,7 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf,
 	u32 func_no;
 	int ret = 0;
 
-	if (IS_ERR_OR_NULL(epc))
+	if (IS_ERR_OR_NULL(epc) || epf->is_vf)
 		return -EINVAL;
 
 	if (type == PRIMARY_INTERFACE && epf->epc)
diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 7646c8660d42..3f1271a63be5 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -62,13 +62,20 @@ EXPORT_SYMBOL_GPL(pci_epf_type_add_cfs);
  */
 void pci_epf_unbind(struct pci_epf *epf)
 {
+	struct pci_epf *epf_vf;
+
 	if (!epf->driver) {
 		dev_WARN(&epf->dev, "epf device not bound to driver\n");
 		return;
 	}
 
 	mutex_lock(&epf->lock);
-	epf->driver->ops->unbind(epf);
+	list_for_each_entry(epf_vf, &epf->pci_vepf, list) {
+		if (epf_vf->is_bound)
+			epf_vf->driver->ops->unbind(epf_vf);
+	}
+	if (epf->is_bound)
+		epf->driver->ops->unbind(epf);
 	mutex_unlock(&epf->lock);
 	module_put(epf->driver->owner);
 }
@@ -83,6 +90,7 @@ EXPORT_SYMBOL_GPL(pci_epf_unbind);
  */
 int pci_epf_bind(struct pci_epf *epf)
 {
+	struct pci_epf *epf_vf;
 	int ret;
 
 	if (!epf->driver) {
@@ -94,13 +102,95 @@ int pci_epf_bind(struct pci_epf *epf)
 		return -EAGAIN;
 
 	mutex_lock(&epf->lock);
+	list_for_each_entry(epf_vf, &epf->pci_vepf, list) {
+		epf_vf->func_no = epf->func_no;
+		epf_vf->epc = epf->epc;
+		epf_vf->sec_epc = epf->sec_epc;
+		ret = epf_vf->driver->ops->bind(epf_vf);
+		if (ret)
+			goto ret;
+		epf_vf->is_bound = true;
+	}
+
 	ret = epf->driver->ops->bind(epf);
+	if (ret)
+		goto ret;
+	epf->is_bound = true;
+
+	mutex_unlock(&epf->lock);
+	return 0;
+
+ret:
 	mutex_unlock(&epf->lock);
+	pci_epf_unbind(epf);
 
 	return ret;
 }
 EXPORT_SYMBOL_GPL(pci_epf_bind);
 
+/**
+ * pci_epf_add_vepf() - associate virtual EP function to physical EP function
+ * @epf_pf: the physical EP function to which the virtual EP function should be
+ *   associated
+ * @epf_vf: the virtual EP function to be added
+ *
+ * A physical endpoint function can be associated with multiple virtual
+ * endpoint functions. Invoke pci_epf_add_epf() to add a virtual PCI endpoint
+ * function to a physical PCI endpoint function.
+ */
+int pci_epf_add_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf)
+{
+	u32 vfunc_no;
+
+	if (IS_ERR_OR_NULL(epf_pf) || IS_ERR_OR_NULL(epf_vf))
+		return -EINVAL;
+
+	if (epf_pf->epc || epf_vf->epc || epf_vf->epf_pf)
+		return -EBUSY;
+
+	if (epf_pf->sec_epc || epf_vf->sec_epc)
+		return -EBUSY;
+
+	mutex_lock(&epf_pf->lock);
+	vfunc_no = find_first_zero_bit(&epf_pf->vfunction_num_map,
+				       BITS_PER_LONG);
+	if (vfunc_no >= BITS_PER_LONG)
+		return -EINVAL;
+
+	set_bit(vfunc_no, &epf_pf->vfunction_num_map);
+	epf_vf->vfunc_no = vfunc_no;
+
+	epf_vf->epf_pf = epf_pf;
+	epf_vf->is_vf = true;
+
+	list_add_tail(&epf_vf->list, &epf_pf->pci_vepf);
+	mutex_unlock(&epf_pf->lock);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pci_epf_add_vepf);
+
+/**
+ * pci_epf_remove_vepf() - remove virtual EP function from physical EP function
+ * @epf_pf: the physical EP function from which the virtual EP function should
+ *   be removed
+ * @epf_vf: the virtual EP function to be removed
+ *
+ * Invoke to remove a virtual endpoint function from the physcial endpoint
+ * function.
+ */
+void pci_epf_remove_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf)
+{
+	if (IS_ERR_OR_NULL(epf_pf) || IS_ERR_OR_NULL(epf_vf))
+		return;
+
+	mutex_lock(&epf_pf->lock);
+	clear_bit(epf_vf->vfunc_no, &epf_pf->vfunction_num_map);
+	list_del(&epf_vf->list);
+	mutex_unlock(&epf_pf->lock);
+}
+EXPORT_SYMBOL_GPL(pci_epf_remove_vepf);
+
 /**
  * pci_epf_free_space() - free the allocated PCI EPF register space
  * @epf: the EPF device from whom to free the memory
@@ -317,6 +407,10 @@ struct pci_epf *pci_epf_create(const char *name)
 		return ERR_PTR(-ENOMEM);
 	}
 
+	/* VFs are numbered starting with 1. So set BIT(0) by default */
+	epf->vfunction_num_map = 1;
+	INIT_LIST_HEAD(&epf->pci_vepf);
+
 	dev = &epf->dev;
 	device_initialize(dev);
 	dev->bus = &pci_epf_bus_type;
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 6833e2160ef1..1de8fb72ce20 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -118,8 +118,10 @@ struct pci_epf_bar {
  * @header: represents standard configuration header
  * @bar: represents the BAR of EPF device
  * @msi_interrupts: number of MSI interrupts required by this function
- * @func_no: unique function number within this endpoint device
+ * @func_no: unique (physical) function number within this endpoint device
+ * @vfunc_no: unique virtual function number within a physical function
  * @epc: the EPC device to which this EPF device is bound
+ * @epf_pf: the physical EPF device to which this virtual EPF device is bound
  * @driver: the EPF driver to which this EPF device is bound
  * @list: to add pci_epf as a list of PCI endpoint functions to pci_epc
  * @nb: notifier block to notify EPF of any EPC events (like linkup)
@@ -130,6 +132,10 @@ struct pci_epf_bar {
  * @sec_epc_bar: represents the BAR of EPF device associated with secondary EPC
  * @sec_epc_func_no: unique (physical) function number within the secondary EPC
  * @group: configfs group associated with the EPF device
+ * @is_bound: indicates if bind notification to function driver has been invoked
+ * @is_vf: true - virtual function, false - physical function
+ * @vfunction_num_map: bitmap to manage virtual function number
+ * @pci_vepf: list of virtual endpoint functions associated with this function
  */
 struct pci_epf {
 	struct device		dev;
@@ -139,8 +145,10 @@ struct pci_epf {
 	u8			msi_interrupts;
 	u16			msix_interrupts;
 	u8			func_no;
+	u8			vfunc_no;
 
 	struct pci_epc		*epc;
+	struct pci_epf		*epf_pf;
 	struct pci_epf_driver	*driver;
 	struct list_head	list;
 	struct notifier_block   nb;
@@ -153,6 +161,10 @@ struct pci_epf {
 	struct pci_epf_bar	sec_epc_bar[6];
 	u8			sec_epc_func_no;
 	struct config_group	*group;
+	unsigned int		is_bound;
+	unsigned int		is_vf;
+	unsigned long		vfunction_num_map;
+	struct list_head	pci_vepf;
 };
 
 /**
@@ -196,4 +208,6 @@ int pci_epf_bind(struct pci_epf *epf);
 void pci_epf_unbind(struct pci_epf *epf);
 struct config_group *pci_epf_type_add_cfs(struct pci_epf *epf,
 					  struct config_group *group);
+int pci_epf_add_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf);
+void pci_epf_remove_vepf(struct pci_epf *epf_pf, struct pci_epf *epf_vf);
 #endif /* __LINUX_PCI_EPF_H */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
