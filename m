Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC41C6FA99
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=99N2m74yKEO+ucnLuBavVbjme6ZWdnwweM7ic9+A/xo=; b=iWOh1uWFg5zV19
	a3H4wOW+UqF7ECoeNKqmsw293l1DsbbsRm5vRraVbKGINEHyFaUVLBpStAq88fgUnX1Gz/sOvbUmq
	wPOYppTMmKOqIco1l0zK4sQyjYVxcvbexEyGKgcptKt+YSKe0KmNsoxfjEzztLdXs38bEaxsW/Yhj
	NmTQWJpko8eJ94fTx68xDrNGsTRDAhA3/VUD3BdCQF6ZHpwpartL5Ja+OkeJXpgPqF7G7fcCZFx+J
	hrIuK5fu3NfPGIYGg14YJGBlaR7Ou56QvARYqIq3u+ifTzrY8XZm2Yrod3q6vMdqqmr/4cwr7fpnx
	imPnwiImXjmWxOvlfjKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamDV-00Gcxw-M3; Fri, 10 Mar 2023 23:32:05 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEY-00GNgA-BV
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:08 +0000
Received: by mail-ed1-x52c.google.com with SMTP id da10so26540674edb.3
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=60PuEIm35j5/lTNeJPhlkXRZcGNjzFmtFVCVem+hEDw=;
        b=LEfc0zEi+LQ5St5qp/OpSxRZTLSGwJrZ1Hg1Bjj2BqrW0jf1MDtYIRP0HBSYpqADEj
         WF3P0M3JfPUzD+0gnosaMbTzjvm7A21OxNXWw1cCY3V/EijHD8A57mAb+tmulhwrtNmZ
         /ey6MnBObA52rMXrEjca40rbROCtoOkxo00ygLa6tTa4IPsuDoy8BCLW4mXNNsI/mb3R
         JtMWGx0rRuUOJTylIlHrwVyQ7uG44r5J62FtVEjBEXguCGv+0Um5Q7oEhqDemugm9lCP
         n2LNdiqGW9semV4b/A988X57tQIYizAda0dcfvCxdBt2WybsTGqY6mRciCT0f6OPhsrB
         qMNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=60PuEIm35j5/lTNeJPhlkXRZcGNjzFmtFVCVem+hEDw=;
        b=ByANUm65ELV46U6WVHZDdqom5AZO3U8xQGg/4wZiidwDQmsgXNnQKFYNpODq8r36iv
         tkV9OYoQvz0xtdhhAF4Rt6I+RWRC4+pGnk+ZW3t1/jpdgvsRIfimuyXg1bZ105GdX+vk
         PsCJfpREJAnrEn1wlil3wLKYf6M1nuMaoz5zOkIsF9A+g7mVBpP/DjumE7qnlegPH5M6
         RcI0nDol7+LX3LV7Zwsaw0reTq0r395x6UbRmsAq2SPzYfaR7cMRVb493+TUe0Ux6bZ4
         m61+sLyBWWhlhaU8YbHkl3WfxMO+xVtBh4putMEN6ZbjDp6ZYlLBXY0uuv6l/WPeqAk/
         k0zg==
X-Gm-Message-State: AO0yUKXqc6mQEUiKr/xYlPrpRILduR1kMUWTpuZAUR/XDm8DZrGYcqQ2
	P0/VHP6Rhbs9ZOHgL0CjUY4UQA==
X-Google-Smtp-Source: AK7set/w56mrFx7St5tpjzC1nqrpGgftY5conmyuZ6lJBZWH6ul1PMXKHMQPItpT75fNAsz/ObHAxg==
X-Received: by 2002:a05:6402:1506:b0:4ac:c7b3:8c27 with SMTP id f6-20020a056402150600b004acc7b38c27mr25909175edw.28.1678487340674;
        Fri, 10 Mar 2023 14:29:00 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:00 -0800 (PST)
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
Subject: [PATCH 01/16] spi: armada-3700: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:42 +0100
Message-Id: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142906_407946_6220F2DE 
X-CRM114-Status: GOOD (  15.63  )
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
biB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL3NwaS9zcGktYXJt
YWRhLTM3MDAuYzo4MDc6MzQ6IGVycm9yOiDigJhhMzcwMF9zcGlfZHRfaWRz4oCZIGRlZmluZWQg
YnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2Zm
LWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+
Ci0tLQogZHJpdmVycy9zcGkvc3BpLWFybWFkYS0zNzAwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Nw
aS9zcGktYXJtYWRhLTM3MDAuYyBiL2RyaXZlcnMvc3BpL3NwaS1hcm1hZGEtMzcwMC5jCmluZGV4
IDZhN2U2MDVmNzNiZi4uZmViNzM3MTk0MGJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGkt
YXJtYWRhLTM3MDAuYworKysgYi9kcml2ZXJzL3NwaS9zcGktYXJtYWRhLTM3MDAuYwpAQCAtOTE5
LDcgKzkxOSw3IEBAIHN0YXRpYyB2b2lkIGEzNzAwX3NwaV9yZW1vdmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGEzNzAwX3NwaV9k
cml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUJPSBEUklWRVJfTkFNRSwKLQkJLm9mX21h
dGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKGEzNzAwX3NwaV9kdF9pZHMpLAorCQkub2ZfbWF0Y2hf
dGFibGUgPSBhMzcwMF9zcGlfZHRfaWRzLAogCX0sCiAJLnByb2JlCQk9IGEzNzAwX3NwaV9wcm9i
ZSwKIAkucmVtb3ZlX25ldwk9IGEzNzAwX3NwaV9yZW1vdmUsCi0tIAoyLjM0LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
