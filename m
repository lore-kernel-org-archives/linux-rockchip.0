Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B69DC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoUXP0OGo0HOAen1P0cpbg72aLYpXEBWPhZ1kc7dak4=; b=qxqHtwz9LfqkQt
	Y+ALoWiYHtAmMdFgyVWuOC0o5Hcwm2qJ95ItfG1oBETXzxJLx84YLRBXKnN3UBY+bj7iCJ136Al/5
	HyVEhmG24y4tDaiiKP1FKvbOD+ZadPC+HQEXrkBWeZy+qaCOdHTaYvSS7sS/kihRtJYStK+ThZaJR
	E58SEjizsbONBVvIKJ8RpbWyOsUKpJstjzKE9c6tgMuHi+brqjaFm7eUFiTluDBoIK774z43uugtx
	6OjtSHS6MnGcwje5TEaIhnFk+smvKrvTxUxtfJGsXWbodIIM0BkB3h9fDnzNH0vBfQFMptqe9aX/V
	8UbalwqMev1OHYomEU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLfV-0000000DPHz-19j2;
	Tue, 23 Jul 2024 19:59:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbv-0000000DNe5-3E0L;
	Tue, 23 Jul 2024 19:55:51 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbu-0005iD-Dg; Tue, 23 Jul 2024 21:55:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 09/14] arm64: dts: rockchip: enable the tsadc on the Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:33 +0200
Message-Id: <20240723195538.1133436-10-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125547_999124_DB0E949E 
X-CRM114-Status: GOOD (  11.60  )
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

RW5hYmxlIHRoZSB0c2FkYyBub2RlIHRvIGFsbG93IGZvciB0ZW1wZXJhdHVyZSBtZWFzdXJlbWVu
dHMgb2YgdGhlIHNvYy4KClRlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVrQGRl
Ymlhbi5vcmc+ClNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+
Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMg
fCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKaW5kZXggYWJl
YjAwYWRkNDJhMC4uMzRmYzMxZWE5YTM5YSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKQEAgLTI0Niw2ICsyNDYsMTIgQEAgJnNk
aGNpIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismdHNhZGMgeworCXJvY2tjaGlwLGh3LXRz
aHV0LW1vZGUgPSA8MT47CisJcm9ja2NoaXAsaHctdHNodXQtcG9sYXJpdHkgPSA8MD47CisJc3Rh
dHVzID0gIm9rYXkiOworfTsKKwogLyoKICAqIENvbm5lY3RlZCB0byBhbiBNQ1UsIHRoYXQgcHJv
dmlkZXMgYWNjZXNzIHRvIG1vcmUgTEVEcywKICAqIGJ1enplciwgZmFuIGNvbnRyb2wgYW5kIG1v
cmUuCi0tIAoyLjM5LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
