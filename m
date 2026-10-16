Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFFA1CCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAD3+E3GgGdViZ9SzbXwZrLvpgfj/hnMAcg1IgjmZCI=; b=KH6e7qOuXCYIuy
	CYQro9P8Cl57FsN2KTzbtqYmP2hwxU/FQMgJM0QimWDAx0nxDspmK3c9dqqdi9nCDSuDwP9bq7lje
	TBd0miXiWWrFHxVgDmdnLzp/t/yHvVr8NCrRaUX7UjgyUsYawuI1uTgKEnSONuGAbVXcuoeAYQpz7
	diAm8RQye+qXS3YTdracYeFr5Mo3lYGMNys95IZ/6GvCa9hoHSsJxbli6tJAgQxH3GS1TEU3Mcr+7
	Y+zuJPhTBYG/3t9iO8aiUEO3zy76z2JOY99yXjJ9/YWyyMoZ0fFaAVm2YNW6LWWJ8JzphuhLLhPcW
	PjhNfwRP1Tq7SQzad9Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgNx-00000002nHt-39qG;
	Fri, 16 Oct 2026 11:46:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHgNv-00000002nHJ-2KCG;
	Fri, 16 Oct 2026 11:46:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0xf9aqDEB2ABb/PUaNcWQ+D8Pgss+XS8jNScelABQvc=; b=wwlo6iHZCJAUeOFDpzHHQ37CHT
	utNFt53Nbnz0vB2LQNSwuV/fzBTLIPmlwPr27mVmZtCgNk7RFhO0D04ecYNRAm4kzay40ZdjONpWT
	dmczjPfCoRQyFOgQOAjBKBvLS1rfmbGDeNBoCKDdXO1gpKgJi37q10cwwDM+PbdTpCUu2t0ZBc88d
	UFEVQH2YhPy6Bh5NiHTKoYk2HYdfMpLozrAewFwbOIrP1AOih195/PUXsiX/MJxkQWV06igSTa0o5
	eVkaYULwETuyawXTNcJx8nErl6dbn1xtJBjy+kmj97tO9cA+gKq7URZWaEPjtjP6UV/Z2uvowyXt/
	KtMysznQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Huseyin BIYIK <boogiepop@gmx.com>, Johan Jonker <jbx6244@yandex.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] drm: devm_drm_bridge_alloc() conversion and cleanup
Date: Fri, 16 Oct 2026 13:45:22 +0200
Message-ID: <2372538.iZASKD2KPV@diego>
In-Reply-To: <d1f0369c-ff43-4b76-9092-5c638b132f15@yandex.com>
References: <20261001-bridge-alloc-conv-v1-0-f0a1fe040a86@collabora.com>
 <179213353665.3058528.14437637653539699061.b4-ty@b4>
 <d1f0369c-ff43-4b76-9092-5c638b132f15@yandex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_044603_617762_BDA8B221 
X-CRM114-Status: GOOD (  15.25  )
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

