Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99048CD8CA8
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 10:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wqmkHUJvYNjwvagbTsE8CxQoXm0nqOKuEH6fWAjlA9I=; b=Pk1D4j2mpZ6K2d
	ieX7ZWci2zJ4dJt0PhNYNqF37t+XFqWz1uEtBLndeSyY1ctboibJu4lPT4G9fju6DxweG2wVrmPHm
	8OfMgLQXzEInelKBGVSByGoD7gQoStm2HdoFJq+2qAILtXbJ2UbRVo8WddFxJQUz6Ml6bnqLIim42
	QQTxoTgLtXc+eo5pxpnGdqf5leZr6uLFNHPUIszcKRocclNT9BUIWYMD0SZr3x5esYHGsW7JRWAdV
	+BZxBGdCcQC1JSrDkK1pI1r0PaRWgSTJQ2ZrE4O4xHDBzFA/nQOJar+5d4hHrnmxVxAEOAwDN89Gg
	7k8pBVVp8bYUFqfKfKxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXyhs-0000000AinT-3yZS;
	Fri, 12 Jun 2026 10:01:44 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXyhq-0000000Aimd-1uuM;
	Fri, 12 Jun 2026 10:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781258499;
	bh=QWz/NnIpQ/tgJMgqCseSLhJn4QG66Z8YNoUhv7tJ5QM=;
	h=From:Date:Subject:To:Cc:From;
	b=Nxo8nx+spDC7UmghhkCZl8ZY3C7oc3KJfPG4xTDCYVKEYprVsqaXiObzNC+S+m15m
	 SV8BzD3oyElpJQ6bA8p19cScZPEtlXZ/iG6j4Pi/n16IaYRrtwOoFCUE/c8/+XJDxk
	 JRI9InulItPIEj8E7Plp7mSridItdSOaEXfYpeqWqMhyGOknBifxIXHOjIvtVA6SZ9
	 38ewavdMix/Js4vQkXujL92F/dFEsYW3DQGnMWM1dnTcpKvnTb82zn4+Rr3iCDfXEM
	 XoQ2hyilabflOyiyjI7i/7e6WE1XrySNxufaik7CuN44OK8pQt8Kfulj18E5Ji6z4M
	 Thqsl4atsANxw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AD7EB17E00FE;
	Fri, 12 Jun 2026 12:01:39 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 12 Jun 2026 13:01:29 +0300
Subject: [PATCH v2] MAINTAINERS: Track dw-hdmi-qp under Rockchip DRM
 drivers
MIME-Version: 1.0
Message-Id: <20260612-maintainers-rk-drm-upd-v2-1-3ff65fc41a93@collabora.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/4WNQQ6CMBBFr0Jm7ZhSoARX3sOwaMsgVaFkCkRDu
 LsFD+DiL17y/38rBGJHAS7JCkyLC84PEeQpAdvp4U7omsgghVSiEAp77YYphjggP7HhHuexQZu
 rrFVG5KWqII5Hpta9j+Nb/eMwmwfZaX/bG50Lk+fPYV7SvfdXsqSYYqvKIitNboysrta/Xtp41
 mfre6i3bfsCbVAimNIAAAA=
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
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_030142_662292_448EEE7A 
X-CRM114-Status: UNSURE (   9.09  )
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
dGlvbiBnYXBzLgoKQWNrZWQtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4K
U2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29s
bGFib3JhLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6Ci0gQ29sbGVjdGVkIEFja2VkLWJ5IGZyb20g
QW5keQotIFJlbW92ZWQgdGhlIFJGQyBwcmVmaXgKLSBSZWJhc2VkIG9udG8gbmV4dC0yMDI2MDYx
MQotIExpbmsgdG8gdjE6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGluay8yMDI2MDUwNi1tYWludGFp
bmVycy1yay1kcm0tdXBkLXYxLTEtZjY3NTM3YjRiYjI5QGNvbGxhYm9yYS5jb20KLS0tCiBNQUlO
VEFJTkVSUyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCBmMWNhYTZlNTE5OGIuLmFjNjhm
ZGQ5ODc5ZSAxMDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTg4
NDksMTEgKzg4NDksMTQgQEAgTToJU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KIE06
CUhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+CiBNOglBbmR5IFlhbiA8YW5keS55YW5A
cm9jay1jaGlwcy5jb20+CiBMOglkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCitMOgls
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCiBTOglNYWludGFpbmVkCiBUOglnaXQg
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9taXNjL2tlcm5lbC5naXQKIEY6CURv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwLworRjoJZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLioKIEY6CWRyaXZlcnMvZ3B1
L2RybS9jaS94ZmFpbHMvcm9ja2NoaXAqCiBGOglkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvCitG
OglpbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaV9xcC5oCiAKIERSTSBEUklWRVJTIEZPUiBTVEkK
IE06CUFsYWluIFZvbG1hdCA8YWxhaW4udm9sbWF0QGZvc3Muc3QuY29tPgoKLS0tCmJhc2UtY29t
bWl0OiBlYzAzOTEyNmI3ZmFjNGUzYWYzNWViY2NhYTdjNmY5YjY4NzViYTgxCmNoYW5nZS1pZDog
MjAyNjA1MDYtbWFpbnRhaW5lcnMtcmstZHJtLXVwZC1jNDYzZjZiMDQ3NjkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
