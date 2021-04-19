Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E86FC43611
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 08:35:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C176461029
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 08:35:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C176461029
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l0f6giGpd0uXPGTTSwQzG5g4y+YptZPwEi9WBnn5orc=; b=X81fUROmca8UjjAtDeytDUXA5
	oOSXlyd2onlGlOf49bl+v1mdT++lcJKxgW6a+0CRbYTq7HwAU3qj35OW86bW09di4cVookYK+adDx
	i8KHdjKUGq9uTk8uCatGo7iHJ7oSli18508MBf9zFC9/5YRTou/dniz8vBqLtZ9gfd9NiKV9FiaLp
	Za27UbUiIG0u3VtHwMnjPUvODPYtV6KzCSWrQgk5Dq4SZS/LrJYu0DjHE7qNislWo5yh6+fPi4iKr
	MtPAPPthdj8o/cfWs8VYxVhJ3oGQ0orzbkO8zE8mhFH/kscdjuQuBNZoaD8kWWbT9Z6JfQf6IlGCD
	+BChUcXHA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYPNC-009RRa-Qh; Mon, 19 Apr 2021 08:35:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYPMi-009RJD-Pg; Mon, 19 Apr 2021 08:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xZP94/W6e+feo2IXbD5QHf0IlP942uGU++0kfiWPUQA=; b=JHeoStiL3m61TXDjrJdYtzRT1y
 EeDZjoQJaPzUW2GtsX/oT9a+JlWy55NwDlQ/XhGMsfYPl/6WA9Qg1FBrROZ5ebYz/WilCve+XsQx7
 RDR/bq6Gw/479biDaHVhxPnbgbAW5/OatLJcPKGuRlhayP8Nmcdod0mVi3aEE02Am8NcVSHzk/gYH
 JzdBKfsokOQqXu8LCjBD4V1yXkma1RWvCt+n2z8m2EdwnhcWsLeRt++v7LcvEelV2Jihfm5wk3qy0
 XQPcc21MBZwkR5zkSA5P/FFtGvNkiqXlz5n9ApfAQZhO3fmcOoBpvCP7p3ucvLGxNJVrDFEzSkCkR
 k7MzBXDw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYPMg-00BBvu-78; Mon, 19 Apr 2021 08:34:43 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13J8YXui119265;
 Mon, 19 Apr 2021 03:34:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618821273;
 bh=xZP94/W6e+feo2IXbD5QHf0IlP942uGU++0kfiWPUQA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=KIA/Xg2WmJnjxvzl2hud17raWJBObxC0XlaXsYEtYDwgehkZTOa2Ic/Ak1KLFgH6i
 V+1/hjN4bsAmXAw+sSknsek8ttPDUm9yehjLxUuWENgKcfp7ZwT7FvH2WQOP6tq2BD
 xJW0Yhm7PA0AIzhJyNnyKZ+iH2I3QWwMNwWPH5zk=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13J8YXE9025413
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 19 Apr 2021 03:34:33 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 19
 Apr 2021 03:34:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 19 Apr 2021 03:34:33 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13J8Y2aS051194;
 Mon, 19 Apr 2021 03:34:26 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda
 <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
CC: Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-renesas-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v5 3/7] PCI: endpoint: Add support to link a physical function
 to a virtual function
Date: Mon, 19 Apr 2021 14:03:57 +0530
Message-ID: <20210419083401.31628-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210419083401.31628-1-kishon@ti.com>
References: <20210419083401.31628-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_013442_361864_7EAA9527 
X-CRM114-Status: GOOD (  11.84  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

While the physical function has to be linked to endpoint controller, the
virtual function has to be linked to a physical function. Add support to
link a physical function to a virtual function in pci-ep-cfs.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-ep-cfs.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index f3a8b833b479..999911801877 100644
--- a/drivers/pci/endpoint/pci-ep-cfs.c
+++ b/drivers/pci/endpoint/pci-ep-cfs.c
@@ -475,6 +475,28 @@ static struct configfs_attribute *pci_epf_attrs[] = {
 	NULL,
 };
 
+static int pci_epf_vepf_link(struct config_item *epf_pf_item,
+			     struct config_item *epf_vf_item)
+{
+	struct pci_epf_group *epf_vf_group = to_pci_epf_group(epf_vf_item);
+	struct pci_epf_group *epf_pf_group = to_pci_epf_group(epf_pf_item);
+	struct pci_epf *epf_pf = epf_pf_group->epf;
+	struct pci_epf *epf_vf = epf_vf_group->epf;
+
+	return pci_epf_add_vepf(epf_pf, epf_vf);
+}
+
+static void pci_epf_vepf_unlink(struct config_item *epf_pf_item,
+				struct config_item *epf_vf_item)
+{
+	struct pci_epf_group *epf_vf_group = to_pci_epf_group(epf_vf_item);
+	struct pci_epf_group *epf_pf_group = to_pci_epf_group(epf_pf_item);
+	struct pci_epf *epf_pf = epf_pf_group->epf;
+	struct pci_epf *epf_vf = epf_vf_group->epf;
+
+	pci_epf_remove_vepf(epf_pf, epf_vf);
+}
+
 static void pci_epf_release(struct config_item *item)
 {
 	struct pci_epf_group *epf_group = to_pci_epf_group(item);
@@ -487,6 +509,8 @@ static void pci_epf_release(struct config_item *item)
 }
 
 static struct configfs_item_operations pci_epf_ops = {
+	.allow_link		= pci_epf_vepf_link,
+	.drop_link		= pci_epf_vepf_unlink,
 	.release		= pci_epf_release,
 };
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
