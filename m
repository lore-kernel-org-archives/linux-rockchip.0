Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BCFACD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 22:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XnftKQD+FGMH/dxeMa/q8s0xrHs+ZlzK9DQS9ZM/4wQ=; b=DjXB12Jn6WLxzn
	GdRFGoT5/QIRNJYeSekLU67XB+NFAmTADxxvO+zCQgZk5Q1XU29zKS4TeyrltIKseDekLMBWzYXxp
	oHcrzv8+eqkGOZDD3xZEXdCsv9KiM4oTLyDsnlwm+P/dH75al5f3Hlr+LkaFdbe0JcdJl69Zm7hQZ
	rwh64Fcn1UxgKhlppEpjkkRUUj10yIxTf0pAiQMszfdizAYY0OPEQVAple3v7XzP7Lvq38OUJ18Og
	xTrV1beKuRZAoocFz232UAcoUg4lbflxcIKwQtlmySEs2bniVj06KOi5oxEFJdyYAbv2HXMXDlRNe
	J/c+YvR4H59ntFUjtRFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKOIz-000000003ja-4AK6;
	Tue, 05 May 2026 22:31:53 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKOIw-000000003ig-2dQt;
	Tue, 05 May 2026 22:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778020305;
	bh=fg/sLnYHOzh6YaK+QYdUXNpKykuvb8anEC85IqiYw/w=;
	h=From:Date:Subject:To:Cc:From;
	b=Oc82tQ0jzjYAu2BqxNb0BtpXBfkTYm5BGAVvYBd/ZiQUg3HIlLK+DahwZv7GnVeOt
	 4Fh2fRNxnjmb3Wl9T76EljYhjnI8ovTk7JPNoGLrnvyvDfDvEO7MD+Z7kQLOihwOJY
	 nmquX5+ioRwzUJnPbfgRrEKAsBZNyBaAo/7FDmikMcS8Nr2XZ3CvHJZHKVBVktjL3F
	 urBe4J2q84hDCugb/LvHtoCV2q15lY+1BtiJfUZUM3b+oCE88lAlXl8mM+102aVzyO
	 wZwdNFaPODgPKF+K4XjI+2PRv0Ptmd3Kwjz73H75oMJwKwqAD0DxZMmS9Jf+q/S5Fa
	 KFT65EQoPXo9w==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2727B17E05B5;
	Wed,  6 May 2026 00:31:45 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 06 May 2026 01:31:15 +0300
Subject: [PATCH RFC] MAINTAINERS: Track dw-hdmi-qp under Rockchip DRM
 drivers
MIME-Version: 1.0
Message-Id: <20260506-maintainers-rk-drm-upd-v1-1-f67537b4bb29@collabora.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDUwMz3dzEzLwSIE4tKtYtytZNKcrVLS1I0U02MTNOM0syMDE3s1QCai4
 oSk3LrAAbHK0U5OasFAsRLC5NykpNLgEZqVRbCwBVT4a0fwAAAA==
X-Change-ID: 20260506-maintainers-rk-drm-upd-c463f6b04769
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
 Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_153150_840852_8A9A8F3C 
X-CRM114-Status: UNSURE (   8.75  )
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

VGhlIERXIEhETUkgUVAgVFggbGlicmFyeSB3YXMgZGV2ZWxvcGVkIGZvciBhbmQgaXMgY3VycmVu
dGx5IG9ubHkgdXNlZApieSBSb2NrY2hpcCBwbGF0Zm9ybXMuICBBZGQgaXQgdG8gdGhlIFJvY2tj
aGlwIERSTSBkcml2ZXJzIHNlY3Rpb24gdG8KZW5zdXJlIGFsbCByZWxldmFudCBwYXJ0aWVzIGFy
ZSBrZXB0IGluIHRoZSBsb29wIG9uIGFueSBjaGFuZ2VzLgoKQXMgaXRzIGZpbGUgcGF0aHMgZmFs
bCBvdXRzaWRlIHRoZSBnZW5lcmljIHdpbGRjYXJkIHBhdHRlcm5zIGRlZmluZWQgaW4KdGhlIEFS
TS9Sb2NrY2hpcCBTb0Mgc3VwcG9ydCBzZWN0aW9uLCBhbHNvIGFkZCB0aGUKbGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZyBtYWlsaW5nIGxpc3QgdG8gYXZvaWQgYW55Cm5vdGlmaWNh
dGlvbiBnYXBzLgoKU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5j
aW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KLS0tCiBNQUlOVEFJTkVSUyB8IDMgKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlO
VEFJTkVSUwppbmRleCAwZGZhZDY3ZjY2YzAuLmNiM2M4ZTVmY2IyMSAxMDA2NDQKLS0tIGEvTUFJ
TlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTg3NTQsMTEgKzg3NTQsMTQgQEAgTToJU2Fu
ZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KIE06CUhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+CiBNOglBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+CiBMOglkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCitMOglsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCiBTOglNYWludGFpbmVkCiBUOglnaXQgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9taXNjL2tlcm5lbC5naXQKIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwLworRjoJZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1oZG1pLXFwLioKIEY6CWRyaXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMvcm9ja2NoaXAq
CiBGOglkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvCitGOglpbmNsdWRlL2RybS9icmlkZ2UvZHdf
aGRtaV9xcC5oCiAKIERSTSBEUklWRVJTIEZPUiBTVEkKIE06CUFsYWluIFZvbG1hdCA8YWxhaW4u
dm9sbWF0QGZvc3Muc3QuY29tPgoKLS0tCmJhc2UtY29tbWl0OiA0Y2QwNzRhZTIwYmJjYzI5M2Ji
YmNlOTE2M2FiZTk5ZDY4YWU2YWUwCmNoYW5nZS1pZDogMjAyNjA1MDYtbWFpbnRhaW5lcnMtcmst
ZHJtLXVwZC1jNDYzZjZiMDQ3NjkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
