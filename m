Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00BA8C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 15:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzN+Sxz2wYcaNUAbVcOGPaNRoGW0SMlQTNSCn50e+EY=; b=w7+fwz1P+6+JJS
	BX4htWhSNIDkUaeB8hKQl1Ie13iUVG2LWI0f0NuwcDkjMLYgtnH/RJCFcuGAkDmtbbhH+TD/KpvoU
	nSs1cyYNUVUQRyzrv37ubMD8ghSZfx2CZxJfmXrRZQAZGWBhXgnwUwTBqkEtCmokV6aLNIExRuZQ8
	AC9BFFCR2rW2jKq+AimmfjKhSh+dQXimFxbLxuW+ETizrF4a0/1lvrFkxF2/7n0pzqApJZSSJP/Vk
	XNcLFHtk9aqP9SE7DWNlLIWDwmAxcVcz6GT7AJyP4MWKZ7WB9HmggcYjDgKWClekQzDgLdmb5/JJB
	Ln0H5Gi7DaJJ32y8EsDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeN3-00000004fUR-1jOH;
	Wed, 24 Apr 2024 15:17:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeMz-00000004fQx-25m7
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Apr 2024 15:17:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0131161B97;
	Wed, 24 Apr 2024 15:17:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD236C32782;
	Wed, 24 Apr 2024 15:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713971832;
	bh=mt3fTJOfG/BTsLeq/PZ08Of6pjfAbWiTUEPasz3PC7A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Y09UtNfEeZ4v/d7lAzd//iB+8vNw0593Hgr7DGQfHvCxJR/5sNgsloAaDgKB581GU
	 DejVUKxqy+n7mmNr537U0hXpgduwGexpoMhG68fHagiqV3izSoAp/S8iY2tX58eS15
	 OalWx1F0l4mBPVVkDB8jY8gY6SSKXmZpBfLdyst49Vht5HJVcnUQT69UssYWu8Y/zW
	 QWY+pN5sXvIYFrzfNeEWVKfMEtbEPXpMUzJwoAuRHjHgkWzOg/jzS3k+bzrfHdiYo9
	 aVtjRbJweI8gweY5cLia1fn6mSoHMcLMi45ZwLG+qU1HlYARHcCnAOo2vGkgfXICY7
	 R4ysVG19Z9Acw==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 24 Apr 2024 17:16:26 +0200
Subject: [PATCH 08/12] PCI: dw-rockchip: Add explicit rockchip,rk3588-pcie
 compatible
MIME-Version: 1.0
Message-Id: <20240424-rockchip-pcie-ep-v1-v1-8-b1a02ddad650@kernel.org>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
In-Reply-To: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=937; i=cassel@kernel.org;
 h=from:subject:message-id; bh=mt3fTJOfG/BTsLeq/PZ08Of6pjfAbWiTUEPasz3PC7A=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNI0lYJ2y/fGNOTqfro6JYKxKX7a/di44+bbeC60HGDmU
 3RVF5TuKGVhEONikBVTZPH94bK/uNt9ynHFOzYwc1iZQIYwcHEKwEQ2vmH4w8sXZJ2nuSR46y6H
 Q1VMByZaxh5j/7bwBWPXm5B//14eOM7IsKMpSTD99Ub34NCzcUs2/1rmWcOheIFzwbYf+jZTJx/
 i4gAA
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_081713_669035_B3AF3160 
X-CRM114-Status: UNSURE (   9.61  )
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

The rockchip-dw-pcie.yaml device tree binding already defines
rockchip,rk3588-pcie as a supported compatible string.

Add an explicit rockchip,rk3588-pcie entry to make it easier to find the
driver that implements this compatible string.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index bc1347e84f72..332ada5cb9c6 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -400,6 +400,10 @@ static const struct of_device_id rockchip_pcie_of_match[] = {
 		.compatible = "rockchip,rk3568-pcie",
 		.data = &rk3568_pcie_rc_of_data,
 	},
+	{
+		.compatible = "rockchip,rk3588-pcie",
+		.data = &rk3568_pcie_rc_of_data,
+	},
 	{},
 };
 

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
