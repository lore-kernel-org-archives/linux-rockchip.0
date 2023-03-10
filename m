Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1FD3C6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ag0YFGdQMcmAuIJcWd72qWnl3wmQ53SeHpPzj/3kpvU=; b=Aqi3m/rtowOUlT
	ubJ5mZ/fx13DslpCXyUaypvdgD1zKB0T03qtb6mMDHmZ22DQgVkRTiofyjhljq0g8lqfEHE0h1vTL
	xcjrgjFGlSVm0fnR5MjhuCEoAW6mMoE1/Hnw36ydTJW3hR2QAY3DUP/uuMPbNaaHsOA6+Jwny5EJs
	i1RiZVoH99nymp5W3IdXlUcXKZu8jMhmK4nhRJH+9jlIA/8zfkcPgkuXV8UvK97iyWn39TEDcD6o7
	kpR4PdDjKc5UoioM5Sm3Geh77X42fC16DADjYy1z7HYWpYaapbokGkpFzhjSdXb9CSk2Acha+PS3J
	Okd6B9c9fuNcRttc92uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamEX-00Gdpi-Kj; Fri, 10 Mar 2023 23:33:09 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEd-00GNi0-Ml
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:14 +0000
Received: by mail-ed1-x534.google.com with SMTP id cy23so26355841edb.12
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/eg1nDT/DWvLF5qBMG6NeaUBghGjrzLVFlQFnIJNFjE=;
        b=qaM3ve+wW6Gt6rptzeOJgI7fsp/Nf85KO2ZcgbVSiZvSdKp5Lr9KO8TDlnRG/o5Hy2
         TrgRr1jPBZGmhTO+TmX8f1piK0XT3kowYscmhQmvRScvGE8MZQdZBAsFLcZ2WF54WtRc
         0xO2YIPBIwQIHXDxIED7dRCrxLgRUUnTgunX0XIZEkmmqqnTUWtEOPRzGjHnp04BTRdI
         TssZlvrynUkkWzqMaRdxZZ/oBOMtbfo6eg1I3yZ/9Bpp3iBqBTjMxv6/p0XVZmsFxs5i
         m8j/rIeHeT9kW0DgB9tKW9eyd5uxzp0gl3HoqYAGC0GtE6t4DwGguWLoOW5e7l302rbF
         XDSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/eg1nDT/DWvLF5qBMG6NeaUBghGjrzLVFlQFnIJNFjE=;
        b=ALwNOArwjNTcL4pyXLWBEmhQsqJhVF5D9EcSVOwjmIHvfzv4giFL+5C/zI5tfiWsyP
         YUEYkBeji0YOFvQYErmOJrICOyoRKjF9Cnu9FqwlvSGRWK4Ure8rPzz57EoCvZJVBrsd
         fYqdOMPWPtunW32Jsz5aM3DeEDkhn6zMP+URhxu1TkHHl0RGY/jy3ExyVkarcaOsXfZb
         vl2yYw/AgtQETIpVcMJPIP+Z05kY6Ii1zGHFfjdW638jIba9YLdOBPFDxsUahQY+SHVO
         TJ01X0S1emKvQUYLMTu0Qxg3I5TmkjCoEfiInOJSCWw4DQJNN/h3lr2FoaZ4wVrPjbLz
         6ZKw==
X-Gm-Message-State: AO0yUKUvuIceaUL53Tm04QfP/7PU0BcE83ZqIObaBXp5banKHlXdJq+q
	iAbJ34d6dLzSZtkkj6XQhacUpQ==
X-Google-Smtp-Source: AK7set9jp7Yps5gdDa4xVZKk1y8Nuy79LZJ+JZ57vzOOBv4Dpd2cWsCrZ/AoIk5/8nmVVUyC9Qydyg==
X-Received: by 2002:aa7:c489:0:b0:4af:6409:30ea with SMTP id m9-20020aa7c489000000b004af640930eamr27406591edq.19.1678487351312;
        Fri, 10 Mar 2023 14:29:11 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:11 -0800 (PST)
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
Subject: [PATCH 09/16] spi: pic32-sqi: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:50 +0100
Message-Id: <20230310222857.315629-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142911_777885_835C8B79 
X-CRM114-Status: GOOD (  15.34  )
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
biB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL3NwaS9zcGktcGlj
MzItc3FpLmM6Njk0OjM0OiBlcnJvcjog4oCYcGljMzJfc3FpX29mX2lkc+KAmSBkZWZpbmVkIGJ1
dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1i
eTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgot
LS0KIGRyaXZlcnMvc3BpL3NwaS1waWMzMi1zcWkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3Nw
aS1waWMzMi1zcWkuYyBiL2RyaXZlcnMvc3BpL3NwaS1waWMzMi1zcWkuYwppbmRleCA0Yzg0OTNm
MzRmY2EuLmNhODllNmQyMmZjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zcGkvc3BpLXBpYzMyLXNx
aS5jCisrKyBiL2RyaXZlcnMvc3BpL3NwaS1waWMzMi1zcWkuYwpAQCAtNzAwLDcgKzcwMCw3IEBA
IE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHBpYzMyX3NxaV9vZl9pZHMpOwogc3RhdGljIHN0cnVj
dCBwbGF0Zm9ybV9kcml2ZXIgcGljMzJfc3FpX2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewogCQku
bmFtZSA9ICJzcWktcGljMzIiLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIocGlj
MzJfc3FpX29mX2lkcyksCisJCS5vZl9tYXRjaF90YWJsZSA9IHBpYzMyX3NxaV9vZl9pZHMsCiAJ
fSwKIAkucHJvYmUgPSBwaWMzMl9zcWlfcHJvYmUsCiAJLnJlbW92ZV9uZXcgPSBwaWMzMl9zcWlf
cmVtb3ZlLAotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
