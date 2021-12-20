Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A1D9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 11:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ub0qGw0PqplMhINqrVtsuQSqDfkYw7mDoJvMK9+Elts=; b=rYSZPO9/WthWlN
	hr6xdzfoC6LA9cK0IMMm5l3MBYiGqoBSCwZ3KSD6oUp1vJnLmC2pDpbMRa7wgwjZJOVvH5AcxQZyx
	uotli4m1tTrYjafRBqDlSm7CePIniOqNAAjidY+C9YNqCoszxtgtBfvDWW/F9+na+37LghDC9sbsi
	A38zoUCODwU71V7Z9hf2kpouF45N4sTS5CaDbgc+Lb9PER0fh/+tguocmstpylPd9vAmbRbzRKns9
	aG5vozDyV4Xi397F70LftSdjdQ5V2+TaQ+ahvywwZkRfwsBvfO1B6s+8K1QtbO3no8d7NEFAvgIIc
	yVwXqL8i5SrxcBfMUe0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzGie-001vfp-SS; Mon, 20 Dec 2021 11:20:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzGVi-001oUP-80
 for linux-rockchip@bombadil.infradead.org; Mon, 20 Dec 2021 11:07:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=0qQl+IWgo1flydZn8pAekyNQAKvvkf3MEkBg3RCDFo8=; b=Vgwbcf2E5gH45epObbX8cWWwKJ
 ym22rXUzOkeMFDoIXn2a24dtm3LC3pVefbTY7fD5oZLkqjZX29qTH1SVvfd2b42IzICEPdLn76kbU
 SOgRpAer7ZND4YegupZBJznyLwxgkp8D8LNUsddU44ok0zixHGzQhEXcjDU9Sj/HJs+1euF6KpHWq
 7qNqA6WikzEJR+NHGOpMIO7BzWuPsNyJGLoCwxAclvCFnuQMacGCqrAzBsyF3m0vkpVU5qK2BTBzt
 gxw1mTcRb9P4FkxOZKnpsMqOWe9fl5u17m0z1ajYyiCP47uBeFRt6qRNyHgyVUSP17tiCdniQIM58
 mPsYs+1w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzGVX-002UEN-FA
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 11:07:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mzGVE-0004xI-DS; Mon, 20 Dec 2021 12:06:48 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mzGVA-00EmEq-Rw; Mon, 20 Dec 2021 12:06:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 19/22] clk: rk3568: Add CLK_SET_RATE_PARENT to the HDMI
 reference clock
Date: Mon, 20 Dec 2021 12:06:27 +0100
Message-Id: <20211220110630.3521121-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_110713_894163_3C0C0EB3 
X-CRM114-Status: GOOD (  15.63  )
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

