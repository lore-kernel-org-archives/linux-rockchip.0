Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64C42C43211
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 18:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=095KEKN5LS9U354Tn9u3nyhNQtA2DoQ8CcCMkBsMoSQ=; b=oxS+eQVjC+sAfW
	SEHujTmlR3ohNRjQkVLRNYT0WULkbxSElRKfLjC0t+xmoFqO9oy3xLNMtw7EZEI3n5AdU1FUKtWCE
	kHUVySXKNwVdwJUYGVfa27/ESk4BP/23lS2x9XuE1cI45zAyM55Av1pste8+7Ez2eAF0aOMsT62Td
	q1+garb1Z97QzBA2O3c68gKRq6chQYN87RP2RaR3aQ4Bwovp+3w2h6cY8ClOQwGfi/pquxCU+Y4gS
	h3Vmjv6ur1nK/brZzAfVCOtzForTRAqkmO+cOKZQUjBfaAcjdjo7ZA5OiFg+iHZI89ePWEqJLFbp+
	y6iQ/Uq1jZRWWB9abgVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdArv-0000000Bk2Y-3NTv;
	Fri, 26 Jun 2026 18:01:35 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdArq-0000000Bjzv-3oeA
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 18:01:34 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-49270caa5c0so2278175e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 11:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782496889; x=1783101689; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Pu3bwvVTJSBGwVuDVBPY5a/3kPulEt99t/TlX7CirM=;
        b=ja+I/Cn5nh2KWZLeRVcsw7dXtX0MPw+ajtyMXN9Hlv77g6YZCpCwDF/MhQb5Nk5ZE9
         0R734XKFJAK4ogd7yKKnvS9KloPA7cQHddFjAmeMPExEpO+dTdJUbDA4o9+spQWzBZWH
         AWQg2uHYagLnMPrMjnQtMPae4HoLt4AsSYu7ZPExICQI8qhCVIopvmty5b8BM6EDfm+1
         JkhNDRSyIecirx93tUnGVmYoisJ59+8Ql7GvvHtPK1ae/tSXHQrFEg5oJUCcuip/8vlZ
         99MAOi4rVmEIFayEdkjlkaKm0D5WxCYGjb2WU9wuDLKh/1pwUImuwaKJpGGm+18Czqly
         gcIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782496889; x=1783101689;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4Pu3bwvVTJSBGwVuDVBPY5a/3kPulEt99t/TlX7CirM=;
        b=UgOig53ZwiZVjW/hHV0iuITSRxwwU4ZgHpGoeKj6RcTqlGaEpBT7w49BC4GOJHkrkK
         lTTCaHR+TUTjAa3bZj0Fc90WOHrDEP+VAggSGuXA84DBWWRJrEc0ODwtwfqCskMxyZ7g
         dif792DkwSDOv5Tn66yigtHeQNPY8a/bZDu8PTLQBo1h+daytzOaU7lR8l5nA2Qgh/OX
         HVh1QZ+pIejw5XgeITLui3yJz4AkYDXsxWPsdLvkqlMK4+3lOjgBfoQrJXIEEZRzUgvL
         gSmpLektLW/PjbZedVijYlDLP/g2VI8stOritYDooT5uvcJw1+G8DI0xA7MqQwHTSTgW
         1OTQ==
X-Forwarded-Encrypted: i=1; AFNElJ9z2Uhy7CUbQ2xDUhp3II9zHHf6ZRYNzLgvNYZ7+8l1ZBZ+JcC0zodbo2vq7iQzeItd49RdpHEaQzCD+x4caQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKfcx2D38ArnVDmG8Swv94faZ3VWDMi1m80kvpZNesAXRzcsiW
	PC85UcSA2Z5RQWh1uZ0lt3WskmK7VAxEcZ0V9T8bmoV2au+TjdZm/0af4CrlGQQLg64=
X-Gm-Gg: AfdE7clYR6eqREDoXwUpda29IHWY9TsvxGfe6M3loV0CT+O33wi6gsIMH39+sh0Kq3/
	36IQ/6rNmTLGA1q5Uw85dDd2+ewcnZBWr5fcbYypfUmkkQEPetZwip0oJZUnPHsTEQM1xoYeriV
	0O8khS7APHN1ZT/SQRynx4fO+nwk6XBEkU4YOqd6FgLtBT1smXGLZmo0NpxOvcKswDRsVUy4Pva
	wavAKziUEAwg42y8kZOitYfP5bVXjm+sdsfoIbjblutGTFGPxot33IrdFLWrqO75uijt+8x4kyp
	XiO49ikiuIRBuIJEdnERKbPR4QTNb4s3Owavz6YmQLLvfIOSBd7zH+fdGJWan8mPBVVUno9X4C7
	dm8Qo287VDY4sD4SMOyo4W0fjbYQyens4P4SQ4Y3A1/Knj0Xebf8Ye5Ktmlq3R7ftpcGuqBD22A
	sSJq/AOf6U/mSxmCpkLUjxv+0Amy8CeVujjG61QZc+81uXqtwP3cGIbt+zRE+UDTi/eoYT5i8+b
	0MAxVRAdDavu24=
