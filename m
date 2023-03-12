Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE1AC6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3puFnnDZFOCZU/DauxY1aQ54qvnEC/LazePnGnFUk2U=; b=xrWZXCwPD9ir1S
	3dxp827J8K4MbEEWZc8noN5MC6oHDtkHRBox46TQla2dDwJdHTi5tOX0yj1iYts8zvN07bramnrXM
	3mqOlWRttEZ9oTSLUlHbSU2W9mmyhjw37KZdiH2vcI2YYhWH1OC11Y7+GFNyNo9f6MIDRC/L2WNfR
	S6ku3er6xPLLnHGW7DTp03cz2hBXPR/ShqyaqyzoJD/N6YuPVtbEzbjM42wxYq0BSr0vTfdgYDpJY
	10YnZen3oLXcwCIr97egY4ifiT3Q/Zul7Fh6P7Tt2Y5/OJry/4U9B7Fm2xL+aTpMd3taA5uec9mn0
	etxusyxBCKwOtcLSXr+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLcj-002M3M-VV; Sun, 12 Mar 2023 13:20:30 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWL-002IOP-Po
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:13:55 +0000
Received: by mail-ed1-x535.google.com with SMTP id r15so11315216edq.11
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EnLBQwh0LWohgIW0ttdnCRYb1T+hHfqYVBdWUEvm5SY=;
        b=La4x93DEoIwur2ndgJwLR2ny+YVu7M7nkEdhVk1ax5v8kLMw3TJYokXlZF8BTLzFjr
         PRu/S0l02NyAfTpFe4pEI66UWaAF6uJmcsVb1BR2FK6jsIfvFwDPOFk5wFG2iVlmIxhI
         ZJ/g12UWKozHWmTzOeZepQ3MJ3r7QVlHcomJFs3p2sPClVH5Gx16kWz33VatYadsdgFk
         8+5zH1m4BC6cKBxTckNMY0KDC0pilc1T9xae70XkESQD63z5dT3nFJX5kwAf9svjvpJT
         c3i2O6EBh/quArbGNHgqQMbDNPKQh6Z10jClmZdBJqN51EgX8JTNuD0PGN37wDWnlHFV
         5sZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626833;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EnLBQwh0LWohgIW0ttdnCRYb1T+hHfqYVBdWUEvm5SY=;
        b=Pj7B/CcFG/v/14RPzKvazG6rXYOx25TuKrRTsQV6RivkWjk1gt3LPaayvzX5ZcK5oU
         Ent0nWXxRU2pD/zYb+L6FcLvAyXkW26MjacgoWfVUSAtaEEM/1HeolXfmILTg59/Swod
         b6lMq+HQgO+gVV8NkTrvtpfST2ZnY6aUQgWUs3vIhZWF5r6sBf98n0aagOvVbCOjnlnJ
         koi7Sk4fWh45uXoo7o83go3fTjahjUxW/VJVFlZ4iGMQ8a+wBZvqkAvqbzHilHp70YfV
         pBaPjVCcWvoClkbuT29pztwDJYEL0mJkRJveDVZWuhDvpHT260wnTgUBz2r1NeEmbCiM
         zumw==
X-Gm-Message-State: AO0yUKWyZFBAbuGyq2Flp5vaPYnpaNfo+T3slnsH5+TJxoKz2wCN4vS5
	beICcAOz5opt2AT53Ee9MVs+/w==
X-Google-Smtp-Source: AK7set9Bjjfvn/Sovq5DWKvwxol1DOkWW2/CuykQR76iLeg9De2xNQq2nnrXH4F7baVnuHw64PeF1g==
X-Received: by 2002:a17:907:1c1f:b0:884:930:b014 with SMTP id nc31-20020a1709071c1f00b008840930b014mr39417055ejc.6.1678626833357;
        Sun, 12 Mar 2023 06:13:53 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:52 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Joe Tessler <jrt@google.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 15/28] media: platform: mdp3: mark OF related data as maybe unused
Date: Sun, 12 Mar 2023 14:13:05 +0100
Message-Id: <20230312131318.351173-15-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061354_065782_1BA4D447 
X-CRM114-Status: GOOD (  12.35  )
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

VGhlIGRyaXZlciBjYW4gYmUgY29tcGlsZSB0ZXN0ZWQgd2l0aCAhQ09ORklHX09GIG1ha2luZyBj
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL21k
cDMvbXRrLW1kcDMtY29tcC5jOjYyNzozNDogZXJyb3I6IOKAmG1kcF9zdWJfY29tcF9kdF9pZHPi
gJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0K
ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL21kcDMvbXRr
LW1kcDMtY29tcC5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0
ZWsvbWRwMy9tdGstbWRwMy1jb21wLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVr
L21kcDMvbXRrLW1kcDMtY29tcC5jCmluZGV4IDA5MWE2ODY4NTU5MC4uODE3YmE5NjYwYjVmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL21kcDMvbXRrLW1kcDMt
Y29tcC5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvbWRwMy9tdGstbWRw
My1jb21wLmMKQEAgLTYwNCw3ICs2MDQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1kcF9jb21w
X21hdGNoIG1kcF9jb21wX21hdGNoZXNbTURQX01BWF9DT01QX0NPVU5UXSA9IHsKIAlbTURQX0NP
TVBfV0RNQV0gPQl7IE1EUF9DT01QX1RZUEVfV0RNQSwgMCB9LAogfTsKIAotc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgbWRwX2NvbXBfZHRfaWRzW10gPSB7CitzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBtZHBfY29tcF9kdF9pZHNbXSBfX21heWJlX3VudXNlZCA9IHsK
IAl7CiAJCS5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE4My1tZHAzLXJkbWEiLAogCQkuZGF0
YSA9ICh2b2lkICopTURQX0NPTVBfVFlQRV9SRE1BLApAQCAtNjI0LDcgKzYyNCw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG1kcF9jb21wX2R0X2lkc1tdID0gewogCXt9CiB9
OwogCi1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBtZHBfc3ViX2NvbXBfZHRfaWRz
W10gPSB7CitzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBtZHBfc3ViX2NvbXBfZHRf
aWRzW10gX19tYXliZV91bnVzZWQgPSB7CiAJewogCQkuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxt
dDgxODMtbWRwMy13ZG1hIiwKIAkJLmRhdGEgPSAodm9pZCAqKU1EUF9DT01QX1RZUEVfUEFUSCwK
LS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
