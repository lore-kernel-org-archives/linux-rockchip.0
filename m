Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C1BC433E3
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 12:51:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39B1D23123
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 12:51:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="R9PJW6FA";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="kN7OhMiT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39B1D23123
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PD1iSW/X1eGqrS8lTJGtFwt6bkNFgQzVeExhx2VQtWA=; b=R9PJW6FAHOJtIK2MEpB/Mx2WXl
	0gIFxcepq+9rYf0QGMET7OJr8e8ONTGPDvRt5WXkKafWQ0i+4uPdhPHElZtplT8fSVjUqVTcn2Kdw
	N2KnFCEiYNCLfwjd/Ku94kvXdeZ3tGzS6QaU9NLU1x4FRBgNpw7uOwoU3YGqdbeZi74SDNHEz5UmZ
	KxadNL02c5l4QrIa4FCra1SyzijM2DPSD3Ibufar8XmNrgskNNBferGYerlj+aPyWFK3NRbFW9aTQ
	l+XPNra/0z+Wn/pw9j/98RfVfJGG2aRLidfQYuo5dBeVyKvm+aH1sqxHlhIcwCd9rs/qfbzvVMtbr
	YzZWCnYw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6ven-00019r-LR; Sat, 15 Aug 2020 12:51:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6veg-000182-Di; Sat, 15 Aug 2020 12:51:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C50BF2311E;
 Sat, 15 Aug 2020 12:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597495884;
 bh=4abrb1hIgzDOMolRWfF5UG90g9XBAir7ef4PB2uBVuU=;
 h=From:To:Cc:Subject:Date:From;
 b=kN7OhMiT916olPv4+/4DmqTTNi0+ib9YnLbL5+XPnMEpaDmhtOeoeDG0jrr5tj5C+
 NzsIns2VxT1xD/JLjLmXSVqijaSFkbFpjUD8l2oqhH5dTIXsf+elWnWsbbVk1NS17K
 xzuTzTQEnSRtkrVTSLMWfhoK3Or9FDI5mvXjrYC8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1k6vec-002Kds-Va; Sat, 15 Aug 2020 13:51:23 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] PCI: rockchip: Fix PCIe probing in 5.9
Date: Sat, 15 Aug 2020 13:51:10 +0100
Message-Id: <20200815125112.462652-1-maz@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com,
 lorenzo.pieralisi@arm.com, robh@kernel.org, bhelgaas@google.com,
 heiko@sntech.de, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_085126_704832_3EDAB93A 
X-CRM114-Status: GOOD (  14.72  )
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
 Bjorn Helgaas <bhelgaas@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recent changes to the way PCI DT nodes are parsed are now enforcing
the presence of a "device_type" property, which has been mandated
since... forever. This has the unfortunate effect of breaking
non-compliant systems, and those using the Rockchip PCIe driver are
amongst the victims. Oh well.

In order to keep users happy as well as my own machines up and
running, let's paper over the problem by detecting a broken DT from
the driver itself, and inserting the missing property at runtime.

For a good measure, a second patch fixes the DT, but the chances of
such a fix being deployed at this stage are pretty slim, so the above
hack is in for the long run.

Marc Zyngier (2):
  PCI: rockchip: Work around missing device_type property in DT
  arm64: dts: rockchip: Fix PCIe DT properties

 arch/arm64/boot/dts/rockchip/rk3399.dtsi    |  2 +-
 drivers/pci/controller/pcie-rockchip-host.c | 29 +++++++++++++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
