Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0F86C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uR7/d/Wg/csB6PTrG38rnYY/zDjR4cgLIVXwR3YhG4=; b=241z66CCXPADlA
	/DoCD0CgYRTNFl1Qai1t1KkTzADfV97WroRbxNtORG7HltKZqYq559VqAJVHxKkDGJWiendUAzwAq
	d7TWv7ameZ9pTnnCgqfSSwuhphc8JshRsg6JGyeNeyDvLfNSkFqw5UEOa7j3HZOIUdvP68rsaHGSE
	gu7hKIt6r0r25XDWdA3lJF7BJiurJNAu+0y55GGidEqPh5vkbkZWytEKQ+S7WZkZVdpF+OUdYzPqj
	7To6uh4UhXM3k/xNjI4r1j+g2h94UkP7peiuRu1KICDFo6QJ9jLgDGRPeQfcurh3oRhw+4E0dfMdm
	2V5NExb/TDfYHe8s1gHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7G-0000000FaF0-2LYF;
	Wed, 08 May 2024 13:13:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7B-0000000FaCV-2CfK
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 13:13:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9587061BEF;
	Wed,  8 May 2024 13:13:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 850E0C4DDE1;
	Wed,  8 May 2024 13:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174024;
	bh=2auuQGe9uHpx39X2DRGeyL4wn09dTQhuOpMdAqllMYs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CwzkjClHXS2d5QhMsgppKR03OvIWFg6CYCTxUtnhwTKezY+02/nsfs8bmhmla11dh
	 d4gEEbHyM6ZXJGmNDks7II0mndljxHVEnTr6HCidUXkl6nM6Lz5ZYkZzQvGGyJlfTD
	 7i9n3lf/+6/Z/LlMtOiLaD1I4doW3NXchQYRggLfA//1jEo/6r1/2BKahV6bkOrlAT
	 cbKtGeuI2+xRBUFNyxUw8Q6xomU4amA0QtYlElmXRnimDwI8ylVNpIazj1rfL8R+Km
	 lKxIY9f2ZW5Gl/y+K0G/ogK/I5Nu8LU30WV3t0A9VUJNHIUjY3Kkh7QUh2G98ZQBfR
	 Etav7CZT8cOug==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 08 May 2024 15:13:32 +0200
Subject: [PATCH v3 01/13] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific reg-name
MIME-Version: 1.0
Message-Id: <20240508-rockchip-pcie-ep-v1-v3-1-1748e202b084@kernel.org>
References: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
In-Reply-To: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1296; i=cassel@kernel.org;
 h=from:subject:message-id; bh=2auuQGe9uHpx39X2DRGeyL4wn09dTQhuOpMdAqllMYs=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKsq+qbmYu0U7pFd1ryXK+TFfFnf80WoVmu5MG7zXdG6
 OY8NZaOUhYGMS4GWTFFFt8fLvuLu92nHFe8YwMzh5UJZAgDF6cATGSROCPDlV1Cc/acU5qcL7nt
 sHPMvjU3pidxyd5QKVO/F78jN+2xNsP/6HL9ouqjLV8WKM5a3+RisuuIvVjWkpJzT2/bnpqVkHm
 JBwA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_061345_940566_1784ABC8 
X-CRM114-Status: GOOD (  11.48  )
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
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
