Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3D95C10DC1
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKn18uIVubpp+mx0uJeF/ta3FIoo67boafWUGjrAqP0=; b=s6bIE5p2huHDeQ
	wmHJsMPKVraF2VIk2pnJBB2cQQaBLzysNOqeNKwOrwR6dnQxu5zf07E9+wXUfoiTQt+4HEaPwrJqa
	3Na1y0PQtyvO14jazC4G/iEpbNUOF3xvFSVwZ9HF8K9WpcJFJUSpGNJt/pkjUq8RA6D49xI24f1CM
	NpbFir8Z0D2F3+ca7VPQ9DU7/B/TEYU2jIiCH/v/6lNvjI788rUes3S2brMF71uK+CDDvC5qp9puZ
	rWfGJ9VEq60onYuMWxa4ARaI4fSpqbcym+lfPPsKpDqia25MxGBQ+0ddjeBPdnMtxKO2I/qJCatSJ
	jFblhiUmO1VaPrr6YGJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTe-00FhyT-2f;
	Sat, 02 Dec 2023 12:52:10 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTZ-00Fhtm-2G;
	Sat, 02 Dec 2023 12:52:06 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a1915034144so343829066b.0;
        Sat, 02 Dec 2023 04:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701521522; x=1702126322; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5TpM4rIE4qqT65pAaY9eqEHRHauyEUGalgmDwr8uKk4=;
        b=kdfShsn/G6uD5w8sMXuegI1b5CW5xI7jg9eOxNOkuj1Pzvw9nnjxzhwGWbSKNyYd80
         UcKWvAxuxWRVucfSZDg59PiZgmdiM7dy0LRp1afDPD2NdAQv23FRpZhsqwe/zLKouNpC
         jL3BklCK0SVAmOtdSmiku9gjF1P6nsmBrfXB7DR48vY5C3HAzKroKIsbrSNzDJJEL9+8
         b8j64xtJO6b4lzzMZyG2RnEK/6SvT/vZ35cRY7HfJwF4BUpz+oseAb0Ge5Krej9n2bUn
         UzJXQiOmDzeqlDkKpCrzt6oBfaTTNRMsVl8g+KCkaau2ILhF0Kbea+NKI1ST3ZPxTe/L
         38Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701521522; x=1702126322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5TpM4rIE4qqT65pAaY9eqEHRHauyEUGalgmDwr8uKk4=;
        b=iFJkntVM292l77egyeetUO3oSzuqwfeo+eLrZNKyX/eCNysl9B2cEpKylw7heCD5br
         OwVIXEtraoPGzFX5r8M60xza+/P1Q1CIPlkVf685okdj6RvEvELDcTLzFz/bO7nUeXKu
         2r0MzJYRKI3zmi8F3pddOzcefzI9VgUN05ukhvIOboLhuVCL+gpC7Bm2ePQ6OewlBbCE
         DEb/1j5G9oolOFV1QYjPbgq0HX0EhnAg2j5EQd8v2ZPYDoOA2fSDKe4Y8asCr6Q1VK+H
         kDox4312AFW8eKMDM/T31hgkcjTLdVGwe/xU6QJmKo/m7xs3u8PXhVk3DL9Wm0f9Uwcu
         eqbw==
X-Gm-Message-State: AOJu0YyPr5Ypr68mPhNfuEZd95/MsT8FdNxLVAkY1gxJxgX9Ip60egRB
	YvBaLBmHTpWqkhYJHoLIIg==
X-Google-Smtp-Source: AGHT+IEyleq1fwiEbFjEWs4F50ggLLxGB/KOmVoOHqA2365tzKaQw281kj2swtpYsUJqACRktkUtTA==
X-Received: by 2002:a17:906:3b43:b0:a16:92f1:2f47 with SMTP id h3-20020a1709063b4300b00a1692f12f47mr1536630ejf.57.1701521522024;
        Sat, 02 Dec 2023 04:52:02 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm3018161ejd.219.2023.12.02.04.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:52:01 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/5] dt-bindings: gpu: mali-utgard: Add Rockchip RK3128 compatible
Date: Sat,  2 Dec 2023 13:51:42 +0100
Message-ID: <20231202125144.66052-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202125144.66052-1-knaerzche@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_045205_769039_B154901B 
X-CRM114-Status: UNSURE (   9.53  )
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

Rockchip RK312x SoC family has a Mali400 MP2.
Add a compatible for it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index 0fae1ef013be..abd4aa335fbc 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -29,6 +29,7 @@ properties:
               - allwinner,sun50i-a64-mali
               - rockchip,rk3036-mali
               - rockchip,rk3066-mali
+              - rockchip,rk3128-mali
               - rockchip,rk3188-mali
               - rockchip,rk3228-mali
               - samsung,exynos4210-mali
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
