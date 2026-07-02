Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0908FC44501
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N8y1qAXrbpYWxH8BnY7bXvAJ1jy0bQbkLIq2NNlnPA=; b=KDIzR+Z7Skyzys
	aNj/ly6w0w5NCvKOOZdKvm2sD8pe3ko6JQAEBooUX2p4NPnlm1UVzPIXMdc9qBMrZRtxmf6kPYi+3
	vl2yBDOYPStDcuA39LdkiQ0UsCXqqwgTI/4redmc9IYH1zq343DkzZQDnjIQ3To+XZm7UcpMIaGX3
	US+oQZcw0tPxvIREdCgcz1hBH9xd8+YwePlx2A4LDobk16rgkpekYmUe3AyOUcuRG68x7n/2XR1X9
	/FRlYFmLtuiBfCWcbAa8nGQKh67O4/aoGC5L+MqC6gZacLv0YtEWrQdJbWLlNT8x8RusKNMfpyW32
	6RXCiWyrqzDuQ6EmVbXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNCZ-00000005NAZ-40lc;
	Thu, 02 Jul 2026 19:35:59 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNCW-00000005N6z-2YmE
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 19:35:59 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-c888c2cff98so920195a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 12:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783020956; x=1783625756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QEoinIILiTKHyRPgP5StMa4pYa/MZMpin1k/LVPTO6Q=;
        b=nxG8IVWHkJgNB58GIzhlhuns6Iut/qf2BHMRcFdy1tdzssnZBlNo1YFL1736YsJAHi
         LgrJeQCCE0PHRS0BXDX7FcKCeNBuExvyYlw643XHm8bPfpo/W2a3qp7AGvmsRxYsEwOk
         cGURR0kXjmjURrGjXnUe5fw5BJxpbT0BF3YDgFlvH1Bj7vTtJzvBqKHaZD9IJ6leEPOO
         sJJDR+mm2j0qrXEKgFnSqKIvwO2o3keJzSE77AyRh1REWBAbB10QJw43Q0Z1tb4xOlWc
         0eWDK9IsuxnPpJ+TKxM2vgEfWHZ16EdaroItP6d9dSgOFpDPMZlL5ie82nR2P2w4VLmS
         cjrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783020956; x=1783625756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QEoinIILiTKHyRPgP5StMa4pYa/MZMpin1k/LVPTO6Q=;
        b=BWvfavNKKCB7bBTXSxt7T93fXEWwPwZkCsP1ru+ly35PTLMgeNsntNNV6gvg5sD4RE
         iXEbmzqYkRlVsCLNQJZMq5wkwZf98f18THLUtx4O9ow5qg+u3H03rHsqeGs+6ttiXO5M
         7SUqvlJbqkUGI8m2VPu+p3KjcWDaAbv8v1vzwhJDQgDa66ZCfvUamVh+kzHf/E1oNRPm
         IIHXTe6WmdCj5o6OcITo1LOXa5K/epqkcL1xElLymNxbCvdxCS6EUgJrYHtsMsv0va7e
         GUF654SYwgpH+j84SZlE3UbdHa3aRp7U+0j8nMTWwodcKK86Sxrp+bWSXqMVf0ydO9PS
         ZsFw==
X-Forwarded-Encrypted: i=1; AHgh+Rqq8y1cO5sFUhWo3rX0sN2OwqEvd6JzYC9X1y/H8tv5zcdxBbgp2w3+KaVrQJxIZIjw8UY97jZXFi/MHw16ug==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLH9XA9BiFEBURf8gnxzGGloSbyD8wHbPmnHIL7Ep54GI0rdXf
	NK9YdP3UPDGPuuQJnCiKItvDxdqVrGuHsk+jRn5OAB7JQJ5xMVWY/MEE
X-Gm-Gg: AfdE7cm7ol2AAt8AHccqvKQNL/Xg9GvveA5CMp0S/fGPh1vYrffrahxOElfw9tlbAMk
	X7nQJ+RpjMGJGDqQukOScDVLAcQbMreh6ezSbMHDxhAWTh1yoVqpLxZ0tpXWHJBm/Yb4NmqT/cs
	G4jsASzGyZ0vWwfNbZIrLpJa8PIRlptw2NT+Z2SzhVG0MKhNwh2jxDl0XiIqX1nl0u7gD8QPxs8
	cR3BRlMRqDtA30VREfb5CV/1sq4inNa47Xb38UforKiKuIp5m7xcsj95Z6U3oWSiIr8X0a0mHvu
	Zfn8v226Nk/umEX8dX/DE9DTgYa6UGfLBpnmQonhfkqJPxcfti4u6HSpNspB+LC8kQGOCUG1eZi
	rMGKH0czTt8/6lFALCrGzMvHP6Gse580mruAWRq9aqhcaPCqlSYovm4qAV7pfNkR4Or52mN0qa5
	j53DvCYFmZygo=
X-Received: by 2002:a05:6a00:414f:b0:847:927d:47a8 with SMTP id d2e1a72fcca58-847c50163e9mr6426374b3a.18.1783020955950;
        Thu, 02 Jul 2026 12:35:55 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb6dc188sm1844249b3a.4.2026.07.02.12.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 12:35:55 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add Graperain G3568 series
Date: Fri,  3 Jul 2026 03:35:37 +0800
Message-ID: <20260702193538.2195973-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702193538.2195973-1-coiaprant@gmail.com>
References: <20260702193538.2195973-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_123556_794338_CDC6DF70 
X-CRM114-Status: UNSURE (   8.89  )
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

Document the Graperain G3568 v2, which is a development board based on
the Rockchip RK3568 SoC.

Graperain G3568 series also have an SBC series with the suffix "box".

Graperain G3568 v2 belongs to development board series, not SBC series.

Link: https://www.graperain.cn/RK3568/RK3568-Development/ (China)
Link: https://www.graperain.com/ARM-Embedded-RK3568-Development-Board/ (Global)
Link: https://image.chukouplus.com/upload/C_153/product_file/20211022/6daddec9e400458816dd4c57ba807fc3.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d0..9eb2f66ba3856 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -684,6 +684,12 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Graperain G3568 series board
+        items:
+          - enum:
+              - graperain,g3568-v2
+          - const: rockchip,rk3568
+
       - description: H96 Max V58 TV Box
         items:
           - const: haochuangyi,h96-max-v58
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