SGkgSm9oYW4sCgpBbSBGcmVpdGFnLCAxNi4gT2t0b2JlciAyMDI2LCAxMDoxMToxOSBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEpvaGFuIEpvbmtlcjoKPiBJZiBhbnkgZGVj
ZW5jeSBvciBDb2RlIG9mIENvbmR1Y3QgbGVmdCBpbiB0aGUgRFJNIGdyb3VwIHRoZW4gYWxzbyBj
cmVkaXQgdGhlIG9yaWdpbmFsIGF1dGhvci4KPiBBbHNvIHJlbW92ZSBkcml2ZXJfcHJpdmF0ZS4K
CmFmdGVyIGxldHRpbmcgdGhhdCBzdGV3IGluIG15IG1pbmQgb3ZlciBhIGx1bmNoIGJyZWFrOgoK
LSB5ZXMsIHlvdXIgcGF0Y2ggd2FzIGVhcmxpZXIKLSB5ZXMsIEkgc2hvdWxkJ3ZlIGdvdHRlbiBh
cm91bmQgdG8gaXQgZWFybGllciAtIEkgYW0gc29ycnkgYWJvdXQgdGhhdAotIHNvIHllcywgdGhp
cyBnb3QgbWlzaGFuZGxlZAoKTmV2ZXJ0aGVsZXNzLCB0aGlzIGluIG5vIHdheSBqdXN0aWZpZXMg
YXR0YWNraW5nIHRoZSAiZHJtLWdyb3VwIiwgd2hpY2gKY29uc2lzdHMgb2YgYSBiaWcgbnVtYmVy
IG9mIGluZGl2aWR1YWxzIChtb3N0IG9mIHdoaWNoIGhhZCBubyBjb250YWN0IHdpdGgKZWl0aGVy
IHZhcmlhbnQgb2YgdGhlIHBhdGNoIGF0IGFsbCkgb24gYSBwZXJzb25hbCBsZXZlbCA6LSggLgoK
VGhlIGNoYW5nZSBpdHNlbGYgb2YgbW92aW5nIHRvIGRldm1fZHJtX2JyaWRnZV9hbGxvYywgYWxz
byBpcyBzb21ld2hhdApzdHJhaWdodC1mb3J3YXJkICB0aGF0IHR3byBkaWZmZXJlbnQgcGVvcGxl
IGNvdWxkIGVhc2lseSBqdXN0IGNyZWF0ZSB0aGUKc2FtZSBjaGFuZ2Ugc2VwYXJhdGVseSwgYXMg
d2Ugc2F3IGhlcmUuCgoKSGVpa28KCgo+ID09PQo+IAo+IFtQQVRDSCB2M10gZHJtL3JvY2tjaGlw
OiByazMwNjZfaGRtaTogY29udmVydCB0byBkZXZtX2RybV9icmlkZ2VfYWxsb2MoKSBBUEkKPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDkwNC1kcm0tdjMtMS01
YjM2NTMyYTNiNzJAZ21haWwuY29tLyAgCj4gCj4gW1BBVENIIHYyXSBkcm0vcm9ja2NoaXA6IHJr
MzA2Nl9oZG1pOiBjb252ZXJ0IHRvIGRldm1fZHJtX2JyaWRnZV9hbGxvYygpIEFQSQo+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjYwODI0LWRybS12Mi0xLTdmOTI3
M2M2MDIwYkBnbWFpbC5jb20vCj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9j
a2NoaXAvZGVhOGEwMzgtNTc3Yi00NWRhLWJmZjMtNzAzZTkwOTliN2UxQGdtYWlsLmNvbS8KPiBb
UEFUQ0ggdjFdIGRybS9yb2NrY2hpcDogcmszMDY2X2hkbWk6IGNvbnZlcnQgdG8gZGV2bV9kcm1f
YnJpZGdlX2FsbG9jKCkgQVBJCj4gCj4gT24gMTAvMTYvMjYgMDg6NTIsIEx1Y2EgQ2VyZXNvbGkg
d3JvdGU6Cj4gPiAKPiA+IE9uIFRodSwgMDEgT2N0IDIwMjYgMTE6MjU6MTAgKzAzMDAsIENyaXN0
aWFuIENpb2NhbHRlYSB3cm90ZToKPiA+PiBCcmlkZ2UgZHJpdmVycyBhcmUgZXhwZWN0ZWQgdG8g
YWxsb2NhdGUgdGhlaXIgcHJpdmF0ZSBkYXRhIHZpYQo+ID4+IGRldm1fZHJtX2JyaWRnZV9hbGxv
YygpLCB3aGljaCBhbHNvIGluaXRpYWxpemVzIHRoZSBlbWJlZGRlZCBzdHJ1Y3QKPiA+PiBkcm1f
YnJpZGdlLCBpbmNsdWRpbmcgaXRzIGZ1bmNzIHBvaW50ZXIuICBNb3N0IGRyaXZlcnMgd2VyZSBj
b252ZXJ0ZWQgYnkKPiA+PiBjb21taXQgOWMzOTk3MTljZmI5ICgiZHJtOiBjb252ZXJ0IG1hbnkg
YnJpZGdlIGRyaXZlcnMgZnJvbQo+ID4+IGRldm1fa3phbGxvYygpIHRvIGRldm1fZHJtX2JyaWRn
ZV9hbGxvYygpIEFQSSIpLCBidXQgYSBjb3VwbGUgb2YKPiA+PiBsZWZ0b3ZlcnMgcmVtYWluLgo+
ID4+Cj4gPj4gWy4uLl0KPiA+IAo+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4gCj4gPiBbMS8yXSBk
cm0vcm9ja2NoaXA6IHJrMzA2Nl9oZG1pOiBDb252ZXJ0IHRvIGRldm1fZHJtX2JyaWRnZV9hbGxv
YygpIEFQSQo+ID4gICAgICAgY29tbWl0OiA1YzBjZGJlZTRmYTRhNjIxZjg3MWQ2ZGM4MjVlNzU5
ZGIwOGExYTRhCj4gPiBbMi8yXSBkcm0vYnJpZGdlOiBsb250aXVtLWx0ODcxM3N4OiBEcm9wIHJl
ZHVuZGFudCBicmlkZ2UgZnVuY3MgYXNzaWdubWVudAo+ID4gICAgICAgY29tbWl0OiAzODJjMWU4
YmE0MDlkMTYxMWNkMjU2ZGNjZWJkZmE4MjhjODMyYmIxCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywK
PiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
