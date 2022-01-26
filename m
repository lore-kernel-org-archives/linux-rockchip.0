Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B71BCC2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9i5GcL4VRFwsRLb2fPHIiS0lS4y317axhsUfysIc988=; b=5FiFBDnn9ROGPh
	+ciMuDDqwEePzrs0xkFrEsKDTWKq8nA4dmW3y815rXR44kCFXppEi8U/OKcCTrw7dWcDQN3m0qPOH
	nD1MrdLK0twT2d05wml03slZl8oohMll1P9FpWsLxSpjhnpyo2QaeT3L8ZIlQ+O1B/aN8SMPlz+G7
	WjedawojDk5+T1y7YGX7WWkybaYNLkICwE9LnZYidI4lH9t6T7SyFjQE5EvqPlEsO0SLHMQLIVs7C
	sWTWCEEdMM5Fz5jO3A9DlEpogjtJ5Te0wbzqn57AXlZuWULBoos42mDXJfONEGoA4fM+nOfJiROBa
	v0+nm0A4o+4E5MZYb7wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCjwu-00CA3M-OU; Wed, 26 Jan 2022 15:11:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjku-00C4PS-Bi
 for linux-rockchip@bombadil.infradead.org; Wed, 26 Jan 2022 14:58:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=lGItTcetu29OtcNtfOgrlryiBkhrObz8X7RQ+AwZTpM=; b=Hde3EvKbuEFd7cE+Gsl4jWXcpw
 eZ65IFfa2wIHCLlm7vOtr3Y5p/ZMJkj299NqKhkS6UMIBWTf6kY8RUrb6pNIUtzUV0cmudCF8OTkz
 pgqAcuSN53P7mmMs86PB7N4esyw6jemzR8UVs5Zm/U7uVYdrpbn/77lbX16ZJk1QrfvOObfXOVdyA
 ipLQ4Ywr5DqNLFaSMNNX0LTdvYlhvVeMiMr5jWTF03l5rTZPcSVA6pgYnqgsNDdwGlTFpYsIe3Phf
 lmUuHUj0uOAuHquDni2WEAyGw1Pm0CnhS7QE1Xvkl1DIhFRxKHlghHFS9ERtA4Yj5Bzm12zwys0nV
 IxNMNGMQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkj-003pia-PU
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:58:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjkc-0005fZ-An; Wed, 26 Jan 2022 15:58:22 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjka-002l7I-SX; Wed, 26 Jan 2022 15:58:20 +0100
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
Subject: [PATCH 25/27] clk: rk3568: Add CLK_SET_RATE_PARENT to the HDMI
 reference clock
Date: Wed, 26 Jan 2022 15:55:47 +0100
Message-Id: <20220126145549.617165-26-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_145830_061314_79D1C3C8 
X-CRM114-Status: GOOD (  16.41  )
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
NzY4N2M2MmQxZmE4Li42M2RmYmVlZWIwNmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1yazM1NjguYworKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTY4LmMK
QEAgLTE1NjgsNyArMTU2OCw3IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCBy
azM1NjhfY2xrX3BtdV9icmFuY2hlc1tdIF9faW5pdGRhdGEgPSB7CiAJCQlSSzM1NjhfUE1VX0NM
S0dBVEVfQ09OKDIpLCAxNCwgR0ZMQUdTKSwKIAlHQVRFKFhJTl9PU0MwX0VEUFBIWV9HLCAieGlu
X29zYzBfZWRwcGh5X2ciLCAieGluMjRtIiwgMCwKIAkJCVJLMzU2OF9QTVVfQ0xLR0FURV9DT04o
MiksIDE1LCBHRkxBR1MpLAotCU1VWChDTEtfSERNSV9SRUYsICJjbGtfaGRtaV9yZWYiLCBjbGtf
aGRtaV9yZWZfcCwgMCwKKwlNVVgoQ0xLX0hETUlfUkVGLCAiY2xrX2hkbWlfcmVmIiwgY2xrX2hk
bWlfcmVmX3AsIENMS19TRVRfUkFURV9QQVJFTlQsCiAJCQlSSzM1NjhfUE1VX0NMS1NFTF9DT04o
OCksIDcsIDEsIE1GTEFHUyksCiB9OwogCi0tIAoyLjMwLjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
