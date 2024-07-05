Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3849AC3271F
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 09:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpJAeJgG0XLzr/vS1DTLQGSk36xKZRgfTnf5oSQ9v4w=; b=2lfEzXX44y4jiN
	fioCfRifQ0R1ov8qN2kB6Eus+TvYT480SgIuq+mrltVlSZKEHVQ/mshZbAjLp1PMUSM4hX+rJ2sXi
	eN5hgajsrYtXecfoQKytYiScbhwTiQk6UGlB/7CXNnUl70+THAgLS11hhAQSx+ZOgwZafHqcQi79g
	Sx5FZjnCGyquQ79s7KV4I2f2dCUWOpGcAJlHYPq9CyDyCW/g6yo7SmOsB2h4PxF4L3LSqvOqoHav0
	tjjYPf7z1ACcQYYlPlBOCq1KuLCzWqxbm12NolgfI3QNoRb0MUkYdirCezK+j8PZRhe1tJ3k6AqSD
	31Pd78YEl3M/beQd2Nlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPffa-0000000FYSw-0wEx;
	Fri, 05 Jul 2024 09:55:58 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfc3-0000000FWEM-1mYK
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 09:52:22 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4265b7514fcso85645e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 02:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173138; x=1720777938; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vLdo5ZNT2z5DP6YaYiw/31TFoY7FNKHY9Kz30lffVbQ=;
        b=VVkUkCDilN3rb8A8Woxp2/N+EwAaBA1yv3lSUKpyWR6qG/98cpr377FLIOsgP4tqnD
         193n4EjDfoNmP9B6TnVudcTpgGKwdlJManLdX373fnvNMDwjcxVFZztP2Are/kDzjioN
         BiEAKVN4x8TDFXcPd1CGfY9CoNACEU2aOsTc+/sdX/D3lTxtyfX1kk3PJ5TXQ4fjStAF
         X9FFbuScJTWePyJwo42pWmGnftfv0D/aOAOzh8QBhbUDlWUT+zOtdUS02LIH41kbWVOL
         WsmWHGmcagQcMj8f94WWXy+x04JP7g2UIflOtPLS+qwI+4es7LSkgZ4W/kFgUEbuOdrJ
         egJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173138; x=1720777938;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLdo5ZNT2z5DP6YaYiw/31TFoY7FNKHY9Kz30lffVbQ=;
        b=RXmkTM4/8JsL89JvFmE4ZitT7pnwNa8i12n2/gFtR70SS/6Myl/6HeGkvDG3MMBDYl
         mcwJ7DifH9nYUwOpCqIEZIACphqyiDm5LLS/ZYi8VZqFgX+j60ftJrToIsgb4cYqq4CA
         BvDcNai8RsMYXTAW+BHpHWM/OiFthfZYmCLuAzIiUZflotPRFcfg76CxwJM2VhpdcMlP
         2GyWKPjpEG2dosNjYSPCZALYHOFA7iACXTNFHvD/Ev12wS+A1G+YoQL7H7k+8DKRRnv3
         IMW4mSULpOSvEUMNQB3RlP43KBvR2/0RVEJJdPE5DziMEI4XJBlMNsTh3BkkfKYhfNHM
         34TA==
X-Forwarded-Encrypted: i=1; AJvYcCVebqwcof5EJdJzJPt2dnKlqi5JwuvX2pSBKCWSKXpeIkvvFUrec9Z/E4ZskHzYirwlJlQ5C6R0QGnXkEKaN8OXGAf/frOPvbCsomv3sSyV43zh
X-Gm-Message-State: AOJu0YyD0SM0p/89fw+3fUZn/0NTUhCDIRLMFantPsDH1ZErpz3oHMX8
	RdymH8vhZgWvyYZDCXfoW4gPsfU8BItaY4iv7HwvkcC1tSfBoRK4xDdd0HfMJco=
X-Google-Smtp-Source: AGHT+IHWM39hkrT3BCL3vfzjlAmuka/milJOhLsZ9b2jVVuI/YsPmNdIWSCcp8XEI2B47DXGA4PYGQ==
X-Received: by 2002:a05:600c:6b17:b0:425:8cb6:5613 with SMTP id 5b1f17b1804b1-4264b131627mr39440625e9.9.1720173138065;
        Fri, 05 Jul 2024 02:52:18 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:32 +0200