X-Received: by 2002:a05:600c:8b6d:b0:492:367f:8039 with SMTP id 5b1f17b1804b1-4926689a1c4mr129181475e9.33.1782496889019;
        Fri, 26 Jun 2026 11:01:29 -0700 (PDT)
Received: from localhost (p200300f65f47db04b3606a871f5f1c38.dip0.t-ipconnect.de. [2003:f6:5f47:db04:b360:6a87:1f5f:1c38])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4926c2954efsm48167005e9.2.2026.06.26.11.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 11:01:27 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?= <u.kleine-koenig@baylibre.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/17] ASoC: rockchip: rockchip_sai: #include <linux/platform_device.h> explicitly
Date: Fri, 26 Jun 2026 20:00:22 +0200
Message-ID: <d2fe7dc85277b01526f9320ed5baab2acd29660b.1782490566.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782490566.git.u.kleine-koenig@baylibre.com>
References: <cover.1782490566.git.u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=901; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=wiQ/vcN9yqIC4sO1aCpSqdLoX21DBVtg1q10dXzjuGo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqPr49qSP2y8FOQPKksQy9Ga9uLoAQXuQWxfh3p I/V6cThLDaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaj6+PQAKCRCPgPtYfRL+ TguCCAChulsb7LA3PaMi7MyduR+3smp+OnkByHv/0OcMzkhVsmyy3BO/FMSij9hrhx5UzKXtYCF B/cBzfi/EkWVY1cE7ZORNNOmmC1fSRZZ3f+S64TDUcqqD+m+pqITM8OB2Q8X7LY+8RAk4Rwz8ri 58w3TKtqcPhY0l/B65mypKhUe1li2Lg2wbCccROMqFOap8c4wySw7zmzOzidk//5xa2Vq+V0iEk yTntNx+twfeolHSZodcmXx35avQrnNbQJOceqdqYuubZi5V4BnL5dt++wlhYfVIhEdoohbeAvSQ XAsyYm+sRiwegMHWaVt/f5241d6cDts58TWqQJPvMd9k11KZ
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_110130_970960_698CB25D 
X-CRM114-Status: GOOD (  10.07  )
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

Q3VycmVudGx5IHRoYXQgaGVhZGVyIGlzIG9ubHkgaW5jbHVkZWQgdmlhOgoKCTxzb3VuZC9kbWFl
bmdpbmVfcGNtLmg+IC0+Cgk8c291bmQvc29jLmg+IC0+Cgk8bGludXgvcGxhdGZvcm1fZGV2aWNl
Lmg+Cgp3aGljaCBkb2Vzbid0IGxvb2sgcmVsaWFibGUsIHN0aWxsIG1vcmUgaW4gdGhlIHByZXNl
bmNlIG9mIHRoZSBjb21tZW50OgoKCS8qIEZvciB0aGUgY3VycmVudCB1c2VycyBvZiBzb3VuZC9z
b2MuaCB0byBhdm9pZCBidWlsZCBpc3N1ZXMgKi8KCmluIDxzb3VuZC9zb2MuaD4uCgpTaWduZWQt
b2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyAoVGhlIENhcGFibGUgSHViKSA8dS5rbGVpbmUta29l
bmlnQGJheWxpYnJlLmNvbT4KLS0tCiBzb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfc2FpLmMg
fCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL3NvdW5k
L3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zYWkuYyBiL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hp
cF9zYWkuYwppbmRleCBhMTk1ZTk2ZmVkMGEuLjM3ZTgxZDU2YmMxNiAxMDA2NDQKLS0tIGEvc291
bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NhaS5jCisrKyBiL3NvdW5kL3NvYy9yb2NrY2hpcC9y
b2NrY2hpcF9zYWkuYwpAQCAtMTEsNiArMTEsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+
CiAjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cisj
aW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvcG1fcnVu
dGltZS5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgogI2luY2x1ZGUgPGxpbnV4L3Jlc2V0
Lmg+Ci0tIAoyLjQ3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
