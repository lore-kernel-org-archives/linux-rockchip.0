Return-Path: <SRS0=yKcj=B5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29AE8C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2020 09:43:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFDBF206FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2020 09:43:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="s7ZK8YlQ";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTtCwPnC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFDBF206FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=687eSVOCFRbnxVTAjQCVfBwLoERsyX7B/T3GwBtrmnQ=; b=s7ZK8YlQRF9BUPqy5FSDek0icB
	u1Ix0spy9mPBRzNjC7jtTSBTNomp+SwNUO5oV0Vs6sqeqYSwi5yzAKdoZs7z74U4rBOooDckKwGsw
	97CKglYcSj3TdFDaqLvWMhzkOSbD6Eir5kAWG+I1+1DwOAAQPp6u57nHaSlsHft4kAU2dvudUpGN9
	z43j4C29N3lzqm7I3H5F0zmBoJ+xu9V5nepm3OQOGymNYLEHaIloOTMKruHkF6YLQ8byHcLoNyRIA
	j+p7zFJAc5M+rlassSTQD3xUDaRL9XUW3GBmYkhlRvn0xi5zLJ+IHvLZ9yUFHU0OCMDyaP+F8h5F3
	tYCRYo4Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8Kcg-0007gT-FL; Wed, 19 Aug 2020 09:43:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8Kcb-0007fF-GX; Wed, 19 Aug 2020 09:43:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85206206FA;
 Wed, 19 Aug 2020 09:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597830184;
 bh=eQfdoB63wdKPPwQKDY/l7Z1OnRZwiyuLG2TBV1XF/ug=;
 h=From:To:Cc:Subject:Date:From;
 b=oTtCwPnCyX7AXZ5deKcl0ylPWh4hsAbWdc6VVFHGPIFzKZggRNOlfKISY6gZfzMKA
 2z3aqXCQIPT8QgiUY+OXkN/3jkj0GleL54IVej5nyCAYJ/ct6priOa6uiq58oEwzQW
 //AguAVc6yros8+HkbnrXSFPHY8EDxAxbAc9toSE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1k8KcZ-0049nd-22; Wed, 19 Aug 2020 10:43:03 +0100
From: Marc Zyngier <maz@kernel.org>
To: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] of: address: Work around missing device_type property in
 pcie nodes
Date: Wed, 19 Aug 2020 10:42:55 +0100
Message-Id: <20200819094255.474565-1-maz@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com,
 lorenzo.pieralisi@arm.com, robh@kernel.org, bhelgaas@google.com,
 heiko@sntech.de, kernel-team@android.com, frowand.list@gmail.com,
 jiaxun.yang@flygoat.com, robh+dt@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200819_054305_766598_169BC615 
X-CRM114-Status: GOOD (  20.49  )
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
 Heiko Stuebner <heiko@sntech.de>, Frank Rowand <frowand.list@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
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

In order to paper over it, let's add a workaround to the code
matching the device type, and accept as PCI any node that is
named "pcie",

A warning will hopefully nudge the user into updating their
DT to a fixed version if they can, but the incentive is
obviously pretty small.

Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parser")
Suggested-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 drivers/of/address.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 590493e04b01..b37bd9cc2810 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -128,15 +128,29 @@ static unsigned int of_bus_pci_get_flags(const __be32 *addr)
  * PCI bus specific translator
  */
 
+static bool of_node_is_pcie(struct device_node *np)
+{
+	bool is_pcie = of_node_name_eq(np, "pcie");
+
+	if (is_pcie)
+		pr_warn_once("%pOF: Missing device_type\n", np);
+
+	return is_pcie;
+}
+
 static int of_bus_pci_match(struct device_node *np)
 {
 	/*
  	 * "pciex" is PCI Express
 	 * "vci" is for the /chaos bridge on 1st-gen PCI powermacs
 	 * "ht" is hypertransport
+	 *
+	 * If none of the device_type match, and that the node name is
+	 * "pcie", accept the device as PCI (with a warning).
 	 */
 	return of_node_is_type(np, "pci") || of_node_is_type(np, "pciex") ||
-		of_node_is_type(np, "vci") || of_node_is_type(np, "ht");
+		of_node_is_type(np, "vci") || of_node_is_type(np, "ht") ||
+		of_node_is_pcie(np);
 }
 
 static void of_bus_pci_count_cells(struct device_node *np,
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