Subject: [PATCH RESEND 13/22] dt-bindings: thermal: rcar-gen3: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240705-dt-bindings-thermal-allof-v1-13-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1327;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=TI55Go07WmwiV/8/mxI1MAibWeb5pb00J67OAZMLAWU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8IvuqTqmG0TjJXqzakOUBfK+8z1WVpU62RhN
 HP4ZVcil2aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCLwAKCRDBN2bmhouD
 12L/D/4y67ykiZYFPvIg14LqdydRnQLMNtimrHyOjmnNi6ZkyZiXpMFSLaXCQlRWbqdUt47gam/
 4IjATok/3/SvLkbo2IV0QYXPlGhU1Zp5w/Up82uz74ydZ/Ckw5UK3r7ibxFd6hgrhlGdRtC60vi
 zrTtVOd2njeN40jqyTrNk7hNpBrkllmAX5HdnlDzw2ltUDqIdTSVqMP7KZ7nOcnQ1r70BtEDDCK
 WT9bD9DDbW7kI3Tn0/6r3i9hKfvijriVO0pIWZss/FVZ2zGLp0Qol6i1Ice+xhjO1RlphzZweMS
 qBshFHGYvCQ0nWrECvcUyeIo6lQuaYEZ+pyGu9Z9VRUhsD9TiqUJ4t/0Z269NCKgCvPKB7aZbU0
 TuWY9t8ySj2PLQAtEGegmVToTgHipxADRTx58p2172TdOUAPnPmm3j6lcYmRj5lTZ+lBWkLyL1l
 GEwqIjG0SWSB2TNm8rhntdoW2Imt3Xf2svnNtsCJn2r9w87cP9sdIsO1MXlq0ICfZ0NfznqHkMH
 TP+Nt3lzLEX0KNhP+Xw0Ulr+J7Nz6f7gOL8jbQJfxO5g21KrBeBqPpwhZMjPGWiVXaNi2g0lKu6
 8wTibgLtmpGTEd5TJE+oJlglalDSoEYDgOF/403ECyk+0A5xuSGZtG+9AtTUrJ0v4dodsULFoU3
 Mn5RhWP5AGLuDsg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_025219_685678_80B1A981 
X-CRM114-Status: UNSURE (   8.70  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RGV2aWNlIGlzIGEgdGhlcm1hbCBzZW5zb3IgYW5kIGl0IHJlcXVpcmVzICcjdGhlcm1hbC1zZW5z
b3ItY2VsbHMnLCBzbwpyZWZlcmVuY2UgdGhlIHRoZXJtYWwtc2Vuc29yLnlhbWwgdG8gc2ltcGxp
ZnkgaXQgYW5kIGJyaW5nIHRoZQpjb21tb24gZGVmaW5pdGlvbiBvZiAnI3RoZXJtYWwtc2Vuc29y
LWNlbGxzJyBwcm9wZXJ0eS4KClJldmlld2VkLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8bmlrbGFz
LnNvZGVybHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4KQWNrZWQtYnk6IENvbm9yIERvb2xleSA8
Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3ps
b3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yY2FyLWdlbjMtdGhlcm1hbC55YW1sIHwgNSAr
KystLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yY2Fy
LWdlbjMtdGhlcm1hbC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Ro
ZXJtYWwvcmNhci1nZW4zLXRoZXJtYWwueWFtbAppbmRleCA2YTgxY2I2ZTExYmMuLmQ5MmU4ODJj
OWU4ZCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJt
YWwvcmNhci1nZW4zLXRoZXJtYWwueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdGhlcm1hbC9yY2FyLWdlbjMtdGhlcm1hbC55YW1sCkBAIC0xNSw2ICsxNSw4IEBA
IGRlc2NyaXB0aW9uOgogbWFpbnRhaW5lcnM6CiAgIC0gTmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xh
cy5zb2Rlcmx1bmRAcmFnbmF0ZWNoLnNlPgogCiskcmVmOiB0aGVybWFsLXNlbnNvci55YW1sIwor
CiBwcm9wZXJ0aWVzOgogICBjb21wYXRpYmxlOgogICAgIGVudW06CkBAIC01Nyw3ICs1OSw2IEBA
IHJlcXVpcmVkOgogICAtIGNsb2NrcwogICAtIHBvd2VyLWRvbWFpbnMKICAgLSByZXNldHMKLSAg
LSAiI3RoZXJtYWwtc2Vuc29yLWNlbGxzIgogCiBpZjoKICAgcHJvcGVydGllczoKQEAgLTk2LDcg
Kzk3LDcgQEAgZWxzZToKICAgICByZXF1aXJlZDoKICAgICAgIC0gaW50ZXJydXB0cwogCi1hZGRp
dGlvbmFsUHJvcGVydGllczogZmFsc2UKK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKIAog
ZXhhbXBsZXM6CiAgIC0gfAoKLS0gCjIuNDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
