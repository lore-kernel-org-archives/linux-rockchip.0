Return-Path: <SRS0=97ng=MC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 045FEC07E95
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 23:50:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C32056135E
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 23:50:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C32056135E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYUfNt+HQKoox/CVNoXyUjQTBn/s/oYyE5FBx4I0WgE=; b=rjloBQaiCqfEAX
	zb62IHAMeSpVMFMdEVtZ51mc608O9poyTqs5dUEoicwvKgc4p+5Ed1ncLMg2ECOtbzimRLRRher21
	VscKl9pRk3YfpFc3yXtBHgRN4lKP01Teupz4KMVSs38SBZdlMQAejK258bW9iPGBhyUTqZ2DZwUnK
	LILbS2tWFP5ejSxGoGFpJfxD/Zho6B6fe91b/AU9NSqpr6+qSE6N4stg0E+UKULRZzCICNY7sTsxB
	yFzxnSP7DpUBoxH87C7Q2yptktkCzzj5hbnaHrj7D9PzfkTbIsXcuZ22F4dB8kXrnhTYkUJXui5OZ
	DXaN9PCrQ063+ggIcUSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2Mjo-004Hk9-Q6; Sat, 10 Jul 2021 23:50:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2MjX-004HYa-SZ; Sat, 10 Jul 2021 23:50:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7CFAA60234;
 Sat, 10 Jul 2021 23:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625961007;
 bh=usjltRtEuFp8h2ICKIOczpm839/NnubVdwqvLBLU3LI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eBXCZ/3azbVIYV23cyVWDk4EPEiNMJ6pA7qoRoLK3PVvWuFaooMeehHpTuwBq7nCd
 fjJhVhwMTT+Rea+AUBoEk5++CcPAgK9K3LdCISt3r/+uK8YGytjBKRw1lp3RG2HehY
 jNBaSZqVXHzYer+cbRbxmTPJZWC8i4Ux5aaNieE7TOBXH0Rz/0jtiYRVum/9JDQOyf
 gKSaHFmvNHB8S+Nic1I09+A54dk/tLVXyXy5iI6FbLZv3kkzI8jyIcQCqfBRKjc/jr
 d8S3BIjwQsn6rL1qOXkZRoEfH31zKhvrFDu1SanJ4lFydgB+HU1UtyVSElBb7TPZpq
 byfME3y0KOTmw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sasha Levin <sashal@kernel.org>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 5.12 37/43] PCI: rockchip: Register IRQ handlers after
 device and data are ready
Date: Sat, 10 Jul 2021 19:49:09 -0400
Message-Id: <20210710234915.3220342-37-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710234915.3220342-1-sashal@kernel.org>
References: <20210710234915.3220342-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210710_165008_055496_1564B56C 
X-CRM114-Status: GOOD (  15.47  )
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

From: Javier Martinez Canillas <javierm@redhat.com>

[ Upstream commit 3cf5f7ab230e2b886e493c7a8449ed50e29d2b98 ]

An IRQ handler may be called at any time after it is registered, so
anything it relies on must be ready before registration.

rockchip_pcie_subsys_irq_handler() and rockchip_pcie_client_irq_handler()
read registers in the PCIe controller, but we registered them before
turning on clocks to the controller.  If either is called before the clocks
are turned on, the register reads fail and the machine hangs.

Similarly, rockchip_pcie_legacy_int_handler() uses rockchip->irq_domain,
but we installed it before initializing irq_domain.

Register IRQ handlers after their data structures are initialized and
clocks are enabled.

Found by enabling CONFIG_DEBUG_SHIRQ, which calls the IRQ handler when it
is being unregistered.  An error during the probe path might cause this
unregistration and IRQ handler execution before the device or data
structure init has finished.

[bhelgaas: commit log]
Link: https://lore.kernel.org/r/20210608080409.1729276-1-javierm@redhat.com
Reported-by: Peter Robinson <pbrobinson@gmail.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index f1d08a1b1591..78d04ac29cd5 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -592,10 +592,6 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 	if (err)
 		return err;
 
-	err = rockchip_pcie_setup_irq(rockchip);
-	if (err)
-		return err;
-
 	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
 	if (IS_ERR(rockchip->vpcie12v)) {
 		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
@@ -973,8 +969,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (err)
 		goto err_vpcie;
 
-	rockchip_pcie_enable_interrupts(rockchip);
-
 	err = rockchip_pcie_init_irq_domain(rockchip);
 	if (err < 0)
 		goto err_deinit_port;
@@ -992,6 +986,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	bridge->sysdata = rockchip;
 	bridge->ops = &rockchip_pcie_ops;
 
+	err = rockchip_pcie_setup_irq(rockchip);
+	if (err)
+		goto err_remove_irq_domain;
+
+	rockchip_pcie_enable_interrupts(rockchip);
+
 	err = pci_host_probe(bridge);
 	if (err < 0)
 		goto err_remove_irq_domain;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
