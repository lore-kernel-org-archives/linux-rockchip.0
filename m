Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F734C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 18:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBCf4tXrNuiQzwHSYXI2V5mxWvnTigpnXi03Ovjr3aI=; b=bF1Dl+NQdt66S6
	WRdf3RX7Q9gquWmzZlMkC8qJe755nD0RYp1pH3WzDAoK5wDvxoKcMX7eWWQCmMWlNklfHfShYJ+xJ
	J9c6PJTR7Q7+4meHpOS33HSR6wbNF38Kb++TatM4X4fpVcCGpKKnCjKNvQpzyZdOrTz6FN5qWekyv
	3D7j7Qi1o2FkkFVWI50gMBO1KmqujAjHUQuJdPcQ0T5XIN9TA8aqkDTR555YVr6BxBfGUr12gF1nW
	cYq74uXEcKfRk096TUkYlQkReOorwPJsCt9AS9fu6XEjR0oykfnMfcmzjldna3NuzJARjyCeliSvp
	Foih3idNaPnTMo1Gn2vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppCJ8-0067mZ-1w;
	Wed, 19 Apr 2023 18:13:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppCIy-0067iG-2x;
	Wed, 19 Apr 2023 18:13:22 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 953C66603261;
	Wed, 19 Apr 2023 19:13:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681927999;
	bh=OZZ4nNriNcBaypOJGI5ZqvNKw74sq6jof8xI0tK4wFE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DOFmSEEq/7KGrYncXTLorgPXCtk/DRCxABCjK+iWCIjgw3uQw1e8uUu3R+PIguSya
	 kci0rCz81M1xzsiVBpR7UODsvoLLwDKCGRs3UvSLO0uQBQSGBbE4DbiD80zyBtpp39
	 pwkyYbcOG+uBX2+lNI1/y58SYoiByZe+towBlTVJYt0uS4xTI6iavUx9Qt1mCUCsgh
	 NeRUj04aWrfWhzUWDZg9SNfYY4NrRtmHWbcCfiwXySoNcgibARJapKXJGS/WXNwJh1
	 zMFKoImNubJMXuiW4V+FohvzjnBkEMPfA8ONKBxHJyliqhAaYnoWu7WA3ffZe2nQ2g
	 Tw+tG3imxcTIA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: timer: rockchip: Add rk3588 compatible
Date: Wed, 19 Apr 2023 21:13:08 +0300
Message-Id: <20230419181309.338354-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
References: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_111321_081180_E5C384D0 
X-CRM114-Status: GOOD (  10.03  )
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

Add compatible string for Rockchip RK3588 timer.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index 2bdb6e6bdb21..19e56b7577a0 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -24,6 +24,7 @@ properties:
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
               - rockchip,rk3368-timer
+              - rockchip,rk3588-timer
               - rockchip,px30-timer
           - const: rockchip,rk3288-timer
   reg:
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
