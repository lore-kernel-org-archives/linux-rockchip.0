Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FDE4EE0AE4
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 13:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1j70eOW9LBmLkXs9XBKGWPTUU5SrKcLFh/QeuogJ0Zo=; b=gH/p70H6uVF+2+
	IGi8BzEVewFK7pDd4e94gYQxV7bV08QVhUIxmo8nnyZ9ejoOgiKXMx+mJfTA/+mjEsfgVQGmBk34B
	FKFMLo6kJllsMO+/2mWtYcArvH0eJEPvukba2b5atQmsWDOCF9XLLu/WiBHfNzqqshxY6FUfta0Yg
	EiMDaYQf7i3wtO+Xx7xuc+jjGstIFiVV35kVH4CdD3lUbBU2MAGDI8Hbcf+37qDeESp1zHapaXMGP
	RPf1J6SJeLJS6lqzTuUBpWiUlJhoaglDVHTqi4TAGzIpBvXvlp8O/jwBfmHZw2piFQ2HjXxPy6LMr
	gQSevBobu53T98nBkldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voi1Z-0000000CSSJ-1XvH;
	Sat, 07 Feb 2026 13:06:57 +0000
Received: from mail-yx1-xb12a.google.com ([2607:f8b0:4864:20::b12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voi1W-0000000CSRt-0pKK
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 13:06:55 +0000
Received: by mail-yx1-xb12a.google.com with SMTP id 956f58d0204a3-64ad79dfb7cso457925d50.2
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 05:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469613; x=1771074413; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KExn54vGdemRSQc8V4xZY/OAPOefDjPGw+AdA0mcHiM=;
        b=JTXyDCjrnWYYPsDkG0XHOlzsZgDK0n7kGJJEcKvzUj/uE7JdTxoS4kP/bWY/P2PwP2
         sJJnO7NQ2bmfm502BjUV46omjziPOL+xEXuE9bLQKK2wTE6ZK/3mvSQL+6AVid32G96a
         mc84YKxPvdDXqX3Fft5CbuAI0zI1XFdIKzkZ/bALYzk4RDOofO9LvidgIdK6HsrQqXes
         zOgyiqIJ9Ba9HYvsHPTpze9qQcBfjT1WTWhIRijWs0vCV+vFbd95WB8U2drPUvtvAWwv
         5+zqtQRVb8tHNzntcRUldCiqJsb/aKH956pdiX3XnADs9uV+diXgQk838PvmOaHIsDZ8
         4yJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469613; x=1771074413;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KExn54vGdemRSQc8V4xZY/OAPOefDjPGw+AdA0mcHiM=;
        b=SuSnd4fFcZxTZvsHyYrvbnhtQdjtgRe2mA9CFvyj+mgaNbcZ03rPem2CaqnkqbcWeK
         p2oVHjG2PTTGu1c03KsJVeO2Rg/lTXDFxdZhpejVb8GGVUYqAwZZAxYon2WMdL8JK23w
         mXJ20dARVxJWmX5Lalw0rYh7OMkIELn51pMdjHMq+55kNJbODC0Prd4anhKpn4TvOOMI
         ogfdvJ7pEKx6OB30JWFm7Z01AMMwhPeEUNNXr2YM4+PHqZytZ2EI3N2YMTxa9azH1tke
         lG8kxjCZbgVWeGgMUo2ud0ApDEnkfXewPrlpFmbyiGnmXG3zwYPQpDiX2mQJRQY9sEzE
         3B+w==
X-Forwarded-Encrypted: i=1; AJvYcCWgVMXUTXpUQ2piKZztInm1HxCpsvb/WpKgyUyqpCeS/1NLvwJXxksmxp6zM5k3bie0d4LDe/V0jObwax/NIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxC33Wagsqo2viMYjGDSDs7Ac9JYgA6t9qMqlpC0TtMhG7vrJVX
	V7vYjaDfT9iVDMHiKjAEkwEiSuz5YAWKxIoxPoWobEv1H8I76ZCV5be5
X-Gm-Gg: AZuq6aKz0dNuvCPcbLUJ7KrRDNfF5ZaV39b8QG2NP+3DPGC1fhZ+Mhl8ta1Bitj6D76
	x2dVqDrUQgP8aH71g+92Ft8snXjnnJr+ZcVGeV/1rIk6kVZtJTYlHw4k0CWP3+lYqixP1omXN/J
	RBbCPYh4aeSkQO1Ugd8uMSWLPZbW0nOr2NzcoYOEr84ax32RLd0srBXkuZ79aJXmIoOqW3VP7zY
	gL8a5E1n/aTItl2OdU7XGHNON1Hh6yP4HQzSbySwOYLGq/cymNrFp5JuePmkZvQ9fcHKoZDRwly
	4zTqGAA3eWF0F6jwKKmnlh2NoHpnPMm6XroN9HV/ClfcHhLloQ0Dvkee5/18YyPwYMs1vX81KiH
	jxq8a0vrk+d3ges5kNd1ni+n9aofjk62BF0blAThZwG/diNcasQOUdBreeOBqAWWGDnwL/d7EB4
	RZgrMSW+txqemF+teZG3XeJbn9
X-Received: by 2002:a05:690e:1686:b0:640:ddf5:254f with SMTP id 956f58d0204a3-649f2058f4fmr5743886d50.62.1770469612896;
        Sat, 07 Feb 2026 05:06:52 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649f248c511sm4991572d50.8.2026.02.07.05.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:06:52 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: linusw@kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	jonas@kwiboo.se,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: rockchip: Add RV1103B compatible
Date: Sat,  7 Feb 2026 10:06:41 -0300
Message-Id: <20260207130642.2833312-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_050654_243976_10716EFB 
X-CRM114-Status: UNSURE (   6.43  )
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

From: Fabio Estevam <festevam@nabladev.com>

Document the compatible string for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
 - None
 
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 76e607281716..9b3cbeb54fed 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -50,6 +50,7 @@ properties:
       - rockchip,rk3568-pinctrl
       - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
+      - rockchip,rv1103b-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
