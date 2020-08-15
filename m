Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A091C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 12:51:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EB4823122
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 12:51:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="o/vcJRPH";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxR0uKVy"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4EB4823122
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C7KfvefdaVCoDe0BYBagcWoeVWxW/y2C4dBx+eFbZgk=; b=o/vcJRPHAofCUAcPqj19ANjxq
	sWuZwg4M00kFml2dbQffXveWOsuHL6Y0Igq1qcwqieW6zwcwLS3J+HUD1Y+nDfmCtKjH3M5kmyXr9
	KxawB+WaRvob0Xu63wAhgn+/7yn05C9UvxJ4HO0WPtAMkKEOlXyzUfIvxTMZPbDG1ZRd4I1Gr02if
	Nw6gLO2rNbN502/TU0GUibNbXtyq0Lm0pFf4zQXOL9eAnfLrcV3OmwGiHXxSoS1hpozAy1dOdVNp3
	5FxK8LxYeDu25OATzwj5ZyAa3gkgKkVuM/JWGvulfLf0hTpv1aiRVYFd4HyjjHfTX7s2xzWf/h2IP
	hLDgyQhMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6vem-00019g-Un; Sat, 15 Aug 2020 12:51:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6veg-000183-Dl; Sat, 15 Aug 2020 12:51:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B2512311F;
 Sat, 15 Aug 2020 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597495885;
 bh=4asH1gc0Nnf0u9x4UFrqqedNqkxj9rZePIhJClf7JhY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AxR0uKVy0ZNoswEX9B3zlFjp2tS7XMcR9EgR7LaVuACg0qMzDC8jjdE66fFTtlFIZ
 gmkp1pCfoRVUfuNGo36pVe7F5ikBjkO32VbjSzF8Cdbv71OLOIgtPNblMY5FJrLWcT
 EUYr7Ave7UMiBP6L0xXXpBYVqk2OTKbO20bVkqQ8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1k6ved-002Kds-Ik; Sat, 15 Aug 2020 13:51:23 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] PCI: rockchip: Work around missing device_type property
 in DT
Date: Sat, 15 Aug 2020 13:51:11 +0100
Message-Id: <20200815125112.462652-2-maz@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200815125112.462652-1-maz@kernel.org>
References: <20200815125112.462652-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com,
 lorenzo.pieralisi@arm.com, robh@kernel.org, bhelgaas@google.com,
 heiko@sntech.de, kernel-team@android.com, robh+dt@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_085126_695988_FFF74B92 
X-CRM114-Status: GOOD (  20.11  )
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Roh Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recent changes to the DT PCI bus parsing made it mandatory for
device tree nodes describing a PCI controller to have the
'device_type = "pci"' property for the node to be matched.

Although this follows the letter of the specification, it
breaks existing device-trees that have been working fine
for years.  Rockchip rk3399-based systems are a prime example
of such collateral damage, and have stopped discovering their
PCI bus.

In order to paper over the blunder, let's add a workaround
to the pcie-rockchip driver, adding the missing property when
none is found at boot time. A warning will hopefully nudge the
user into updating their DT to a fixed version if they can, but
the insentive is obviously pretty small.

Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parser")
Suggested-by: Roh Herring <robh+dt@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 29 +++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 0bb2fb3e8a0b..d7dd04430a99 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -949,6 +949,35 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (!dev->of_node)
 		return -ENODEV;
 
+	/*
+	 * Most rk3399 DTs are missing the 'device_type = "pci"' property,
+	 * potentially leading to PCIe probing failure. Be kind to the
+	 * users and fix it up for them. Upgrading is recommended.
+	 */
+	if (!of_find_property(dev->of_node, "device_type", NULL)) {
+		const char dtype[] = "pci";
+		struct property *prop;
+
+		dev_warn(dev, "Working around missing device_type property\n");
+
+		prop = kzalloc(sizeof(*prop), GFP_KERNEL);
+		if (!prop)
+			return -ENOMEM;
+
+		prop->name	= kstrdup("device_type", GFP_KERNEL);
+		prop->value	= kstrdup(dtype, GFP_KERNEL);
+		prop->length	= ARRAY_SIZE(dtype);
+		if (!prop->name || !prop->value) {
+			kfree(prop->name);
+			kfree(prop->value);
+			kfree(prop);
+			return -ENOMEM;
+		}
+
+		if (of_add_property(dev->of_node, prop))
+			dev_warn(dev, "Failed to add property, probing may fail");
+	}
+
 	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*rockchip));
 	if (!bridge)
 		return -ENOMEM;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
