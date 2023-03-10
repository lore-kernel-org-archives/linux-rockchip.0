Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A0C5C6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 22:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpwBtSclv3rW9o8RUNExM0WDa52DrtR4Bdk3myERUfQ=; b=tQMvbzqe1HTbj/
	8hsPb+gipzJhc7NMuXEdEggbTRmST+P7qRqjloRYP5mFS31BB3GBoPVDxP+bt0tXIuYxMHt8qjLMe
	JVNEvhE3Pg9QC6+pUJRBKI6kLaJ2e7tlvxU0SJXET0tosBm3MwvliJS4FkmauFLZZ098UHbDs2ZaR
	132UWQf2HLxe9k7tngv69yQu8rYdAwEG5or2TGnVD1VQFuq89rCwfVRZB/6rlIDQDkk1ESghI81Jp
	qnfQmgW6Sik6MGcXY+VFBAAKsV3+oMMusZvsCjZ6rSxy0FuI4qlj60cXIgrPzNi4h3b8s8AbHgiIJ
	9Zn441ldT7K4L3l+VHdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palXg-00GV6O-BM; Fri, 10 Mar 2023 22:48:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palW9-00GUHl-Un
	for linux-rockchip@bombadil.infradead.org; Fri, 10 Mar 2023 22:47:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=BSow9olcoHPDQWGX+9sZKUw+pImGguqL+rxp9AEhbQU=; b=MyOP981166g4oYf3wZ98/4E94z
	SoJTSGsKDUyPfYslsMZtb8f6g1TquRE6HpXoJFmN9YtbK2lfYSHLzsaIM+zoOFVv3xw60Gne0s1IY
	VcjGUA+Iozb5/e2o5EZmC0xYLP50elsqqFdhlbNFiH7GmAm5cXh3MUs9S8DoCUzVr+POWtvUQG1id
	OFHpyA5dLEbJrzCynYTxv0vAEY7u3Ug7RmQxaeFXrFBjM+sUBa3NMpnjMysvV1ZxWTEp0TSkH6rNd
	Lmbtz6pzJD5zS83i6a48S8WydWKYDcUR92Nxn7fgRc8pv+n3SBDuZgiaqEro5QyLJI/9qbEbquCCH
	kRdZu9XA==;
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1palEc-000ap2-21
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Mar 2023 22:29:55 +0000
Received: by mail-ed1-x532.google.com with SMTP id x3so26394391edb.10
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BSow9olcoHPDQWGX+9sZKUw+pImGguqL+rxp9AEhbQU=;
        b=WMD94TIdueIJwD4R0dzXoVlrA+lBE3XxCJOkt5lcGwJl3T9aSx5oXLSImUAdS8gGWj
         nevEWuDRfJ5RPH0TtzsEO8S3/WbblgN6c7T0caLdrg4JVyKOqAgZy1gYCF24w5rLBjjL
         MGSsSfrwG4aZGC+l8fhUpOJRtBywlP3akFV3IGOYCLF3G4b5n7kiyAbJDLHKhRR8a7LS
         Z2ZsSKJ0xALhO2Jtv+CXbxq0jXTpVzfN+2istoSvNEtpe8cznSwbbzPN3KeRr/R4kSF7
         IFSRNgff5R+GmFDJEXkLP5PhiObPKCY/RCtarbKc44EdzHR0zp2QleIG+ceGsJi5jxoD
         dz9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BSow9olcoHPDQWGX+9sZKUw+pImGguqL+rxp9AEhbQU=;
        b=0F9zE/hwzTTG9oZH3rC4bXCF7MRLciU0GDXno2lHhPAJDt3O6ZmuaAmnzCRYLOxaQL
         FW6NKhsjDxpxMwBtD+3nq+7wUn1vioL2nJKsYlL0Fo1JgmQ5phLgj2Bha08NbKQuFWfZ
         eaQkM18FzvsHglHUiDfchUbT/TeW7SiDYA0Mwno9MTlbIqsUSuoNbDp2JUkMucRTIrue
         fUrafGu0ZDDBjaTmbEQkcc8eaP8Rvjx2aY7N5XAqzgLRRieNYW+YM48YtXA7rMSP+y8G
         3bXThAWaUZinjTHdhzN0zZsjM2SaS9XOR74EZL67cWWN3D++0KIBebozzuB8lM1GHk2f
         KPpw==
X-Gm-Message-State: AO0yUKWWfKhYQo7AhISiNed5I3EVPw0l7pxGIc2IOn4vn+9QwQCk9hvg
	BSnGYP3ssROZ2mQe58mD6OS30A==
X-Google-Smtp-Source: AK7set+ZEfdl5RMmf1uVdzsphu0VuJcqw6uo7c4Au9pdNtDAtzSnz6tjiqyq5MBaqY6lf3+ZmyTllQ==
X-Received: by 2002:a17:906:8156:b0:886:221b:44e5 with SMTP id z22-20020a170906815600b00886221b44e5mr26872458ejw.62.1678487348858;
        Fri, 10 Mar 2023 14:29:08 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:08 -0800 (PST)
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
Subject: [PATCH 07/16] spi: s3c64xx: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:48 +0100
Message-Id: <20230310222857.315629-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_222911_375558_10FE0ED8 
X-CRM114-Status: GOOD (  15.35  )
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

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIChhbGwgcGxhdGZvcm1z
IGFyZSBPRi1vbmx5KQpzbyB0aGUgdGFibGUgc2hvdWxkIGJlIGFsd2F5cyB1c2VkIGFuZCB0aGUg
b2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUKYW55IHNlbnNlICh0aGlzIGFsc28gYWxsb3dzIEFD
UEkgbWF0Y2hpbmcgdmlhIFBSUDAwMDEsIGV2ZW4gdGhvdWdoIGl0IGlzCm5vdCByZWxldmFudCBo
ZXJlKS4KCiAgZHJpdmVycy9zcGkvc3BpLXMzYzY0eHguYzoxNDk2OjM0OiBlcnJvcjog4oCYczNj
NjR4eF9zcGlfZHRfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2Vk
LWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3NwaS9zcGktczNjNjR4
eC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLXMzYzY0eHguYyBiL2RyaXZlcnMvc3BpL3Nw
aS1zM2M2NHh4LmMKaW5kZXggY2M2OWY4ZmZkYmRjLi43YWVjNDk2MDcwZTIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvc3BpL3NwaS1zM2M2NHh4LmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLXMzYzY0eHgu
YwpAQCAtMTUyNiw3ICsxNTI2LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgczNj
NjR4eF9zcGlfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1lCT0gInMzYzY0eHgtc3Bp
IiwKIAkJLnBtID0gJnMzYzY0eHhfc3BpX3BtLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRj
aF9wdHIoczNjNjR4eF9zcGlfZHRfbWF0Y2gpLAorCQkub2ZfbWF0Y2hfdGFibGUgPSBzM2M2NHh4
X3NwaV9kdF9tYXRjaCwKIAl9LAogCS5wcm9iZSA9IHMzYzY0eHhfc3BpX3Byb2JlLAogCS5yZW1v
dmVfbmV3ID0gczNjNjR4eF9zcGlfcmVtb3ZlLAotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
