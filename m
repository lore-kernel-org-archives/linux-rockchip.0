Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 387A8CD612E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 19:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTrwtDq5vEgcLx4EXWw1YDr9MC5X/MaWbU2ESA95Ukc=; b=tM97hf6K5KfKQ6
	CKbuN+R6IszuKgmvroNjduGVFYK3i3l7XmkNuX/NvUBM9Su97os7623XFQlAr4Hwi3Dd7HsY8vzic
	yngxPDNliVEXMvb1DNZAeMUtt2SvgFmpMfrjgQRJcL7XxBGq5qaEBlQJMgIXLv1Us7ogjUkZYzAGH
	2JfYXdBS61qY2cScekKWIbGaOuiHAV4JxnRmgUwsXqiUz96+H0X2/a6iAjBDPvIbuFcSmMi3ILA0O
	iHvlw3Q2Psdy0qtMAYQpJGleIAmVELh4asPcKgKD35tZRB0id5g3MQZNdxUXTHATVNi6F3X72/3CX
	9Jz7GkspeLuHL/RPTtMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvvU-00BUZs-2h;
	Mon, 09 Oct 2023 19:28:24 +0000
Received: from forward100a.mail.yandex.net ([2a02:6b8:c0e:500:1:45:d181:d100])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvvO-00BUWu-3A;
	Mon, 09 Oct 2023 19:28:22 +0000
Received: from mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net [IPv6:2a02:6b8:c1d:3e8e:0:640:2b73:0])
	by forward100a.mail.yandex.net (Yandex) with ESMTP id A3BA942B1A;
	Mon,  9 Oct 2023 22:28:12 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id cRi0fk6DeCg0-YKn8TPPD;
	Mon, 09 Oct 2023 22:28:11 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1696879691; bh=yUgbniaymaplXh58CVULTjy+821cujog1UtQo54FcWc=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=WGSyZ3yg3Abpi12OgA0iu13YTPOA3SJt5uy22ubd+/7kwHk6BcDVcsI/cXq86ErUE
	 FZiNcukrTnDwp0FO+EoAQfLXdNPkTUZvUhG6TGb7GJgAlvur4OKCzYJpIQF0NwC0Kt
	 M98DmF6EmB7JZCTmxGK8bCrHAsO1eR8yu1GyHarA=
Authentication-Results: mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	megi@xff.cz,
	d-gole@ti.com,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
Date: Mon,  9 Oct 2023 22:27:25 +0300
Message-ID: <89e92c8df546a0b926ba7481aa83c1945e81e8a4.1696878787.git.efectn@6tel.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <cover.1696878787.git.efectn@6tel.net>
References: <cover.1696878787.git.efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_122819_206952_8A5EA827 
X-CRM114-Status: UNSURE (   7.69  )
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

Add Orange Pi 5 SBC from Xunlong.

Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
Reviewed-by: Dhruva Gole <d-gole@ti.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..b9649e27bc82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -877,6 +877,11 @@ properties:
               - xunlong,orangepi-r1-plus-lts
           - const: rockchip,rk3328
 
+      - description: Xunlong Orange Pi 5
+        items:
+          - const: xunlong,orangepi-5
+          - const: rockchip,rk3588s
+
       - description: Zkmagic A95X Z2
         items:
           - const: zkmagic,a95x-z2
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
