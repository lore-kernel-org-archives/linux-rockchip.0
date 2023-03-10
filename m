Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B65C6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaFuinoVTzwUBQGhxmUcc8SPtJNja6KuMossDHxN9cQ=; b=Gp7dP814/dh/CL
	ZbnK4J3YVDiMCn2f2Man3ldOHIHSPhfxhaGqGy2oEe6N/S7hgTX2Lat+Uzd5W61X1G9W0JKSiUo3W
	Tsk3zC+QL8mGyQsyHjKH2vQn6ayqwIyplpw3kh0sVvWaG+vyrr5w6lk0UKPiYjVE6XK9tBCsyoCq7
	8YiF0TmxD6OJ4FurB2ZMXSGa8PJ+FE7TlN3u9C8gZVyk+egMUAgXbot6vGVkLkXici+zQ/ftwBOef
	koY3XgU57RJMPZjd84+MTpuCzgJseFTfMM9jZ18mqURGaijd2b9GEDOhGfNG0a2yHgYsbPHNjawhb
	+JAABOUDuDiF5PfQrS8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamFM-00GeQ1-6l; Fri, 10 Mar 2023 23:34:00 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEf-00GNgD-0l
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:16 +0000
Received: by mail-ed1-x535.google.com with SMTP id a25so26664106edb.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G/4k4EDtHTwsGrCFmt9A01h3SrewNsUPMEHGiEs4FeY=;
        b=TVdIMwMMrCKmZDAj8bAXcosuz/F+qKLurmGg2tk/JuU0WAeW1zZ3e/5WJFm5zshZxi
         SqKw726uNsBDbGIY2pbSJBufxH78N4ZLW50mMwf71ESTokrIR6XsO7x+je/tAR/wbxyt
         WYxUzBPA1whbkcBPF2K2TOZDDwRH3y2IRF3GPsWajArp2ggTf55DAr1Qk6EvT7FlhPYH
         4+455PnI4SeL9cFUeXrD1nv1O4nsCQkfBMd95Ge0+t3wZzK1f5SMXGVkLeHw7CQi3s+5
         GMsfdtZzfaM1HAp/g0JL3uTpA1omwZTAUUW/0ofTxY2+KChGu+++CqNGcjjsOYO2bQ12
         1obw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G/4k4EDtHTwsGrCFmt9A01h3SrewNsUPMEHGiEs4FeY=;
        b=BtDIcJ64nnUuUZtDIPKgqplvjaAEdU4bYzuDUBroANY364Tn8NG4y2R2zF8FKdPkRO
         p9wTBAjtpr+OaN52GRN+ssYykanujo3H3kwXHYddhZ5fNKFPY/7MY/Muv1q1YZgSb4Z2
         RAhmEh+3njSnXoFTu+nYCCgNJ0CmKRaD7UMdeFgGq+PzJim+utWphwXC3vaE0vISyGSh
         8mC8K0VzooA1ITR0d6hJbi3qr+961Sc5FrsBRbjy/R5nMpPbSj524FfsOke74qkCOzlH
         CJOO3SzX0OIsHIWZoE/5I2GhIy3w3Ooe7NaSFOsMAquyDkXqrVu1wxShA1ToD5U1cacU
         7gbQ==
X-Gm-Message-State: AO0yUKXcBXPf2p5CxDwFko9F1P50XgnHve/Tj3WWA21jch4yKsF3Conj
	Yyyynf6Sm9u3jYmAvDcpoS+55w==
X-Google-Smtp-Source: AK7set+a17yOf6VzbwUc0CZ6vTQ58vWyCjXfAH5/wUdFVgNoDsRk2++Q9bB1eIS7zKuhlPF+RpY35g==
X-Received: by 2002:a17:906:9252:b0:8b2:23fb:dfd9 with SMTP id c18-20020a170906925200b008b223fbdfd9mr27625552ejx.39.1678487352519;
        Fri, 10 Mar 2023 14:29:12 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:12 -0800 (PST)
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
Subject: [PATCH 10/16] spi: pic32: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:51 +0100
Message-Id: <20230310222857.315629-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142913_100424_DFDF2B9D 
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
MzIuYzo4NTc6MzQ6IGVycm9yOiDigJhwaWMzMl9zcGlfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQg
bm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0t
CiBkcml2ZXJzL3NwaS9zcGktcGljMzIuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1waWMz
Mi5jIGIvZHJpdmVycy9zcGkvc3BpLXBpYzMyLmMKaW5kZXggNWE2NGFkMGM5NGZlLi4wNDg5NmU3
ZmYyYzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1waWMzMi5jCisrKyBiL2RyaXZlcnMv
c3BpL3NwaS1waWMzMi5jCkBAIC04NjMsNyArODYzLDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShv
ZiwgcGljMzJfc3BpX29mX21hdGNoKTsKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHBp
YzMyX3NwaV9kcml2ZXIgPSB7CiAJLmRyaXZlciA9IHsKIAkJLm5hbWUgPSAic3BpLXBpYzMyIiwK
LQkJLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKHBpYzMyX3NwaV9vZl9tYXRjaCksCisJ
CS5vZl9tYXRjaF90YWJsZSA9IHBpYzMyX3NwaV9vZl9tYXRjaCwKIAl9LAogCS5wcm9iZSA9IHBp
YzMyX3NwaV9wcm9iZSwKIAkucmVtb3ZlX25ldyA9IHBpYzMyX3NwaV9yZW1vdmUsCi0tIAoyLjM0
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
