Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C441C7618A
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79oM3bETAnWZjL9oYA3kXFHOzLElp1S4hC2HF5ncf+I=; b=WE9wM26/KinZ7o
	FrzZ3cc06++xQyrmfk4fQElFVsBhNNlhbrq67vcSpCYNGiMlw9MlK8C7NUUTNa6QtDNg2oWp3Yxtr
	zWCUxOKA2a8IUTW82fhDJmjTLomDB5aBx2UsoOIVbEe/uOtAtAmpTe8NeJtZOTN5ZEFvKYHil7jeL
	PsGGobundIirKwDY6fTzywAlGk7KJJYcdADhDf6Ixfs+qNz/2iywmXZyOt6YR2F+Z20s08Ws+BFhW
	3itKZByDnWBOrbmZBjCW5dX2FBH8J0gqtEYLGf58QbAx9iliAW0uLgkGp4N7eVxJRKWHHb840EFfr
	6BxkjO8acD5P1WEXAqfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLZW-002KMk-UB; Sun, 12 Mar 2023 13:17:11 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWC-002IVu-Bn
	for linux-rockchip@bombadil.infradead.org; Sun, 12 Mar 2023 13:13:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CwcHrV5a02s5JB75+HpDxEu4ezBqVrMI6kJUFyMDg/I=; b=olqnPyDXAbcwUHu2dtxTXUHkD2
	yWrGUZTgzuhywYWUFKkEAlERU3G8U4OFia4T06Jz6xYa3k9VB2yQPu39kfP2rnugTKo2GioTthog6
	RVQmhZP3QmvnU+8J/qU0453LmdSVt4+sNGg6euM+VHrG0sdzeln22WvaSU67V6t1+p+lsYjR+llvR
	2WY09rLngNiSYzcpL3wXpLfCnz5QOQ6GFJV7ns3nbC4wAWtIYPPknFPEoVkXnXJmy8yNWbX9AMBQe
	y1SqYojMuN/8og3fB7NnckJ/oelX/y0GNIgvPaY29dIvOnvTmwIwYL1X1I96Fz8URYpNefoCzcnyi
	yA7GBxRA==;
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbLW3-0011C1-33
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Mar 2023 13:13:40 +0000
Received: by mail-ed1-x52a.google.com with SMTP id o12so38493263edb.9
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CwcHrV5a02s5JB75+HpDxEu4ezBqVrMI6kJUFyMDg/I=;
        b=bV/PAEtQn1KGw/Zi6jTCgqYa5nRbO5IPf2+hM5MLwAk5Uk0e9xROyciD1SeTbKeIvo
         MlkLJZ7Bn9rWTiPWyy1rXLIb0NPN7l/0SUcmQ1gPA0Px803dGmfYFSsMi0zSxvCDYIEp
         xAfx/2AAA1BZBrfbtUqRJvxUVRAewGUUTagEKg9AHpIaQNB2T1bQ98IqMD5mo2GoWKwK
         +FQom24Ip58JAYs2KpB60hA0ik3xFPiniQmemJhG9dzrzLF06IvbDUiE2YiA/R8WS7FC
         c4jhRSJ9/XJbJhFhHSbrl0/vOmemeevZCwfrLAtLWu/L6nb0K50kiGKmyGQmjBDX2sbg
         iSvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CwcHrV5a02s5JB75+HpDxEu4ezBqVrMI6kJUFyMDg/I=;
        b=IFlEDpIgT6QOg/bvRv0hO53HdI5oSFyGqrPPXoR1TcZjrHfM63EoHNCMcEjHTMq/WF
         LBHFaznC5CBJhY6AWTfBYqkd8VPVc+0U+wZA0/Oqma4KzmnfNovDIki+VqgJFz3+YpDp
         +B+I64eiK08dvs6G1TeCg1pp6K6IW59Jvb12pCBaS1E8TLB5jKO7/OQ62oI3fDV2n9+5
         45W8ok07Kk/VhiO+M4urib1fjvOzbFoEDa34dUS7GwCeEs/iYRPTdfmXJsZfVf+51bay
         b7L3rkF/X4qM54hUaN2BJzUaGMk/Fh3lkbdoiLlxW6d5wd65riwy/LOpDAJIlcQtf0ti
         1Wjg==
X-Gm-Message-State: AO0yUKVjsyeT9dfl12TPKU9UDaSvwScstt609fbmbjodwPDpe5JUzEEv
	vJVL6OeSq5NB05TPl/oCWdgLbw==
X-Google-Smtp-Source: AK7set9S2U41oyugwgVu8YTpoQzzlycJss1HXlDHk5bJDxiw4kxZXbt8ZreuYC74Gl5l/Mtsa+88Og==
X-Received: by 2002:a05:6402:1005:b0:4f9:f45e:c8b3 with SMTP id c5-20020a056402100500b004f9f45ec8b3mr5024696edu.27.1678626811779;
        Sun, 12 Mar 2023 06:13:31 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:31 -0700 (PDT)
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
Subject: [PATCH 04/28] media: rc: gpio-ir-recv: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:12:54 +0100
Message-Id: <20230312131318.351173-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_131336_109753_62C74C34 
X-CRM114-Status: GOOD (  14.92  )
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
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvcmMvZ3Bpby1pci1yZWN2LmM6MTk3
OjM0OiBlcnJvcjog4oCYZ3Bpb19pcl9yZWN2X29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1
c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5
c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Ci0tLQogZHJp
dmVycy9tZWRpYS9yYy9ncGlvLWlyLXJlY3YuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcmMv
Z3Bpby1pci1yZWN2LmMgYi9kcml2ZXJzL21lZGlhL3JjL2dwaW8taXItcmVjdi5jCmluZGV4IDhk
YmU3ODBkYWU0ZS4uYWUxMTk5Y2M3M2ZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3JjL2dw
aW8taXItcmVjdi5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcmMvZ3Bpby1pci1yZWN2LmMKQEAgLTIw
NSw3ICsyMDUsNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBncGlvX2lyX3JlY3Zf
ZHJpdmVyID0gewogCS5yZW1vdmUgPSBncGlvX2lyX3JlY3ZfcmVtb3ZlLAogCS5kcml2ZXIgPSB7
CiAJCS5uYW1lICAgPSBLQlVJTERfTU9ETkFNRSwKLQkJLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0
Y2hfcHRyKGdwaW9faXJfcmVjdl9vZl9tYXRjaCksCisJCS5vZl9tYXRjaF90YWJsZSA9IGdwaW9f
aXJfcmVjdl9vZl9tYXRjaCwKICNpZmRlZiBDT05GSUdfUE0KIAkJLnBtCT0gJmdwaW9faXJfcmVj
dl9wbV9vcHMsCiAjZW5kaWYKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
