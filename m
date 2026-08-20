Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE23AC5DF87
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 14:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LH5y9KziEL2OzKhb5ZS1i6SW+0o2heVDphgHXGtKraw=; b=cRAZnJPpSdp8gE
	fYsrUKvwYWk4NQqiG17CguNL3brFup/a+8wegOO2kWVuOWDasoE4UA0CWrbJ4N1/fU05GnywPEiAu
	0dNKFOHVjzo+v4KBIrCfndV3VBZ5+J9iWT5CNfmNDZukOImcUsxJdm2hLRzYizZUBTHH+VpMD4VXg
	43xFfE4h0/TTz2Stpg9IwZxfqgeTy6xRpxxypN/FsbxpgJJ1MYLjK4aC4fe9xN3DrHSvK0YVdhxW9
	pP/b1DZtp1wg3yvIygo6DUWTztpSgweNkphfpF8sUQyxmJlGNn/uWKwmpn4/tEqy7hIBrqIwV7LMM
	SeQIm8uxWiUlbAYAq0uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kj-0000000BeSN-1rvC;
	Thu, 20 Aug 2026 14:01:29 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kf-0000000BeNp-18wt
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 14:01:27 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-49557167508so23645375e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 07:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787234483; x=1787839283; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nO19FsrOkyTqyk5fmO2arL61kBUyFj/iNWEiNLbHn98=;
        b=pg1/5aZEw3CoClYlqjXNxZSx9JugJJJi2L523ym70YO/xnCo83HAk4BAEPRCYYlLfL
         gdGcUVptc2dvoY9/fnngrbXfVbysORf9GCnOfEF9Yo7WGumkZdrMfx6MZ13bIXVB/5JI
         hfVke6Ld81tKGKA+JK1k3f7BLpxAb3jZK0/tdwfOQwfvbwzY2y0PtKh6gZxmkJB5vExj
         jezVnbL5dtJmKk6wVxZQ+9yjoTDrGUo7y1Jq1OgPIWzDzJ+TqHbIMZxQ1v9pMYMz9n8s
         vwyKj7UitR4nHDTN7VRixPrTIm6lMqcShMl7p7wDxbfA98Yf48CRK1fFkyVvoR9fN+jF
         qN+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787234483; x=1787839283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nO19FsrOkyTqyk5fmO2arL61kBUyFj/iNWEiNLbHn98=;
        b=KSwhghDDSPOLX68evYCVPy8fZ5PuJ2/5JTcMLyiZSng5448KX73aQgFLORlMLEwnMH
         fTqHPTLtPFKB8lW9kxhUcdVFFfGzK1jIKY9lbThTwH3ewYzHtwHAJrvtQq7zRqkIfBp4
         Z278Kr3kNac4fr1HupKGycTMbAJwO8fDGIuHVBmmgetgfEvI5Z7fdDlNGQ3bhKJLIrW3
         Ow5WxNByhvctYqcpA4UXHA2qJkiKPenOCtdnZitJRH4xCleVacipaayyoxfTcOryViO1
         Wk76CX04cNozLi0ptuu0tNKtMNjd6iYQfKWCYIyYRKO5yXnuBgUpnoakcnychpPEjPrJ
         z7lg==
X-Forwarded-Encrypted: i=1; AHgh+Rrqq8QXquZlGlWU2RztjWViRe9RlKYh/rioYsLIsExewO8y0XP79dDomEzYDp6mHeMbhOfVoOIrPnMa4Hid+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPCpZRKYPDveMi2J64FvsMITGzVqH8MTsF7gFRRyjvWSCUM/QR
	hcdbtw9Uoq+TDT1WW0LiVi3ko0c/H18jylZptD2pgarT2K8TmOyARCj4
X-Gm-Gg: AR+sD12HQzh98nbmBiw9vcEO42YfYa0N0woNhS7Uwh2dXBik5r1OAICm9qbf1E/7KZt
	ul/oIz6M/SrBHuGak2C34kt3mt5kKWNEf8s/swNr2Z1yYp+/12PMwDkRsyaHPNmrezY/ZA5eMRM
	gHmzC8SJSWuTxw9KiZYiPOJI/MkUzNOll2RvroccdGvStUbMcQ6U9CjrXCFdWQQoctCduflzp6r
	gzgFmjY0tHRLtxz5xwx2SugDdnF15xZ2qIbkziHrezoUw7+jlCYSzE1HLHdppjomBG2r8VgQgyE
	ZaFy7l07pJ6Vewwi9PHuwdrQPvRYzbGgQsAzRaT+um9MsshF5jbgm+bKBVPlo4Jz6HnBtS2t9Cb
	Loa6utGSjlWueqqdSp/D5hvk6t/slb/wRX4zGZO/pd7IsGRPLH9UZqVc9afnNr7z1AI+VNl8nIj
	gYJxKGIjDVK0D0Ivi6FmuhHG6WL+UsP/T6NpOtnE07gY9K+Ym6p9T4VTu5w3O/RZv+KAZTgb208
	XNijR1oCJRNpHAY2y3svSBxIabVRnjiCxqv18hKGvPGWc8=
X-Received: by 2002:a05:600c:8b32:b0:496:c06b:9fb4 with SMTP id 5b1f17b1804b1-499aa200efcmr247008575e9.14.1787234483139;
        Thu, 20 Aug 2026 07:01:23 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0e473dsm137978275e9.15.2026.08.20.07.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 07:01:22 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Thu, 20 Aug 2026 16:01:08 +0200
Subject: [PATCH 1/4] dt-bindings: soc: rockchip: add rk3576 csidphy grf
 syscon
MIME-Version: 1.0
Message-Id: <20260820-rk3576-dphy-v1-1-70e25e8d5e78@gmail.com>
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
In-Reply-To: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787234481; l=910;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=1F1r7NotkpzJGaZPEdB9UeDk/iA0euzjHAVH6r9N3K0=;
 b=Np7eikFgXwccg4Ti8gJzd+xtDeEZPan62gfovBipj90sdPV2MtJiz/SXhtWw+8fOcZ8ds5+jG
 kJxuBnXeSeqAJT6L09jGvrAaMY7eANAsKn7TqrvSzAgZ4vRkDHTVPOI
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_070125_339070_FB76CB32 
X-CRM114-Status: UNSURE (   8.27  )
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

Document the syscon compatible for the General Register Files of the
RK3576 MIPI CSI-2 DPHYs.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7bcb4e2f47ec..e94c83d7c138 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -32,6 +32,7 @@ properties:
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
+              - rockchip,rk3576-csidphy-grf
               - rockchip,rk3576-dcphy-grf
               - rockchip,rk3576-gpu-grf
               - rockchip,rk3576-hdptxphy-grf

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
