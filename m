Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FE34C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pM8b5XGBiAflwvu9iGBis2wG1rMurPxglcoh7hCuRrU=; b=E337vg2yJFni/3
	oEcKWz+8s8X3O+552NjX71212rtua6W/LotXJI0yASi2WF58lOlEIoLntRcYfIrELwNVClv1PZe+3
	Jd13NgNZuFwdn2APdgpD3go3E5B2vW6TdeQlRC+JVbrd/vbHAV5IgjX2kuKJunEgS4khBJtR8npRw
	+tYCi1Bk/5bJ2pYlmlbH8NuxFOziaj35EF6MM+8ZTn9Nx33JWh9FABT9+bRtWmdu5tl/t0AiDStK5
	sQd075XJu/ClrfD258w4CJzd4zXEFYtfAhFMfOfI7Ksc9YezB+7nPFba8o+gN4mS0tq9GHld5o1O2
	VIOvPzM1Xe0VxiYEZWkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLgY-002Nvz-Ce; Sun, 12 Mar 2023 13:24:26 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWV-002ION-Ol
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:14:06 +0000
Received: by mail-ed1-x52f.google.com with SMTP id k10so38406266edk.13
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z7zCiKznvtISJjaLkQGP6+7WjJ33gWstbauf9XZGz6U=;
        b=hkgeQTl7kiZH/3Q54ASwYRPqBYEKm9l2FvNF4N6ujUzpjYBOHSlr9uaGtfsFgk5dUy
         Lf7kyZH3h1JJOZsT/VqnMhAwIr9habC6FILxMvlJg+5lDE8Gm8v9LoOiSX0AgLvzYOXV
         D1eMF/v8xIRnSfqePFrzRlbuWXhKfLcsc5BxUvRxpTQsE40ns4iU8iLxwlkwixvZdt1i
         plgBO2DlKmx7mC/7hZlCbT6NpXJAd3vc/duYJ32+zVYAhmGzyshA+m/npMOTDXiqIciY
         cqtNGAb85Dl+16dZ0hHPIPDKjL/nPIK6PpZ9XRG6VOw8dR+hyXC1DPyCGKqcyAUvnNbP
         D7MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z7zCiKznvtISJjaLkQGP6+7WjJ33gWstbauf9XZGz6U=;
        b=pbx2nkQwVyI5vw6Nt84jguKRK6SYCgds4TFt62COMLJmVhB9q9I1H3mIGPoyuggqUk
         aGdygpAU5Qzv9MXRzGUIh2P8DW0yNY9ViqL0Pe8KTXqFR5g26NeEy7/4rum6UnjvswWk
         a/QfEoO1UE8UR98VZJhPJk7tY8As7GH4gjLEAB980tYycUtBdNGq+sR5KCKArbOfTsPB
         d36iRm9Q6scJu2hKkJRUIjvLY0fGNy9dDQzbmSKmeGxN2Oquzw5gv7E39795NUwNrMRH
         KSaiDydPRRCmVHs7GeI+X+SwgaBwA5hjQuFvhPax4PVdeA87jXlht7w7P9GKodgv2aDz
         uNOw==
X-Gm-Message-State: AO0yUKXkbBTLYvX5Gk7mTppJkBZ5SWH8r+nYyONUPHWMGT1k7HI/ZmrR
	4WvC9nRr78UzMitVeXR18m/jjg==
X-Google-Smtp-Source: AK7set9rwzHv7NjHz3Ld8t1U7IlpFCFMC7/C2h9WMvqIP99asEQnOhRylPIAm1sXrRZyif38WBVBkg==
X-Received: by 2002:a17:906:855:b0:921:c122:52a7 with SMTP id f21-20020a170906085500b00921c12252a7mr4317759ejd.22.1678626843141;
        Sun, 12 Mar 2023 06:14:03 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:02 -0700 (PDT)
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
Subject: [PATCH 20/28] media: platform: jpeg: always reference OF data
Date: Sun, 12 Mar 2023 14:13:10 +0100
Message-Id: <20230312131318.351173-20-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061404_008240_32EC8843 
X-CRM114-Status: GOOD (  14.45  )
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
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvanBl
Zy9tdGtfanBlZ19jb3JlLmM6MTg5MDozODogZXJyb3I6IOKAmG10azgxOTVfanBlZ2RlY19kcnZk
YXRh4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJs
ZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay9qcGVn
L210a19qcGVnX2NvcmUuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVk
aWF0ZWsvanBlZy9tdGtfanBlZ19jb3JlLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlh
dGVrL2pwZWcvbXRrX2pwZWdfY29yZS5jCmluZGV4IDk2OTUxNmE5NDBiYS4uYmQxMmU3MzQ5MmU1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL2pwZWcvbXRrX2pw
ZWdfY29yZS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvanBlZy9tdGtf
anBlZ19jb3JlLmMKQEAgLTE4OTgsNyArMTg5OCw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRr
X2pwZWdfdmFyaWFudCBtdGs4MTk1X2pwZWdkZWNfZHJ2ZGF0YSA9IHsKIAkuY2FwX3FfZGVmYXVs
dF9mb3VyY2MgPSBWNEwyX1BJWF9GTVRfWVVWNDIwTSwKIH07CiAKLSNpZiBkZWZpbmVkKENPTkZJ
R19PRikKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG10a19qcGVnX21hdGNoW10g
PSB7CiAJewogCQkuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxNzMtanBnZGVjIiwKQEAgLTE5
MjQsMTQgKzE5MjMsMTMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbXRrX2pw
ZWdfbWF0Y2hbXSA9IHsKIH07CiAKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIG10a19qcGVnX21h
dGNoKTsKLSNlbmRpZgogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBtdGtfanBlZ19k
cml2ZXIgPSB7CiAJLnByb2JlID0gbXRrX2pwZWdfcHJvYmUsCiAJLnJlbW92ZSA9IG10a19qcGVn
X3JlbW92ZSwKIAkuZHJpdmVyID0gewogCQkubmFtZSAgICAgICAgICAgPSBNVEtfSlBFR19OQU1F
LAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIobXRrX2pwZWdfbWF0Y2gpLAorCQku
b2ZfbWF0Y2hfdGFibGUgPSBtdGtfanBlZ19tYXRjaCwKIAkJLnBtICAgICAgICAgICAgID0gJm10
a19qcGVnX3BtX29wcywKIAl9LAogfTsKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
