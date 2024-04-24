Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A60C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 15:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cVLYmi9Xdl3MMMea/3o/+t8LKP8rpTozC1a3l0avoU=; b=KXIeg79bOEWTJG
	lpVS2k6cFHjIBLmf0QQAi7WpzqlicpOoTb2piyP2cAUTw/qygWFWNJwl6WlKv/7QKlsXCVx+uY9cC
	YJzypJxEHb6vMHz4XIQAuZlGT3TufMo47I71BTqNBLiPKRZiNbiiM5p+MkJ6GsjfWKlwOZMOpYrN3
	6HvCfo7+PSJQPRDbW3gz68fk3OGvilNF7awyAJHatJoJ0V7nDthxbLHKTghvfjkMFv5XZFlx+IGUu
	/dii6NGptea9T8ICxLF1wU4TCRoq6WI+QdDktAmHSghEmw+AtiCtkZeYGj64dHmAwlTbe6nMtqxpY
	e+N3ehbl2V+CTEHpzPYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeMd-00000004f9V-2EXj;
	Wed, 24 Apr 2024 15:16:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzeMa-00000004f77-179x
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Apr 2024 15:16:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B6BD061864;
	Wed, 24 Apr 2024 15:16:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AE17C32783;
	Wed, 24 Apr 2024 15:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713971807;
	bh=RS5e+C8n99mUSp3drovm0VWPXXUTCxKx8PPtgdI2hJI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GxXeL0MYUsc+BA+H9o4ID0yqOlTwHXserXcofLg02Zpe2DY0/cwiBhgQWLcnnjD63
	 QdYGqk4jUbezqGkpdXFRM20bqiLo2QWSi5BKDaNkkoGlfGPyjaFCG9Q8V9ZnOITjv8
	 VVQ0+eqaIQp/o9u2PSzJrVNv8W01FHvxEuRtRxIFgDl0Z5Cq7PEEIjcOC0/KeAK0fz
	 ExfKIbhA0fqrnO/3uc/V7xARu83dpZu1efSgfEaSpy8b0Ks0BZviy7F8/p7y1rRvm1
	 MaRpPT/RZOWjAc6aos5tNdwRMdZTIJh1ki5QuDjCOrdxJEOv5jWWF5pR/3Xgjrum1b
	 cYLZcxfHZcI8g==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 24 Apr 2024 17:16:20 +0200
Subject: [PATCH 02/12] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific interrupt-names
MIME-Version: 1.0
Message-Id: <20240424-rockchip-pcie-ep-v1-v1-2-b1a02ddad650@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1217; i=cassel@kernel.org;
 h=from:subject:message-id; bh=RS5e+C8n99mUSp3drovm0VWPXXUTCxKx8PPtgdI2hJI=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNI0lYJ857GzxhdJpmeJvTWOqijc7PRXKSJb5MLcMt3j/
 sxzHn/sKGVhEONikBVTZPH94bK/uNt9ynHFOzYwc1iZQIYwcHEKwES0xBj+p0mVrTDr2GAwpaLs
 0twac/UDiWIbMiJExJYdNewV1Ob5xciweEalc3PFl/LuDaw+t302y84XOLPcvERRxOboFK4vH+7
 xAgA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_081648_466380_056E5E9A 
X-CRM114-Status: GOOD (  10.86  )
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
interrupt-names "sys", "pmc", "msg", "err" for the device tree binding in
Root Complex mode (snps,dw-pcie.yaml), it doesn't make sense that those
drivers should use different interrupt-names when running in Endpoint mode
(snps,dw-pcie-ep.yaml).

Therefore, since "sys", "pmc", "msg", "err" are already defined in
snps,dw-pcie.yaml, add them also for snps,dw-pcie-ep.yaml.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
index 00dec01f1f73..f5f12cbc2cb3 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml
@@ -156,7 +156,7 @@ properties:
             for new bindings.
           oneOf:
             - description: See native "app" IRQ for details
-              enum: [ intr ]
+              enum: [ intr, sys, pmc, msg, err ]
 
   max-functions:
     maximum: 32

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
