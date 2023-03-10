Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D748AC6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtS34JyHvKYDRp2/k5XtKtcHhiZ6szzeIt7yhWeFMrQ=; b=BOIgAYh9AUJEjo
	Pvr6lVCmiqQ9iQMPdo+IViuINWHnyV0MsQR0cs/gSGujvMl+9acPFM8Kt5dLDX0Q4/0PSiy7fUK2g
	dZh2Y3fJPsqgcnwaZK+u8iCQI4nW3tgUx16dThg7jbFrWnUZm5aRF/r3Dn8u6VHEhftvU94iW0Nyd
	TqD1T5y6+AAGJsBoNFpKDnpcHpVZJjDdmBGEUsLG8wnGHx5JfBJvKPOsUd7prc6dOVwEVmoBi3fjU
	AocHwNSt4lqBe1W3CUa4NGqHNBTx+PTfAXOiZcwP4z80oSBnl5wx4AmpNmTFkxLwYRhfvPy0R7gtK
	OunBd3Opit1db2Gyti+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamHK-00GfiC-MI; Fri, 10 Mar 2023 23:36:02 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEm-00GNgB-Vm
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:23 +0000
Received: by mail-ed1-x535.google.com with SMTP id j11so26473186edq.4
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p4C8ul8r4FTTSiZJ472TZ7PsXvPEhmFf5+M7zLcSIw8=;
        b=rrEwy1/EkKM2hXYDjXm39vr4v4A3eFp0vxvvErw0JyGtOLyGzIPJjSe+i9/9yBHwBo
         ggaHhX0ARMHrz05m76okNh3eCxxkXswhGfFQlh8eLEaz5q4totxmsxrVKzzBcVPBlD/r
         43Om/8th0/4GENyp64/VX1I0z8locQldE8GoKn//2LSXEUixCVdNQJcwBsfbBKvRF4Nw
         1L0+7vFPvhd6M4ExGtj4xFecNGFGuBJbBwpaN5Ez6o4kPkYXI5CclN4jOfC5FSg96/K5
         A3HVNgymCz5jus/z1ws+Kq28D+AiPQyBaTjxTt2vechjWxkcXHoPWEnZqCMB8j+ZvSaF
         TWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p4C8ul8r4FTTSiZJ472TZ7PsXvPEhmFf5+M7zLcSIw8=;
        b=df3v9RK3vUuf1hZJ9kHUSL3AkIAToBDpJgZiUNArDLOgFw5Kz44aJ1jF4OzaJ+EY58
         NLry7jxaPMCdfRiIXXNdslNvXS4GhkMocexHoxcnUJJZsKF6kuAb5kvQqAlqNTS/C5fN
         EWjKMVWBh1XzZRlH6buIwda1aI5qs64DCcd3Rbf5YPuztfPm2e4foLuxV6DtgWWgML7Z
         8mFgbjQ9R3IcqAJEDg8FBA/3NWZmQk5snbj99qeaxo4TM725iABAvSwexrG4tnQRm9GL
         OIiMwEQSSkU6CuL2Pg2tjLdZAcf/gn50xaibt+e0YzrmbseFK40o/uaVFw2GwYoawK0/
         skSQ==
X-Gm-Message-State: AO0yUKWW5nxo4fhGcjA5TV4gvsq6fneDIHwtk39ZHHIbGZy76A7Ad5+Q
	u/7A0iAJqMatwcsb4KAhXAylVw==
X-Google-Smtp-Source: AK7set9Dxapp5m7YmqmEU473go9gZsJAewh+nBqHr15xGDvrxDQqScmrTjf4oppgDcLOYI+pKl+ozg==
X-Received: by 2002:a17:906:3002:b0:8b2:fb3d:9f22 with SMTP id 2-20020a170906300200b008b2fb3d9f22mr25973054ejz.33.1678487360596;
        Fri, 10 Mar 2023 14:29:20 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:20 -0800 (PST)
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
Subject: [PATCH 16/16] spi: rspi: Mark OF related data as maybe unused
Date: Fri, 10 Mar 2023 23:28:57 +0100
Message-Id: <20230310222857.315629-16-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142921_050935_F18A0301 
X-CRM114-Status: GOOD (  12.77  )
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

