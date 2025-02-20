Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6FC2C021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 17:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hY6J6sPMAusn3z1+MCPxpfnecTk3/OstbK8Q3yN5iqE=; b=XqOWXTg5ZoRRaO
	3MN8XARPPSPqwsERulmmfUpEiABP2fyDq85ipP9ZZnuwe6pXFLxU24pw0sBJfDrOmDgIPgKWZdw/T
	2WNG4R4YljT2czV3q/FK3JKwqBJjqn+M0xTlVTvKpMdmnV0IPBHCR7tkyglXsVUu2o4WJKF0iZRz4
	v6qhJUgXPdKj/mZncJO2d6IlBHnIUnlfQiPsUroWRVk5eEQrxEC2RJI8iQCft09pGrmp6fz1RdFsZ
	FZZgvKTlBn53MejZ6/AiPja8yxUDTu/byHgqpBGub0fzlOV1h2OWDJNLr4r0MF/ikfWeZKqrXeN/l
	dYfo9GMr4HnxO/lTZq2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9y7-000000021wu-28id;
	Thu, 20 Feb 2025 17:04:11 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9y4-000000021wD-2v5f;
	Thu, 20 Feb 2025 17:04:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740070995; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=H89tZtPw7hGWA9a6QAt88m0WFcYXkG5Shk09kN07BWC4axWYt9GNDZVOo9cm8gqKdIuyxlp+eTDURTlCIanQuanEpv+yche0oDkjwz5c6eP0IQgbahG4lJxd694XY98EFGKvJchBOPyvsHbveZCZFX5JEsc7jNsldWYVrK/dYyk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740070995; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=w2pzTobpi9TjSTtQRUPn0hmQfMoOEaBAec03sFh2SIY=; 
	b=M3OpeGvfafnAuq6NV8y0Hhz6ZUI1aOEGkTngOe0sXIMQ4y7O4i5GresbkUnyO35KEt+eduI3r1HyHjKANSuBnn/8+PeY5v6fes2GuWOk7M1O59qsBIOnZdI6h7/2rssPSLwql77vZ0ao5qMazDEgfTS76c1UCIsRUbRLMiX2ty0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740070995;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=w2pzTobpi9TjSTtQRUPn0hmQfMoOEaBAec03sFh2SIY=;
	b=NELb89ZNA/vXF0KU9d+s8iAZUlWP1ItsG7o0stqFKUD5nWiCOsTLt9XovGPpdD/h
	S+UrbkLBOPJawvm7CbURNWQk5ZNHga+QTdqIjkp7h5Pju5Se+rXy9RG6I0SY7wkyWIi
	jxGaj47YWQDXlIlaxnKbaa63k5yd81xmDyncUIs4=
Received: by mx.zohomail.com with SMTPS id 1740070993591486.8817863804003;
	Thu, 20 Feb 2025 09:03:13 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-kernel@vger.kernel.org, Algea Cao <algea.cao@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 dri-devel@lists.freedesktop.org, Niklas Cassel <cassel@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com,
 David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, FUKAUMI Naoki <naoki@radxa.com>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v7 0/3] Add HDMI audio on the rk3588 SoC
Date: Thu, 20 Feb 2025 12:03:09 -0500
Message-ID: <2357838.ElGaqSPkdT@earth>
In-Reply-To: <B8EF5196-55FB-44EC-B93C-E327C791225B@gmail.com>
References: <20250217215641.372723-1-detlev.casanova@collabora.com>
 <B8EF5196-55FB-44EC-B93C-E327C791225B@gmail.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_090408_791792_6DE478B8 
X-CRM114-Status: GOOD (  37.30  )
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

