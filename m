Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F11DC27C75
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 09:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5pyJTzRUeaTzPY5/uLaHlZhCMNOy01tarYAaLyQZPE=; b=xSzquWSax/qrPd
	yET6UP0L8L2B0bfpPeuaa13Xt1kz1dTDctE5wvDMhKEfRIIvtzPRhy+IkZ+hB6veQj0w9jOb1BSYW
	7GizNtcNQVNUsweKtQG1cYGFLlQc38zOLMDFI9T14lovhxl+zM923x4vIQYnFpYselMxE3g7rrXGb
	qAbLjA6j1RImhq0l3w+1SRup2v7VzKpCvX4S+F9/GAbNLAM5ceq9wAnvytEGnA+ZJsH/iJPhqTiXG
	TpBOWIPyX1eQwDHBRCASvcosp1lNECLYqjYFLo2KJoqPBMA8a8Lh9jnz57iPgzvWnxugQAaYyWz4p
	w2qhTsdeXs7UwukInLlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3Xr-00000002GZ0-3lEm;
	Fri, 14 Jun 2024 09:48:32 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI3WR-00000002FPa-2Jml
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 09:47:11 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a6269885572so531176766b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 02:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358422; x=1718963222; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xst6Q4HKXSHpj0dsrGI7SNIM5Xkm2Oh1h9QPylE4GLY=;
        b=IE0fk/Rscr/ztf+qah4EYIf4OwmX4BBljh41gNbC3y5o/9AIe3XN4xrtaFE7VI7uEC
         JdMyB8WfKkbklf4OmC2RbYOaUmNteYWnGxdzTLfHXxbI1Stro0HUz+Ee7lk9PSFMzT9i
         FaW75Cke9xsBJAsl2yebVrpITHVHzLTjRBGa2gG+dFKJeZb1dWgCgJY2hDGtzQ/OEBsG
         2abeYGIRSazHSqf7+7B+/8A+bn0OeQTfP4kRKfGhDd7Goe8VNWY+T5GcLztIQFWN26GA
         85chhEDRyIp3GIeD/1YJq9nQLXOrykUAQ3Bt7fRMoVhWuxI69lXBN3qcbLWyWJUY5RtA
         MM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358422; x=1718963222;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xst6Q4HKXSHpj0dsrGI7SNIM5Xkm2Oh1h9QPylE4GLY=;
        b=hQPf145YuC6elzkmWZe6xcbYpdI2gli1xJfzeSlbMtN/Llu75FOVNHFQexe+donaXs
         SbHBqGmbL2TejPpWfP1uYHkZShu078MrzXJH2ABSi2Z25qy6tLO8cBprNM6RIhAImDxJ
         lPfP95GxeOz0VciC5x9ajTRhGF0hhi7fgvvWf6FMlBv/X6jYV9wbv6JXGh7DdACQi7A8
         IMxTneuR9B5+y6A2NBXrZ8K7i6TtCGzUnGiozPgq+IM1pKYJ1bKaHNqR81Pmla29OkCr
         CDiN+z2rgRjSP2m2WwdxQPmrOgEKht0HwLbpVt1ZD10buAtA0vjXzjGmFrYWv3qWarpO
         SysA==
X-Forwarded-Encrypted: i=1; AJvYcCU/XZodVUX5R7jlK64KxOmoq0Z5j6xbvhKu+eW/7jvG874skVdnl1m856bHEQ0R17lC7d7enxpkpAED+KojE+TM/sqrgvpal0VADE8wN7/LcTwp
X-Gm-Message-State: AOJu0Yw5m9j7d9L2MyXrjWRfdZnhizi+wyZE6xeCD5E/TUpJp+gm6HEV
	Vpt6p/gxMTpoh2Fgzjw/yfNSfq7cyaPIcWRNtJaTnpMelVnvE+HsdcUWuNDX8Lw=
X-Google-Smtp-Source: AGHT+IGAEOJ8/Eq/DXhbXLqPscGRVDNmR6uXpGnxSfm7LmH1ErumRz9nwzEhow0zGr3WMGsUdb3qBQ==
X-Received: by 2002:a17:906:9c8d:b0:a6f:6b3b:d034 with SMTP id a640c23a62f3a-a6f6b3bd16emr35934466b.2.1718358421943;
        Fri, 14 Jun 2024 02:47:01 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:47:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:12 +0200