T24gdGhlIHJrMzU2OCB3ZSBoYXZlIHRoaXMgKHNpbXBsaWZpZWQpIHNpdHVhdGlvbjoKCiAuLS0t
LS0tLS0uICAgICAuLS0tLS0uICAgIC4tLS0tLS0tLS0uCi18IGhwbGwgICB8LS0uLS18IC9uICB8
LS0tLXxkY2xrX3ZvcDB8LQogYC0tLS0tLS0twrQgIHwgIGAtLS0tLcK0ICAgIGAtLS0tLS0tLS3C
tAogICAgICAgICAgICAgfCAgLi0tLS0tLiAgICAuLS0tLS0tLS0tLgogICAgICAgICAgICAgYC0t
fCAvbSAgfC0tLS18ZGNsa192b3AxfC0KICAgICAgICAgICAgIHwgIGAtLS0tLcK0ICAgIGAtLS0t
LS0tLS3CtAogICAgICAgICAgICAgfCAgICAgICAgICAgICAuLS0tLS0tLS0tLgogICAgICAgICAg
ICAgYC0tLS0tLS0tLS0tLS18aGRtaV9yZWYgfC0KICAgICAgICAgICAgICAgICAgICAgICAgICAg
YC0tLS0tLS0tLcK0CgpGb3IgdGhlIEhETUkgdG8gd29yayB0aGUgSERNSSByZWZlcmVuY2UgY2xv
Y2sgbmVlZHMgdG8gYmUgdGhlIHNhbWUgYXMgdGhlCnBpeGVsIGNsb2NrIHdoaWNoIG1lYW5zIHRo
ZSBkaXZpZGVycyBoYXZlIGJlIHNldCB0byBvbmUuIFRoZSBsYXN0IHBhdGNoIHJlbW92ZWQKdGhl
IENMS19TRVRfUkFURV9QQVJFTlQgZmxhZyBmcm9tIHRoZSBwaXhlbCBjbG9ja3Mgd2hpY2ggbWVh
bnMgdGhlIGhwbGwgaXMgbm90CmNoYW5nZWQgb24gcGl4ZWwgY2xvY2sgY2hhbmdlcy4gSW4gb3Jk
ZXIgdG8gYWxsb3cgdGhlIEhETUkgY29udHJvbGxlciB0bwpzZXQgYSBzdWl0YWJsZSBQTEwgcmF0
ZSB3ZSBub3cgYWRkIHRoZSBDTEtfU0VUX1JBVEVfUEFSRU5UIGZsYWcgdG8gdGhlCkhETUkgcmVm
ZXJlbmNlIGNsb2NrLiBXaXRoIHRoaXMgdGhlIGZsb3cgYmVjb21lczoKCjEpIEhETUkgY29udHJv
bGxlciBkcml2ZXIgc2V0cyB0aGUgcmF0ZSB0byBpdHMgcGl4ZWwgY2xvY2sgd2hpY2ggbWVhbnMK
ICAgaHBsbCBpcyBzZXQgdG8gdGhlIHBpeGVsIGNsb2NrCjIpIFZPUDIgZHJpdmVyIHNldHMgZGNs
a192b3BbMDEyXSB0byB0aGUgcGl4ZWwgY2xvY2suIEFzIHRoaXMgY2FuJ3QgY2hhbmdlCiAgIHRo
ZSBocGxsIGNsb2NrIGFueW1vcmUgdGhpcyBtZWFucyBvbmx5IHRoZSBkaXZpZGVyIGlzIGFkanVz
dGVkIHRvIHRoZQogICBkZXNpcmVkIHZhbHVlIG9mIGRpdmlkaW5nIGJ5IG9uZS4KClNpZ25lZC1v
ZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGstcmszNTY4LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGstcmszNTY4LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTY4LmMKaW5kZXgg
NjA0YTM2N2JjNDk4YS4uMWZlNzhhNTgwMTBlYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvcm9j
a2NoaXAvY2xrLXJrMzU2OC5jCisrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1Njgu
YwpAQCAtMTU2Miw3ICsxNTYyLDcgQEAgc3RhdGljIHN0cnVjdCByb2NrY2hpcF9jbGtfYnJhbmNo
IHJrMzU2OF9jbGtfcG11X2JyYW5jaGVzW10gX19pbml0ZGF0YSA9IHsKIAkJCVJLMzU2OF9QTVVf
Q0xLR0FURV9DT04oMiksIDE0LCBHRkxBR1MpLAogCUdBVEUoWElOX09TQzBfRURQUEhZX0csICJ4
aW5fb3NjMF9lZHBwaHlfZyIsICJ4aW4yNG0iLCAwLAogCQkJUkszNTY4X1BNVV9DTEtHQVRFX0NP
TigyKSwgMTUsIEdGTEFHUyksCi0JTVVYKENMS19IRE1JX1JFRiwgImNsa19oZG1pX3JlZiIsIGNs
a19oZG1pX3JlZl9wLCAwLAorCU1VWChDTEtfSERNSV9SRUYsICJjbGtfaGRtaV9yZWYiLCBjbGtf
aGRtaV9yZWZfcCwgQ0xLX1NFVF9SQVRFX1BBUkVOVCwKIAkJCVJLMzU2OF9QTVVfQ0xLU0VMX0NP
Tig4KSwgNywgMSwgTUZMQUdTKSwKIH07CiAKLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
