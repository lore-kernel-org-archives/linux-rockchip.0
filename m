Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2FCFC74A4B
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSzueqMfEOzxTr/0jtUaq0IBTv50eVHgdA+MKkn4ddc=; b=GqYdy3CEGLw0jx
	5b91D4r11AeXFvzMleMAdSrO3hhA/muGEFAkvmbr266LzQ+hQouKlCSiKE7+5JrtweKl2iql/b4RQ
	l1nCB/TXfw1Q9HFv/nDsh5HmrySgyyfA2rIdnmlG7ptSc+ooPQdq6889LZB1LZLwFQyAw1xZ4PXVf
	pZUDJHZjiUe0ewmujfMZ1DieTnHE2y9bm9YPf4mYAtyAFPjqluZDuImVpm0UEdzOsn5nn0OSAiRrA
	402VX2WRRNH+Md/MXiHI7vuQ2DQP576RzNu404qEaVf314LGgTs8C+wmjzjoOkZxWcHq4+F9+Pmku
	+7O4W8OMv1R0gxyezeTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLiG-002Ock-Dv; Sun, 12 Mar 2023 13:26:12 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWb-002IOO-I7
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:14:13 +0000
Received: by mail-ed1-x534.google.com with SMTP id y4so9045770edo.2
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38C9btURbQsaMIipOhvsQvm6Dy7PKwPGkg3PY63qI38=;
        b=m5nxwWZS+IjOxjDSLMlcc9Mw3quPwPmLZGwjL0YQEcQdFJH9ABjF8RScjIrJ48oGzx
         CeSVDrWPupHnu88aXT4OXI198T4AmpikK45pZee6+1kcKldpWFVdMkX4Nmd0xTQHIAzb
         7UEG5bGZNzRsmjDPRi566bc37BTemvDPj1tWmhMPE6WPiS736MVrhoVtGhBqME9a/TfC
         XTQwjVIg0rNNsyY4DyCt4dBK+LB3XCp0pHTrn6Vef4pIhpJLOgBhUU4OybxOcH+eYCP0
         IdU5OYQpRstCWiFkNv63Xd/bZkppmZfSaIJr5HJjB3GT7zlg/7ren+XF+nqi5vq/6hUB
         Y2Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=38C9btURbQsaMIipOhvsQvm6Dy7PKwPGkg3PY63qI38=;
        b=krPvkkCoPvsujwA/CdjficRqricg4SKMxZ5hjJrQAtIh/7zAsxV4OQGGPfcGfD+aNN
         uW5o5w0i7q6elc6io+e3/sm3pKu6BN/Vr8jcGJrzOyE3hQzuT9C/Nhm9qM3B0w+ELsyw
         MZXhIxsmld6OTTOc53MRGEjUIoDJO16H6fFTwUlSiRb8Go0nHNaqiye6gHyxRmBmPVwp
         ZhF37N78bi4DotHK4hCT8S4QMB80qG9/fL940rfnW1keu/vhz0lFYIWeBleLvloxVJp3
         2/fbb4LGNR1PUk9XPHRaBPgPIjkSXzHSvI53Tjj/r5mQ0pVuBRNvj0pb2lOEYUk8MRwT
         XPDg==
X-Gm-Message-State: AO0yUKUPTI6Yv0tadyC2RJ9Qem28ZtJy+7/qHW7/41lZmdnahwc11Y4S
	P+XGD1+jufiPLbmZdIYpniOMOw==
X-Google-Smtp-Source: AK7set8Zl0KNYXv2AhHSd8Fn3iuvU9rRSVGaJA6ydZDA517h1/4H4uOnDfoNavy1zJht7v4B+j49+g==
X-Received: by 2002:a05:6402:2037:b0:4c0:821a:40da with SMTP id ay23-20020a056402203700b004c0821a40damr31253519edb.34.1678626849069;
        Sun, 12 Mar 2023 06:14:09 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:08 -0700 (PDT)
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
Subject: [PATCH 23/28] media: i2c: ov2640: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:13 +0100
Message-Id: <20230312131318.351173-23-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061410_722984_B6FEC1ED 
X-CRM114-Status: GOOD (  12.93  )
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
cyAhQ09ORklHX09GIGVycm9yOgoKICBkcml2ZXJzL21lZGlhL2kyYy9vdjI2NDAuYzoxMjkwOjM0
OiBlcnJvcjog4oCYb3YyNjQwX29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vy
cm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9tZWRp
YS9pMmMvb3YyNjQwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy9vdjI2NDAuYyBiL2Ry
aXZlcnMvbWVkaWEvaTJjL292MjY0MC5jCmluZGV4IDM5ZDU2ODM4YTRlZi4uYTkyYzA5MTM1NmM1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL2kyYy9vdjI2NDAuYworKysgYi9kcml2ZXJzL21l
ZGlhL2kyYy9vdjI2NDAuYwpAQCAtMTI5Niw3ICsxMjk2LDcgQEAgTU9EVUxFX0RFVklDRV9UQUJM
RShvZiwgb3YyNjQwX29mX21hdGNoKTsKIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBvdjI2NDBf
aTJjX2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewogCQkubmFtZSA9ICJvdjI2NDAiLAotCQkub2Zf
bWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIob3YyNjQwX29mX21hdGNoKSwKKwkJLm9mX21hdGNo
X3RhYmxlID0gb3YyNjQwX29mX21hdGNoLAogCX0sCiAJLnByb2JlX25ldyA9IG92MjY0MF9wcm9i
ZSwKIAkucmVtb3ZlICAgPSBvdjI2NDBfcmVtb3ZlLAotLSAKMi4zNC4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
