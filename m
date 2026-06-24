Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C00D5CDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 08:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8vHJnUDouSTyU0yQO/2EhpEgE/q2d3NUNyy6gG/Fgl4=; b=iAPTf+ApW2nDk+
	3VAz+Q3kGHSDA6q2bRyYn0hZMsEdB0Nlc01477ABAiBH+Tb6qiVyk9hcrzjgIxQYaXgnCjIhjm2/J
	a1B+naL/7+47bb0fSsFuFZfxAQz+atrEXyBKRpj67ZaBm3Rrg5vNy7q2x6VrKecXRdPzlMiDvwv8D
	Lb/WWIFMFrsSr5JntFCtUPPOdaCJ5EZuV/jyqLbvvGFqHSZi5N257IhUAFdhjgAHKmCiVgMAlHZ3i
	3uBc91P+ueLjtL2SiTUXGhCKHUzWxxBY37tbPP6quYoAvo2BadM5gYTbc3SBAR+LLSxnexfCnbSdk
	pEZ3gZJDD8ZJFoHqta+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJ6m-00000007PD1-3NBp;
	Wed, 24 Jun 2026 08:37:20 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJ6j-00000007PCC-1FbC
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 08:37:19 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-491609cdd8fso4631605e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 01:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782290235; x=1782895035; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jD0yBLMi1WgsXurx9iE/PVJkQmjsO7Pghg9IxUVMHWk=;
        b=BqKUIBcLTi6y5hVSwddoBqiWOKYJ1DTV9MZVBlsEUrY5j6NEXS0OZpMpYvsWDj1sBd
         xy8IaVlliqOwaNCgRfmAK62K5isCETqBsnrhgJdMqBOr8m0Ku4zs8obWWmqIbPxdL5Hq
         zZCiJWfNWndr8iLiOK1KAY7HTkbKaErznaRvqqotlY66W35Y06SdGRa21R3rjC4g1FnL
         0IS1it/Od4LN4kNoOnhaZ34s9auWHvc9GwBPXq5bsAFk736ryzyFVrTWpPSQ0E5VaUrH
         sPApD8c/h39mXDv0ndls8ZBD1dMk3SgoRtKr5rMQe1P8I6/zPlNhPW5EkrihmhxN0vaT
         Y+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290235; x=1782895035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jD0yBLMi1WgsXurx9iE/PVJkQmjsO7Pghg9IxUVMHWk=;
        b=lJeYTQTfGub2MYLCpEXfeAG7/q+MK+Rr3J3OyVqFBS8ti4fbuTQJtyCTOdQbUn5bbe
         O35Ypxi2wZ/f8iE+xjugCEeKUto/hoDYAeoy9byKD4Rvq6KbmANxLQrj0P2lkwSqKjum
         9sMM6pwBmGitVSzH+mEVfGgg/IdIdZYwhFreWTIqtJBubEh71AP3HSXCxxWJnXKVqK5E
         /DogvM3drHBGpldy+6mD1w9Aci8hhkueVqrO679kdVGuA8P3Qr9D41Hte5LVqTflUZ5E
         0GI3LTiTB2QRyv8H2gzcYpeU1M6xICLWNDmEjvvGRAnoERRGowkEEnuBoyC03iIGzUAd
         Wpmw==
X-Forwarded-Encrypted: i=1; AFNElJ9HSJqteiK6O6NztwvsU9e+kuSnboHOSpa+UqyedzXiKj0rH47GSnfblQRCSDJRc0ZX9bzFzglAr7Jbh7RfyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKAv7foa7DAyPSwb4pjJ0RvDF7XtcG6Hs+eepSPX2Opl/jRdre
	9bI4S2X05kwYRsDl2DkWepvsH9vsHdDznVBy91vlTigKfdHRs98CUgysY/sdxcEbX/8=
X-Gm-Gg: AfdE7clnHsbu+YsG71I9aChzLvd9Kzr1gM0IeeAbLpOSoR3FgzETjaIDBtbdyJCQGRJ
	X3LWgxYjltrqaEFocIfkxvxlwVsPukDKpTBTJ0X7aUtN5hKKhI3fH1nJPE0xKvOVqV9HxktCv11
	q6KKDTk1f6CoEefTF0JqVpw1hgS1os6cf4h8osYWKBupqBZD4yijoxRzM6U4UePT2yaNJd1nBKl
	ncYY0ksZkUs94oLLid576wgvUXlBTyhMiHPaD+jkuUoOKD8HSoiJNMa4wvolauIrKqhDcjFQsx+
	+vKkHJhd2ZPbbPKg6EIPZsQtvVli2mmRPmHkNtiAoz76TF4qI29YK+aqndjtTJHeJP6USYXEUEK
	3efnJKMCmYSuqAxWZfWVOXVdIUYa83QaIuIRv5GQZEA7IuFiqsDgNsPRIq+rOV3Ji6S7g1pDkh8
	pLJEoLmhdVZWhc98Zw4E9m3UyCE/QZWglWBb5v28vIK7riWB4b2lhSs7JpF5OyudlsrNTQ2ewDw
	i3o
X-Received: by 2002:a05:600c:c0c3:10b0:490:c2a3:23cf with SMTP id 5b1f17b1804b1-4926087abbbmr24473415e9.34.1782290235329;
        Wed, 24 Jun 2026 01:37:15 -0700 (PDT)
Received: from localhost (p200300f65f47db0497adf84f78eebbb3.dip0.t-ipconnect.de. [2003:f6:5f47:db04:97ad:f84f:78ee:bbb3])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4923fe7b359sm418072505e9.9.2026.06.24.01.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:37:14 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig=20=28The=20Capable=20Hub=29?= <u.kleine-koenig@baylibre.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] ASoC: rockchip: rockchip_sai: #include <linux/platform_device.h> explicitly
Date: Wed, 24 Jun 2026 10:37:07 +0200
Message-ID: <20260624083708.254517-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=958; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=he88gpG0jTK870kX2aaFn6iF/21ycx8BCce5aacPgz4=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBqO5c0zoOeNHjkiDlCr6YRt/k1lUxk5W/gh5rpG ETdWZDOavWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCajuXNAAKCRCPgPtYfRL+ TpUTB/wN9y9wbKmFUlmeGAAX4C1nm5ZQ+AOiPMpZ2YHfyme60wMYfbTK/a7sd8abF+2NFyZiKsL 57cZjmkizh8C8rWzvpHY9CuNx0FTNOGtGpJ056qNZv4y4ObzZ57QFCRq7H9QntvYsneOu1l4dVa nnxCVGVLdveudambxzH+kSghZF3uK2x2LMW3jhK9YpCbRfhuys4HaqUNtsp5Z5LsIojkApAN7Sm AK9/bCDmZFJjIAB3RwY6vEan74lgpUcqWaxLOfMuNMGUeWgRNeZPHFJBl2fTrqwOiLHlBtH32sM LecLWggGNYYP0jwTI3wd/q5qxfh+5IWikLgq4vFy0Yr4sGyx
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_013717_375024_E2719D65 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
Lmg+CgpiYXNlLWNvbW1pdDogZWYwYzlmNzVhMTk1MzJkNzY3NTM4NDcwOGZjODYyMWUxMDg1MDEw
NAotLSAKMi40Ny4zCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
