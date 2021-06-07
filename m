Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0153FC47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 21:34:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C063611BD
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 21:34:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C063611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ETC8UAJQ379NCBaqHJUCFizpzDSOAjU/e9XTSTEgz+Y=; b=YiV+dFc8rKvAUu
	8Tu6/1ii+/68aqhBzEruQtlHiJf3u4IaJkZAQVPnoW0IuwlGtMxS+j/US16kti371KaXdK/7UfBZF
	19CMvzPg5Q5mLDwW6uG9ondd7sSDU6di4r3UjC8x/noX1Ouk5souOzsTbA77ytPyDPNDhdPt7ouvM
	r5nXDUJCTJVOuGsiIHId50WUYYa2UcMqStnqG2U4uwBMWjMwMbju2kCY7/pA4suCm3lRdtWDC6bOM
	X0EIojAuAJtB46kpgwKZkirKTtOywmblSynlEZWJXsSRf+TTcmLur4OFdWk9FKs/4uW2/3qHX5OBq
	ggijjJyHoJpFDDhGM5dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqMsp-005UMf-NO; Mon, 07 Jun 2021 21:34:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqMsb-005ULK-F7
 for linux-rockchip@lists.infradead.org; Mon, 07 Jun 2021 21:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623101629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Ne0sdd3NZl98G4gVbRdymPLZj6j1uGmDFhwuH8srjsM=;
 b=XeFnR7kRBaRpYOWTQcwcjb6vx4scgegOky//ub0aZrxG4ahEQDAi/Tx2H3SeyLFvzbOPiY
 A4Uv5VXiCKcKqWOaZHs0tScXeoGA5wgSc/m3AEFcf1CEuRUwGTsFoNvfBoeZUjTNtN087P
 tdmCs0sS4sw6rpA+fBHQOoLufXXS9k0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-b5pcmykQOum9bOnPYfndqQ-1; Mon, 07 Jun 2021 17:33:48 -0400
X-MC-Unique: b5pcmykQOum9bOnPYfndqQ-1
Received: by mail-wm1-f72.google.com with SMTP id
 n2-20020a05600c3b82b02901aeb7a4ac06so358892wms.5
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Jun 2021 14:33:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ne0sdd3NZl98G4gVbRdymPLZj6j1uGmDFhwuH8srjsM=;
 b=cXeY4jMfYURmfbZgPCzOcLj2e8GjiLpwqC/75ZsojCwCd2q4kfzh4bXefDVbPXaxsB
 4+Z32X/WYHNNDrDXuOaHbXRVvmA4bNyy9eHHm0qTVjapdqi0OJk7Til3kYJbP1TSJD7u
 RC2btv0UAbdwclFjyy1frgQw7dN7rnjYKmROibt2D4/MOfiCwsoLW5V0AN5QQElB+/K2
 PQMudXtAqXtPdghhJmA4cJwRl7JgixLUCzqMOmILkZTjQdMVgqydKIal3yuncuA3AmN/
 MNYtJflUnyFgK6JulyiVmG0QbHmSxfTMpk/6wDU3dRIOdCMZ+fUHBpT+h7mBAHoc72KH
 FsQQ==
X-Gm-Message-State: AOAM5306UVqE7ksl+AS/yntpN5bONAbBnbGklctQzN7mXrBxZdBY1o9m
 xiAVO0qZJP/aYTg68NRXTdsguCXlXyfnYJ3WNr6Vr2zCa6hi13+Ka9wQuGi9UR51UjIDysDduxh
 OpqdGI8pRmby5t8zRmlrUf0OrhFOsL9Fz
X-Received: by 2002:a7b:c24e:: with SMTP id b14mr19012447wmj.6.1623101627127; 
 Mon, 07 Jun 2021 14:33:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4ll9t3EwcCKy3igwdQwoTdXU//20aYaO8amkuTKLrzZN/i3Xio/esdoJJJge80qbLcxBnjQ==
X-Received: by 2002:a7b:c24e:: with SMTP id b14mr19012434wmj.6.1623101626926; 
 Mon, 07 Jun 2021 14:33:46 -0700 (PDT)
Received: from minerva.home ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id q5sm17659319wrm.15.2021.06.07.14.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 14:33:46 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 Peter Robinson <pbrobinson@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] PCI: rockchip: Avoid accessing PCIe registers with clocks
 gated
Date: Mon,  7 Jun 2021 23:33:28 +0200
Message-Id: <20210607213328.1711570-1-javierm@redhat.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_143353_609553_7D9953FF 
X-CRM114-Status: GOOD (  19.02  )
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

IRQ handlers that are registered for shared interrupts can be called at
any time after have been registered using the request_irq() function.

It's up to drivers to ensure that's always safe for these to be called.

Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
their handlers are registered very early in the probe function, an error
later can lead to these handlers being executed before all the required
have been properly setup.

For example, the rockchip_pcie_read() function used by these IRQ handlers
expects that some PCIe clocks will already be enabled, otherwise trying
to access the PCIe registers causes the read to hang and never return.

The CONFIG_DEBUG_SHIRQ option tests if drivers are able to cope with their
shared interrupt handlers being called, by generating a spurious interrupt
just before a shared interrupt handler is unregistered.

But this means that if the option is enabled, any error in the probe path
of this driver could lead to one of the IRQ handlers to be executed.

In a rockpro64 board, the following sequence of events happens:

  1) "pcie-sys" IRQ is requested and its handler registered.
  2) "pcie-client" IRQ is requested and its handler registered.
  3) probe later fails due readl_poll_timeout() returning a timeout.
  4) the "pcie-sys" IRQ is unregistered.
  5) CONFIG_DEBUG_SHIRQ triggers a spurious interrupt.
  6) "pcie-client" IRQ handler is called for this spurious interrupt.
  7) IRQ handler tries to read PCIE_CLIENT_INT_STATUS with clocks gated.
  8) the machine hangs because rockchip_pcie_read() call never returns.

To avoid cases like this, the handlers don't have to be registered until
very late in the probe function, once all the resources have been setup.

So let's just move all the IRQ init before the pci_host_probe() call, that
will prevent issues like this and seems to be the correct thing to do too.

Reported-by: Peter Robinson <pbrobinson@gmail.com>
Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index f1d08a1b159..78d04ac29cd 100644
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
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
