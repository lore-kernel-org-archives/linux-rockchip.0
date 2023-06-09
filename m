Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4449C7EE45
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jun 2023 20:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtH59H8q9ZCvb/14wwjpKS2AwFUunE7Ti0xFEfG7KrI=; b=2luXZw58Ic7oi/
	4LU1k2vX2uiqfBYovwaPgzERkXbSliUMUCVWLHVXU2Xz1e+a6cPr0Ru8S///Q53rZDOmjsldjLxST
	1QxZdtH8+snTgWkQRBO1mSPyhsSwmnH9zEJiG3LhTfNFn6HE15RloSaz7MSbKpfXMBEroBDrpMpiq
	EbilckWml4mTqYeV9h37bVSLpKsfRpDlRKo66C+unJ2DYUnDMNeK4JmEyuAJfVkQlQoHQeQfNqJDh
	KMcDlQpGT/WjKymivGSpOhTaMrdafxgGgF/guarpd1+Yxbd+ZzcYKXaByWVuiISAVbJFWvnamUykf
	5w/ZA8KRMsEl1OC6e6rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7iyF-00EDdL-3D;
	Fri, 09 Jun 2023 20:44:32 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7iyC-00EDbO-1Y;
	Fri, 09 Jun 2023 20:44:29 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f6da07ff00so22514595e9.3;
        Fri, 09 Jun 2023 13:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686343464; x=1688935464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vH0nkJICH5SoZihWGavJs2/Bnil9QT2kDyKVokHxQ+Y=;
        b=D8L/H1llciKeg2OaECls2piv/ZlGcZPz1fARREAdEPOEgkCvtZ4CHK8PsxWjTgI/TX
         y9Nu22Sltg+JSRzvMTud6VPlG83KpTpsUOfMFPO1PJBTbKtLNLWkq7ELwZXTHVnjklgL
         O6QZWHUygZx5p42j/aRcsEdTeTz718PEH/5OcjBj76Wd5Ziop5BwcMKLo9NyByVb/Mpq
         vTpbzle6IUbyvgB88Pwi3ySHYCy34bCFZAHwaeSAzyrbtYpNq1KepLKlEKqiaR6O7qwE
         jCUZkS84f3vPv3B+YjMzB9p6tIMFc3JA3y/wArk6FmTvMesQM7+YAeZDBjXRUuZUi8XM
         NUYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686343464; x=1688935464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vH0nkJICH5SoZihWGavJs2/Bnil9QT2kDyKVokHxQ+Y=;
        b=OC2eu1VgbnujE2rKRmBElVCyFLoqBUAJpwM8hnrfSWqCSPKx7w8tfvFXLDIGO/eRUY
         oXm2ziPsySH1w6k8ErULoddpmPttqi4qHK0MgjQ7y7Kngl84xlNXWLVYprgt25mBMeDs
         2rG/nXCm8EXgCBrm90TLfQisO5/dTeNQtibOoVIyOmuJUQ+6+YcpSfbSlBYH7h3txkaq
         dbySg2bbOTtw3r9oa7Ne/9SNi8SLEVXoG0NO8/cKQzfH34cNoqF+IAeScJpDaul8Oe4g
         lmAiELx1kpsJyFMWw7K0CvZvboONneagBns0mm99qiM46wdh2BcWOZdNC8DnDHg2B0H8
         XJ2w==
X-Gm-Message-State: AC+VfDz0HtcsnAtQWGtdGgo8xHRItyjSKvA50qXfYMr5Z7M3rH+16tqJ
	roe/n1ypReFmZf4mpUCtgHo=
X-Google-Smtp-Source: ACHHUZ7zNI1VWszzFX6QGR4B6hdYDGcU3iIOW4+UBNrHCJzvjNIhjWN7Qei9tDrm/d/2h6PBBSYKMw==
X-Received: by 2002:a5d:63ce:0:b0:306:4031:63c5 with SMTP id c14-20020a5d63ce000000b00306403163c5mr1948735wrw.51.1686343464260;
        Fri, 09 Jun 2023 13:44:24 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-118-115.static.t-2.net. [89.212.118.115])
        by smtp.gmail.com with ESMTPSA id z10-20020a05600c220a00b003f42ceb3bf4sm3652865wml.32.2023.06.09.13.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 13:44:23 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Doug Berger <opendmb@gmail.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Maxime Ripard <mripard@kernel.org>,
 "G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>,
 Biao Huang <biao.huang@mediatek.com>, Clark Wang <xiaoning.wang@nxp.com>,
 David Wu <david.wu@rock-chips.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: net: drop unneeded quotes
Date: Fri, 09 Jun 2023 22:44:22 +0200
Message-ID: <3169693.5fSG56mABF@jernej-laptop>
In-Reply-To: <20230609140713.64701-1-krzysztof.kozlowski@linaro.org>
References: <20230609140713.64701-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_134428_526375_412CA1B0 
X-CRM114-Status: GOOD (  10.65  )
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

Dne petek, 09. junij 2023 ob 16:07:12 CEST je Krzysztof Kozlowski napisal(a):
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml     | 2 +-
>  .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml    | 2 +-

For Allwinner:
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

>  .../devicetree/bindings/net/amlogic,meson-dwmac.yaml          | 2 +-
>  Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml      | 2 +-
>  Documentation/devicetree/bindings/net/intel,dwmac-plat.yaml   | 2 +-
>  Documentation/devicetree/bindings/net/mediatek-dwmac.yaml     | 2 +-
>  Documentation/devicetree/bindings/net/nxp,dwmac-imx.yaml      | 2 +-
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml     | 2 +-
>  .../devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml        | 4 ++--
>  .../devicetree/bindings/net/toshiba,visconti-dwmac.yaml       | 2 +-
>  10 files changed, 11 insertions(+), 11 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
