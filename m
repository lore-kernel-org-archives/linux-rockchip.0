Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5F75ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 15:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8iMaQA6a2P/WQ4EeWJjZTPtGu7RkDqvHddWBV4IpJ4Y=; b=o7n/NwjRj4HUWm
	CY3mr5O71I5ZayGjQKaW5ZQtkZrIx9TuWahEb5SKRXe9RENV7kVUioYmG4DiLXQ6xXa+AeeRYNkLL
	lVkxFEhQuYsh2pNYDoiITUseHx6YOzXtBuWFFYnLoGCI/wCUeXr4QX9ZzPLtOwx0hjpZ61Bgj5edf
	Xu0qn4/QMTp660s2AQzNMWg/bLtoHLuvrFUmEsJeuVqEndMAv9jK6U3DiJlebyT3uODzw6FcxSR2R
	06pvYHOXB+UomaYHi+/NsG09rXWd3q41gLoC/YnKq2R4WrO4vSXwRFiL3r/srW9jDlxz+Yj8EfNxs
	2MwIVDnHx9oE2FzP2g6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaY8-00EpL1-9C; Tue, 06 Sep 2022 15:31:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVZij-00ENaH-P6; Tue, 06 Sep 2022 14:38:36 +0000
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B3526601F4E;
	Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662475109;
	bh=daMVbHhJlfYnraGydjiMLwVLDPoX/A9fX4QnmXX8FIc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kPKg7OlumI98E1w2CGAoqiEg7NrnHFPXDytTJoVkxWzpc4V4uzvpxFBFpXR1bXYo9
	 uAiwbj9eeS0wZuGI115xXJa6a23zJQ+esPTjd7VVZjbjAXvODTYU7amNNqvq//Z/3j
	 kb0xqFJRlDQUtbVpzJH4T9nmWhIEU54+Tt/LKGAULvpTspD9Gn4E+tYbtRGXyIe1mP
	 Nb4cZxx9WZr3KHqG4NCQ0rTehmbotouIOOnNORp4TqkUc5xDY4gMc1qtNF4yNWAA83
	 T02IMHi7v3OON+Oa3qQ8v9qb5IPHIT0dmgJPpFpFZiwK8AMByAg7tedLatiJNk3t+4
	 RiBKcitiuRZ6g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4252348016E; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv3 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register compatible
Date: Tue,  6 Sep 2022 16:38:23 +0200
Message-Id: <20220906143825.199089-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_073834_128668_A92AA17F 
X-CRM114-Status: UNSURE (   9.00  )
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

Document rk3588 compatible for QoS registers.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index c10f0b577268..5369a56b8be1 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rk3588-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
