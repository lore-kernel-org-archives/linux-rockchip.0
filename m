Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC27C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O74PpLdNe0EiidZpX4ABVRz48n5mFO+yCECQ3wdSMKc=; b=aSoT1yA1vjUT9O
	3L7q77AvfM7RPDg05sGfwz3u5IcpPMASB1/o/hhEfIpxH+HasRd0yPixQdhKIJV0L7weoHeg5P/Ky
	yeo3tpDGBaS83QIY9lGG71bJYUsdunP6WdWIVfsUMniZJmevbIVLbb4U+B0o3leket3MKa10VquV2
	f3wGx/XpPeuEgJcY95WE3Br5tY4IJZhncmRCn90mH3fKSlkdOwlJErf+XWPrDUfXrl/p6HotSxy+H
	px/KdwSf60Bt5iKyKhxqdg8JetB5NkFl0UCDNn1N45iXuk/fFAayOs3WHcOyhr3q7YODdlfp/vzN+
	YFnBg47VEHCA6uhNVCPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM56-002YTr-OQ; Sun, 12 Mar 2023 13:49:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM10-002WJV-69
	for linux-rockchip@bombadil.infradead.org; Sun, 12 Mar 2023 13:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=bfEjbOEBC8Ag5735P/rqZiEX/nqcdTDOC9PYAPQl5HY=; b=pMc3Q2lOfs78TqfQ+XflGqg0Fv
	tK6Ljp1Isua5ZAXUN5/tXRzoo+Z3LMhgTTqqJQXFbsUPQgtlS0cRy5evue8AEziRNc6CL+uFxksyE
	A5RruchViyh/QxW52KgIganeP8L8Ev84WD+IPdH9gcmwqCA+9LgmvDGoSPVbrGVYYXzKpJeP0Pxj5
	AroHaQFJiNypuM4dmDhBtLu2Z1M1L5FOCUc7VejoKBDgDBJd5Pbf1REerBQflqOUUey1KyE8GXBAJ
	eIKsIwSHg+IgjeTbzpEVdDXOJfxNkewRCBQ/DUE1BWH2W8tJpleldxz31hh/e2FCGPGcJXjo8iS1g
	3pRfwu1Q==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbLWT-0011D0-1t
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Mar 2023 13:14:08 +0000
Received: by mail-ed1-x52d.google.com with SMTP id ek18so7376665edb.6
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfEjbOEBC8Ag5735P/rqZiEX/nqcdTDOC9PYAPQl5HY=;
        b=uissALC9Qm6G3yTfi85yX5AZcJ4Dc0T+ZSTTKU0wpK9U2V+VDFH343iZjKC5N4s8V8
         Qp9COEJvlzCvWlb23mcYWEdcMc9pbjSuLJ33+tz+X+jWMZtcLKOcvkPj2fJY7WdI8v6P
         qeowegW6LOAq8GiD1h+HIkQ+puCRyyQWHwdYCcrlPZ6Vh93gluUCiol9RzZfw0oufC3G
         DKN/V59iphzKV7hQP5j1PbiPzW0aKpCKWusOS+ijCjSjX2qXzgzuwPhhxcj5tD8u+jqy
         gwla21lfQPZJNhCA9eIisu6WuJeZDVUE+4YaZsUYsp+KLTLS/bKPYcuYJMrZOeTcl/iv
         stDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bfEjbOEBC8Ag5735P/rqZiEX/nqcdTDOC9PYAPQl5HY=;
        b=L9Yhlj0hBzb6zs7nb/pBCoI57UKBhtk3UR/d9qQITxROY1LEn3JOUdFWNAoXhGgptA
         KmYYyG/a/fUGU7dJ2DpZ2UUJR3Q9qyXZqh2h6oHwrcIVhsCRR2OVDPWi3B0P0ZIjRFVf
         fb4CA6/zn8wmVdPuJnuaQV5Mn7P7re0by7xPIRCQHmrFhxZk5eks19U30VwDXvB0rKGO
         TWz1uMt6CtlWOcJGsr+UCQSNvlRuKgmS8bAcxVx5SrMaSmobG4cIpyqOTsNzlkKb5rwz
         xW3nYFfCES5JT63TuflPd78y0oGiivq0MsKgatGA9QQXifq/WNPgvlCKBQSClVfA9LXy
         hSsw==
X-Gm-Message-State: AO0yUKWMD73Jwc4BOdbnbMAeduRvWmsFVs5L7qJCDTAt0F35CWRH0WZ8
	ZPD0LESPJRD42Ufe3awA+3L9Og==
X-Google-Smtp-Source: AK7set/qUd+AuzKeWJtvFJW5YvrmY0+P99WMaVJpgFheOKbbtpLVYddA6FcuMGTWaLuCaaa5fxGzrQ==
X-Received: by 2002:a17:907:7e87:b0:8b2:e81:df2b with SMTP id qb7-20020a1709077e8700b008b20e81df2bmr38467057ejc.44.1678626841335;
        Sun, 12 Mar 2023 06:14:01 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:01 -0700 (PDT)
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
Subject: [PATCH 19/28] media: platform: mdp: mark OF related data as maybe unused
Date: Sun, 12 Mar 2023 14:13:09 +0100
Message-Id: <20230312131318.351173-19-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_131404_477444_0E666ED3 
X-CRM114-Status: GOOD (  11.87  )
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
cC9tdGtfbWRwX2NvcmUuYzozMTozNDogZXJyb3I6IOKAmG10a19tZHBfY29tcF9kdF9pZHPigJkg
ZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNp
Z25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGlu
YXJvLm9yZz4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL21lZGlhdGVrL21kcC9tdGtfbWRw
X2NvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvbWRwL210
a19tZHBfY29yZS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9tZWRpYXRlay9tZHAvbXRrX21k
cF9jb3JlLmMKaW5kZXggZDgzYzQ5NjRlYWY5Li4zN2YyZGQwOGVjZWMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvbWRwL210a19tZHBfY29yZS5jCisrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vbWVkaWF0ZWsvbWRwL210a19tZHBfY29yZS5jCkBAIC0yOCw3
ICsyOCw3IEBAIEVYUE9SVF9TWU1CT0wobXRrX21kcF9kYmdfbGV2ZWwpOwogCiBtb2R1bGVfcGFy
YW0obXRrX21kcF9kYmdfbGV2ZWwsIGludCwgMDY0NCk7CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIG10a19tZHBfY29tcF9kdF9pZHNbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1
Y3Qgb2ZfZGV2aWNlX2lkIG10a19tZHBfY29tcF9kdF9pZHNbXSBfX21heWJlX3VudXNlZCA9IHsK
IAl7CiAJCS5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE3My1tZHAtcmRtYSIsCiAJCS5kYXRh
ID0gKHZvaWQgKilNVEtfTURQX1JETUEKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
