Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC062C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 18:24:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLLk9nhmhtfdet9kbsiTdBR9+ePKquk7Sz4a+iiDJIE=; b=s2FLUx10otuR7y
	w45T5MF51XsVy86ZDMQ2gEGKJqlRR1Lz2p4OVM8hLFhHeRWA8H4pA/V8MlNS1h4YZfC2UjThhotzN
	a1Lp5LUnnkqwFjp7SeMugKxMCSeFXdwB99VZu73DzUTLOJ2UqOCh0x9TsAHJcR/sj8b8KMi9I9ATh
	7m4ATEinEKKJGTOwnVuXwtVEXx/av8j++vqNqxnnHM+QlLRxgCrMpbTAvg36nJts+eNcHo2zlK08g
	GXFItHm80vTDTIVX8i0yE6BPcBDLuwBA94Na6Keb8aOK01x/xMx0YtALz7sN/m1K76CZD1Irpo1z2
	2vB9o0ys0J8VQlzE5J/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1c3-006tu8-14;
	Thu, 13 Apr 2023 18:24:03 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1bz-006toO-1L;
	Thu, 13 Apr 2023 18:24:00 +0000
Received: from jupiter.universe (dyndsl-091-248-212-251.ewe-ip-backbone.de [91.248.212.251])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4BE72660321C;
	Thu, 13 Apr 2023 19:23:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681410231;
	bh=J/aAZ1smSAAsG9/uQ7OFDO0676ZcUa7ugt0BDTtD/es=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kSJI4qzgzI3qItD2MLXvZahzmwBLn0qhNZhGLmLdDvuSd6LVIZJI6sp4pWhNQ9v5Q
	 RaxKQAo9l4cMm8NSykNz4Sxg1MW9s0katZv6t23gWLn3c2/SdkWsgPXWunpfXCHS1q
	 /ycdgXHHFX4o9sjSSbaiwe2cOOdXHANFA4p06E1Fu15Uo6c7OXLn8nPf4njPbEZxcY
	 R1i/ru+/GjqKed/HrgkC3/dCLG/wxy3/oONOGiAGk+NiQEFpExosbZJq9bwYrvwE+x
	 rQLY98zPZR3SR9iOfGMCoa374HNhLmK3xLm39UF/8Fd7m+4mnkR3e8ejlSPFXg/5E6
	 6u5uNCtnkCdcg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 89F3B4807E3; Thu, 13 Apr 2023 20:23:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 1/5] dt-bindings: soc: rockchip: add rk3588 pipe-phy syscon
Date: Thu, 13 Apr 2023 20:23:41 +0200
Message-Id: <20230413182345.92557-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413182345.92557-1-sebastian.reichel@collabora.com>
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_112359_615413_88AC2A4B 
X-CRM114-Status: UNSURE (   8.55  )
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

The pipe-phy syscon is used by rockchip,rk3588-naneng-combphy,
which in turn is the PHY for USB3, PCIe and SATA.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index a873f74564f2..dda071b66813 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3588-bigcore1-grf
               - rockchip,rk3588-ioc
               - rockchip,rk3588-php-grf
+              - rockchip,rk3588-pipe-phy-grf
               - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
