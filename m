Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04BC3C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 17:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmYn9ccG1O++RHDmmJ36VQwZGMaSY4ouhFE5R1JFe/o=; b=Qe1g+qG08W+blG
	qefpahEZ6sQt/G3A9Lp2AwHgPKDiMuAcj4rbG1DYwy0aS8F9FIL2qH/08bYUEd6ATT5WWf7QzGbL7
	rFvwcI9EYzIxt9ha7yc43O5IgNH5CFDGv5vuPICfTWDD/XO1ttQL22WIEPkzl3lPJLbRm1Qy2Cpi6
	dfOJm5mOy1JVKCrX3AfWrUr+rsxfSYCOp01m7vHhvopIUHHbf3lcf3JWONXtpV2fngB8iPmF8q9M4
	tD5zHO3tKCZKqtMzSYuh1W9htPgIZk6ljwCkWCpfPRxviYtxk/5OxsrJrRke80FFe6IHRR3xQotXk
	AR0rGT8XcUbBv2f90OBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhaJG-00EPFb-RI; Thu, 21 Apr 2022 17:09:38 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhaHY-00EOHC-P0; Thu, 21 Apr 2022 17:07:54 +0000
Received: by mail-wr1-x429.google.com with SMTP id e2so1313809wrh.7;
 Thu, 21 Apr 2022 10:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1DHr0UfeFKvgTc9CqETxWAhcnj8bwvB27mi7L/RJMLI=;
 b=P3YAtF35V53kyVqjeoLe6NLR6GC/doMtIALc3tdmXTpE4LrW2S2r1iOO54iREtCJxH
 dOTTK9hlGJ+9eEh532NzO318GRvv72+BePjdQztXTWKNZ5KBRVg3kEehRTC2u6l9OuDA
 WyN/gR2kdohSojmSfR71eW5heZTUm1swjm1FhpBiAt5P1j8iGudP1VksYTrWIyc/TPJZ
 zO6eIlGiJrE5j/OszmcVXjcgemR/u2dxwYFQlRq1UkFGUtPu5oKguyC0r+8QcnOAuC87
 BsRWuNatkxU/1mf9mOfrzEK7X+Wmg1Auq3cC4wSMaYC6wrC8x5aajWQ4/9ElGwsP/Rat
 1Puw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1DHr0UfeFKvgTc9CqETxWAhcnj8bwvB27mi7L/RJMLI=;
 b=qfQEpGaFeg6OKsxA1a7XwaKsBcxCy0Jf8tTibTS/6Jx1eqwHFuJwP3qhcMEBiY+2pg
 zBIV5X8zIZWkNi74r4npEEYYjnikwZbw4cINYclb+CrAjhBXGQUs6wa+A1kyHbcjlw+k
 Q85IGE+im84Uk+n+K0qtWh5EyDw/fwJYgWr76uPNdqY1A0m+R6eKPRKCAJN2byoc59LA
 eCvA4pm2CO8Kpr0nNDlYmA0KumDXNv6O3OekUqZ9rtDzzsao2lg0NG6e8cje/Dz7xvNG
 yM9czEeenPoor22xLbn+swvB/sd97494gm4meDF6U8MUEcZO+ZGIebgHLue1TMU8BMLl
 7e7A==
X-Gm-Message-State: AOAM5308TS0GMh5sDU0ymAFG3uOcpOWgQqyplYWKtXjeEvsw/5l46Ia2
 Vs3we3vYI/ioovDp5GDohQY=
X-Google-Smtp-Source: ABdhPJyF9I+tOdug2GInrB3O1KIZXBnyfjirt1kYYZ6Dne73ApfJWTQEjsu+D+I0t5Nf5JVuBfCwqA==
X-Received: by 2002:adf:e908:0:b0:207:a28e:b904 with SMTP id
 f8-20020adfe908000000b00207a28eb904mr562456wrm.542.1650560868785; 
 Thu, 21 Apr 2022 10:07:48 -0700 (PDT)
Received: from localhost.localdomain ([94.73.37.128])
 by smtp.gmail.com with ESMTPSA id
 i11-20020a5d584b000000b0020a8d859e5fsm2963849wrf.10.2022.04.21.10.07.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 10:07:48 -0700 (PDT)
From: =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>
To: inki.dae@samsung.com
Cc: jy0922.shim@samsung.com, sw0312.kim@samsung.com, kyungmin.park@samsung.com,
 airlied@linux.ie, daniel@ffwll.ch, krzk@kernel.org,
 alim.akhtar@samsung.com, lgirdwood@gmail.com, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 hjc@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 alain.volmat@foss.st.com, p.zabel@pengutronix.de, mripard@kernel.org,
 wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
 linux-sunxi@lists.linux.dev, laurent.pinchart@ideasonboard.com,
 =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>
Subject: [PATCH 5/5] drm/sun4i: hdmi: Replace drm_detect_hdmi_monitor() with
 is_hdmi
