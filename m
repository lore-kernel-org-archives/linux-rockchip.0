Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF2D5C74A4B
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 22:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS1T5kbb5FdTBIvBtDo4B1IzE/qH+d5rnr0/fuFM3po=; b=16LTKqa06DgT0I
	9PMCjfQvi9umO1oU/QFI80Sc4yOa350P8UJPqSdy+YY5efB8jJYJvX1dDKmYgtFgxLJWcZ/yWeuiu
	Ktut+ceip58yvf/pBVDziGPNYO5m5TG1S7eHca90wVCaja2SeyEQmMxWdoL7b99qz1yEJi54b/AZ4
	17P0mLQlSDWyr+7xf2SQMIIt91x9rFy1uxlKlaBsA+JwSV/HyeNUtfwaOE/bDb8EiVBQ8C88Qy6qe
	u5zHflTJT/Rg8EVyRyLplVFiW+yX2YtwcFFK5nMPiTukzV6Bq5DH11nByDpX5apFidXgfCCVNvthZ
	eTXuBeMZZwKJNrdAXo7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palXi-00GV7W-Io; Fri, 10 Mar 2023 22:48:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palWC-00GULi-BY
	for linux-rockchip@bombadil.infradead.org; Fri, 10 Mar 2023 22:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=EBGP8+ktL4ywlJvW0lmVhlwvhFE47q82UhD5J/2MFQU=; b=dcKAdkIBtQvo+m/kDQwTs0Q8NC
	NCdVeLcmP4Zks/ruZWjqHpfSxhzc4FDL3RX8fBs2cdrgFWd0N0L62YMjg4bp3hunE3l7gOj1IjgXs
	/YuaeqRwWHJEZGj/OGSys8NvnWdn+lzs3oa13FCHc5Y2DOCuZzfW2InSHU5BKWMLJ3T7olWq95x9q
	p3yy6OSQVMrb5S9RT02z+AeKVSgd8cLxpEC4XYKHQXPccC/iNbpwHgza2qogIdMJBrOpVIjmX1axF
	BSQS5XmU1aJrVZ9T8MZt6VpDQzGB3vY2tJn4zRf9yPNb1N75+KBsnXLGnh3lhr7eD1+kKH0lag3N2
	Nr3AglJg==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1palEg-000aoY-1P
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Mar 2023 22:29:17 +0000
Received: by mail-ed1-x529.google.com with SMTP id cw28so26493706edb.5
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EBGP8+ktL4ywlJvW0lmVhlwvhFE47q82UhD5J/2MFQU=;
        b=LwLmThATdX5HNobFSO+brNDu9RIY0acCKrwYmzGtVVzjJZhxTQOKm1spvMnktyhki3
         GDwqNCGFwqRn/7kUnE2lvo6YeFswYlvoaGlsKar5EQh1lq3Rcjjwqy6OGpcVDNU3megk
         WFF0BAcHkCebD9I2lbM+rrRRozHdxVVBtVHvFK6l2abJTAdNDYnWD8b36mCK61PQMFeI
         SkDYYKWQY3CFhDmOmFII38SNil/wTwBD4rDZJ7kqUJI1MdEdL2MGcroBZUk2eWcbU7cc
         yDDyqclvrv9smz6jIhBdL78omNdTQvynMcvOFzZBmB1Mspasb8f3jl1xnD5+cYctGRR3
         CY+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EBGP8+ktL4ywlJvW0lmVhlwvhFE47q82UhD5J/2MFQU=;
        b=O4fDaYWs6BVcyDe6W9eQ7yEYz57pN5tRRsZV0jJycXFp8C+shYfj2/i04zNe+GHCbE
         8b+4e0mQm/f/sTQvYjHmXvZclgQdiC4sX1wCwFgec8ZeNW0r5GdBbQCnLQiypYC5r21N
         MSuludPQ+wHG0kFgZsUVr/msL65U8cQHi/zwxw7Utv1BxNlxCmGLG7PKEqZyCF/1MroC
         AFmjUWIM097yyoh455MN3gwTayxuvqyPX+qL2zBO9zmDzjyTd13L1n9TCMqfVVW3iPre
         RNiEf2J709Bgg6rCAuapNa56rJq4iUD2bd41chLsyLAgXLPrddSFBJC9oZjEUFUgzJb6
         So4w==
X-Gm-Message-State: AO0yUKWQyWGlrPUW5COaA8c45sT8mn9lXp8HYKdlLTPZNI6+cFu62R4k
	hNQdcihL6xgOExv7NfnUcSgOig==
X-Google-Smtp-Source: AK7set8uL4nXFDVb7rsO+o6EWoU4A34ihg/j/XmN4ZE+rbabtjirYsg20d8X3gBVCVm6QRcADU/42Q==
X-Received: by 2002:a05:6402:5154:b0:4bd:6b93:1289 with SMTP id n20-20020a056402515400b004bd6b931289mr24124882edd.15.1678487354154;
        Fri, 10 Mar 2023 14:29:14 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:13 -0800 (PST)
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
Subject: [PATCH 11/16] spi: st-ssc4: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:52 +0100
Message-Id: <20230310222857.315629-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_222915_064670_8C8235E4 
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
biB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL3NwaS9zcGktc3Qt
c3NjNC5jOjQzOTozNDogZXJyb3I6IOKAmHN0bV9zcGlfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90
IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEty
enlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBk
cml2ZXJzL3NwaS9zcGktc3Qtc3NjNC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLXN0LXNz
YzQuYyBiL2RyaXZlcnMvc3BpL3NwaS1zdC1zc2M0LmMKaW5kZXggOTE0MWYxOWM3ZjhlLi4zZmUy
NjZjMzM2YWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1zdC1zc2M0LmMKKysrIGIvZHJp
dmVycy9zcGkvc3BpLXN0LXNzYzQuYwpAQCAtNDQ2LDcgKzQ0Niw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
cGxhdGZvcm1fZHJpdmVyIHNwaV9zdF9kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUg
PSAic3BpLXN0IiwKIAkJLnBtID0gJnNwaV9zdF9wbSwKLQkJLm9mX21hdGNoX3RhYmxlID0gb2Zf
bWF0Y2hfcHRyKHN0bV9zcGlfbWF0Y2gpLAorCQkub2ZfbWF0Y2hfdGFibGUgPSBzdG1fc3BpX21h
dGNoLAogCX0sCiAJLnByb2JlID0gc3BpX3N0X3Byb2JlLAogCS5yZW1vdmVfbmV3ID0gc3BpX3N0
X3JlbW92ZSwKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
