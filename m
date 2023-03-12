Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96564C74A5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OB/y2sup18pvQLudssVewl16EwnG/637dPaQ2oO7kxI=; b=S6HAUhYCUydBK5
	Am0kL3ETBxx6IkrxhvK2njiIsXueXzBsyfFQxvjzOwJMarP/C8LZWWSWwZC70sZ/bkabKmJ5bkQIe
	JqiXnVKGrfF5TIQgNkIW9v79glVdSVcT1fdQPC8iBNfC+ZeNcd3uKPUyIIBzAjhhMenO2VFbNQZ5N
	mbn6TMrM1S+7dd1NhJPShwgbNvuW3E/mi5PoE0EY5e/8w+wEvtUiPLKekpCwSznRVAplLOMhUNX0I
	422rSdQp6ChWN8b0Z6zVJeJV3hchug5nIhlFGSt1vvLQe46xus1mNSn2LAl6PNdO9nTfBZrB/SLAa
	mcoS3G5GuEn5suasVAzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLrA-002SES-N9; Sun, 12 Mar 2023 13:35:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLoP-002R6l-Cp
	for linux-rockchip@bombadil.infradead.org; Sun, 12 Mar 2023 13:32:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=TNgYfofTMT0DwU3/gnE/zf49ZhjV1abWtqYCyvkVzBQ=; b=ZzxP4DTGBdb0ZQUC1PUFIgxE5u
	P/7+K5EOb56C5YBqZtSM5w0ZmgDZUvhFuKnuxPeK+0FVe83ni2VZr0F1a44hIipLJFmIgn1ZDqR5+
	wxKmOemsBoJFHHgwCSQnBBrQDVFc8N6Zcg0JVYlg0Lp15WTl58iOrqqF2tUf+9s0eSLtdKNE5Eb3w
	P9umwWrkND5OJ6ZrUaHmrJAFEwmkZyA42oskXQ4VQ/W4U0DFag7+iewL7zEoqASimztbhyb/qkX64
	0J5OBcZdqQwlglbgCLDYZE65Oqs3EvaoVAAO5KI7VMAjnJnGbaD0J67G8MG0GOuVzvWYd5EO6LAuU
	G86+9bJA==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWW-00B3ed-TZ
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:14:07 +0000
Received: by mail-ed1-x529.google.com with SMTP id da10so38599135edb.3
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626845;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TNgYfofTMT0DwU3/gnE/zf49ZhjV1abWtqYCyvkVzBQ=;
        b=EgkbAPHTPzo9cfWlbLRM6KLB9a2CDiyTPjgvZIkiQB2D3eAiH7zCEO3VPovDUd+GB4
         KX5pcpWniraKhokFUITVAYNqggo8wmVnv51oebW8T+jTWoS8EYz5RuidnQho16MtLB5Y
         6HnazuF5aS+d0nJV3e7wA/9S90PNSqDWAroW/WjB+cwKhBYuD2AiqFCxO/6DSf+Lzzh5
         s1erEPkcKXTBdvZZEH+znboKjx0L7miHhUyOS7X5sprDW30hvRNz7iLwKLf6cCe9e+VE
         4sxLBtwFF/inQe5VeT2sEqF81F41KzmIGM4nDHT9s2mV60jv2F0INyTIWn4VM/cwT76j
         nAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626845;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TNgYfofTMT0DwU3/gnE/zf49ZhjV1abWtqYCyvkVzBQ=;
        b=li8CJNm4LLw4queBjOvMSbfm+5R8uWARIlc/JsYrCO9Vhwk9D37l2bsJiF/PhWZ9Dr
         HeR+Sr65h7dnUOmIs02Tc9wbkWWsG+aSU7Bj6snvEDT7H1kgtbC5VW1NlthXF3jO7QRH
         vUzp9GlQKeV3PnUl67zL2KLD0fZNXpjBRxlsDt+g/MQJpsfx14jurz4AASSul9g9LrSu
         s+3Hx+qtGA+0FeRYlzbAiq2w12uKjGveIJXPoFq1D9zZHwKCXC7Uwjpf06uNNgPSTqq0
         808AM44eO8A/pHBgY8Xjx8Z1BeCgFCUK4WCWPl2ZwO+6w9Bl7VsyMyAcSHQE5UR32V3I
         ID4g==
X-Gm-Message-State: AO0yUKVrktERE9pb1TMKHfLOXxg25ItdoPVTJY7fKWterTEzZv2gDJQE
	dEGIcFxX+OXfw07iCYpeejKsmA==
X-Google-Smtp-Source: AK7set/vg3wcNxuj5n3r+oFsWS7o7VFQ0ZolSjtjcry30Pr24as5+4q+gdgTFv63DmbvH/wtTzc+Fw==
X-Received: by 2002:a17:906:4f94:b0:8ed:e8d6:42c4 with SMTP id o20-20020a1709064f9400b008ede8d642c4mr31116353eju.12.1678626845092;
        Sun, 12 Mar 2023 06:14:05 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:04 -0700 (PDT)
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
Subject: [PATCH 21/28] media: i2c: isl7998x: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:11 +0100
Message-Id: <20230312131318.351173-21-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_131405_421035_736CE749 
X-CRM114-Status: GOOD (  13.07  )
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

VGhlIGRyaXZlciB3aWxsIG1hdGNoIG1vc3RseSBieSBEVCB0YWJsZSAoZXZlbiB0aG91Z2h0IHRo
ZXJlIGlzIHJlZ3VsYXIKSUQgdGFibGUpIHNvIHRoZXJlIGlzIGxpdHRsZSBiZW5lZml0IGluIG9m
X21hdGNoX3B0ciAodGhpcyBhbHNvIGFsbG93cwpBQ1BJIG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBl
dmVuIHRob3VnaCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuClRoaXMgYWxzbyBmaXhl
cyAhQ09ORklHX09GIGVycm9yOgoKICBkcml2ZXJzL21lZGlhL2kyYy9pc2w3OTk4eC5jOjE1NTc6
MzQ6IGVycm9yOiDigJhpc2w3OTk4eF9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBb
LVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMv
bWVkaWEvaTJjL2lzbDc5OTh4LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy9pc2w3OTk4
eC5jIGIvZHJpdmVycy9tZWRpYS9pMmMvaXNsNzk5OHguYwppbmRleCBhZTdhZjJjYzk0ZjUuLmIy
YjM1MTgxNmI4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9pMmMvaXNsNzk5OHguYworKysg
Yi9kcml2ZXJzL21lZGlhL2kyYy9pc2w3OTk4eC5jCkBAIC0xNjExLDcgKzE2MTEsNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgaXNsNzk5OHhfcG1fb3BzID0gewogc3RhdGljIHN0
cnVjdCBpMmNfZHJpdmVyIGlzbDc5OTh4X2kyY19kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJ
Lm5hbWUgPSAiaXNsNzk5OHgiLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIoaXNs
Nzk5OHhfb2ZfbWF0Y2gpLAorCQkub2ZfbWF0Y2hfdGFibGUgPSBpc2w3OTk4eF9vZl9tYXRjaCwK
IAkJLnBtID0gJmlzbDc5OTh4X3BtX29wcywKIAl9LAogCS5wcm9iZV9uZXcJPSBpc2w3OTk4eF9w
cm9iZSwKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