Date: Thu, 21 Apr 2022 19:07:25 +0200
Message-Id: <20220421170725.903361-6-jose.exposito89@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220421170725.903361-1-jose.exposito89@gmail.com>
References: <20220421170725.903361-1-jose.exposito89@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_100752_867284_6FFD4B2A 
X-CRM114-Status: GOOD (  14.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T25jZSBFRElEIGlzIHBhcnNlZCwgdGhlIG1vbml0b3IgSERNSSBzdXBwb3J0IGluZm9ybWF0aW9u
IGlzIGF2YWlsYWJsZQp0aHJvdWdoIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaS4KClRoaXMgZHJp
dmVyIGNhbGxzIGRybV9kZXRlY3RfaGRtaV9tb25pdG9yKCkgdG8gcmVjZWl2ZSB0aGUgc2FtZQpp
bmZvcm1hdGlvbiBhbmQgc3RvcmVzIGl0cyBvd24gY2FjaGVkIHZhbHVlLCB3aGljaCBpcyBsZXNz
IGVmZmljaWVudC4KCkF2b2lkIGNhbGxpbmcgZHJtX2RldGVjdF9oZG1pX21vbml0b3IoKSBhbmQg
dXNlIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaQppbnN0ZWFkIGFuZCBhbHNvIHJlbW92ZSBzdW40
aV9oZG1pLmhkbWlfbW9uaXRvciBhcyBpdCBpcyBubyBsb25nZXIKbmVjZXNzYXJ5LgoKU2lnbmVk
LW9mZi1ieTogSm9zw6kgRXhww7NzaXRvIDxqb3NlLmV4cG9zaXRvODlAZ21haWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1pLmggICAgIHwgMSAtCiBkcml2ZXJzL2dw
dS9kcm0vc3VuNGkvc3VuNGlfaGRtaV9lbmMuYyB8IDYgKysrLS0tCiAyIGZpbGVzIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vc3VuNGkvc3VuNGlfaGRtaS5oIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hk
bWkuaAppbmRleCAwMGNhMzVmMDdiYTUuLjY1YzgwMWNkNmYzNSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hkbWkuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vc3VuNGkv
c3VuNGlfaGRtaS5oCkBAIC0yODUsNyArMjg1LDYgQEAgc3RydWN0IHN1bjRpX2hkbWkgewogCiAJ
c3RydWN0IHN1bjRpX2RydgkqZHJ2OwogCi0JYm9vbAkJCWhkbWlfbW9uaXRvcjsKIAlzdHJ1Y3Qg
Y2VjX2FkYXB0ZXIJKmNlY19hZGFwOwogCiAJY29uc3Qgc3RydWN0IHN1bjRpX2hkbWlfdmFyaWFu
dAkqdmFyaWFudDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1p
X2VuYy5jIGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hkbWlfZW5jLmMKaW5kZXggMzc5
OWE3NDViN2RkLi5kOGI3MTcxMGU4ZjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdW40
aS9zdW40aV9oZG1pX2VuYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW40aV9oZG1p
X2VuYy5jCkBAIC05OSw2ICs5OSw3IEBAIHN0YXRpYyB2b2lkIHN1bjRpX2hkbWlfZW5hYmxlKHN0
cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKIHsKIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAq
bW9kZSA9ICZlbmNvZGVyLT5jcnRjLT5zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsKIAlzdHJ1Y3Qgc3Vu
NGlfaGRtaSAqaGRtaSA9IGRybV9lbmNvZGVyX3RvX3N1bjRpX2hkbWkoZW5jb2Rlcik7CisJc3Ry
dWN0IGRybV9kaXNwbGF5X2luZm8gKmRpc3BsYXkgPSAmaGRtaS0+Y29ubmVjdG9yLmRpc3BsYXlf
aW5mbzsKIAl1MzIgdmFsID0gMDsKIAogCURSTV9ERUJVR19EUklWRVIoIkVuYWJsaW5nIHRoZSBI
RE1JIE91dHB1dFxuIik7CkBAIC0xMTEsNyArMTEyLDcgQEAgc3RhdGljIHZvaWQgc3VuNGlfaGRt
aV9lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyKQogCXdyaXRlbCh2YWwsIGhkbWkt
PmJhc2UgKyBTVU40SV9IRE1JX1BLVF9DVFJMX1JFRygwKSk7CiAKIAl2YWwgPSBTVU40SV9IRE1J
X1ZJRF9DVFJMX0VOQUJMRTsKLQlpZiAoaGRtaS0+aGRtaV9tb25pdG9yKQorCWlmIChkaXNwbGF5
LT5pc19oZG1pKQogCQl2YWwgfD0gU1VONElfSERNSV9WSURfQ1RSTF9IRE1JX01PREU7CiAKIAl3
cml0ZWwodmFsLCBoZG1pLT5iYXNlICsgU1VONElfSERNSV9WSURfQ1RSTF9SRUcpOwpAQCAtMjE1
LDkgKzIxNiw4IEBAIHN0YXRpYyBpbnQgc3VuNGlfaGRtaV9nZXRfbW9kZXMoc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3RvcikKIAlpZiAoIWVkaWQpCiAJCXJldHVybiAwOwogCi0JaGRtaS0+
aGRtaV9tb25pdG9yID0gZHJtX2RldGVjdF9oZG1pX21vbml0b3IoZWRpZCk7CiAJRFJNX0RFQlVH
X0RSSVZFUigiTW9uaXRvciBpcyAlcyBtb25pdG9yXG4iLAotCQkJIGhkbWktPmhkbWlfbW9uaXRv
ciA/ICJhbiBIRE1JIiA6ICJhIERWSSIpOworCQkJIGNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLmlz
X2hkbWkgPyAiYW4gSERNSSIgOiAiYSBEVkkiKTsKIAogCWRybV9jb25uZWN0b3JfdXBkYXRlX2Vk
aWRfcHJvcGVydHkoY29ubmVjdG9yLCBlZGlkKTsKIAljZWNfc19waHlzX2FkZHJfZnJvbV9lZGlk
KGhkbWktPmNlY19hZGFwLCBlZGlkKTsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
