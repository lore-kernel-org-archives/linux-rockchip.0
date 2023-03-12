Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 784B9C6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbkgxxgfBeXI7EkB0z0Wp6nFrRBbLcqosXhBHCv6rwU=; b=mCP4C6+O5E8rfL
	hB7iQP1l493GltoYh7TABxjxcYUixM8qJEV+ELzxuBbzxlXM88mfkfu9zZ3Batajl/kD9bv5i20dS
	xIf+tPPl+uGmrS2ZXfh5UZx7XR2GCLQtV5AvDHe82SRZjbahkngBru4CXZPxX6cdN36yp1GRmJIK/
	YKSVpZOvbx4iRE+3ZVWn/a/k+ApC1Iy+TE9S1phdit3F2dBdLUPSq5aLhffnADI+2xkV/s+LoYdyq
	NJLw+D0tt7nuAZU4y4t2g4r8XPFNmC5794kR7w4f6nziYJZAA/DYF284YWXQH0hTIL2jTjcIV67MZ
	ZjuuJwnARa1eNTd9Cgcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLiT-002Ojo-Qs; Sun, 12 Mar 2023 13:26:26 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWd-002IOP-HU
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:14:14 +0000
Received: by mail-ed1-x535.google.com with SMTP id r15so11317321edq.11
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=THpEp92433h+ylj7MjAYKkh14oWq1rOr1JhG8G/iCi8=;
        b=oAmaUM64wINePdwiqsLNucIG+F9KVg+0pWxZOpOISN2zYDiUgU/yv8K5zf+HIZRWPZ
         gqp4IIjSd7LtENMJBZIt7lshH2rvnihGtVbM63owEfuqy1ZnRmPYbqfol/+ZvEOFrVHd
         VrpVxvSPZkZ184qqVYaaA01f9WueIzTpU4xqyjJwEvnUqnT3eZZIWAaIJ47PeOYFqomk
         OLUX3ERM+cf4hPKZE2o+qFFER0cVDl4rCmbPRj/hJ99arP84p18QGB2xvAsldfupkt19
         8HnLUAFOtlXajbO89E+91nZDyTEEkk6iYKERayn5ufjor7DdI4g+Ukx48Qb0WK633X4i
         4kDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=THpEp92433h+ylj7MjAYKkh14oWq1rOr1JhG8G/iCi8=;
        b=oUiXDwYBsgS2jDQBJIRX4t7x0TaNZuMuPQPe7Ni4qb5hsVzJl+d2sLMzSsa8Znv2Fc
         QjKiHS/PoZble9ZPv+2Bbl3gYzhpHAMdjm7ci/6NefX9YJlYwtcWCtAhZlXDPoApayr5
         iOCtCPimRB+v2Jf0koFFyBug1lFvNjkhSSanzOfmGK0D+XHiwB5WVekEwZSEq1tEzPRe
         T3F5BOhC8U5h3UeCGhFATA/lnSvkWwmmoqpJO64hXZUYsBHlYjAGzVyUs62E7Wykl8G9
         /3zZZlEMlpAair9GY4hJ/mCA8MDiytHXX1KBYea+EKH5aOKX5PXwqWfFmHAFK5UmfwSc
         AxPw==
X-Gm-Message-State: AO0yUKW4+ku00adaqn36luomar4Sj7UjiiYpMH23+BUderQwFK6dKZT7
	Q7cYQh4FxorzsQd1Ij/I07rFDw==
X-Google-Smtp-Source: AK7set+tfDLUKN48RCQQAskWmohpYOld4F3QVzJjtSNuw8cfZUaPqmD3dqlxAS7yrTZJTXMv3+HlmQ==
X-Received: by 2002:a50:fc0b:0:b0:4fc:88d8:a031 with SMTP id i11-20020a50fc0b000000b004fc88d8a031mr69807edr.28.1678626850958;
        Sun, 12 Mar 2023 06:14:10 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:10 -0700 (PDT)
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
Subject: [PATCH 24/28] media: i2c: ov2680: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:14 +0100
Message-Id: <20230312131318.351173-24-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061412_035589_F2513F12 
X-CRM114-Status: GOOD (  14.63  )
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
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvaTJjL292MjY4MC5jOjExNDk6MzQ6
IGVycm9yOiDigJhvdjI2ODBfZHRfaWRz4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9y
PXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93
c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9tZWRpYS9p
MmMvb3YyNjgwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy9vdjI2ODAuYyBiL2RyaXZl
cnMvbWVkaWEvaTJjL292MjY4MC5jCmluZGV4IDU0MTUzYmY2NmJkZC4uNGQ4NzI0OTUyYzVmIDEw
MDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL2kyYy9vdjI2ODAuYworKysgYi9kcml2ZXJzL21lZGlh
L2kyYy9vdjI2ODAuYwpAQCAtMTE1Niw3ICsxMTU2LDcgQEAgc3RhdGljIHN0cnVjdCBpMmNfZHJp
dmVyIG92MjY4MF9pMmNfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1lICA9ICJvdjI2
ODAiLAogCQkucG0gPSAmb3YyNjgwX3BtX29wcywKLQkJLm9mX21hdGNoX3RhYmxlCT0gb2ZfbWF0
Y2hfcHRyKG92MjY4MF9kdF9pZHMpLAorCQkub2ZfbWF0Y2hfdGFibGUJPSBvdjI2ODBfZHRfaWRz
LAogCX0sCiAJLnByb2JlX25ldwk9IG92MjY4MF9wcm9iZSwKIAkucmVtb3ZlCQk9IG92MjY4MF9y
ZW1vdmUsCi0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
