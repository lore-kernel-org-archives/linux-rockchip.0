Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C2B2C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 11:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5vca8PD+ChOdcr/r7MAqua82iwFVwgtSX9rs9+rNa8=; b=Hd/qJi39RHJGco
	WvjTWVF8p9ffvPnRox1GGeL+mTgiz3fqXG6cedACHi+DOabBGobOD0AE/20cfRUD/LlH/IIvW7tmd
	pCKj4SZOZgT2VcojDfzVCF3HTck65svLfmr5EVHhOngJwVv5X8/CKsyZaMQH9o9/SrQ+FuWoK6ryw
	sfgVuXviDwBT6IQF6DFWZFhRNM0PAfWyUbS4hJKt1dzlGEqtmtn1zJMOXWHEUCv7q8qXnbwkBjAM+
	F0bNsvkx0rGQHLHburQOIrVwW+PdNTm62X+eDtfBZGEbucSAgULyH2qkiM5VR57qbzMYc0JASH9RP
	+7EznMzj7Z77Bmlxj9Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYN-0000000DfXT-2nH0;
	Fri, 07 Jun 2024 11:14:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXYJ-0000000DfWq-39jI
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jun 2024 11:14:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 308596023F;
	Fri,  7 Jun 2024 11:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08D49C4AF0D;
	Fri,  7 Jun 2024 11:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717758874;
	bh=snAgm64ySynk6RAed5xxHOvVSYB2c27PvNSsTeM0Z7Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=a9XYIGktTUGug61XAYzRh8Ay83II2dU+xipqLEOCFFvrz55aibPhQavDEM3AMjYwr
	 eBQRY55jn/G/drIK8M+zFbOmbx4Dr8QxaY5st79okeNbQcLFkhp9Z8Mu0ODF3lRQoT
	 9cY8ckfLnukfK+GYiOYe4uYYSk/WmX95OC8AncTNjkl4qligMHYRSJRF+3OjqUXP2b
	 kHMbrByEkqlHSVSVlq9Td1MA9vzzCC3So7ADx9A71Q6uWIttRee22LlOthuuvt+o60
	 Q2/dYnsNO+YWJaBJngmxdYVDjqJEv5FjxxbMf/4KuO7aiGwwkTWgQS56bXtD69xpuq
	 lgBjHahUP8Djw==
From: Niklas Cassel <cassel@kernel.org>
Date: Fri, 07 Jun 2024 13:14:21 +0200
Subject: [PATCH v5 01/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific reg-name
MIME-Version: 1.0
Message-Id: <20240607-rockchip-pcie-ep-v1-v5-1-0a042d6b0049@kernel.org>
References: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
In-Reply-To: <20240607-rockchip-pcie-ep-v1-v5-0-0a042d6b0049@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1367; i=cassel@kernel.org;
 h=from:subject:message-id; bh=snAgm64ySynk6RAed5xxHOvVSYB2c27PvNSsTeM0Z7Q=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKSXk+c/04r1bFHskjqgogyS+iD27oBB4+K9v1bdPtdV
 d/9TGfRjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEzkmR/D/xh213PMKq95Tpf/
 /ak5/6M2axIL9/8ZLi8eBZXt/Dlfs4vhf4V5euQGd++ZyX2sByREl0ddWtN9WPKWbsadeFFn56X
 rGAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_041435_875810_F651E30C 
X-CRM114-Status: GOOD (  11.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Considering that some drivers (e.g. pcie-dw-rockchip.c) already use the
reg-name "apb" for the device tree binding in Root Complex mode
(snps,dw-pcie.yaml), it doesn't make sense that those drivers should use a
different reg-name when running in Endpoint mode (snps,dw-pcie-ep.yaml).

Therefore, since "apb" is already defined in snps,dw-pcie.yaml, add it
also for snps,dw-pcie-ep.yaml.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
index bbdb01d22848..00dec01f1f73 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
@@ -100,7 +100,7 @@ properties:
             for new bindings.
           oneOf:
             - description: See native 'elbi/app' CSR region for details.
-              enum: [ link, appl ]
+              enum: [ apb, link, appl ]
             - description: See native 'atu' CSR region for details.
               enum: [ atu_dma ]
     allOf:

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
