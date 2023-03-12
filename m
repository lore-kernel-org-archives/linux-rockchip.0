Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A68B9C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TF0KBsbQzNYHeYao4eO1vN5CE/lmuREAduGq65r1c8g=; b=WHLUP++MlKTJRP
	E+novWiGE0bsz54iRhD5wRx2FntZZ7ozvq3xoC0/QhkAzOFkLKb3r66bgGEOCjWEiDEExZQ02rJ01
	BN9C0armevgaFyW5WkZ5PdU8ApZNQdM0kJm5ppiylOOecBqMe6r4sEChsPKLnTG1egE7yZ27gQSem
	y9UyNREiWpd9G42DGHaKkIppcSHWqkZOVnOBnPLjuKuFbCk4id3EkbSa3eACzaNvvANhkFSjkMo1i
	G3jJvQZMQdKCbqseyyZuvj+2EbIyJApP+9b8HHk0VTit2RX/PaqZ5q8NdLVthgWn+Bzb1rIneT2eY
	wa30O+PuP/Qpp7jrEMzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLfn-002NaN-TT; Sun, 12 Mar 2023 13:23:40 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWR-002IMT-Uw
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:14:04 +0000
Received: by mail-ed1-x534.google.com with SMTP id r15so11316111edq.11
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O6y38vRZkdBS5R5uwqFpYAPV0SwqgL3Ad/RHz3KFEYg=;
        b=F6qp4Yb8Iigoi2EWlwMSg+KfJE/41jbOR7JfTYJrgttrWACfS6ajuqUiwOO66uyPgb
         TSDyuz5lva0OBRpoxvmaQOkSg779UZzBuqAbseB/rjiaktLeYs86i+UZ1RiiDfuwEogl
         ImOHBGF6zWH4XHlclIsr4PBBWT2fVxOqEv7QgTlPMCwKZCTyvZvengCbdn/HQjYm1St7
         TR1Fuiv3f3MVlOlqtTOYQ3sVaeIbG4GFsP8RvY29ZWUI9AsuszMAJwOB3kqiSewpQkFQ
         GTId4N5+TKXJcB3/DyP8UI5FAsEArWEZwyv6MV+vzx+xd9JOXHrYMPxQGsi4uVXbREux
         JaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6y38vRZkdBS5R5uwqFpYAPV0SwqgL3Ad/RHz3KFEYg=;
        b=ZPG9z7308PtquUt64Vqum7wNFtGUt4A5AZOZCp7JtHudQzdOsrvkaaEwhBDSYdarNg
         BFkv0VsBTBfsjVLJxwdqkoMenKMlEnqtjIQkMogMRu5hwEW45lq0o0wbOCRZgvvmfKxs
         ZcCSbx47FAVDPxVEVk3OBwNHtETGH1ZGzc7PVe+cIG71MH+2v5SZxJY70I0M6tjNZV4o
         /PRazD0Tc9NRw9wejJA6Irv8zDiLCxknsiHIg6RLez4PDbmxXgT86gNV7TG0uCOe0oi1
         qqds4u6qwNYa6su+Y+KW5TDQI2Q5bum9xtYKnOs2km8tRHt4FNGCWaIU/0vCop/GtekW
         xmRg==
X-Gm-Message-State: AO0yUKVboNaMtVZLUzSTliBfK/aHgUfA1D/Lmz2oGxHWdfvqBGgAQz8Z
	+JZWU+a5FDPs58jxI785i3dKiA==
X-Google-Smtp-Source: AK7set/WMW6RgALtAuft2GXt0JFDI5Y2R0SGD1j3uPRf3y93eii3868Nj2pM7xYCjr1WDifLt9I7Xg==
X-Received: by 2002:a17:907:8a12:b0:88d:9cf8:2dbb with SMTP id sc18-20020a1709078a1200b0088d9cf82dbbmr37183584ejc.12.1678626839411;
        Sun, 12 Mar 2023 06:13:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:59 -0700 (PDT)
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
Subject: [PATCH 18/28] media: platform: sun8i-a83t-mipi-csi2: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:08 +0100
Message-Id: <20230312131318.351173-18-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061400_532046_0A8944CD 
X-CRM114-Status: GOOD (  14.98  )
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

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBz
aG91bGQgYmUgYWx3YXlzCnVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQptYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZl
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLiAgVGhpcwphbHNvIGZpeGVz
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGkt
YTgzdC1taXBpLWNzaTIvc3VuOGlfYTgzdF9taXBpX2NzaTIuYzo4MTg6MzQ6IGVycm9yOiDigJhz
dW44aV9hODN0X21pcGlfY3NpMl9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdl
cnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgotLS0KIC4uLi9wbGF0Zm9y
bS9zdW54aS9zdW44aS1hODN0LW1pcGktY3NpMi9zdW44aV9hODN0X21pcGlfY3NpMi5jICB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktYTgzdC1taXBpLWNzaTIv
c3VuOGlfYTgzdF9taXBpX2NzaTIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3Vu
OGktYTgzdC1taXBpLWNzaTIvc3VuOGlfYTgzdF9taXBpX2NzaTIuYwppbmRleCBjZDJlOTJhZTIy
OTMuLjFmMGNjN2IxYmE0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54
aS9zdW44aS1hODN0LW1pcGktY3NpMi9zdW44aV9hODN0X21pcGlfY3NpMi5jCisrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuOGktYTgzdC1taXBpLWNzaTIvc3VuOGlfYTgzdF9t
aXBpX2NzaTIuYwpAQCAtODI2LDcgKzgyNiw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJp
dmVyIHN1bjhpX2E4M3RfbWlwaV9jc2kyX3BsYXRmb3JtX2RyaXZlciA9IHsKIAkucmVtb3ZlCT0g
c3VuOGlfYTgzdF9taXBpX2NzaTJfcmVtb3ZlLAogCS5kcml2ZXIJPSB7CiAJCS5uYW1lCQk9IFNV
TjhJX0E4M1RfTUlQSV9DU0kyX05BTUUsCi0JCS5vZl9tYXRjaF90YWJsZQk9IG9mX21hdGNoX3B0
cihzdW44aV9hODN0X21pcGlfY3NpMl9vZl9tYXRjaCksCisJCS5vZl9tYXRjaF90YWJsZQk9IHN1
bjhpX2E4M3RfbWlwaV9jc2kyX29mX21hdGNoLAogCQkucG0JCT0gJnN1bjhpX2E4M3RfbWlwaV9j
c2kyX3BtX29wcywKIAl9LAogfTsKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
