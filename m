Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76DC9C6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHnzpnktvMEemGt6gT1iYCRkirerDFFDJVtfTS6ZsyY=; b=U6szI+SmL5Ys7N
	b3CFDUiry1tE+hgIDpog86D4cvjBmd7bR4fgjLVFFF0BSZHZ5v0PCBCKMhs6AGNB3gtpt1cIksJ8v
	/46paBNOpPxMjP85KkDhUuE3wVeFGJg2iYRx6+liD/42h9K9U8UUEOHQLKl0IYHXwXhzYYILcp4vP
	Y3HxhdGxin1duVECrqHTQi4oRgpDad1SAH3qyZ9Z6Bgtwcm92uTOO6rJ51ba7Yj2Vfh7KMzsxszAX
	mOaZXkU9gTuSA2vGWu+dBkL9cWRpv40hZwob423OnBWxFhd+NavuS8rBevdKr6LlotYDQdNcHhKO7
	hFO6GmmUfQecJihbleMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamG3-00GetA-L4; Fri, 10 Mar 2023 23:34:43 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEh-00GNgh-RQ
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:17 +0000
Received: by mail-ed1-x52b.google.com with SMTP id ec29so26469605edb.6
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIL/eAhzd2Q+CmLa0/Vp8uh0M9mRf6IHTk8hQZUVPkA=;
        b=k9IOHxBgd0bMymkB/VVDYynw3dg0wz5WLTLxzV6gvhi0zHI1m8CQMly3VXoSXuKFCp
         8h9Sng22gMlalzZGQ190Jfc2ocLKGquLyts/VCYV4KgnzhNpLAw1lmCH08tqlBTGh9uX
         opjEMpR+/6cN4xnJkfQRHijm2E+EP866a7+7DUN7ENr4l/jbDJAouQL9++JBziQhUcen
         89Kb5I7fiA11hsVqegrlnQFLmvaJvdNzACOqIF+Q8V10Tmi8VpXBpBjWc0BjNbw236gS
         IGoWXG5ofcZOzKkhc2pkde95caIVRGE7UK7159UQqJklSACcPwP+y8SGCq20FhEImF6F
         06VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DIL/eAhzd2Q+CmLa0/Vp8uh0M9mRf6IHTk8hQZUVPkA=;
        b=yn7ApiVk570euLbxwwfbCCr/gm5maaZUDnKDaSVmJFH/bCBdJtMCMOaXY4dRrRMPmz
         Ql5pSRviUPv20aNiaAhmQLhqgii4WrlNtor8CvwmiISOP3wX6Zfxj+PooMbSqM6LxD23
         d7MipzOlkntHg9jaUX2TV6k0T1FiXMmake1XJ8NXgH7p9HbtgiJburXpWOUMlE2a3C3Y
         n4LlSGY5U1n6ivGR4Bpz3lfB4xOfOkTG7x8oowtvEL2J71Vi4Ar/LuwzfTKYJ9Mvcj71
         RrLZVBNFFA3I/FcgycuPkwOi69HQwfjNgFK8OmHJ795iMg2c3AGu+BuUs3moxmGN9cZf
         946Q==
X-Gm-Message-State: AO0yUKVQPxzSxh46DkxPwjS6yAOlIkRv8xZ4ZR4Gk+m9+GyDkrOoYOoL
	YbHIaHYwCLfFkrukL0p1ie3gEw==
X-Google-Smtp-Source: AK7set84qDZr9RcwJ70A6u3nLP8atYZ9eptCD6oONVkchKcqZ66qh2jURUNfTUs7WD78mR7YiVblZg==
X-Received: by 2002:a17:906:dd7:b0:87e:a34b:9e2b with SMTP id p23-20020a1709060dd700b0087ea34b9e2bmr27657561eji.28.1678487355376;
        Fri, 10 Mar 2023 14:29:15 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:15 -0800 (PST)
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
Subject: [PATCH 12/16] spi: pxa2xx: Mark OF related data as maybe unused
Date: Fri, 10 Mar 2023 23:28:53 +0100
Message-Id: <20230310222857.315629-12-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142915_930515_C111FFD1 
X-CRM114-Status: GOOD (  13.04  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBkcml2ZXJzL3NwaS9zcGktcHhhMnh4LmM6MTc1NzozNDog
ZXJyb3I6IOKAmHB4YTJ4eF9zcGlfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1X
ZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3Nw
aS9zcGktcHhhMnh4LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGktcHhhMnh4LmMgYi9kcml2
ZXJzL3NwaS9zcGktcHhhMnh4LmMKaW5kZXggYTc1YmEyOTkzZjNjLi4xOWU5OTZhNWEwMmUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1weGEyeHguYworKysgYi9kcml2ZXJzL3NwaS9zcGkt
cHhhMnh4LmMKQEAgLTE3NTQsNyArMTc1NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9k
ZXZpY2VfaWQgcHhhMnh4X3NwaV9hY3BpX21hdGNoW10gPSB7CiBNT0RVTEVfREVWSUNFX1RBQkxF
KGFjcGksIHB4YTJ4eF9zcGlfYWNwaV9tYXRjaCk7CiAjZW5kaWYKIAotc3RhdGljIGNvbnN0IHN0
cnVjdCBvZl9kZXZpY2VfaWQgcHhhMnh4X3NwaV9vZl9tYXRjaFtdID0geworc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgcHhhMnh4X3NwaV9vZl9tYXRjaFtdIF9fbWF5YmVfdW51c2Vk
ID0gewogCXsgLmNvbXBhdGlibGUgPSAibWFydmVsbCxtbXAyLXNzcCIsIC5kYXRhID0gKHZvaWQg
KilNTVAyX1NTUCB9LAogCXt9CiB9OwotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
