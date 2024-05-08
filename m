Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B9BEC19F4F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxK3gRG3Bb24yzBqKy1xYeDkzk5FrCGtIeRnK4nT1iA=; b=DCI/ZYGhr6zqmB
	jBlH9h9j9KvykrWH7R1fZk9Z1bHl1PS8bqGX8ZDmfAKtjgewYPHJxZmzUzwKM25o5UMTa8tBlFfdF
	mc+7SdBmp2/CTPDlx4c15p4fEOhJXvZswcHGjQ7zgZHNMKaQwcfgcNy/homy7y1MrRduVUfJvU2Hd
	W6n9jCSIxnedr/6+8Fp8H/ehrLp4ZOIgFVw2ifEvrvEqTnvb8rqfGA696pBnbzLXvpL7NTeCeLfI5
	NzldB5ZgUpXJEQWddQyBFYBYeRzHQpff5oZHge/0Pefg4RDF46Tn6aeUTNXXMcH72E5/dYTQ8a9xg
	phcp4bDWAAXJKa1rgy8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7i-0000000FaWI-1Iqz;
	Wed, 08 May 2024 13:14:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7c-0000000FaS4-3l7M
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 13:14:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C5B08CE18DA;
	Wed,  8 May 2024 13:14:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E61B0C3277B;
	Wed,  8 May 2024 13:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174049;
	bh=zij3IqGLZejzZqkbvWLGGDEZbugER7QuKFOEIkUZjb0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GLprvzBPoV0oAu11Is8QP+AZVk2wFkQF8KHhN2jPTqLr0FcnWQ3Pqf4tU+K4urzOD
	 +LBVD+VhEPxCWVD53avw/BqIz6o0x5cwMo3cVoeYVZdTLIU6shElCrbhcpAGJ4JVMh
	 8vFVlOqW+aT0ix5LtEaWx/lzIQTOnaxg3ViI7ClPBCPihBO9e/se2E/BFTV3+OzjBF
	 Ji5WEhep+OAdeERMYbJLokborErGlsTWmv+ZMOe4eTGiWDMtLKfDGFggTH4fax85Te
	 2hR26C7xcCg0VR7kB2PBku2YmXURnmvJe0LYRZmak5/tlGtxDvY+FatHf+oWyAOSZn
	 qRLG0heB/eEWg==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 08 May 2024 15:13:38 +0200
Subject: [PATCH v3 07/13] PCI: dw-rockchip: Fix weird indentation
MIME-Version: 1.0
Message-Id: <20240508-rockchip-pcie-ep-v1-v3-7-1748e202b084@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1187; i=cassel@kernel.org;
 h=from:subject:message-id; bh=zij3IqGLZejzZqkbvWLGGDEZbugER7QuKFOEIkUZjb0=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKsq+onGig/ebujIUVOotn2Q756Tgd7/5fbUz4J8VzLO
 HGnlzOyo5SFQYyLQVZMkcX3h8v+4m73KccV79jAzGFlAhnCwMUpABPprWNkaHetORKhryt4yXe7
 zQTOFMWYexkqRm6XK4sUb65feczpNyPDjsux0nH97Zdt727xmiuYaXtFW2bRqpnzHeNLJi4Xu5L
 DCQA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_061413_267987_2BA45D2A 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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

Fix the indentation of rockchip_pcie_{readl,writel}_apb() parameters to
match the opening parenthesis.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index d6842141d384..1993c430b90c 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -60,14 +60,13 @@ struct rockchip_pcie {
 	struct irq_domain		*irq_domain;
 };
 
-static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip,
-					     u32 reg)
+static int rockchip_pcie_readl_apb(struct rockchip_pcie *rockchip, u32 reg)
 {
 	return readl_relaxed(rockchip->apb_base + reg);
 }
 
-static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip,
-						u32 val, u32 reg)
+static void rockchip_pcie_writel_apb(struct rockchip_pcie *rockchip, u32 val,
+				     u32 reg)
 {
 	writel_relaxed(val, rockchip->apb_base + reg);
 }

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
