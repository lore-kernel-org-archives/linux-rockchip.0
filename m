Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F36CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=xaYDh+eBXmEjYf
	NTfTxWyf72rC0ZNMdOIObeNudXYfT7CYf62ItbyBCd2MHRBIc1C2ktsOcqEubHCUs7Hf5Hh1phSMU
	fTDS6DLKcha6M97RAHa3dbluAGO1L9XWmnl1sRfn1cNTNaewctAsJwQxAswZ9IZOkI4/wj+Dq12zm
	musvgEskjlpK7TrA0qTkDw+62rfN+vnpw7eHE17HpjN0Gbv9/+9MBqA54HsmYOEKbUetZqHLgqbxI
	u2R7Td1y6oCBdzjSWigqm7C5Zr/2PA9x0lCszXBrz9AuCgc8N9Id0vLByXlZA1dNTyt9TZFAfc6e/
	OpVXmBD664y2yqVEjHTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Yh-0000000BUgv-0fiz;
	Mon, 01 Jun 2026 16:32:11 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Yd-0000000BUcm-2bzF
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:32:09 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e6b552ac99so906175a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780331526; x=1780936326; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=loFH4mdpeuCIG1x1CH5b6mSwS/GkwHu2pP7A5e6NkWdERj0K4tQiSQX6lFTmhZB8fX
         d+WDrGg8PARUOsSm5o4EYy1v/B9BXHnAFGgZQlu2/eHJgO2pYZGeLnJmG/4a1Tbg+5WG
         sJK7xs/KI3xm+B3XnNcVtx0BviQvLa9AzkGko+IVuG0Co1B/3RwKermVu5MB5+LZdnI2
         oGyF0pj4BzrqJCpCTF8w62IQg1CwCUFBcJD1loV8nKACu4bgUdUgwg3uHCdlE+JL7fZ/
         1glW0Da+/hCmFsIt5oC401u07Su1e6PuGxMOj9vPDIit2vGUq50z5CnOxygUc43GkHaj
         vzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780331526; x=1780936326;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=TzZWcPQ6tHMNKyDl0/gRTVVtivx7oH6nb2C8tVvjzv2LvgbOAN50AlMyaC2qdv63Ek
         JWyGiJ5So/x4WKJBfum7CFZr//hDWaeOlXmf3XHbI3k4X8tlJOTxdLRvd3jG/tuRYCBW
         0CdVbqF8cvYIIe8jLfBsnWW+TCl6VtYwa1XVVmF26X1vo5AohC460hGpUV6/BYY0IBVf
         qAwTocCRDbs0hbBgeIsVmHmpClWYO0dn7kA0dqjSA31nM5RRTTwk2Fa17weMS+lKLtUY
         NpDvVw3P3EsaVBgL24T75iK/2zqn4AvGVdbWMizFYXhsMSWqC6XieSKGC2zjmuJiEcQG
         ckIA==
X-Gm-Message-State: AOJu0YwxLMGhrCG++GHBTlZnpYRT30sPGVGZf/zdPuOe9SR/h31It/Qb
	H55e7NtTSuRbYXcW5MhxogaAuMIP2Yu2kyuGxUYFBRuu2EAJue6nM6vWuKS5SVGH
X-Gm-Gg: Acq92OHpHaFveDJON1WtaOd5n/D6TyPY4RHTRbboZL4jUUJUQ1DKvgOuusfxAzQqWTQ
	S2wKuAo0qe5EeTqBDv+IT2k5SWFmZTAxZ/4TG/XVcYRRWctug9zOc8bhqhgUCmVe3WHmsLEmPmN
	Jy2UpxME8B6Zak0SQ+3+P9RB2FeiuOb1fesnOTohga1TPOZsgc/SzWawHr6bI9LVfNuJ5tcDndJ
	mzUmh+BR1z46XD+oIOcLYWGGqtoG4pfjZMsVBRmiBIYaJiaTCySNCKivVOGfwlWYg/CYLFUDc16
	JQPkEYO7jQh5FWfg2+FdDefxoKNoXTx+ABzQMCT/4jyMjePwNITtB5hmBD24MSHyjepvpliKxm3
	Er1pEZL+a83MNHEUImjvLmZoIU3eLG2fqV2xIkTRWEGpaSmvfdNrUJaaFLfPmbhU2UUbvypxMwi
	XCDvekosjmyvrn2X/BjKLVY+WePXu0+AU=
X-Received: by 2002:a05:6830:90e:b0:7dc:dd58:50b8 with SMTP id 46e09a7af769-7e6a1daa0bfmr7330820a34.13.1780331526494;
        Mon, 01 Jun 2026 09:32:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695d69b20sm8024928a34.22.2026.06.01.09.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:32:06 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V3 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Mon,  1 Jun 2026 11:29:50 -0500
Message-ID: <20260601162951.254968-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260601162951.254968-1-macroalpha82@gmail.com>
References: <20260601162951.254968-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_093207_684793_BEEDAF2F 
X-CRM114-Status: UNSURE (   8.67  )
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

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
