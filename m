Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D0BC44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 19:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgGZADXTDSv/2pR87x4CYHtocRnizS9hMpf4J60IpO4=; b=uInus8ZyP3CvAi
	3u8t99pfhBpkk/Q7cF3XpjEMBianj5+K4eAxW0bbceVgdgLNdPNBmZRcRWB2ghCS75l+ha60ge9Xv
	VxjKMIrEIFgs87aR04755h+Lepl9/Gs4mzcn3/atEmL/2822al96qqTPxPFhRh+GhGTy9FwXfI6LE
	VFjiWeoQtCHFX7TyO/aX/3OYDNnRD4FDCRNoOt9D7GtyLOURP+//j298rHtXPd1pcUJN6dzsAgBsA
	2hk/vYD1JKXOEZZvlXuAI0n1P3seIl8T9V/UceWjxt9nnVDFBXTIL8Z4+S6fEzrqxQY9KJo4CJwOs
	169yRLJcVrAdjbXfByYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Jp-0000000FmxO-2n5O;
	Wed, 15 Jul 2026 19:30:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Jn-0000000Fmwp-0rSp;
	Wed, 15 Jul 2026 19:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=hL1GS79qzyM0ipi8jemKvD9nfesfcOl399h19NOhaM8=; b=zb9QXW1XMG4YfPtNV3RG+62Zmd
	v8UvwL/ktHs4FtJ/TP0zlhZleTu7M3ckwlhFjD4fw+uytYiKG7LFVdi6L8rfGJpoUn9NXkCz66pN8
	/qJeCo+4hjVSn+09UJwGZkBRxCikUAhVFdv/Y9jHZhsRA7jr9+/oTwWrn4fM7+AzWXr5cTmo4EQlr
	fPpdq9Hyo1NSmaiNWEznadQPhH77OjmmymXNzamcUS3zD+zTNqb3owWxhn+mkg5Tv/Pndg4MN0jc+
	XA/8uJNplYQGHCcxu061mq29I4T0soEHVGDgIqoMeWlNxc6tMpWJkAUf+VeOvTW/IHgHRScOlzpOk
	uLO0XDIg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v3 08/10] drm/rockchip: dw_dp: Add runtime PM support
Date: Wed, 15 Jul 2026 21:30:27 +0200
Message-ID: <2301403.NgBsaNRSFp@phil>
In-Reply-To: <alfV1691ZgZ6KylX@venus>
References: <20260612-synopsys-dw-dp-improvements-v3-0-dc61e6352508@collabora.com>
 <CANbgqATR-V0rRGfzj0hdJ2hsJex-iWzHMwD1L4vavTi2Jd79Kw@mail.gmail.com>
 <alfV1691ZgZ6KylX@venus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_123055_248588_702D9D37 
