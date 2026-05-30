Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 174AECD6E52
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 14:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pPOgEP18iNEXiEuiYqvPxYSPz3OaPihCrsqPBZFo38=; b=Q5H/+ARQxptyHe
	aeRrmqE69xdL/BRgWHEgMLA/rxz/e3bPOwcot0c3B9Ct+DQucBrJujCFPJi1PhyMBaZmVltjbAXvV
	a4W9dEDAnHTiXkorohIoCYbkYpEHDWb79ncix9mWWUaBk5ZJhtGaj9U2zT29hG2P4bhQoIiYLyZNM
	OsQJ0T0D1MpbkqEfZVmTuVwWld7C1IkjpWmQUEJ2Vqt56N4SvGHno4hmtDWioSXiBxkwckhCGOtyT
	5ZJ6KwilxE9JO1CZSs+MaQYDeBUsmhVce/1oAq6vtZpQC+EaeyGG1ffbqCK8NrbxIIpg9XV1S89QT
	XA1jCFxXBCSFaj4gFoKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTKHA-00000008nsb-2VmA;
	Sat, 30 May 2026 14:02:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTKGw-00000008nk3-24i1;
	Sat, 30 May 2026 14:02:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EACD2600BB;
	Sat, 30 May 2026 14:02:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BE231F00893;
	Sat, 30 May 2026 14:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780149761;
	bh=jzYdoEGmr65bjxJWetD/EjVXn4e5Tnw21bJieLO8qC8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=n7MTmz+3z9CZmukZBdNfen+ZOVhcFHEfUVwO+bk/BWTpbyrX2OepmzocsqEfh5qYY
	 Z0QturNb+3xF6R4b+Z1woGXB6HPg8Ex4f4na3vMzMo0MmFWVncxEaGKTEScexrpHzt
	 coEjOi1FsJYIDC2oqhJ+a7NckwHNnFBVQIADzBdw1wXylK9RzhejS5Jc11lbdx7ox/
	 ekkXuelvf7uQJJaVhlpN88HfWBH+WuX9TtBD/3NrDd6ta12ec2kAEIvUj9eoL6rY24
	 q28AyyjSolNlmuN1VpSMa1bfBx+53fdxnwHQFBAVQZhLZoUH+tOCW28V4pMyRN2fIM
	 7OlO1cfbXdbxQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Sat, 30 May 2026 16:00:07 +0200
Subject: [PATCH 62/76] drm/rockchip: cdn-dp: Switch to atomic_create_state
MIME-Version: 1.0
Message-Id: <20260530-drm-no-more-bridge-reset-v1-62-875d828d31bc@kernel.org>
References: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
In-Reply-To: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org, 
 Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1488; i=mripard@kernel.org;
 h=from:subject:message-id; bh=U4WwqBHB0mVgkbUd2c7ZiSu3xx3F36y2Ertg0bKK/mQ=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFlSbwMiZ+0rbux8sSx/3iLnD2JWap+/LHWd35nI3Jhgv
 Fr854KkjqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjCRmwcZ6/QmRQrGb9qWfVnQ
 LPl8hdOL4DO25wJP6N9pP+CfILzBJPPc5rZdImYKmlnMG1MPCT1VZqwV28HdX/lK/uukXwUSyc2
 sO3oVzY/LLulgWn02adJnl+WXnp2dVV0qUNSZ1/TI92yTbxsA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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

VGhlIGRybV9icmlkZ2VfZnVuY3MuYXRvbWljX3Jlc2V0IGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0
b21pY19oZWxwZXJfYnJpZGdlX3Jlc2V0KCkgaGVscGVyIGFyZSBkZXByZWNhdGVkLgoKU3dpdGNo
IHRvIHRoZSBhdG9taWNfY3JlYXRlX3N0YXRlIGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0b21pY19o
ZWxwZXJfYnJpZGdlX2NyZWF0ZV9zdGF0ZSgpIGNvdW50ZXJwYXJ0LgoKU2lnbmVkLW9mZi1ieTog
TWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKLS0tClRvOiBTYW5keSBIdWFuZyA8
aGpjQHJvY2stY2hpcHMuY29tPgpUbzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRl
PgpUbzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgpDYzogZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jCmluZGV4IDE5MGNjZTk1MzBjOC4uZTE1OWUxNjI3ZjNjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwpAQCAtODIzLDExICs4MjMsMTEgQEAgc3RhdGljIGludCBj
ZG5fZHBfYXVkaW9fbXV0ZV9zdHJlYW0oc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKIH0KIAog
c3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fYnJpZGdlX2Z1bmNzIGNkbl9kcF9icmlkZ2VfZnVuY3Mg
PSB7CiAJLmF0b21pY19kdXBsaWNhdGVfc3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2Vf
ZHVwbGljYXRlX3N0YXRlLAogCS5hdG9taWNfZGVzdHJveV9zdGF0ZSA9IGRybV9hdG9taWNfaGVs
cGVyX2JyaWRnZV9kZXN0cm95X3N0YXRlLAotCS5hdG9taWNfcmVzZXQgPSBkcm1fYXRvbWljX2hl
bHBlcl9icmlkZ2VfcmVzZXQsCisJLmF0b21pY19jcmVhdGVfc3RhdGUgPSBkcm1fYXRvbWljX2hl
bHBlcl9icmlkZ2VfY3JlYXRlX3N0YXRlLAogCS5kZXRlY3QgPSBjZG5fZHBfYnJpZGdlX2RldGVj
dCwKIAkuZWRpZF9yZWFkID0gY2RuX2RwX2JyaWRnZV9lZGlkX3JlYWQsCiAJLmF0b21pY19lbmFi
bGUgPSBjZG5fZHBfYnJpZGdlX2F0b21pY19lbmFibGUsCiAJLmF0b21pY19kaXNhYmxlID0gY2Ru
X2RwX2JyaWRnZV9hdG9taWNfZGlzYWJsZSwKIAkubW9kZV92YWxpZCA9IGNkbl9kcF9icmlkZ2Vf
bW9kZV92YWxpZCwKCi0tIAoyLjU0LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