SGkgUGlvdHIsCgpPbiBUaHVyc2RheSwgMjAgRmVicnVhcnkgMjAyNSAwNjoxNjoyMCBFU1QgUGlv
dHIgT25pc3pjenVrIHdyb3RlOgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogRGV0bGV2
IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4gdwo+ID4gZG5pdSAxNyBs
dXQgMjAyNSwgbyBnb2R6LiAyMjo0NzoKPiA+IAo+ID4gVG8gc3VwcG9ydCBIRE1JIGF1ZGlvIG9u
IHRoZSByazM1ODggYmFzZWQgZGV2aWNlcywgdGhlIGdlbmVyaWMgSERNSQo+ID4gQ29kZWMgZnJh
bWV3b3JrIGlzIHVzZWQgaW4gdGhlIGR3LWhkbWktcXAgRFJNIGJyaWRnZSBkcml2ZXIuCj4gPiAK
PiA+IFRoZSBpbXBsZW1lbnRhdGlvbiBpcyBtYWlubHkgYmFzZWQgb24gdGhlIGRvd25zdHJlYW0g
ZHJpdmVyLCBwb3J0ZWQgdG8gdGhlCj4gPiBnZW5lcmljIEhETUkgQ29kZWMgZnJhbWV3b3JrIFsx
XSByZWNlbnRseSBtZXJnZWQgaW4gdGhlIG1hc3RlciBicmFuY2guCj4gPiBUaGUgcGFyYW1ldGVy
cyBjb21wdXRhdGlvbiBoYXMgYmVlbiBrZXB0IGFzIGlzIGFuZCB0aGUgZGF0YSBzdG9yZWQgaW4g
dGhlCj4gPiBkd19oZG1pX3FwIHN0cnVjdCBhcyBiZWVuIGNsZWFuZWQgdXAuCj4gPiAKPiA+IFRo
ZSB0YWJsZSBmb3IgdGhlIE4gdmFsdWVzIGhhcyBiZWVuIGVkaXRlZCB0byByZWZsZWN0IE4gcmVj
b21tZW5kZWQgdmFsdWVzCj4gPiBhcyB3ZWxsIGFzIENUUyByZWNvbW1lbmRlZCB2YWx1ZXMuCj4g
PiAKPiA+IFRoZSBkb3duc3RyZWFtIGtlcm5lbCBhbHNvIGltcGxlbWVudHMgYSBtYWNoaW5lIGRy
aXZlciBmb3IgSERNSSBhdWRpbyBidXQKPiA+IGl0IGlzIGRvaW5nIGV4YWN0bHkgd2hhdCB0aGUg
c2ltcGxlLWF1ZGlvLWNhcmQgZHJpdmVyIGRvZXMsIHNvIHVzZSB0aGF0Cj4gPiBpbnN0ZWFkIGlu
IHRoZSBSSzM1ODggU29DIGRldmljZSB0cmVlLgo+ID4gCj4gPiBUaGlzIGFkZHMgSERNSSBhdWRp
byBzdXBwb3J0IGZvciBib3RoIEhETUkgVFggcG9ydHMuCj4gPiAKPiA+ICoqKiBEZXBlbmRlbmNp
ZXMgKioqCj4gPiAKPiA+IEJhc2VkIG9uIExpbnVzJyBtYXN0ZXIgYnJhbmNoLCBidXQgYWxzbyBu
ZWVkcyBDcmlzdGlhbidzIGR0cyBwYXRjaGVzIGZvcgo+ID4gSERNSTEgc3VwcG9ydCBbMl0sIHdo
aWNoIGRlcGVuZHMgb24gSGVpa28ncyBwYXRjaHNldCBmb3IKPiA+IHBoeS1yb2NrY2hpcC1zYW1z
dW5nLWhkcHR4IFszXS4gUGF0Y2hlcyB3aWxsIGFwcGx5IHdpdGhvdXQgWzNdLCBidXQgSERNSQo+
ID4gd2lsbCBub3Qgd29yayAoYXQgYWxsKS4KPiA+IAo+ID4gWzFdOgo+ID4gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzIwMjQxMjI0LWRybS1icmlkZ2UtaGRtaS1jb25uZWN0b3ItdjEwLTAt
ZGM4OQo+ID4gNTc3Y2Q0MzhAbGluYXJvLm9yZyBbMl06Cj4gPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MTIxMS1yazM1ODgtaGRtaTEtdjItMC0wMmNkY2EyCj4g
PiAyZmY2OEBjb2xsYWJvcmEuY29tIFszXToKPiA+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xr
bWwvMjAyNDEyMDYxMDM0MDEuMTc4MDQxNi0zLWhlaWtvQHNudGVjaC5kZS8KPiA+IAo+ID4gQ2hh
bmdlcyBzaW5jZSB2NjoKPiA+IC0gRml4IGFyZ3VtZW50cyBhbGlnbmVtZW50IChjaGVja3BhdGNo
IC0tc3RyaWN0IHdhcm5pbmdzKQo+ID4gLSBBZGQgaGRtaTEgYXVkaW8gc3VwcG9ydCB0b28KPiA+
IC0gTW92ZSBoZG1pMF9zb3VuZCBub2RlIHVuZGVyIGhkbWkwX291dF9jb24KPiA+IAo+ID4gQ2hh
bmdlcyBzaW5jZSB2NToKPiA+IC0gU2ltcGxpZnkgYXVkaW8gbWF0aCBjb21wdXRhdGlvbiBmb3Ig
Tgo+ID4gLSBNb3ZlIGhkbWkwLXNvdW5kIG5vZGUgdXAgd2l0aCBvdGhlciBhZGRyZXNzLWxlc3Mg
bm9kZXMKPiA+IAo+ID4gQ2hhbmdlcyBzaW5jZSB2NDoKPiA+IC0gTW92ZWQgaGRtaTBfYXVkaW8g
bm9kZSB0aGUgcmszNTg4LWJhc2UuZHRzaQo+ID4gLSBFbmFibGUgaGRtaTBfYXVkaW8gaW4gcmsz
NTg4LXJvY2stNWIuZHRzCj4gPiAKPiA+IENoYW5nZXMgc2luY2UgdjM6Cj4gPiAtIFJlbmFtZWQg
ZnVuY3Rpb24gdG8gc3RhcnQgd2l0aCBkd19oZG1pX3FwCj4gPiAKPiA+IENoYW5nZXMgc2luY2Ug
djI6Cj4gPiAtIEFsc28gY2xlYXIgdGhlIGF1ZGlvIGluZm9mcmFtZQo+ID4gLSBXcml0ZSBBVURJ
X0NPTlRFTlRTMCB0byBpdHMgZGVmYXVsdCB2YWx1ZSBpbiBjYXNlIGl0IGdldHMgb3ZlcndyaXR0
ZW4uCj4gPiAtIFN0b3JlIHRtZHNfY2hhcl9yYXRlIGluIHRoZSBkd19oZG1pX3FwIHN0cnVjdCBp
biBhdG9taWNfZW5hYmxlCj4gPiAtIENsZWFyIHRtZHNfY2hhcl9yYXRlIGluIGF0b21pY19kaXNh
YmxlIGFuZCBvbmx5IHdyaXRlIHJlZ2lzdGVycyB3aGVuCj4gPiAKPiA+ICAgdG1kc19jaGFyX3Jh
dGUgaXMgbm90IDAuCj4gPiAKPiA+IC0gRG8gbm90IHVzZSBjb25uZWN0b3Jfc3RhdGUgZHVwbGlj
YXRlcwo+ID4gCj4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ID4gLSBSZW1vdmUgdXNlbGVzcyBhdWRp
b19tdXRleCAod2FzIHVzZWQgZG93bnN0cmVhbSBmb3IgbXVsdGlwbGUgZHJpdmVycwo+ID4gYWNj
ZXNzPiAKPiA+ICAgdG8gYXVkaW8gZnVuY3Rpb25zKQo+ID4gCj4gPiAtIExldCBoZG1pX2NvZGVj
IGJ1aWxkIGFuZCBzZXR1cCBhdWRpbyBpbmZvZnJhbWVzCj4gPiAtIE9ubHkgYWNjZXNzIGF1ZGlv
IHJlZ2lzdGVycyB3aGVuIGNvbm5lY3RvciBpcyBjb25uZWN0ZWQKPiA+IC0gUmViYXNlZCBvbiBt
YXN0ZXIgYnJhbmNoCj4gPiAKPiA+IERldGxldiBDYXNhbm92YSAoMik6Cj4gPiAgYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCBIRE1JIGF1ZGlvIG91dHB1dHMgZm9yIHJrMzU4OCBTb0MKPiA+ICBh
cm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIEhETUkgYXVkaW8gb3V0cHV0cyBmb3IgUm9jayA1
Qgo+ID4gCj4gPiBTdWdhciBaaGFuZyAoMSk6Cj4gPiAgZHJtL2JyaWRnZTogc3lub3BzeXM6IEFk
ZCBhdWRpbyBzdXBwb3J0IGZvciBkdy1oZG1pLXFwCj4gPiAKPiA+IGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8ICAxNyArCj4gPiAuLi4vYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kgfCAgMTcgKwo+ID4gLi4uL2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyAgICAgIHwgIDE2ICsKPiA+IGRyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5jICB8IDQ4OSArKysrKysrKysrKysrKysrKysK
PiA+IDQgZmlsZXMgY2hhbmdlZCwgNTM5IGluc2VydGlvbnMoKykKPiAKPiBEZXRlbHYsCj4gCj4g
SnVzdCBjdXJpb3VzIG9mIHlvdXIgb3BpbmlvbjoKPiAKPiBJ4oCZbSBvbiA2LjE0LXJjMyBhbmQg
dXNpbmcKPiBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2NyaXN0aWNjL2xpbnV4LW5leHQv
LS9jb21taXRzL3JrMzU4OC1oZG1pLWJyaWQKPiBnZSArIHRoaXMgdjcgc2VyaWVzLgoKRG8geW91
IGhhdmUgdGhlIGJyYW5jaCBhdmFpbGFibGUgc29tZXdoZXJlID8KCj4gT24gbWluZSByb2NrNWIg
YWxsIHdvcmtzIG5pY2VseSBidXQgLSBhdCBib290IHRpbWUgLSBp4oCZbSBnZXR0aW5nIHNvbWUg
b29wcwo+IGluIGtlcm5lbCBsaWtlIHRoaXM6Cj4gaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vd2Fy
cG1lL2UxNjY4YWNiZWY3ODE3ZTVkMmE4OGE2ODQwMzI4NzIyCgpJIGRpZCBub3RpY2UgdGhhdCBh
dCBvbmUgcG9pbnQgYnV0IGl0IGRpc2FwcGVhcmQgYWZ0ZXIgYSByZWJhc2Ugb24gdGhlIHRoZSAK
bGF0ZXN0IG1hc3RlciBzbyBJIGRpZG4ndCBsb29rIGZ1cnRoZXIgaW50byB0aGF0LgpDb3VsZCBp
dCBiZSByZWxhdGVkIHRvIDI1MThhMGUxYjg3ODA0MmY5YWZhNDVhZTA2M2U1NDRhMTZlZmMxYTMg
IkFTb0M6IHNpbXBsZS0KY2FyZDogdXNlIF9fZnJlZShkZXZpY2Vfbm9kZSkgZm9yIGRldmljZSBu
b2RlIiA/CgpJJ20gbm90IGV4YWN0bHkgc3VyZSBob3cgX19mcmVlKGRldmljZV9ub2RlKSB3b3Jr
cyB0aG91Z2gsIGJ1dCByZXZlcnRpbmcgdGhhdCAKY29tbWl0IGNvdWxkIGZpeCB0aGUgaXNzdWUu
Cgo+IEnigJltIG5vdCBzdXJlIHdoZXJlIGlzc3VlIGlzIGJ1dCBpdCBsb29rcyB0byBtZSBsaWtl
IGtpbmQgb2YgaW50ZXJmZXJlbmNlCj4gYmV0d2VlbiBhbmFsb2cgYXVkaW8gYW5kIGhkbWkgYXVk
aW8gYXMgY29tbWVudGluZyBhbmFsb2cgYXVkaW8gaW4gZHRzICgKPiBodHRwczovL2dpdC5rZXJu
ZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUvbGludXguZ2l0L3RyZWUvYXJj
aC8KPiBhcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHM/aD12Ni4xNC1y
YzMjbjI0ICkgc3RvcHMga2VybmVsCj4gZnJvbSBvb3Bz4oCZaW5n4oCmLgoKSSBjYW5ub3QgcmVw
cm9kdWNlIGFueW1vcmUsIHNvIGlmIHlvdSBoYXZlIGEgYnJhbmNoL2NvbmZpZyB0aGF0IHlvdSB1
c2UsIEkgCmNvdWxkIHRyeSwgbG9va2luZyBpbnRvIHRoYXQuCkkgZG9uJ3Qgc2VlIGFueSByZWxl
dmFudCBjb21taXRzIHRoYXQgd291bGQgY2hhbmdlIHRoaXMgYmVoYXZpb3Igb24gbWFzdGVyIApz
aW5jZSB2Ni4xNC1yYzMsIHNvIEknbSBub3Qgc3VyZSB3aGF0IGlzIGdvaW5nIG9uLgoKPiAgcm9j
azViIGR0cyBp4oCZbSB1c2luZyBpcyBsaWtlIHRoaXM6Cj4gaHR0cHM6Ly9naXN0LmdpdGh1Yi5j
b20vd2FycG1lL2E4YTMyYWZkNGEwNWQ0YjdmMjVkMjgwODk4NGIwNWFjCgpSZWdhcmRzLApEZXRs
ZXYuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
