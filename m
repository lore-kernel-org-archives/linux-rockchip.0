Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D887C61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S2+5aT4C20YjX1mwmX/l7xsp+8nVu9fXzH/oKaM+oo=; b=OLi5+ryfy1QMAV
	sBXDOSye4yPwvKXJEZxyyueJocWV85y/nLCKKucCcf1GqsI8KVHsQBBqy2ZSwZ8P0IZ2wdcTYJvfx
	MYGegbcQfdFaH7X0cSqmas+OLxt/lQDBogoMpzDDkDbK0RYclA5QX7cseU+6CWOun3E2zf+5LZ7Y7
	99NWVYCew74vHR/h1KTen9cJCfjetQ/BCUHDhusMzzLOjJGeJy3UsXBgUDz0d83Ic9Dp4tV4GH4L4
	GHaSCzYmcM+965xPX8VSN8NFdadJYA0st7J97vtX0Th5BJnPCjcxjVk5qXv0IjTmRJjHFd18Mzwpw
	XwpNc8bT6sUYGCbtNmfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkHe-006Rg7-K0; Mon, 13 Mar 2023 15:40:22 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkHJ-006RWS-BD; Mon, 13 Mar 2023 15:40:02 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 414026602FEE;
	Mon, 13 Mar 2023 15:39:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678721997;
	bh=EBzQO1aDaZOCz1GihKXNPLk8JJ1NYG5yY+HuX+tadyQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XVtT14hXPtIfXLGpHQEs9llmrqOXokXC3GhdUfYOOYSrhegv2TynsZ7XE5RkI4Q/e
	 NKu+3yGLhBAXm2BLVdBhfToTGIrR9e7ZlNFJzitz7LtVOJLpuOl2YBHKEMhWTDnZi6
	 j84XQSanSgmQ7hsq7e5f1VfAbf/sK1fq9cOu0sgXOPPWPFl7/6aQW7Up79Atm8HiY8
	 hbWC8N5GyKfgOpBl6VTKL5S97zQiv1yhfnCVYrYcDimMggd9cjwTPqUiwKYY306rNh
	 Qg3DujqFUxSbWai2j9oZFjbou5Ut7r2Z/9uh1S3QoHFqpQ30lXJx99VPOkBDxnCwuJ
	 KSMQf3z1e6WKw==
From: Lucas Tanure <lucas.tanure@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/4] dt-bindings: PCI: dwc: Add rk3588 compatible line
Date: Mon, 13 Mar 2023 15:39:50 +0000
Message-Id: <20230313153953.422375-2-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313153953.422375-1-lucas.tanure@collabora.com>
References: <20230313153953.422375-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_084001_534738_70417EAF 
X-CRM114-Status: UNSURE (   7.59  )
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

RK3588 uses the same driver as RK3568

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 2be72ae1169f..91aa9070ee31 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -23,6 +23,7 @@ properties:
   compatible:
     items:
       - const: rockchip,rk3568-pcie
+      - const: rockchip,rk3588-pcie
 
   reg:
     items:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
