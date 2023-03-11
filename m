Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBBD2C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Mar 2023 11:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cw4+W9aPa5zzYbcxQu9NkwlO3EQkJrNMJGdgBRuFFf0=; b=i/KZ6GbBisbXLf
	+l+zy8nKrFo+95eRz0H1Cd/0mYtRYOzb66lnrOw8/2bkWvXXcCMgoe6BmkjDwOQC5F74rnbysnw5L
	WWN5gDn91pFj7Hcl8tXwQWUIuD7s0UYd04TdKEgGg01jONwHml6R49YbnX+X+r3mpMIBg8YQw+hfl
	bCvTHBAu81P9Bf6Fk9+ncelcMlHAeGaB1qaWQIFxDMiH+EVVe7ctGvlKK3QNMuJFTrQpLqnwHAB/O
	RjVTl5U8Kx3XtEy2Chf2ofM+UanHyb9P69xA+0i8RSnBE5fFQqYeqWEhJj3B3eFhVtIK50nogCHwF
	T+VZv+d7+YjD3rewMDHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paxMa-000KdV-LI; Sat, 11 Mar 2023 11:26:12 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paxEM-000GtG-Bs
	for linux-rockchip@lists.infradead.org; Sat, 11 Mar 2023 11:17:43 +0000
Received: by mail-ed1-x530.google.com with SMTP id ec29so30754507edb.6
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Mar 2023 03:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678533461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=K1ep3IE3PEf+V+OZrFXRxt1O3+yONVLmI0s6NjZUlFQ=;
        b=rcBRanYBYO5g+ZPGYI4T03o5Nz0rKcOQIOmdHuU29YA/VsUMU8qjdiYlBwvyEZki2D
         VPzYmHnRMMUj0ttao2Cvz4zxr7dMmUDjDd5/SusHNrQCcmJKLtRtcYj2K6vZunc6FYAY
         ZQZb91Vdz+RWXQVA9LpaLjhsSo4wSMykftDYMbltvgo1/Qc6ve6XVzxcPnWgDVNI4nDI
         /Fpat5GSklfub9SP1WzZeau1AyV8isjpNzRYK2ti9SBO1DBxwWpq06HdwhsGVVPffMUU
         UrzBa+qWWIcDPzhz5mbXKVAivzAyoYe6rBxxJju9VglVm1fknEQJHMSNoOiVzgn9rPM0
         o0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678533461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K1ep3IE3PEf+V+OZrFXRxt1O3+yONVLmI0s6NjZUlFQ=;
        b=gZqT8FUqBcWxW7D3j9HgCGC/omLkqcu0+KwpLjn4txOPsaCF7QYouxN1U9Dz08rInA
         i7PKsSkCUbBWdn6FPswKvGJKNTzoXS+HCPCcO/bsV19hOLYdP1ROJkcafHigwyTJ0G+z
         SkE5yisXjj+sNjZvM3+fMjwOhe/1+Rr8GF2ElfgFmmOJ/Ui9m/0pj17zWW7iyMfhMqPt
         ACYADKtUZQUazzmHqOfVf0WArCm6xqILZ+G6O4I+a/cOLwenyMKjGakvzdk/ldDTUDHJ
         XqaoR1IWk9V9bOX7xtauvzCWDKMckSGc8yb5pewsgtK9kAul3D1oapAUJkNzCvI20fUq
         3mEg==
X-Gm-Message-State: AO0yUKXd1biUNXINHaVs551UZkZQaP9DdXaiJ1Z725uvPLYhjk5PCQ7f
	XCH9Q00FzXxQeBfv8RMLt8+e0w==
X-Google-Smtp-Source: AK7set/jS7PpALh4febSJl8zLhGg6wVyLUUjI10zB53ChUlpdcTmeu61y15+R/E1f45fjcVkWJwCVA==
X-Received: by 2002:a17:906:434c:b0:908:6a98:5b48 with SMTP id z12-20020a170906434c00b009086a985b48mr27795110ejm.40.1678533461068;
        Sat, 11 Mar 2023 03:17:41 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:fa97:2d7c:bdd7:e1b])
        by smtp.gmail.com with ESMTPSA id w5-20020a170906b18500b0090953b9da51sm971529ejy.194.2023.03.11.03.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 03:17:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] mailbox: rockchip: drop of_match_ptr for ID table
Date: Sat, 11 Mar 2023 12:17:38 +0100
Message-Id: <20230311111739.252080-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230311_031742_449843_BE4F7B3B 
X-CRM114-Status: GOOD (  13.95  )
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
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL21haWxi
b3gvcm9ja2NoaXAtbWFpbGJveC5jOjE1ODozNDogZXJyb3I6IOKAmHJvY2tjaGlwX21ib3hfb2Zf
bWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlh
YmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3ps
b3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL21haWxib3gvcm9ja2NoaXAtbWFpbGJveC5j
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYyBiL2RyaXZlcnMv
bWFpbGJveC9yb2NrY2hpcC1tYWlsYm94LmMKaW5kZXggZTAyZDNjOWUzNjkzLi41YTQ5MzRkMzlh
ZDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWFpbGJveC9yb2NrY2hpcC1tYWlsYm94LmMKKysrIGIv
ZHJpdmVycy9tYWlsYm94L3JvY2tjaGlwLW1haWxib3guYwpAQCAtMjQ4LDcgKzI0OCw3IEBAIHN0
YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJvY2tjaGlwX21ib3hfZHJpdmVyID0gewogCS5w
cm9iZQk9IHJvY2tjaGlwX21ib3hfcHJvYmUsCiAJLmRyaXZlciA9IHsKIAkJLm5hbWUgPSAicm9j
a2NoaXAtbWFpbGJveCIsCi0JCS5vZl9tYXRjaF90YWJsZSA9IG9mX21hdGNoX3B0cihyb2NrY2hp
cF9tYm94X29mX21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlID0gcm9ja2NoaXBfbWJveF9vZl9t
YXRjaCwKIAl9LAogfTsKIAotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
