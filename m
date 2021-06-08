Return-Path: <SRS0=ZuRO=LC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 398ECC47082
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jun 2021 08:04:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EDA9161287
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jun 2021 08:04:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EDA9161287
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wvc+oDfc8ObL04IjVnzPW95WoDFrm7r62j+yqArteE4=; b=n1Ee6qVFj2IBcv
	itSa/imEzbnBeJxfAGS83OxvQK9j1EWbOsNJsKTEG0JVwE1Pp9XjC3dZOU2UMfz3+bLPkpVR3yxG/
	nGcgxYTI2Nn8ynbML9zvHZNrqKEE1NiF/y20VOwMLVfhLS6vNcReZIV+kEpbbK6FRxDK3etYYrJSI
	MSyA4K+9ypD5CvJKH+yzeDhxRpeDXKOIuTCF2idr2LzwFBXiw9og4V6EYD+IdqgWgPkLgfPzc/JCW
	pCoizMX8ytGe1yp8bGMVXSyDNXzbHuBvq5pmSL+aMNrC9jFZ2PxNbLRbQDIvL0La1OfQ7z3r3kZn3
	4W6QkP08qY1up5dHtlFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqWih-006wCW-Ug; Tue, 08 Jun 2021 08:04:19 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqWie-006wAu-Uk
 for linux-rockchip@lists.infradead.org; Tue, 08 Jun 2021 08:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623139456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eRLfIlExKhLKW3ohxS3QmcrC8PB6Pwunoa93O+xqbII=;
 b=h1P11D0dibi7H1ucSSL+RGF5dvtFe2kb9esmB08rGU92x58G+6oB0elZDP/wmRIjPPHew+
 o4WSvt13l3O2NPZR66PZAgAqPHjSuAHGcdNmWbpzbZvKReQ2dCRmHRXhX/3U2mEKa7+Ab3
 umd6bbBvoBaRJuFhUh36tvVs584r7ow=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-V4b8pmL8NhWokWy01lG91g-1; Tue, 08 Jun 2021 04:04:14 -0400
X-MC-Unique: V4b8pmL8NhWokWy01lG91g-1
Received: by mail-wm1-f72.google.com with SMTP id
 l18-20020a05600c4f12b02901921c0f2098so287848wmq.0
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Jun 2021 01:04:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eRLfIlExKhLKW3ohxS3QmcrC8PB6Pwunoa93O+xqbII=;
 b=Eczxgy0+cjHdHv2me++ZqCmjDA294q0aGpDoFAMQZYrJbY1Sgw4CatizfgtG/JnRpL
 hUiGcd3+Txlp3ofPfATydihO5us5D66c+kg9K91hS2VfnjDvSi0TcGbrNL+t3ZnqWrRi
 eRr/ZPzXME/GS9bY7s2R6x2lz3Il0hJxRBsMi6/Au4upcTZVlJA4RfFydlec1e27gx9f
 3IZ6TJFQptRmG8nJSoYPjfKKG6AJxI80E/K8oF1uT0Ml0O0nfvsRb2OUZOry5N3LQacM
 2EiOtvOFNVliRPLhYYLX6a2KBLwjDBgPRWT3qUD/UlXfxJGB69wJhDl+GCmEWf2IPcY4
 dypg==
X-Gm-Message-State: AOAM533VplvNPUk3Z8rQvYMOYYVNAvDnajauTI1aZvnj4V0C+H3/93dI
 lL2RAx6oWkvjVA8ThtaitBf1OAY5XpTVVeS5B03EPhXSN5KXDMwDt3AGhXvVOOHt6A6NKJQiZLo
 itYYz4d8bf9EZfQxn/coEu8Vn7qN5W6IH
X-Received: by 2002:a5d:5983:: with SMTP id n3mr8801723wri.241.1623139453734; 
 Tue, 08 Jun 2021 01:04:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMZdm0lOV6CTzcaqjiMsts4ZrMuE5GRipe8Uouaz7yC1zHJCdwRHLBh8j5A6Gyo/laf6JPcw==
X-Received: by 2002:a5d:5983:: with SMTP id n3mr8801701wri.241.1623139453534; 
 Tue, 08 Jun 2021 01:04:13 -0700 (PDT)
Received: from minerva.redhat.com ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id q11sm18515680wrx.80.2021.06.08.01.04.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jun 2021 01:04:13 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with clocks
 gated
Date: Tue,  8 Jun 2021 10:04:09 +0200
Message-Id: <20210608080409.1729276-1-javierm@redhat.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_010417_100813_3C2363DB 
X-CRM114-Status: GOOD (  20.28  )
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
resources have been properly setup.

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
Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- Add missing word in the commit message.
- Include Shawn Lin's Acked-by tag.

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
