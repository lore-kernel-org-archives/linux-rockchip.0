Return-Path: <SRS0=97ng=MC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45787C07E9B
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 23:52:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1303561416
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 23:52:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1303561416
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eKThJm7tGbEeSukXEJXclkm730Vuk5k6NTaqriAJuc=; b=PwE6pZnOBmTCtl
	r8oOxLcf/pm+3q+/H8mteKXPvy2EkRy+E97nSSATWpFWCy2vOUtnQtnLxzIIQYOugiOit49WxyXeP
	S8bF2vpJ1NkO/zLfXgcXxJX4soA0/ps8zkiNph56sLeQmBeOsgIGh1UP+gMzsmQKFM5qdcl3RC3Nu
	bBIqR/Nlx8DffM6VDlz/txCu6uufxjddaQ8zKwmcX5j8ZkWjgUXHUkyhgWs1XzDGu9swNVNTDopIZ
	cla6VHqbtnx8l/WKCyYTAp8B00ddd/5jQLyiqvU3dzM0SRe8v3Rei7FyJo3op1UWQftjYQntre5Wn
	6eN4soMk1bqkOZp5LbMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2Mlq-004JEX-6c; Sat, 10 Jul 2021 23:52:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2MkP-004ICN-Ce; Sat, 10 Jul 2021 23:51:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E58D2613E0;
 Sat, 10 Jul 2021 23:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625961061;
 bh=N5eJoTF0ViH2kJuzZiUhRZNc/Voul3eL5qnXxBEUhno=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rqpk5y8STynGzkyDnq/K818q/6pHUTB+L4+2sRu+hEGULdjMF2wa1Tmq2ALHgAKZz
 BaRaEfrrdYn9FHD1UPZuhJfjI1fPvY/6PW1AexgTdmNmlfI1gBZKCulwWjjSbwwYWl
 +PekKf3KRkEgQUBNDKv+OB2pOYWE29brWpR+xWLqKNOoWxPgbvw04hpmBMLXvDRl+t
 QRhnDYaW+Z+AO/BBAH48fLzmEKQnxI0N+oS4X84xq2l8uS9wvPZK0ZOqhNJ5DhWZ6m
 wfZ0cOL8tkt8IsD7TYWclPoTeGRqXisSj7koDW2155NBjvxozZ5WMHULH2tj2obz8p
 dZie9VwQbI0SA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sasha Levin <sashal@kernel.org>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 33/37] PCI: rockchip: Register IRQ handlers after
 device and data are ready
Date: Sat, 10 Jul 2021 19:50:11 -0400
Message-Id: <20210710235016.3221124-33-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210710235016.3221124-1-sashal@kernel.org>
References: <20210710235016.3221124-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210710_165101_524093_A68A2796 
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
index 9705059523a6..0d6df73bb918 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -593,10 +593,6 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
 	if (err)
 		return err;
 
-	err = rockchip_pcie_setup_irq(rockchip);
-	if (err)
-		return err;
-
 	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
 	if (IS_ERR(rockchip->vpcie12v)) {
 		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
@@ -974,8 +970,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (err)
 		goto err_vpcie;
 
-	rockchip_pcie_enable_interrupts(rockchip);
-
 	err = rockchip_pcie_init_irq_domain(rockchip);
 	if (err < 0)
 		goto err_deinit_port;
@@ -993,6 +987,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
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