RHJpdmVyIGNhbiBtYXRjaCB2aWEgSUQgb3IgT0YgSUQgdGFibGUsIHRodXMgc2V2ZXJhbCBPRi1y
ZWxhdGVkIG1ldGhvZHMKd2lsbCBiZSB1bnVzZWQuICBNYXJrIHRoZSBPRiBzdHJ1Y3R1cmVzIGFz
IF9fbWF5YmVfdW51c2VkIHNvIGNvbXBpbGVyCmNhbiBkcm9wIHRoZW06CgogIGRyaXZlcnMvc3Bp
L3NwaS1yc3BpLmM6MTIwMzoyOTogZXJyb3I6IOKAmHFzcGlfb3Bz4oCZIGRlZmluZWQgYnV0IG5v
dCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBL
cnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Ci0tLQog
ZHJpdmVycy9zcGkvc3BpLXJzcGkuYyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3Bp
LXJzcGkuYyBiL2RyaXZlcnMvc3BpL3NwaS1yc3BpLmMKaW5kZXggZjQ5NGM4NmJhZmVhLi40NzI0
ODU0ZTY3MjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1yc3BpLmMKKysrIGIvZHJpdmVy
cy9zcGkvc3BpLXJzcGkuYwpAQCAtMTE5MCw3ICsxMTkwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBzcGlfb3BzIHJzcGlfb3BzID0gewogCS5udW1faHdfc3MgPQkJMiwKIH07CiAKLXN0YXRpYyBj
b25zdCBzdHJ1Y3Qgc3BpX29wcyByc3BpX3J6X29wcyA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3BpX29wcyByc3BpX3J6X29wcyBfX21heWJlX3VudXNlZCA9IHsKIAkuc2V0X2NvbmZpZ19yZWdp
c3RlciA9CXJzcGlfcnpfc2V0X2NvbmZpZ19yZWdpc3RlciwKIAkudHJhbnNmZXJfb25lID0JCXJz
cGlfcnpfdHJhbnNmZXJfb25lLAogCS5taW5fZGl2ID0JCTIsCkBAIC0xMjAwLDcgKzEyMDAsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHNwaV9vcHMgcnNwaV9yel9vcHMgPSB7CiAJLm51bV9od19z
cyA9CQkxLAogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBzcGlfb3BzIHFzcGlfb3BzID0gewor
c3RhdGljIGNvbnN0IHN0cnVjdCBzcGlfb3BzIHFzcGlfb3BzIF9fbWF5YmVfdW51c2VkID0gewog
CS5zZXRfY29uZmlnX3JlZ2lzdGVyID0JcXNwaV9zZXRfY29uZmlnX3JlZ2lzdGVyLAogCS50cmFu
c2Zlcl9vbmUgPQkJcXNwaV90cmFuc2Zlcl9vbmUsCiAJLmV4dHJhX21vZGVfYml0cyA9CVNQSV9U
WF9EVUFMIHwgU1BJX1RYX1FVQUQgfApAQCAtMTIxMiw4ICsxMjEyLDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBzcGlfb3BzIHFzcGlfb3BzID0gewogCS5udW1faHdfc3MgPQkJMSwKIH07CiAKLSNp
ZmRlZiBDT05GSUdfT0YKLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJzcGlfb2Zf
bWF0Y2hbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJzcGlfb2ZfbWF0
Y2hbXSBfX21heWJlX3VudXNlZCA9IHsKIAkvKiBSU1BJIG9uIGxlZ2FjeSBTSCAqLwogCXsgLmNv
bXBhdGlibGUgPSAicmVuZXNhcyxyc3BpIiwgLmRhdGEgPSAmcnNwaV9vcHMgfSwKIAkvKiBSU1BJ
IG9uIFJaL0ExSCAqLwpAQCAtMTIyNSw2ICsxMjI0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgcnNwaV9vZl9tYXRjaFtdID0gewogCiBNT0RVTEVfREVWSUNFX1RBQkxFKG9m
LCByc3BpX29mX21hdGNoKTsKIAorI2lmZGVmIENPTkZJR19PRgogc3RhdGljIHZvaWQgcnNwaV9y
ZXNldF9jb250cm9sX2Fzc2VydCh2b2lkICpkYXRhKQogewogCXJlc2V0X2NvbnRyb2xfYXNzZXJ0
KGRhdGEpOwotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