X-CRM114-Status: GOOD (  21.05  )
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
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, yubing.zhang@rock-chips.com, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTWl0dHdvY2gsIDE1LiBKdWxpIDIwMjYsIDIxOjAwOjEyIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4gSGVsbG8gQW5keSwKPiAKPiBP
biBUdWUsIEp1bCAxNCwgMjAyNiBhdCAwNjowODowNlBNICswODAwLCBBbmR5IFlhbiB3cm90ZToK
PiA+ID4gQEAgLTU4LDYgKzU5LDggQEAgc3RhdGljIHZvaWQgZHdfZHBfcm9ja2NoaXBfaHBkX3N3
X3NlbCh2b2lkICpkYXRhLCBib29sCj4gPiA+IGZvcmNlX2hwZF9mcm9tX3N3KQo+ID4gPgo+ID4g
PiAgICAgICAgIGRwLT5ocGRfc2VsID0gZm9yY2VfaHBkX2Zyb21fc3c7Cj4gPiA+Cj4gPiA+ICsg
ICAgICAgQUNRVUlSRShwbV9ydW50aW1lX2FjdGl2ZV9hdXRvLCBwbSkoZHAtPmRldik7Cj4gPiAK
PiA+IFRoaXMgY2FuIHRyaWdlciAgSFBEIGlycSBmb3IgVVNCLUMgRFAgQWx0TW9kZSwgYnV0IGZv
ciBhIHN0YW5kYXJkCj4gPiBEUCBwb3J0LCB0aGlzIGlzIG5vIHdheSB0byBhY3F1aXJlIHJ1bnRp
bWUsIHNvIHRoZXJlIHdpbGwgbm8gaXJxCj4gPiB3aGVuIHBsdWcgaW4uCj4gCj4gUmlnaHQuIEkg
ZG9uJ3QgaGF2ZSBhbnkgUkszNTg4IG9yIFJLMzU3NiBzeXN0ZW0gZXhwb3NpbmcgYSBEUAo+IGNv
bm5lY3RvciBkaXJlY3RseS4gVGhpcyB0aGlzIGlzIG5vbi10cml2aWFsIHRvIHRlc3QgZm9yIG1l
IDovCj4gCj4gSSBzZWUgdGhlIGZvbGxvd2luZyBvcHRpb25zOgo+IAo+IDEuIE9ubHkgZW5hYmxl
IHJ1bnRpbWUgUE0gd2hlbiBydW5uaW5nIGluIFVTQi1DIG1vZGUKPiAyLiBNdXggdGhlIEhQRCBw
aW4gYXMgR1BJTyB0byBzdXBwb3J0IHdha2luZyB1cCB3aXRoIHRoZSBjb250cm9sbGVyCj4gICAg
YmVpbmcgc3VzcGVuZGVkOyBlaXRoZXIgcmVtdXggd2hlbiB0aGUgY29udHJvbGxlciBpcyBhd2Fr
ZSBvciB1c2UKPiAgICB0aGUgc2FtZSBtZWNoYW5pc20gYXMgVVNCLUMgdG8gZG8gc29mdHdhcmUg
YmFzZWQgSFBEIG9uIHRvcCBvZiB0aGUKPiAgICBHUElPICh3aGljaCB3b3VsZCBhbGxvdyB1c2lu
ZyBhbnkgR1BJTyBhcyBIUEQpLgo+IDMuIEhhdmUgYSBwb2xsIGZ1bmN0aW9uLCB3aGljaCB3YWtl
cyB1cCB0aGUgY29udHJvbGxlciByZWd1bGFybHkgdG8KPiAgICBjaGVjayB0aGUgc3RhdHVzCj4g
Cj4gSSBjb25zaWRlciBnb2luZyBmb3Igb3B0aW9uIDEgZm9yIG5vdywgd2hpY2ggYWxsb3dzIG9w
dGlvbiAyIHRvIGJlCj4gaW1wbGVtZW50ZWQgYXMgYSBmb2xsb3cgdXAuIE1vc3RseSB0byBhdm9p
ZCB0aGF0IHRoZSBzZXJpZXMgYmVjb21lcwo+IGFzIGJpZyBhbmQgbWVzc3kgYXMgdGhlIFVTQkRQ
IFBIWSBzZXJpZXMgYmVjYW1lLgoKSSdkIGFncmVlIHdpdGggdGhhdCBzb2x1dGlvbi4KSSB0aGlu
ayB3ZSBjYW4gYWxsIGFncmVlIHRoYXQgb3B0aW9uIDMgaXMgYmFhYWFkIDotKSAuCgpTbyB3aXRo
IDEsIGZ1bmN0aW9uYWxpdHkga2VlcHMgd29ya2luZywgYW5kIHRoZW4gc29tZW9uZSBjYW4gcHV0
IHRoZQpzcGVjaWFsIEhQRCBoYW5kbGluZyBvbiB0b3AgbGF0ZXIgLSB0aGUgUm9jay01LUlUWCBk
b2VzIGV4cG9zZSB0aGUgRFAxCihvbiBhIGhkbWkgcG9ydCkKCgpIZWlrbwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
