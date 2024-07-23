Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAB8FC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JerLsYbpJhR5m/gDHJUCcn8TzUaRP21iAXWnuYbZtto=; b=nBFjuj1elQvy33
	8GviEY0H4mDiLfNAy3IfiNMADD8RfqhJhA9gKgIpC2qUL/ngx936ipoobs7Bey/1WSvHcXhERt2Zh
	tnHPnLJoRR/qS16WeE5kDE46VRmSQJuOJEqw13uUBuuXPTlpSrJG0POHVwIKoKZpqbYSh+30rw5kB
	J5KxCsHexjX6oi2aPhUCEjCWwOFI+HeAjDhTXZOUyvAZxpcxhR1b5ej0/BCYNHYC/kbMjzjUZowkg
	btVCvhc1z2vxwP6oUyaPLY673SOhD36p4OxjdOD6q2CQczy337pct+rFfx6DwgkBEN0sSgE0Kpy22
	xSj8cssSuQ3R9VjiiymA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLeO-0000000DOln-3I21;
	Tue, 23 Jul 2024 19:58:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbv-0000000DNdQ-0Ycv;
	Tue, 23 Jul 2024 19:55:50 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbt-0005iD-RD; Tue, 23 Jul 2024 21:55:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 07/14] arm64: dts: rockchip: add board-aliases for Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:31 +0200
Message-Id: <20240723195538.1133436-8-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125547_189609_68E991BD 
X-CRM114-Status: GOOD (  14.05  )
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

QWRkIHRoZSBhbGlhc2VzIGZvciB0aGUgaW50ZXJuYWwgbmV0d29yayBpbnRlcmZhY2UgYXMgd2Vs
bCBhcyB0aGUgZW1tYwpvbiB0aGUgYm9hcmQgYW5kIG1ha2Ugc3VyZSB0aGUgZGVkaWNhdGVkIFJU
QyBpcyBhbHdheXMgdGhlIGZpcnN0IG9uZS4KClRoZSBUUzQzMyBhY3R1YWxseSBoYXMgdHdvIHJ0
YyBkZXZpY2VzLiBPbmUgY29taW5nIGZyb20gdGhlIHJrODA5IHBtaWMKd2l0aG91dCBhZGRlZCBm
dW5jdGlvbmFsaXR5IGFuZCBhbHNvIGEgZGVkaWNhdGVkIFJUQyBmcm9tIE15Y3JvY3J5c3RhbAp0
aGF0IGlzIGJhdHRlcnkgYmFja2VkIHRvIGtlZXAgdGhlIHRpbWUuCgpUZXN0ZWQtYnk6IFV3ZSBL
bGVpbmUtS8O2bmlnIDx1a2xlaW5la0BkZWJpYW4ub3JnPgpTaWduZWQtb2ZmLWJ5OiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIHwgOCArKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKaW5kZXggNDBhZjRkZDBlNDE1OC4uOGJl
MzYyNTBhYTEzZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjgtcW5hcC10czQzMy5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjgtcW5hcC10czQzMy5kdHMKQEAgLTEzLDYgKzEzLDEyIEBAIC8gewogCW1vZGVsID0gIlFuYXAg
VFMtNDMzLTRHIE5BUyBTeXN0ZW0gNC1CYXkiOwogCWNvbXBhdGlibGUgPSAicW5hcCx0czQzMyIs
ICJyb2NrY2hpcCxyazM1NjgiOwogCisJYWxpYXNlcyB7CisJCWV0aGVybmV0MCA9ICZnbWFjMDsK
KwkJbW1jMCA9ICZzZGhjaTsKKwkJcnRjMCA9ICZydGNfcnY4MjYzOworCX07CisKIAljaG9zZW4g
ewogCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjExNTIwMG44IjsKIAl9OwpAQCAtMTIwLDcgKzEy
Niw3IEBAIHBtaWNAMjAgewogJmkyYzEgewogCXN0YXR1cyA9ICJva2F5IjsKIAotCXJ0Y0A1MSB7
CisJcnRjX3J2ODI2MzogcnRjQDUxIHsKIAkJY29tcGF0aWJsZSA9ICJtaWNyb2NyeXN0YWwscnY4
MjYzIjsKIAkJcmVnID0gPDB4NTE+OwogCQl3YWtldXAtc291cmNlOwotLSAKMi4zOS4yCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
