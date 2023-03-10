Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E1BBC6FA99
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CiweO7W365FxD0lObvFFsbuQe0VHbhAd1y5uxNwg0U=; b=O6lkv54pkSlhZQ
	UluDT8d0JatY9/AvkK2RRYkrdMP3dqc8AZlQurCU+ZjFENJMo6z5QRw9M4uf6Mas6VY1+QyeLAcrB
	IDM3qJxFxpUttwFOa1Phmvxh8zJ9PEw0GtKtA+rwXctVsQHu9djTduvmIDHprC5owEk5jatewwLuz
	pwFvGsW2qfUMIiO2Wc3rRQXY0vkQLdPjcKdoWSBhuzlmul9x3wcZpYn17lsYBwjSY0ry1kktBcJEz
	g12X+2vsNTCoEU4D0UCbFroiM5Cn0QT97NkNmiF1E0ZKT1RtD9LRN/6bQpUM3WaoscwG9wK5FKwZs
	biBlV94+kTdUjoSB+ICg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamGb-00GfE8-Fd; Fri, 10 Mar 2023 23:35:17 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEj-00GNuQ-Ol
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:19 +0000
Received: by mail-ed1-x535.google.com with SMTP id k10so26371679edk.13
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FIaJ3CNzZzvLZoER+JbEXfRFWn2Y0AmXfJ1n98/Pih8=;
        b=fb1NJ83RjyRvSKj0rXB4LrfAGEIsxmSjejZNxPWkM53UJeQEzoPANpAkGjEWOssWNr
         cG8jEKufjok4zpc1P6XdyVx3QaRYE94wyiKjaPDo1STMngh6goWGRQgqTNJFuGRL8o+5
         dosIz0grQHvWJ0qC+Mg5QtyJ9+7JmX4qqgUjvLi6gByOTaDTzKcJoaZCnrt8c/JUl6ae
         oMaPC7T23+IoKlugxJTFWl9dEDgMuAMv7zWHIf32Ky7j9j/+DCTTTzJL+gyTAPENFePG
         yMGr9hnSbko6tWLPskVscE2ZO9vSFofD1V1rjQkrp2iQL55A/d/IUHnCnq+xGpAJ7o7u
         rwOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FIaJ3CNzZzvLZoER+JbEXfRFWn2Y0AmXfJ1n98/Pih8=;
        b=MOqTgpjytT57XvofWSWz0/hqXIcQCa0jKraCAl493W5Nz+Lg14aptBZtV4MTos0nBK
         jgjuUxVDhEuAfd5hyGj/imhUnN0NpfmY1n/2QdNFVWxkrpueEmIm+N1HPI9/uDj8/vsX
         q0C5XZYTelLTAbsHAGk9LsRxac+HlI+BVHDRDVKRX8pFPev8LoD+8QjOFTsK++1FHjmS
         neeJBX6GG7RyoMBo30bERcxcpQGM/e6/ZMYw8/AqGoa8tC0z/V1cRb1+kcwLwciruVLZ
         RhenbehLcX1gEPjncPRxyCK9Zs82n5gMbrONPGolCNQ6V69PBgTJ+2M3Q3/eEtfC/uay
         7LIg==
X-Gm-Message-State: AO0yUKXrpJTjZrO1KNEAxTyGv6BQEtq+reJ0h9IwN3PqA8we13zRZ/Kt
	uufNfLAkxdEqDiskpNPsALqMMA==
X-Google-Smtp-Source: AK7set9oOs+ouUsV12VicHtBBZ+mnisQzcWRj4a6R7IcGKs+Ki++e/B2Xo1UC0guT3zbocHXFlq8Rg==
X-Received: by 2002:aa7:dcc8:0:b0:4fa:57bf:141a with SMTP id w8-20020aa7dcc8000000b004fa57bf141amr213950edu.32.1678487356567;
        Fri, 10 Mar 2023 14:29:16 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:16 -0800 (PST)
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
Subject: [PATCH 13/16] spi: bcm-qspi: Mark OF related data as maybe unused
Date: Fri, 10 Mar 2023 23:28:54 +0100
Message-Id: <20230310222857.315629-13-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142917_850003_C7B8E2A8 
X-CRM114-Status: GOOD (  13.16  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBkcml2ZXJzL3NwaS9zcGktYmNtLXFzcGkuYzoxNDYwOjM0
OiBlcnJvcjog4oCYYmNtX3FzcGlfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1X
ZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3Nw
aS9zcGktYmNtLXFzcGkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1iY20tcXNwaS5jIGIv
ZHJpdmVycy9zcGkvc3BpLWJjbS1xc3BpLmMKaW5kZXggMGVlZTU3NGQzZTFmLi4xZGUxYjY2OWZj
OTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1iY20tcXNwaS5jCisrKyBiL2RyaXZlcnMv
c3BpL3NwaS1iY20tcXNwaS5jCkBAIC0xNDU3LDcgKzE0NTcsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGJjbV9xc3BpX2RhdGEgYmNtX3FzcGlfc3BjcjNfZGF0YSA9IHsKIAkuaGFzX3NwY3IzX3N5
c2NsayA9IHRydWUsCiB9OwogCi1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBiY21f
cXNwaV9vZl9tYXRjaFtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYmNt
X3FzcGlfb2ZfbWF0Y2hbXSBfX21heWJlX3VudXNlZCA9IHsKIAl7CiAJCS5jb21wYXRpYmxlID0g
ImJyY20sc3BpLWJjbTc0NDUtcXNwaSIsCiAJCS5kYXRhID0gJmJjbV9xc3BpX3Jldl9kYXRhLAot
LSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
