Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F82C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 14:08:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80C2761AE2
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 14:08:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 80C2761AE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOVSrVTxCKJ0BxyP8yhWliZRhi95tWQKe515HcbGhmY=; b=hYNb55dZujERac
	M80xaAHanx8dp7tfMsd2ru8TU5KuS7Z4RNMWPPObN3UiXcX+aETc4irgfeqxcCJ7VJ/I+KzwQA9D5
	chwwYeevxoQKKVjQnz11q2KBPbCPg0pYicLN+Wlfp8AVq5a95OAbc9fu8y8W9fF23AAyMh17MQv/H
	wpDVrRn1Av4rviKKmUAmclCU6kZCoc3ijg+w0xLLoo3qJyfy6v59zmN4vrkKWS06NV5/wU44kMwcm
	1C86+2PanSY2kMgQprSu9GpLKiX/H6H+cOF8MQGXUbzKEQNLZ381AXAtciPRCVVEAqPP5pBSWs35U
	5UdIKb+mJXZiaNja3/XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mni5J-0081j5-KA; Thu, 18 Nov 2021 14:08:17 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mni5F-0081gA-MA; Thu, 18 Nov 2021 14:08:15 +0000
Received: by mail-pg1-x532.google.com with SMTP id 136so5471507pgc.0;
 Thu, 18 Nov 2021 06:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g4G4Yffk64HxtbjZzw9/E8PSnsLTvUujtQvSwE3J4gU=;
 b=FEbJrXxCeKEEGR3YZzQOCO7CCSBIhw9NTelVNkIxCZruozHn8xhBs2z7SKtVg3Y7mb
 Spm+q3WhNteQeCkW5pRlBczWhIVXYdP5caVWHfusUnz+MFU142BG/j/2/ZuZy+4ddBav
 YTe7rJsZ3tvLaL8BMpNjkewMFAYPWnLS8iYtZ9oWwSjUtrH3/r1aacSIWAJNgCgv2Rbx
 9JjrlPIcL64R5NbYNUUSJy7V8FwH1P6BD8BvQ7gbdYKGISMWkSGLaV1qc5T70ka6GpX0
 HiymHCl5lSCgQHx8uSdIFmYjYITQV5yefpf3EZUJSFtCTZbG2Ychrh85/HhM6Dr5hIOM
 3fHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g4G4Yffk64HxtbjZzw9/E8PSnsLTvUujtQvSwE3J4gU=;
 b=NGAi6R6R2bxiF/a8sec6lu+iPikiHlJbStQ4SwWdQpkmfrI8yxoppMR4D3UuqJzNXx
 vNlEQG9jkEt6do1FsCUWw1/XgAr3dtl5wNiJJJlRH/zma8Hq0i/LyDyGsWjaT/ZlkMMX
 PyZBg1Aqoqqdh5WlmZs03/O7mDB7B2wBT/b0tb/ET3OARroY4L6H7RH3nvlbRiIcSOYn
 mvO8qyFUnzu1HGuMfTHU5wY3CGRwSmC3NMZ7daC+l7aK+NmeW7GGaTAQ0rG9x5CGVV6u
 /UDWk428SbIxGyI7GEQgoGY9R7ugT1uFiStRtQK1mrDqi3LJQWP6ZdwSkYsMHac9zjl4
 Zb5g==
X-Gm-Message-State: AOAM531zJ+bWdroGdPfVgrtifh7Ncs4cOZ4FwqaMvAfn1/RA3K7W2ryo
 S9HRvzUizkzlh0/okmmtpBA=
X-Google-Smtp-Source: ABdhPJx6ZoumMEGNj/EK6eVg69IbF74XwG8Czzauu8jXNtFO2IC2J8wksDYPCGoh99ek/ZBkGjo1RA==
X-Received: by 2002:a63:7d01:: with SMTP id y1mr11448956pgc.343.1637244492845; 
 Thu, 18 Nov 2021 06:08:12 -0800 (PST)
Received: from localhost.localdomain ([2406:7400:63:2c47:5ffe:fc34:61f0:f1ea])
 by smtp.gmail.com with ESMTPSA id
 x14sm2822878pjl.27.2021.11.18.06.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Nov 2021 06:08:12 -0800 (PST)
From: Naveen Naidu <naveennaidu479@gmail.com>
To: bhelgaas@google.com
Cc: Naveen Naidu <naveennaidu479@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
Subject: [PATCH v4 15/25] PCI: rockchip: Remove redundant error fabrication
 when device read fails
Date: Thu, 18 Nov 2021 19:33:25 +0530
Message-Id: <50f9a6fa16521a86cb24d2f27c1f66eb3568cb9a.1637243717.git.naveennaidu479@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1637243717.git.naveennaidu479@gmail.com>
References: <cover.1637243717.git.naveennaidu479@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_060813_781336_75EBD451 
X-CRM114-Status: GOOD (  13.02  )
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

An MMIO read from a PCI device that doesn't exist or doesn't respond
causes a PCI error. There's no real data to return to satisfy the
CPU read, so most hardware fabricates ~0 data.

The host controller drivers sets the error response values (~0) and
returns an error when faulty hardware read occurs. But the error
response value (~0) is already being set in PCI_OP_READ and
PCI_USER_READ_CONFIG whenever a read by host controller driver fails.

Thus, it's no longer necessary for the host controller drivers to
fabricate any error response.

This helps unify PCI error response checking and make error check
consistent and easier to find.

Signed-off-by: Naveen Naidu <naveennaidu479@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index c52316d0bfd2..45a28880f322 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -221,10 +221,8 @@ static int rockchip_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
 {
 	struct rockchip_pcie *rockchip = bus->sysdata;
 
-	if (!rockchip_pcie_valid_device(rockchip, bus, PCI_SLOT(devfn))) {
-		*val = 0xffffffff;
+	if (!rockchip_pcie_valid_device(rockchip, bus, PCI_SLOT(devfn)))
 		return PCIBIOS_DEVICE_NOT_FOUND;
-	}
 
 	if (pci_is_root_bus(bus))
 		return rockchip_pcie_rd_own_conf(rockchip, where, size, val);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
