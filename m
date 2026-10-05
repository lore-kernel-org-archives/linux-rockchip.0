Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEECCCA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 00:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqrFokwnIXSBMEt6GelPmfPDxArzME7LtfL/LuGszXc=; b=NsiTNmKULJJ5jR
	w/Fgm8RSu4A55pnnEKoRipiaJWSMfle1MaZU2Y2X5FzdqTCS3Z3jxUsdkX227iGultOffcjPTyhgu
	c87GLXThbw2pkSekr6tC82iE6SsUA2d3TQJUJryFYxRprQ2lWcx7T9Q+ZKIXPlVcT4LTd+5HxOmtN
	7j+SRC4bOSw6395DY3Ru5RidwVma88oXgqlLfC17bflcn9lHOG41JsW48zVwQ6j4d2Nnje0bRsbHO
	b7rPHafOHSfN9aToJTRZifnL8GcGr3XpizdtGGyp2v+ZqL97gmZWpYkx8BeboDgTQLq8LwMfRnuKg
	XoyNEiEUlyfWgBZ2bzhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjj-0000000FWnq-3I1w;
	Mon, 05 Oct 2026 00:39:23 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDWjJ-0000000FW0Y-422N;
	Mon, 05 Oct 2026 00:39:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1791160736;
	bh=5Tbl051iQw5Twim/Kfk4s89QMKZl/6G/TabrhRKEN6Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Aoky8+HZQ+dSA+I5mld+wOpuwcTh+VZBZu2jmmUPgJmGCWxv2nb+X2t99C/FUPcZ9
	 idcfKpl7fepWIMaso7XgD967wI6sez7LsyVTx+OmjjHvBOxyNzhiG35TRZWbrB1pD/
	 iyK4BDTzFgcZQ2Df+J9IpW+MO145/8QurC5zNaX1cJJBgI8MFPQTFdvSOi5m1SeveG
	 UwEauCr4mG8SVxtFRaYV6HPEKfewq/efxH9yi0tny7yH1sEz2kQ2jKDXd/9AALvLSB
	 3PJDrsEquQa4bYQVBVhZ2uckjqfThoK1hYIdyX9tB2p04++fMBTPKBEWgVPOGl/BAS
	 X8VQZvgVNlddA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EF00517E14D1;
	Mon, 05 Oct 2026 02:38:55 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 05 Oct 2026 03:38:16 +0300
Subject: [PATCH v12 15/16] drm/rockchip: dw_hdmi_qp: Use
 dw_hdmi_qp_hpd_notify() for HPD reports
MIME-Version: 1.0
Message-Id: <20261005-dw-hdmi-qp-scramb-v12-15-195157ba0b40@collabora.com>
References: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
In-Reply-To: <20261005-dw-hdmi-qp-scramb-v12-0-195157ba0b40@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Algea Cao <algea.cao@rock-chips.com>, Daniel Stone <daniels@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Maud Spierings <maud_spierings@hotmail.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 =?utf-8?q?Robin_R=C3=A4ber?= <robin.raebi@gmail.com>, 
 Igor Paunovic <royalnet026@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_173858_343429_E31309A3 
X-CRM114-Status: GOOD (  10.94  )
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

Tm90aWZ5IG9ubHkgdGhlIGFmZmVjdGVkIGNvbm5lY3RvciBpbnN0ZWFkIG9mIHBvbGxpbmcgYWxs
IG9mIHRoZW0sIGFuZAplbnN1cmUgLmRldGVjdF9jdHgoKSBydW5zIG9uIHJlY29ubmVjdCB0byBy
ZWNvdmVyIFNDREMgc3RhdGUuCgpUZXN0ZWQtYnk6IE1hdWQgU3BpZXJpbmdzIDxtYXVkX3NwaWVy
aW5nc0Bob3RtYWlsLmNvbT4KVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bj
a25vdy10ZWNoLmNvbT4gICMgTmFub1BDLVQ2IExUUywgUm9jayA1QgpUZXN0ZWQtYnk6IFJvYmlu
IFLDpGJlciA8cm9iaW4ucmFlYmlAZ21haWwuY29tPgpUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMg
PHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBSSzM1ODggT3JhbmdlIFBpIDUgUGx1cywgZHVhbCBI
RE1JClNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVh
QGNvbGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAt
cm9ja2NoaXAuYyB8IDEyICsrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19o
ZG1pX3FwLXJvY2tjaGlwLmMKaW5kZXggMWM1NDcwMTZlZTAwLi5mMmExZWE4ZGZlZmEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYwpAQCAtMjQs
NyArMjQsNiBAQAogI2luY2x1ZGUgPGRybS9kcm1fYnJpZGdlX2Nvbm5lY3Rvci5oPgogI2luY2x1
ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgogI2luY2x1ZGUgPGRybS9kcm1fb2YuaD4KLSNpbmNsdWRl
IDxkcm0vZHJtX3Byb2JlX2hlbHBlci5oPgogCiAjaW5jbHVkZSAicm9ja2NoaXBfZHJtX2Rydi5o
IgogCkBAIC0zOTgsMTQgKzM5Nyw4IEBAIHN0YXRpYyB2b2lkIGR3X2hkbWlfcXBfcmszNTg4X2hw
ZF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIAlzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9x
cCAqaGRtaSA9IGNvbnRhaW5lcl9vZih3b3JrLAogCQkJCQkJICAgICBzdHJ1Y3Qgcm9ja2NoaXBf
aGRtaV9xcCwKIAkJCQkJCSAgICAgaHBkX3dvcmsud29yayk7Ci0Jc3RydWN0IGRybV9kZXZpY2Ug
KmRybSA9IGhkbWktPmVuY29kZXIuZW5jb2Rlci5kZXY7Ci0JYm9vbCBjaGFuZ2VkOwogCi0JaWYg
KGRybSkgewotCQljaGFuZ2VkID0gZHJtX2hlbHBlcl9ocGRfaXJxX2V2ZW50KGRybSk7Ci0JCWlm
IChjaGFuZ2VkKQotCQkJZGV2X2RiZyhoZG1pLT5kZXYsICJjb25uZWN0b3Igc3RhdHVzIGNoYW5n
ZWRcbiIpOwotCX0KKwlkd19oZG1pX3FwX2hwZF9ub3RpZnkoaGRtaS0+aGRtaSk7CiB9CiAKIHN0
YXRpYyBpcnFyZXR1cm5fdCBkd19oZG1pX3FwX3JrMzU3Nl9oYXJkaXJxKGludCBpcnEsIHZvaWQg
KmRldl9pZCkKQEAgLTc5Miw4ICs3ODUsNyBAQCBzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIGR3
X2hkbWlfcXBfcm9ja2NoaXBfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKIAogCWR3X2hkbWlf
cXBfcmVzdW1lKGRldiwgaGRtaS0+aGRtaSk7CiAKLQlpZiAoaGRtaS0+ZW5jb2Rlci5lbmNvZGVy
LmRldikKLQkJZHJtX2hlbHBlcl9ocGRfaXJxX2V2ZW50KGhkbWktPmVuY29kZXIuZW5jb2Rlci5k
ZXYpOworCWR3X2hkbWlfcXBfaHBkX25vdGlmeShoZG1pLT5oZG1pKTsKIAogCXJldHVybiAwOwog
fQoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