Subject: [PATCH 13/22] dt-bindings: thermal: rcar-gen3: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240614-dt-bindings-thermal-allof-v1-13-30b25a6ae24e@linaro.org>
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Vasily Khoruzhick <anarsoul@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 zhanghongchen <zhanghongchen@loongson.cn>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1202;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=rpuNS2iyU2OY1Fsid3Kqc5QDO3n5JBWLxF/W1R0sPwI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFrkuJnoT5D7TUdkG7FcAVQbX/5GndtGQlj5
 3lpE+6QYFOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRawAKCRDBN2bmhouD
 1wzaD/0Tab4yh0LCsewgEaD/ET5KJN+2kKHthAr0z6S2A5kFlUNqTxe/e3Uj3hNmO5eXvlrViui
 2Y33IWyT190pg/BJizhRchR4cjGkup51OgbLSjJsTpTO+NVC67xRxXuZvm8KHPIqk1d5AUnuorz
 QQ0E8O9UI9GpZ1WtXnrKVhLIGnwrCTPiyVXaKZMmTGW2TPFNtV6AUHJ62pISBPvJu23hhlgWtK/
 brvgzh2e5JMfwDvzg3u9O6SkCqZL7h8VXiRA/ooujXQSJztMxQT6BChRZUvlxwoQzz6VG1kwMeA
 ooj7ACmcdZUwXi3Npgv1akW45aLKyDmC2D5n5+FpK8hi9CJBi1MZTIPXVlx0sYRD21Q7imj5uWM
 wK4okjnLJTCj98w5UUxpfNA8fqeVtag4Ybsu9ia5cTqR1RnyvfdPy5IThulporCW9NI5x5pTmOq
 4I+4ovx5uBLQL1VlN/1q8EP33MfumMbiiD6mL/YUoYOP81xTmhd24ZbHIgN4qzMdKDEKnaM0AhL
 9/B0GekVy0UOV84c5RE2n7KhDCexOSXM4ehaOgKYGcDeQfE9DEJc9PjsIvo91q5PfU3MRzsq6eH
 BekBHTSU0IWtc66yGmQuQ9VSYgTr/NrkM0gfmAoDoECvtGGhESPKKe5TDQlhGjaOfh03wP3IpPV
 V43AIzP/kZdGwxg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_024704_018930_80A859D7 
X-CRM114-Status: GOOD (  10.15  )
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
LWNlbGxzJyBwcm9wZXJ0eS4KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdGhlcm1hbC9yY2FyLWdlbjMtdGhlcm1hbC55YW1sIHwgNSArKystLQogMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yY2FyLWdlbjMtdGhl
cm1hbC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcmNh
ci1nZW4zLXRoZXJtYWwueWFtbAppbmRleCA2YTgxY2I2ZTExYmMuLmQ5MmU4ODJjOWU4ZCAxMDA2
NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcmNhci1n
ZW4zLXRoZXJtYWwueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dGhlcm1hbC9yY2FyLWdlbjMtdGhlcm1hbC55YW1sCkBAIC0xNSw2ICsxNSw4IEBAIGRlc2NyaXB0
aW9uOgogbWFpbnRhaW5lcnM6CiAgIC0gTmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1
bmRAcmFnbmF0ZWNoLnNlPgogCiskcmVmOiB0aGVybWFsLXNlbnNvci55YW1sIworCiBwcm9wZXJ0
aWVzOgogICBjb21wYXRpYmxlOgogICAgIGVudW06CkBAIC01Nyw3ICs1OSw2IEBAIHJlcXVpcmVk
OgogICAtIGNsb2NrcwogICAtIHBvd2VyLWRvbWFpbnMKICAgLSByZXNldHMKLSAgLSAiI3RoZXJt
YWwtc2Vuc29yLWNlbGxzIgogCiBpZjoKICAgcHJvcGVydGllczoKQEAgLTk2LDcgKzk3LDcgQEAg
ZWxzZToKICAgICByZXF1aXJlZDoKICAgICAgIC0gaW50ZXJydXB0cwogCi1hZGRpdGlvbmFsUHJv
cGVydGllczogZmFsc2UKK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKIAogZXhhbXBsZXM6
CiAgIC0gfAoKLS0gCjIuNDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
