Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32DDAC28B2F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 18:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g2WQ9fFDohBqiB1cjt/SGhFoyI1qDltTVB+2A1ZFdJI=; b=XH3rQYvUJdplqr
	qifW/4MwiM+yc4l8bwJfOgvVEAgCxJ4kyufVnB8vtEafTke90tSdJ635ac+vmy6/WocZOJhgTo6iI
	LE19GlI24CHibhx9dztKrwmZiev6ywRTPWYTyRkt6TbPC9JIr5HN7viyUsmY+QD/oL6+eTNeDJC9B
	F0Oq4d25uiXvOIHbUKYWAgxqan8+afdSt41QiWza0okXpByXlSZXXdwoGBNx0QFGIKMZxkw/cJmkH
	rbEjB46jfxEORDQ4dkvAW+lbcKHTzyjaDvCxDavG8JPUiYsD2/G9CMK7b/KkkTf5wCQpS93QeWTDn
	0jcWJmnYMi5Y7xpxjzSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tubzz-00000006q9d-3wN1;
	Tue, 18 Mar 2025 18:49:11 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tubwx-00000006ppH-39MS;
	Tue, 18 Mar 2025 18:46:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742323559;
	bh=SIYP7xVZV3lmgBMVLByXJICeBe4GP9DuYdjQ55XLqPA=;
	h=From:To:Cc:Subject:Date:From;
	b=gBD6wl8/L9k6WBaLBrJWyZ2squ8iBYPKQP0Ygpy6l3Hs9Ym+RHZtG9CpVzHQ97FhN
	 cdq+jLr5gb8oVdsUDCm9/Lqv7lvXuzu5tZ/byw/tT8u22TJZPnmaAKLibhnOHDl9OL
	 zbgs8kTxww7PPQKwPgKEnXWefFIsns4nKu4o0pe2Odh+qgjnbXKthHm+TWo1xhOEXh
	 noxSgxxBrMmuCQ4E2GJh41/fISWYyYFq9YvemE+IS3DcNI4gDBSA7Pg/nl2mF15vin
	 eRKRC1F2cgeTlG+5n6WmBjjcEuIoPT1P6suHQQHWFds8Py9G3TMMLuhs77tf14Z4KZ
	 sKnL0wRIPb+pQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id C1A50FC57DD; Tue, 18 Mar 2025 19:45:59 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Improve gmac phy setup for QNAP-TS433
Date: Tue, 18 Mar 2025 19:45:49 +0100
Message-ID: <20250318184550.47642-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1452; i=uwe@kleine-koenig.org; h=from:subject; bh=SIYP7xVZV3lmgBMVLByXJICeBe4GP9DuYdjQ55XLqPA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2b9eGjQYxA360+FfA+V4SDGvIdwQVyFQYDmUI RlbkAY3wP+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9m/XgAKCRCPgPtYfRL+ TgMfB/9UMa+vPPygl9iWkXvL5g8ULT0onyQk+mJ7inIUeSMhJs8sORjSJfzePW7viN/txkh8wkH uM7C+sR83bIUdoDdkUQTEMlS2+4eAoL6V2wMADbcrQFqUzE4iLzlJzj0EKd7CVYCp/XOBvWYqww IHLrAlQl4/xWW709iHH1QSGrOalcMZ4DaubVangBfQyVqVSE0zmeYU3ktKaMd1lsjy3WFHkdhl9 f35FUGov7FTWh2rogn/E6/EGXLwIucCM7N/ZFnhqP89OSESnd3HSoCE3hQpYQSNMUzs9Jpqklt4 3ijdgyKUpUxRa2F9OrxTYC7Qi1NlTzZfe8VHd65VnlxqA/vM
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_114603_933826_9A99BF5B 
X-CRM114-Status: UNSURE (   9.98  )
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

SW5zdGVhZCBvZiByZWx5aW5nIG9uIHRoZSBNRElPIGJyb2FkY2FzdCBhZGRyZXNzICgwKSB0YWxr
IHRvIHRoZSBwaHkgb24KaXRzIGNvbmZpZ3VyZWQgYWRkcmVzcy4gQWxzbyBhZGQgdGhlIHBoeSBy
ZXNldCBncGlvIHdoaWNoIHdhcyBmb3VuZCBieQpIZWlrbyBpbnNwZWN0aW5nIHRoZSBVLUJvb3Qg
dmVuZG9yIHNvdXJjZSBjb2RlLiBIZSBpcyBzdGlsbCB0cnlpbmcgdG8KcmVjb3Zlci4KClNpZ25l
ZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQog
Li4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyB8IDE1ICsr
KysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
cW5hcC10czQzMy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFw
LXRzNDMzLmR0cwppbmRleCA3YmQzMmQyMzBhZDIuLjQxMWY4YWM3OTk0YiAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKQEAgLTQ4
MSw5ICs0ODEsMTQgQEAgZWVwcm9tQDU2IHsKIH07CiAKICZtZGlvMCB7Ci0JcmdtaWlfcGh5MDog
ZXRoZXJuZXQtcGh5QDAgeworCXJnbWlpX3BoeTA6IGV0aGVybmV0LXBoeUAzIHsKKwkJLyogTW90
b3Jjb21tIFlUODUyMSBwaHkgKi8KIAkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgw
Mi4zLWMyMiI7Ci0JCXJlZyA9IDwweDA+OworCQlyZWcgPSA8MHgzPjsKKwkJcGluY3RybC0wID0g
PCZldGhfcGh5MF9yZXNldF9waW4+OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQly
ZXNldC1hc3NlcnQtdXMgPSA8MTAwMDA+OworCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzAgUktfUEM2
IEdQSU9fQUNUSVZFX0xPVz47CiAJfTsKIH07CiAKQEAgLTU1Niw2ICs1NjEsMTIgQEAgJnBjaWUz
eDIgewogfTsKIAogJnBpbmN0cmwgeworCWdtYWMwIHsKKwkJZXRoX3BoeTBfcmVzZXRfcGluOiBl
dGgtcGh5MC1yZXNldC1waW4geworCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BDNiBSS19GVU5D
X0dQSU8gJnBjZmdfcHVsbF91cD47CisJCX07CisJfTsKKwogCWtleXMgewogCQljb3B5X2J1dHRv
bl9waW46IGNvcHktYnV0dG9uLXBpbiB7CiAJCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEI2IFJL
X0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKCmJhc2UtY29tbWl0OiAyMDE0Yzk1YWZlY2VlM2U3
NmNhNGE1Njk1NmE5MzZlMjMyODNmMDViCi0tIAoyLjQ3LjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
