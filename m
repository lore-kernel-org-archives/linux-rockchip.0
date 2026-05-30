Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD027CD5BD0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 14:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OJEmi6MtikvjO6dscWvVqyevn+wJz1AKg5QP3TeKSg=; b=MpCpMyyqoqegqx
	vDW1B7MRWV5ZvO3KwuzLUY7x5Llb/5gCohOkmJadpHEeo+6bnYoHcAC9aeIPg+maVJHnRXsO9Er9q
	3LlEMru407O2/pJN+tdoHZ7Hr31qZ7bD+9g33hJVcLfOHzti38JBHZGtK9zrWNl1/5dhyPihYC/2d
	OomhPm/UmTWCDtwHydMaTRjBWGztSIMO5rGb1pAVzUwlCnUt+kmohGiZey7HpTRfg8gQ+5jyA4InD
	QuQWxEun8ezTBnfQLu4SpZoDCgiOmMbEuz+PJSHHfGRGyyP4gRk2XXcx1iaiEvhGAAxhjRvYtvpyd
	YjcZZeRiphyKc8ir4b5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTKHB-00000008nto-0tbM;
	Sat, 30 May 2026 14:02:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTKH1-00000008nnz-3K2Z;
	Sat, 30 May 2026 14:02:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3DD8D600BB;
	Sat, 30 May 2026 14:02:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 783771F00893;
	Sat, 30 May 2026 14:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780149766;
	bh=VX9UkL/aUZ21uwDspjPLpzb+sZ2hhHYQ7zcsgltZ61s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=N9EEsTxpL17y8VQvr1xdQbvg43Zr7gDM5Vsrp7t6NE5eoBwLFIAvI4tBjAFhPHEek
	 r//dVTLoXNbpmd0dcB4yxSfZ49e0aMpNYPD4UOoInyb+Rdy/jpAwVykm1RPNgayZv5
	 tHtODHpxA9rboq4l9rC6UtiBtYnenyKUCrpoTY4SUALSr4xR5P80eVHfkKOiDg7Z2A
	 0gwYeeOTdhD+BcdoL04ZwT2jkNIqSLVarDwRSblAa6eDnGTBuS/iR7M3VRGfybgG5S
	 CJbbYpaDOUJYOBMGhxRaZDl89aa8DlAszT0hFD7+hXCUB7xf83SwKanxMPuydt0MKE
	 TopbRMYPxeEyw==
From: Maxime Ripard <mripard@kernel.org>
Date: Sat, 30 May 2026 16:00:09 +0200
Subject: [PATCH 64/76] drm/rockchip: lvds: Switch to atomic_create_state
MIME-Version: 1.0
Message-Id: <20260530-drm-no-more-bridge-reset-v1-64-875d828d31bc@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1437; i=mripard@kernel.org;
 h=from:subject:message-id; bh=7poMGZsc4qYOmnjjpVnsIzzY2m8NXj5hxMxHLfHyq24=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFlSbwObzy57PvXgXyPJaLsMFYd/D+ODI/vr7ab6X73wU
 D9Rwd2xYyoLgzAng6yYIssTmbDTy9sXVznYr/wBM4eVCWQIAxenAEzkxz7GOrUlc9QE54jNlnD4
 MCdEPt387z7p4Oinmv33DjBdf+T5/5Fa276PCw7Jaayy1+KJbnGayNjwh4XR4tV6x8Xvj7u3Ll2
 6o55lzxHvv3Nsv2jUJmrNc91m33tl7he35Vszp+gUZD/8d0sWAA==
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
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfbHZkcy5jCmluZGV4IDdhMGM0ZmEyOWYyZi4uMzFkYzIwNmJlZGViIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMKQEAgLTExNywxMSArMTE3LDExIEBAIHJv
Y2tjaGlwX2x2ZHNfYnJpZGdlX2dldF9tb2RlcyhzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLCBz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqCiAKIHN0YXRpYyBjb25zdAogc3RydWN0IGRybV9icmlkZ2Vf
ZnVuY3Mgcm9ja2NoaXBfbHZkc19icmlkZ2VfZnVuY3MgPSB7CiAJLmF0b21pY19kdXBsaWNhdGVf
c3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfZHVwbGljYXRlX3N0YXRlLAogCS5hdG9t
aWNfZGVzdHJveV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9kZXN0cm95X3N0YXRl
LAotCS5hdG9taWNfcmVzZXQgPSBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfcmVzZXQsCisJLmF0
b21pY19jcmVhdGVfc3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfY3JlYXRlX3N0YXRl
LAogCS5nZXRfbW9kZXMgPSByb2NrY2hpcF9sdmRzX2JyaWRnZV9nZXRfbW9kZXMsCiB9OwogCiBz
dGF0aWMgaW50CiByb2NrY2hpcF9sdmRzX2VuY29kZXJfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1f
ZW5jb2RlciAqZW5jb2RlciwKCi0tIAoyLjU0LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
