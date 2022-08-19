Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27B10C32773
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 22:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ4rDEiRCt4bNxxN3JrubolbbL6/x+iyPbc5jS3VPzg=; b=h6oQabI/ZkxOhf
	4NpsOzJ43QvQnaBu8+e8YKCxmyqATJ5C6+CBuQ0M4Is5tSKMD7buaLnnUa7ms5pFxUHde8gDQwk7F
	k7i2UbVEJgLA7LfYRFL+XvD9RG2p5xnMBeD4srWuYMLkAPtjavRyRKqXWIqJDKzWve2uuK2u11tQ3
	K0HLluh4hUMTARU6EG/O4OEBprKeLveykAtaHsZ8Y87Pb5ukXKH9oZIymV49PfO62cTkzfDzeMtP+
	17GaLpO95af46b+3cr/qx1XsGOsF2y9KzOTSTCt72QhWfH/8KhndBX44rduHb9vsK0iAc7mrqHkiV
	BXzxMR7t/aCWgv9DMAIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQs-00Cqrw-5a; Fri, 19 Aug 2022 22:25:38 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQn-00CqoT-Dr
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 22:25:34 +0000
Received: by mail-oo1-xc29.google.com with SMTP id a1-20020a4ab101000000b0044acf001f83so1028151ooo.10
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Aug 2022 15:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=NEt7aiHhfCAk5Tz1JH3WlHcXcSRNIRWN/vNAz7naIyMTKeiUyoX6jPksumwjMXzJLy
         GdUteUqeKz3HAHwt3OgHdF8hmUvFHMYzd50dQ8Wut9uleEgo/2g/nW1eIq9QsyUmg6oO
         NYcniCMVAZvqNK2yvNUjmOGa/yJorCieBwvXl5ghZDM0Kcc7YuC4DpMiICLxSmXcdmCm
         im/GQJDCcPz8NKn9HoEteLepGUhJQpZm4Wj/c16HX0c1KFkDAG+S2sNDLvCyEyYMDFuc
         pfZG7AaXa0LhMjTa6A+GldJfPQz13Wo9jc8oh9utJn1YikqT+uyGcZYd5/Kxf/OdUpPB
         PE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=4YxU2S+hDlbBDFl/eAuVvs6h5zOUqJwMzdQLvdd5bchQjY5wyaqBs/v6odo9ZmYLoX
         t6XabCZrpzX3HHiAPAfS+7oPtREcqPc5GJqZTjM5uiuVDSBfxTcnoo3+LIfCepbKWq3j
         y7ghj403z+OBFM+RSj2TFkQTD4EOMbqVBEM4wPbJnxDEshBJuzWPu345n5sINmcLw/zK
         XaLxA3BIZ9XC59Gq4Z8neiAVR2Udkg9YN4JYHZspcy61eIpQVlksh0l4quylX0ZeEyY4
         hQLVuXBMxLwcMe/wz1ychKXqOE+9FzOvQDF6E31yIKBmHgGqkaE6DLayx7RSQHjgncB7
         XA/w==
X-Gm-Message-State: ACgBeo1ZvrbehmbJWtjaM8uL3PaVLQeH2gC07OYKp/skwsUlo0ruscv6
	/9P5Xk1JHRLu7m9HbDW9a/V/j5IW6+k=
X-Google-Smtp-Source: AA6agR5gC19Qv9ZC15sfHa1dtsj+g+Iewd1gU8/hzHtGpWZG3YpOfkQNvg0piyMyWTbVpS6K7aesvA==
X-Received: by 2002:a4a:dcc2:0:b0:449:129e:17cd with SMTP id h2-20020a4adcc2000000b00449129e17cdmr3220178oou.98.1660947931524;
        Fri, 19 Aug 2022 15:25:31 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id ca15-20020a056830610f00b0061d31170573sm1470497otb.20.2022.08.19.15.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 15:25:30 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	cphealy@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
Date: Fri, 19 Aug 2022 17:25:19 -0500
Message-Id: <20220819222520.3069-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220819222520.3069-1-macroalpha82@gmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_152533_739041_0B38211C 
X-CRM114-Status: UNSURE (   7.85  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add entry for the Anbernic RG353P and RG503 handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..5d947a2de739 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,16 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG353P
+        items:
+          - const: anbernic,rg353p
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG503
+        items:
+          - const: anbernic,rg503
+          - const: rockchip,rk3566
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
