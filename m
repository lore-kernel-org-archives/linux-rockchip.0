Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0336C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 21:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUD5Xcl747+d/iMk/R8+1ynbdEYa7CLjpAf3PR+9MVM=; b=GE9hmc26puC/Rn
	f4iF2sh8PjERrldqt3CXG8EkJypD3/kWNP3Ji6C8KwPO61pVyqshPThw3K6dlUIhpSOJEx3Xv9Cvh
	QA2gtbBx6H/zN33odnVrBXoavtBpQukEoPy0jqde8IvcDCbf2I8oMd6RprblkB8T8ozpRpilt0c23
	dGUsi9pDa61rimnAIzKA1a5ZokpgW/RjIBn40jhQwDgzrlRcnp/7oLgUY3sJEgHI3JnS9dg3QeFbb
	98PgVMo8m2Uxn+ZrP78DzZoDEgX9J5wVGToZq7N0zs365BgY6g5XpDNmNeuco0Pj7LvEwmBDxZMY7
	LoknjqUL9FnjQt12ZlNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tueD2-0000000761M-1R2Q;
	Tue, 18 Mar 2025 21:10:48 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tueBK-000000075sf-2tJf;
	Tue, 18 Mar 2025 21:09:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742332141;
	bh=F4648vkOLnU4pJA2jQ7juGAADHW7vjTnKVeqoZ+opAU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UQ44t6LT6NqErEzEJGn7sag8JnW83bV9MayxheM5NZxgkGLATxhP6m/MR/2vp+XMT
	 WufQGYCH8ob9CuqH7CViiMbkj5ILhq/ZPt8PR6kJS4713a0/ZO9Fq5LpTC7K7bJA4/
	 raxeRIxDwSXDV1zAUsezZ6JkKM7yl+U97G2liLpkm9v9pkBzld9gG8BSDDWQrzHsjB
	 BSBRnQucLStGo7xdRdh3IwXJ157BO4BB0TNqlV4pC3n1Mrg1yEoIumrHwRD5KVvJpr
	 aVkTyt44PJiWujDb24xT7UhqaCzd11nNke0KZir5M6isZWwMqgM94lmYc7c6QLuRmL
	 cea2mh8x21eFw==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 4FF1FFC59B5; Tue, 18 Mar 2025 22:09:01 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Add gmac phy reset GPIO
Date: Tue, 18 Mar 2025 22:08:46 +0100
Message-ID: <49f66206fccc714a8745b9ac35247615ad5cc369.1742331667.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1742331667.git.ukleinek@kernel.org>
References: <cover.1742331667.git.ukleinek@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1275; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=F4648vkOLnU4pJA2jQ7juGAADHW7vjTnKVeqoZ+opAU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2eDjzSXuxpZ3lfvuA3S8ps3JGWjzXDDllYuJm J5M21at3BuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9ng4wAKCRCPgPtYfRL+ TswmB/4hiprY5BOxwZ0bWC6FZz7ZhAyy7ZHjQxXFdJ/yOTGiEZXG89731nSmlImqO3Axd+dy+tt ZFFRPBVnkt+YSoIsSgkfEIUQBLgioj8kby/jTG1x6E53Cheqd/sc2VR98m0M/oo5Ri2fGHC2Gnp 5yuAQiRs8pFSRS6hPhEYOTnpYp54oeFNECIGGeqDvGyCcJwquuYSMpdXHDDmmbQYTwm98EGFUgY +QwgkmQ3g24109qwJlUWXwS7oq4fy2YTV4D4sk5MiWm+OsuceZXxY9NUXQwTMubA4EcQzEX6hA9 UehLBs8bukPyT651UURA+AbSYocLZ3HZQsE7j6pPrTBTpY5R
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_140902_867088_A61408B6 
X-CRM114-Status: UNSURE (   9.92  )
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

V2hpbGUgbG9va2luZyB0aHJvdWdoIHRoZSB2ZW5kb3IgVS1Cb290IGNvZGUgSGVpa28gc3BvdHRl
ZCB0aGF0IGEgU29DCkdQSU8gaXMgY29ubmVjdGVkIHRvIHRoZSBldGhlcm5ldCBwaHkncyByZXNl
dCBwaW4uIEFkZCB0aGUgcmVzcGVjdGl2ZQpyZXNldC1ncGlvcyBwcm9wZXJ0eSB3aXRoIHBpbm11
eGluZyBmb3IgdGhlIEdQSU8gdG8gdGhlIHBoeSBub2RlLgoKU2lnbmVkLW9mZi1ieTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cyB8IDEwICsrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0cwppbmRleCA3MGU4ODc2OWUyMWMuLjQxMWY4
YWM3OTk0YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
cW5hcC10czQzMy5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
cW5hcC10czQzMy5kdHMKQEAgLTQ4NSw2ICs0ODUsMTAgQEAgcmdtaWlfcGh5MDogZXRoZXJuZXQt
cGh5QDMgewogCQkvKiBNb3RvcmNvbW0gWVQ4NTIxIHBoeSAqLwogCQljb21wYXRpYmxlID0gImV0
aGVybmV0LXBoeS1pZWVlODAyLjMtYzIyIjsKIAkJcmVnID0gPDB4Mz47CisJCXBpbmN0cmwtMCA9
IDwmZXRoX3BoeTBfcmVzZXRfcGluPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJ
cmVzZXQtYXNzZXJ0LXVzID0gPDEwMDAwPjsKKwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BD
NiBHUElPX0FDVElWRV9MT1c+OwogCX07CiB9OwogCkBAIC01NTcsNiArNTYxLDEyIEBAICZwY2ll
M3gyIHsKIH07CiAKICZwaW5jdHJsIHsKKwlnbWFjMCB7CisJCWV0aF9waHkwX3Jlc2V0X3Bpbjog
ZXRoLXBoeTAtcmVzZXQtcGluIHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQzYgUktfRlVO
Q19HUElPICZwY2ZnX3B1bGxfdXA+OworCQl9OworCX07CisKIAlrZXlzIHsKIAkJY29weV9idXR0
b25fcGluOiBjb3B5LWJ1dHRvbi1waW4gewogCQkJcm9ja2NoaXAscGlucyA9IDwwIFJLX1BCNiBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47Ci0tIAoyLjQ3LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
