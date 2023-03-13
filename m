Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB401C74A4B
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66J8PdQMtDz6q+Gb+li16kAcMnwXcWaNWUpomr7SHL8=; b=OvoQY1suuJlVN2
	PREQyDL6ROF/3y+PBBWQjx80u0CGVV5NbuqQWV2IRENaqxBYYzL/88wFEtZgYzBAFrTJXuhKlYgUh
	kh6bv6IHNWyw2R0+HL9cCLjTDLF4uhXlPIdauVJlIaLNaj2qLUKmHPGRdecRWu+3OZ0ygQm+6BBm0
	9OzbGVoQhuLEnamVmF/0okOG4Pk88gu+2bKXRAZ7mfOp3VEA3/0SW9bgHBvbY3+ScDDEqxPcqNtGg
	bgIXr+5R+EkqbsVOnvDAlNF1TmQSWgfPHNF2AQ3+q5SGqfWgrajz+1+cCsh0nbVk6fDGBNqPvP3vR
	W34oZ7mt6aDRgpJhh4WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkHd-006Rff-QG; Mon, 13 Mar 2023 15:40:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbkHJ-006RWa-BM; Mon, 13 Mar 2023 15:40:02 +0000
Received: from cryzen.lan (cpc87451-finc19-2-0-cust61.4-2.cable.virginm.net [82.11.51.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: tanureal)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3161666030AE;
	Mon, 13 Mar 2023 15:39:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678721998;
	bh=ZZahE9JSrPkzg/zm+yoNFoJeAVT05GCmvbz2DG+yJLc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mU0ExHQCyLWr+AlXSSl6NXmGPFwpLMp3K8JXG0j88E1K2hJaEgcg3DJ1RJw9LCUzK
	 OAezbL4692I/SxZori9jXgnYIwoJRzwGjahCFf4hv5Ecywsul2FsCcUamWwY8G2Ce1
	 O2nPo6yg0/5po/y6zJFedMB9f7gEkF8EIhIrky9Ec2QphfjDSIb5eMTkEZ2PqyAJxF
	 ufr2SUUiBIxbKMf2d39/aU0ysD+FvvLD/sAPcJvq8FdKhRNH/izyH57BMAvk+UyoM6
	 XpsvlBOj67byubE6q82sY8LpnVQr57UIDBL2HbjibQMlD3K+vv5rEcIgwYTOGc2iqt
	 YhMQUKWzjYt0A==
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
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] dt-bindings: phy: rockchip: Add rk3588 compatible line
Date: Mon, 13 Mar 2023 15:39:52 +0000
Message-Id: <20230313153953.422375-4-lucas.tanure@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230313153953.422375-1-lucas.tanure@collabora.com>
References: <20230313153953.422375-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_084001_581753_A26180D9 
X-CRM114-Status: UNSURE (   7.35  )
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

RK3568 Naneng Combo Phy driver can support RK3588 with the additional
clocks and initial configuration, so add the compatible line.

Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 8d8698412de0..9ae514fa7533 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-naneng-combphy
+      - rockchip,rk3588-naneng-combphy
 
   reg:
     maxItems: 1
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
