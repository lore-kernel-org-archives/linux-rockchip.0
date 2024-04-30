Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3419DC10F16
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 12:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NV3FoRDqWZSr12rXHPNNmV8DvgPoIPvABa9tHu3cTZY=; b=AX+uDDmgzlrEap
	ZuQ8uFUL7ObNNBFMDD9ja/1XTJDy6EMXR5E89FHPzPCmGW+c4SUJ0zCcf9Ra3RJPgA0hxZsebt1N9
	8jb2q+Q+BNUdd5QYZ9cWPkxuxClDmfaXJOkI8iMrmJzhpJvu85oYB6tRK/bhRM6VPBH7S+adEn/9k
	E+7mqZmx7RNJ3OyMbFgSXFD1RohWEvN1a57omWgQ8H0FpUGvMGt3wpdK5GCljjjDcSTwN1gcOoi5t
	7Qk1lT1O/pDsOvtawJRz+9PvAzEiy9fLnufjo3e/szj/wjWUYrTu18X1NdZ91Xa3uvnDyp7rKDRGD
	jASmekJBfs9Qt7Zq49ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBs-00000006Gq1-42v7;
	Tue, 30 Apr 2024 12:02:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1mBn-00000006Gln-2biS
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 12:02:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 157E2614F8;
	Tue, 30 Apr 2024 12:02:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDC8DC4AF19;
	Tue, 30 Apr 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714478546;
	bh=lzJ2BxKBBswxjN9lBrWUoaKYI/aG2NTtIprX120aOD4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Mshrpd3+GxeXid8yQwzqyaI9ns5tOsXZMqB0SmwCgCCxjhboCwiHiY3X83OacEbzn
	 hBjfOrR+sKtjWYhJxFl0XxLYi6d1dHM8iysbDBIKfrUetJjK/adMcN1GlY+x9HxCnB
	 Xiz36g4u3Q0I6Lz02uj7AiYvzYLCrAIZJXrh8+KD7CLFgtcaSK5Yiyy1reLAXwFNBC
	 H/X1DVas9vnQFgrq+ATGLLI+nTdC1TfcVAQNckUBE0bfMkkCGJhKA6ZfTl2pZiWh+u
	 k1OpuAxuzC2ZRkfkVei2dJRX1IDW/7szMUSUNx/Xo6nZ1sXKb0jcNzppKoBoF2mB9M
	 SovevHKW4CJqw==
From: Niklas Cassel <cassel@kernel.org>
Date: Tue, 30 Apr 2024 14:01:04 +0200
Subject: [PATCH v2 07/14] PCI: dw-rockchip: Fix weird indentation
MIME-Version: 1.0
Message-Id: <20240430-rockchip-pcie-ep-v1-v2-7-a0f5ee2a77b6@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1116; i=cassel@kernel.org;
 h=from:subject:message-id; bh=lzJ2BxKBBswxjN9lBrWUoaKYI/aG2NTtIprX120aOD4=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNIM7m7Y9e/gD7YlVyYUJzaoewtGKy2Y0XVgy/ZFdfejV
 9ZN01c70VHKwiDGxSArpsji+8Nlf3G3+5TjindsYOawMoEMYeDiFICJyMQwMuzTmntRV5k3IyxS
 ePqZk28aPObOSOhYITnjuOJE6X8Hbksy/LM30/x+r3Bqa4txlpLE9b/G6+a8vBFTHhIVua7kicb
 lmwwA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_050227_969201_3D88BD5A 
X-CRM114-Status: UNSURE (   9.22  )
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
