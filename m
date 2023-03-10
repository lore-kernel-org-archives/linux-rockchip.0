Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B61C6FD1E
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CMkP9BSHlR0JZq9K0DWvl00t3sSSiXVZwebILlI4Bw=; b=t9QJ8sZNpWiRS6
	n4Bmh/V70kRSohP5CdHck24hm4EEUCR1SDabfyLXGZ/V+dbMzpXTO05sl3bA4kRlt848sy5T1Ti9/
	x+3UcmTh5q7oXiR/g6lBC406Rl8U/SIZxTwJykjzrVxMh8AFePZU6nZyb8pwlxrPIUuQpKe3w3GCA
	LMiwy/5EAvUK5BKQYnSGUAyQ+1XsLcp80Sx5bqmh5+3LWItQe/3XXJ8w9lQwRL7MMyv4vPiPGIj2Y
	kqe4aQA+natBnhrMeF6jnS1IjxLaD57LgEuNOvN2VVB6Jtw8JVwMXjpG4++XmQwLU8QkR/+Z7LZF6
	daRh/R8RYOaQBwX0yJYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamDZ-00Gd1L-Sm; Fri, 10 Mar 2023 23:32:09 +0000
Received: from mail-ed1-f42.google.com ([209.85.208.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEZ-00GNje-3y
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:10 +0000
Received: by mail-ed1-f42.google.com with SMTP id ay14so26375005edb.11
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADHlp/biBCVZeifGXqje13pwL1TD/yH+Vs4GNRSOSmk=;
        b=gOjP1UUs30lsqxRQ45sMLZli5wdZwOUprEKASjWMuOlyLzQDeiBSD2Hq3tIo+JrpKI
         AArmC+ZLrunGz5fN3pTsr9FDr1XBx+iXT2ewlMt4mqhfD1/xs0oPen4jvt8byPCJmURq
         oPDOovgdqKMczeymwr2b7yNBm6QACG+fmkmSzHtc+G9+qsU4Ol1bCgf42TFMSBv5mo0z
         2prH2dORIW8Fj83FHmH5UmMl5Hv7Q0/N53UmQ05E2Zvih2Taqzkpmw+w+q7nolMec0/h
         +ntxOzSypN9XSEK03IgE8Bm20Ofus/MK+h5mh+VvTIfDF5G5gnoSvhCZL49djmgt7RwL
         IDDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ADHlp/biBCVZeifGXqje13pwL1TD/yH+Vs4GNRSOSmk=;
        b=HMlktM8Mpd4m+HJoi/KEHh29yyi7+Pj1bQDBWtp8BoHNLuJL2quDVOh1cWPJQbRpZK
         lZU7l7EpKtNyVDTYeJCUqyOUvODl3a3YJT2ysbCtFEGGvqv6cT+Y1NEG2nV/wuQXZ2sW
         6z8zLA8IsiD6b1QIYHIKqiuROVYWYcmdobMovB6tSqMY+os0ualU2VkGUIoc//1E2VVq
         HyIaXTl9F/19RN5fPykj3Srt7L+qNYXUufFzUin6Xj4NRVI2iNiNsgIKf6cY7nrVE4By
         xRQT4TvhJBdI3rsBiItQyO1u9b3u4wy2TBpx7Pf25eCkniF7tP2gcgX9zmTgT3fDVnwn
         U5tQ==
X-Gm-Message-State: AO0yUKWng+N6oXqbAdbB/ZbqHCl4ijYTcfwGAMxvcBva0bAXJ7ja808d
	Vo8vLsv/8QOuzFK10IZO3TGTsA==
X-Google-Smtp-Source: AK7set8jBrx8YyuYtrKMeUiH9xfKEhHMLTU3KB16tvrIfpqUWe0eJHY4hKaNb7RoSr0Tp0Ya9mPiGA==
X-Received: by 2002:a17:907:cf48:b0:8e0:4baf:59bb with SMTP id uv8-20020a170907cf4800b008e04baf59bbmr28471712ejc.22.1678487345059;
        Fri, 10 Mar 2023 14:29:05 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Mark Brown <broonie@kernel.org>,
	Kamal Dasu <kdasu.kdev@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andi Shyti <andi@etezian.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 04/16] spi: meson-spifc: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:45 +0100
Message-Id: <20230310222857.315629-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142907_201599_A6E9DAB0 
X-CRM114-Status: GOOD (  15.55  )
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
biB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL3NwaS9zcGktbWVz
b24tc3BpZmMuYzo0MzQ6MzQ6IGVycm9yOiDigJhtZXNvbl9zcGlmY19kdF9tYXRjaOKAmSBkZWZp
bmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVk
LW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8u
b3JnPgotLS0KIGRyaXZlcnMvc3BpL3NwaS1tZXNvbi1zcGlmYy5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zcGkvc3BpLW1lc29uLXNwaWZjLmMgYi9kcml2ZXJzL3NwaS9zcGktbWVzb24tc3BpZmMuYwpp
bmRleCAwNjYyNmY0MDZmNjguLmFmODMyZmJiZjI1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkv
c3BpLW1lc29uLXNwaWZjLmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLW1lc29uLXNwaWZjLmMKQEAg
LTQ0Myw3ICs0NDMsNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBtZXNvbl9zcGlm
Y19kcml2ZXIgPSB7CiAJLnJlbW92ZV9uZXcgPSBtZXNvbl9zcGlmY19yZW1vdmUsCiAJLmRyaXZl
cgk9IHsKIAkJLm5hbWUJCT0gIm1lc29uLXNwaWZjIiwKLQkJLm9mX21hdGNoX3RhYmxlCT0gb2Zf
bWF0Y2hfcHRyKG1lc29uX3NwaWZjX2R0X21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlCT0gbWVz
b25fc3BpZmNfZHRfbWF0Y2gsCiAJCS5wbQkJPSAmbWVzb25fc3BpZmNfcG1fb3BzLAogCX0sCiB9
OwotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
