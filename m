Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1CF3C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aey3pxqCskz2Hy9OOUWmVDO6nIH62BU8WN16xnZ5isk=; b=Md34xTeQtgw36X
	fbc95ETXOrK9aZFuGfhxWCHXg3ZWPvTuPFRUSgAmp2NxMosZ3AMcWkrIk/0/senFExZWCQWX9V06e
	i2Sze2ymKhi/mPHUhkbXxCR8rAISgT0nGfI8ZktmISh8xa7pn6uKwL62unq530giN6DBmDX619LRD
	aKbUECpwn3oJn1Qw/jRbbdXdzgkMOW2h2biFb7RwR+ZXuTxe1Gsd3IuMsKdgtnOJHSIxWcyVoFW6n
	/6DgCL7DIGs9HPPwh4dOfyBws05uEquz66BFQIY06kO0LHxCL/c1MXQQRrg0RRCgMRx/xPmxGbbmi
	e8aSs+glqIJh8tjlISpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLZV-002KLc-9S; Sun, 12 Mar 2023 13:17:09 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLW8-002IMh-4g
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:13:44 +0000
Received: by mail-ed1-x532.google.com with SMTP id cy23so38396115edb.12
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aHdIlruO4673D+QGyV/d/vIqZ9Xg8F12PDIOBTs3+As=;
        b=nLrNJOzka6fkWMXC1NOP2ZsVYUSEIvYPqBnDKWQu8s6RUps1sloI4ULFFuPSN8KqMs
         25UMmUtDKKI+rvOaqrztIuQUMx+KVfNTpwlrsZ8kYSrgah/Nmjt3vTqtVRDktNH1Aqta
         SeX1GO/gVL0OkfCC4K6StepCYID8FBE0fqBdwf5/+wO8zRGa1L//BQ9QDV6/dmNX8u7W
         TyXVghyvIeAmohnv6gFuNrnRshHMVsfLE4DdKppPOdlEXlxnBBaUD9bEzYQkdz7C0LWD
         kVPW7AD6RynUU/RWDrgrAomkRYAf5fWyhpbU34Ogh+s7n2sZYojuS6svF5USw4YN9XoH
         FuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aHdIlruO4673D+QGyV/d/vIqZ9Xg8F12PDIOBTs3+As=;
        b=WUFj9K6SXjUUwiI0cusU/Y8Cw5hJwxb8xBaYus2lksm8j9+urKGij3ZZr7Twmr/L42
         HX7xarOmJU5u/yNT+GngwOGLVpik05opE97qnA60JlBLuTs9mpOEkug9l9ROBl5bruNi
         Ezx2f82mxLaP69SrpMfZr/1mKT4WGbybIslrEjmx6Tbk4lXdfrAiCc2e//cajr99R5R2
         O+7bIDzxQfzilvvuDf/b5sFIST1Rqavx6JlwC7oonlUmEerNlt4uK7QCjrIEuPZ97iYQ
         e/HEbPtCqsmn4qkpgSb42E7PitlIPO+A4pTQtifWPIYu5ItRnM4iSmNSWCl2Jz/Ek/2d
         Qz6g==
X-Gm-Message-State: AO0yUKXRCgF44KIiFu5JGzbWJzp4GCPpB7PAtuqPQnNA5pqGI6oiD+WE
	5SkgLFmvLR66aKNN5WaOR3JFQw==
X-Google-Smtp-Source: AK7set+ZvJJL+Mve7wJv1jb215unOxH3yq0KFIbxsDNpElm/tKBCVPXY+pyv4E67ZrgfbQD8rzw19Q==
X-Received: by 2002:a17:907:3fa6:b0:877:a9d2:e5e9 with SMTP id hr38-20020a1709073fa600b00877a9d2e5e9mr40195064ejc.42.1678626819671;
        Sun, 12 Mar 2023 06:13:39 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:39 -0700 (PDT)
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
Subject: [PATCH 08/28] media: platform: intel: pxa: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:12:58 +0100
Message-Id: <20230312131318.351173-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061342_592243_EB878864 
X-CRM114-Status: GOOD (  15.13  )
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
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vaW50ZWwvcHhhX2Nh
bWVyYS5jOjI0NDk6MzQ6IGVycm9yOiDigJhweGFfY2FtZXJhX29mX21hdGNo4oCZIGRlZmluZWQg
YnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2Zm
LWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+
Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9pbnRlbC9weGFfY2FtZXJhLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2ludGVsL3B4YV9jYW1lcmEuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vaW50ZWwvcHhhX2NhbWVyYS5jCmluZGV4IDU0MjcwZDZiNmY1MC4uZjY1OWFi
ZjFhMjJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2ludGVsL3B4YV9jYW1l
cmEuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2ludGVsL3B4YV9jYW1lcmEuYwpAQCAt
MjQ1Niw3ICsyNDU2LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcHhhX2NhbWVy
YV9kcml2ZXIgPSB7CiAJLmRyaXZlcgkJPSB7CiAJCS5uYW1lCT0gUFhBX0NBTV9EUlZfTkFNRSwK
IAkJLnBtCT0gJnB4YV9jYW1lcmFfcG0sCi0JCS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0
cihweGFfY2FtZXJhX29mX21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlID0gcHhhX2NhbWVyYV9v
Zl9tYXRjaCwKIAl9LAogCS5wcm9iZQkJPSBweGFfY2FtZXJhX3Byb2JlLAogCS5yZW1vdmUJCT0g
cHhhX2NhbWVyYV9yZW1vdmUsCi0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
