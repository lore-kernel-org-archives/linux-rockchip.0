Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C3ABC48297
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 18:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUVC0d6CVg81yPhEzFsv92Tr1P3I8abg12dXYnDfNO4=; b=aszbJaqd3FkTVn
	DkYCTbEXLz5rFZLc4QP2YolvIm2+iHW16wJYw9oPyYeZ9ib4GFm4qmUav0Qu7R0Fyuckh/wtfI6Bn
	Wczc/ah0zyzFJRnb3kgwrcpz4voUQrBZIYgNdSzNBfpzdPHyUi27BFcPnKx9yISe8BjVGObS4/Xrx
	YhraNahnZUKQzzgTSFtgEcOrnSpDUrPsCMLXQLtRTL2wq5dM/BgYB67mKGRt3+mbG7koXCFjTTmDu
	dEdD1ERHy9rTiYilKGKp5DHKjX6vIy6se1XE+ctJan0sgwptrDJCi9dMedc+t7u23MiDqNF8opoPL
	iZ9hxb+lbIGuwNYGp91w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNc-00000006gAD-1k0U;
	Mon, 12 Feb 2024 18:50:12 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNR-00000006g2y-2PFG
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:02 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-599fc25071bso2443065eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763800; x=1708368600; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m8VPhUxVNMumxmegz16wtqJemHSZk+dsg1qRV02Sa/A=;
        b=HvKeNQjECBi1MFXFUw11r1EZm6BhpM4f4+WCDLfNxWl4Cc6IoOaYBszf1go7FQR+cv
         I4MH//orn0mJhwkhujPAnuwUfRvHWO23Jd+ey7q6nz3VmWykVV6zSntifbO68whJkf7m
         83gXAKIU4Fgd0xa40NxqJnzdk1cQnfWr3X2gdoC/0+kOtyUgjr+WklxhgajR1jCV/L5R
         errnI2eJIbw7ArxgqkgesI8Vpfxm/UAa1PNVfi0IEamJ5a2DtcRayjIEtrYOgXVKT0Zz
         TZ+xjfpqt0PWyXnPxKDj/4QuQV4wA2lTRC5MKNrnvO4CnvjiifL3oPA+LHBEmethv9Vu
         jqSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763800; x=1708368600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m8VPhUxVNMumxmegz16wtqJemHSZk+dsg1qRV02Sa/A=;
        b=QKsFc1iLpKTUkeJ0muuyKMSlZMnEFhMmjgnq0DUp8S6tN1F854rp03AF42trNm2dbc
         +FZbp2LCCILNIPzNvbPrUMHtmNTRq+Xe1y6pwMoJ39MGDmoz5+997PdxaqSzQkC8rZAO
         iFunD1/cLSoIJrbVE5Y1NP8Ww5LGRq22c4xxj+74YqAWUJq/52bNEvE/vgLjqhTxOp+F
         LQWZK9tQ3X4WkgXbOaoQ1ekpXyw/f6NGf4FoR/4pw2gkD4ubehFwhRHYJyNA1ld1sh2X
         6SOCS1mZ7UattA8VoeIr1k6HG/1l/bn6N0rOfjrlm88Bj1pG8iVfKNAvEml17pTNSlaB
         nu5w==
X-Gm-Message-State: AOJu0YxeMMejMeDXRiTDhbWjhnNtOb+dckZQrQqIlpA+aH5WnXDdXfpj
	ylXOfZjcAAqPs50mPOAp3pMjj/HyCE0Z8nhky3aX9s9yjdJ+9fpgRv/YwMgs
X-Google-Smtp-Source: AGHT+IFwgajYnNAT2DG3t1Dz1gR/jo0jukUytaecVSmzqrrmGdGsu+3jEnD6ECto3ArNVJhamBZrrw==
X-Received: by 2002:a4a:8557:0:b0:59d:35d7:a565 with SMTP id l23-20020a4a8557000000b0059d35d7a565mr6684550ooh.3.1707763799981;
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUAw9xmcZUUlJhRIP1qbo/rbWP6bZX5NSRm1WiUs2cyTvXQAuW2comimjVFLv6zQTgkrTRPLnBx2oFBFI0EUvHjaMhUL9qtGeonOQfsgadEu4lGsth6yuGSBgSw8q3CFjaSDWhLpFvdzS9/sLxxo9O99OyKQY9RycEe8W6djAuvkVZ0qLGQcDUuhwvGBOSb6ONrFDBejtFeFh2J48R7vvGLWARf3JevjXO7M9AoBmCluqfME+8bAf8XmGd8pwxTN0e/fXe+Fr9TdloVoaI7iKtZG5zVvXVsyDHuRgp9WQY0cQ2Idg9tWao3U1BM4XpgHYtCqqiZli1AyFBhUv9wkfvNePGNG+7M17faLFjB8dxmhlGEpBT6AABPM5MJM2gO2vzulHIWB8S7efK1u+adkraT99kRl3FTldMGvwKhVS/AmE3hcx7hudVPtcmMxYv2tOwg5MZ+xyPl/YHVWZRPbmE0wAJPhtbRLK4tD947MRrZOEdYMuUalJN0uATIud65dgI+PRCkNb9HqvTYyTDMdqMgYVNuNeHMhMjKogUhOs2LMHKk0a8C9+X8BDaH
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/7] dt-bindings: display: Document ST7703 panel rotation
Date: Mon, 12 Feb 2024 12:49:46 -0600
Message-Id: <20240212184950.52210-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105001_642320_AA5529A3 
X-CRM114-Status: UNSURE (   8.30  )
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

Document the rotation property for ST7703 based panels.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 8dfe8951bf5b..97e0d14790e3 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -46,6 +46,8 @@ properties:
 
   backlight: true
 
+  rotation: true
+
 required:
   - compatible
   - reg
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
