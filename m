Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91240606A319
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 10:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gq6tQ035;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=VDynZMsn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=cknow-tech.com header.i=@cknow-tech.com header.a=rsa-sha256 header.s=key1 header.b=MzoRXlTX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KtsKpsAz13U5ilaFs9ZBUsGggLfXptCLpDnlkFAncV4=; b=gq6tQ035q+oBru
	DS1KCxs+L9qfw6msXjDziohFTw/F+SGQtOpJROJIc83ihDrOVMlLxEjnTBDLAGCldOE4pJK1Dd1Li
	nT/HjM8abJ1HLpVR/sq+1+LF1vVVfvZIdJrEyKm0JJeQDZjBqgsf1ONPF5fYfCLazcSADJnuvYC/j
	p2/HAjXJD8tfzrDiKY0h2Z40sV9dCFP/6psu5DLNqa+bpPeslBiEva/2PTpI1I/gl9KvWfOFwaNX8
	R0kjD9ciFMtBf6h2m5zpB1fNf5NvlH2vYhC2QAbjEN1sZ0MgLBizcJfU5iAqqjjvaASkQlilBGuRh
	EnUBiWxRbQnMxrR5LUYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJTMS-0000000BaIc-2jQN;
	Wed, 21 Oct 2026 10:15:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJTMQ-0000000BaI2-2wAc
	for linux-rockchip@bombadil.infradead.org;
	Wed, 21 Oct 2026 10:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=qID+dEtKjHnTB7zRrjAZ+x1ovn7794ILO31jRDajG3g=; b=VDynZMsnOFqsxMDe06Akrps2/d
	B6/vEQ8avZNpLkh0+5MVF5s8Jb6tBLEu5FFxG5kmS/3ntvFOYvsFcwns2qZtVEVsUeNWiSMftdsQb
	IIy61MKmRp+Cz7OI/QZiyiYZC4+XhY3hW4gC4OJR0UaDWqCPjgTpSuDMfbjYYyDUHt0QgFDoVONo/
	in8KDEzV/RwX6oZNsxhbjYNlO9jWUntBq1SJZLoq/oS/sPCM01aBu6CZGHTJrGSoIbiXjBwVJ0GSR
	hiqxoLu4Hqz0RG5ZEqty+orvT7fiD9jc6q6/0bQAoubjr7TNu95HKD10oH2nczC1iw+E+xRtVfvCG
	b1qwjO0A==;
Received: from out-159.mta0.migadu.com ([2001:41d0:1004:224b::9f] helo=mta0.migadu.com)
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJTMN-00000005h7L-3Eho
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Oct 2026 10:15:53 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=gsCMZZdvoKKiSu7dqO9JkNt1TMT38UkvVw1xwlAFKHE=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792577742; v=1; x=1793182542;
 b=MzoRXlTXc+JAtToIuPIerhcflb10/HaSykfPkyk9peAW+RP8wlgKsKIHjPMmynjgBKnzgFC9
 jp2IBpB2CbkGAKg+MEnPw4kXJyQY2aQaqHFgTix9HznEDdBq3Zh4/RFks6Ue/mIipL4qYZ4TpQU
 FpjjVtToQ3hFu5COTGPm30qRwdaJI7OftEDPaqFNDJBcAJ+GY5K315TPi/t8cAg14Ruf+bwRr54
 xTB2h0fi/4PspJ65z4lxfxAFyYkircfCMmMUNUT7xRNgeZQIzE/4phVfXsVgELWE5G7+ZP7IE1J
 7zX2PrTFxEfv+XnqKhvDRSDqcV6psfzxUPOqfxqHmSisw==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 6805060a84a1d670;
	Wed, 21 Oct 2026 10:15:38 +0000
X-Mizu-Trace-ID: 6805060a84a1d670
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] PCI: dw-rockchip: Remove redundant dev_err()
Date: Wed, 21 Oct 2026 12:14:57 +0200
Message-ID: <20261021101533.609118-1-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_111551_947674_0F27118A 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The devm_request_threaded_irq() function already automatically logs
detailed error messages on failure since commit
55b48e23f5c4 ("genirq/devres: Add error handling in devm_request_*_irq()")
So remove the now-redundant driver-specific dev_err() calls.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 14976861f8ef..a4dbfc52c2f1 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -718,10 +718,8 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 	ret = devm_request_threaded_irq(dev, irq, NULL,
 					rockchip_pcie_rc_sys_irq_thread,
 					IRQF_ONESHOT, "pcie-sys-rc", rockchip);
-	if (ret) {
-		dev_err(dev, "failed to request PCIe sys IRQ\n");
+	if (ret)
 		return ret;
-	}
 
 	/* LTSSM enable control mode */
 	val = FIELD_PREP_WM16(PCIE_LTSSM_ENABLE_ENHANCE, 1);
@@ -764,10 +762,8 @@ static int rockchip_pcie_configure_ep(struct platform_device *pdev,
 	ret = devm_request_threaded_irq(dev, irq, NULL,
 					rockchip_pcie_ep_sys_irq_thread,
 					IRQF_ONESHOT, "pcie-sys-ep", rockchip);
-	if (ret) {
-		dev_err(dev, "failed to request PCIe sys IRQ\n");
+	if (ret)
 		return ret;
-	}
 
 	/*
 	 * LTSSM enable control mode, and automatically delay link training on
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
