Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BD5CCD343F
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 May 2026 11:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXxYFhp+pmm5SVNa2I2GxpOS7jODrMuQ4hR7/Ko2zEg=; b=Ez3mbbihUmv8B7
	/ErdJX3efT1tmJwlAv8O57jHATsWtCqdBCsjMZKSKjribBBR/296kxXrHB2RXlSCm2RR4vh829VYb
	povcQ2NgCrXBq/ePEyoSwh1CndvmgVE90wQYSlsaP6R2laOeQQY+ptPweQ2SYaq6tz7mKo//CQENw
	a5EpFLUfNnhgwGETIGllZ/Z0zMNTe4i8oIgSYiH8SYdrpPO2il7UpdsklXa5Dmw7WiAgAa7VtaogG
	AiHmNjgOeWEhHgcXj95J2TZfggT8ekdANjIn/vutBf5OpfxwvnbEUe1Q4ZyInvuZHL8k+Y3qIyBZ5
	SlnL4gMt8rRTwEnPcyrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKx8N-00000003gbn-0Yot;
	Thu, 07 May 2026 11:43:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKx8L-00000003gbG-3rr9;
	Thu, 07 May 2026 11:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=4r8mXmt6skT6Iq4+j8vT+vFH5yMYCK775SlOiUC7Pz8=; b=cIprbon4xAZUZxkLolSUwuPPuW
	4u9IsCOsQY0qCm0oV82oN+GCBIxfqX5u5XV8hLtAn8vUNqCYITPS6L+tbA68Nv6wdQXMmE4vrbN8L
	gY/XRHRXz2CYOM4NINMoDCiSrC07dKkwa6AAvSzkoGLZXzrM47t3Ia6IqSDG3qgbC+QIDnnuXZLx9
	pXQUdI29P27pslgsUInh7kPeRxusaLLnkDWCKzgZXSQb7zLOyQK4uKC29qbCa0md8QnJRqgQtGps9
	Io65q1yeYIefAvHF9LRUGJMlC/QGr16KvvORol2YRkZjQBf03TDI5eHrBBZLMe56s4fWt0Bf3y+4b
	r5mwZ+QA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKx8H-00000003Nxo-2XUl;
	Thu, 07 May 2026 11:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4r8mXmt6skT6Iq4+j8vT+vFH5yMYCK775SlOiUC7Pz8=; b=CrnNjN0m1XtdyHqmY1+DsuV07f
	lXViUR5+x6r0ra86n7QkOwbcU9cOmz6apNfoWfKVfKmcJ0LTLLHu7825NJV++k9NI0JkU8ZbOfOJ0
	8U8tTajXryp345oruqepaUy0z0sRG7tMwko2jAZWy5hG0fd1Ddzfss/vs9nf4VZk7koMLfx6y0tNG
	IjcH5Ymz08Nax4PCDgDuLTP7d5c7A9EVicNV/qLjb73snybFH8ZkjDQuKCX3dICtovMpiBpKGl6bE
	r/CkQXJUkeTN+Q9fvmAiv3/uxerNxIMwlZBBdkOOpmtLi7ILOe/5+Q90pXE+RE0TrP/WM+FlhBLpQ
	DSRMe4rw==;
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 rfoss@kernel.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 01/10] dt-bindings: display: rockchip: analogix-dp: Expand
 clock-names "hclk" for the third clock
Date: Thu, 07 May 2026 13:42:50 +0200
Message-ID: <4528155.7s5MMGUR32@phil>
In-Reply-To: <6496645.8F6SAcFxjW@phil>
References: <20260507112948.1115003-1-damon.ding@rock-chips.com>
 <20260507112948.1115003-2-damon.ding@rock-chips.com>
 <6496645.8F6SAcFxjW@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_124310_093297_589AA021 
X-CRM114-Status: GOOD (  17.69  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRG9ubmVyc3RhZywgNy4gTWFpIDIwMjYsIDEzOjQwOjA5IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgSGVpa28gU3R1ZWJuZXI6Cj4gSGkgRGFtb24sCj4gCj4gQW0gRG9u
bmVyc3RhZywgNy4gTWFpIDIwMjYsIDEzOjI5OjM5IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6
ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPiA+IFRoZSBSSzM1ODggZURQIGNvbnRyb2xsZXIgbmVl
ZHMgdGhlIHZpZGVvIGRhdGFwYXRoIGNsb2NrICJoY2xrIiB0byB3b3JrCj4gPiB3ZWxsLiBQcmV2
aW91c2x5LCBpdCB3b3JrcyB3aXRob3V0IGV4cGxpY2l0bHkgYWRkaW5nIHRoaXMgY2xvY2sgYmVj
YXVzZQo+ID4gdGhlICdyb2NrY2hpcCx2by1ncmYgPSA8JnZvMV9ncmY+JyBwcm9wZXJ0eSBpbXBs
aWNpdGx5IGVuYWJsZXMgSENMS19WTzEuCj4gPgo+ID4gRml4ZXM6IGY4NTUxNDYyNjNiMSAoImR0
LWJpbmRpbmdzOiBkaXNwbGF5OiByb2NrY2hpcDogYW5hbG9naXgtZHA6IEFkZCBzdXBwb3J0IGZv
ciBSSzM1ODgiKQo+ID4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2Nr
LWNoaXBzLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3Jv
Y2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwgICAgICAgfCA0ICsrKy0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hp
cCxhbmFsb2dpeC1kcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsYW5hbG9naXgtZHAueWFtbAo+ID4gaW5kZXggZDk5YjIz
Yjg4Y2M1Li5kMmJjODYzNmI2MjYgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxhbmFsb2dpeC1kcC55YW1s
Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2Nr
Y2hpcC9yb2NrY2hpcCxhbmFsb2dpeC1kcC55YW1sCj4gPiBAQCAtMjYsNyArMjYsOSBAQCBwcm9w
ZXJ0aWVzOgo+ID4gICAgICBpdGVtczoKPiA+ICAgICAgICAtIGNvbnN0OiBkcAo+ID4gICAgICAg
IC0gY29uc3Q6IHBjbGsKPiA+IC0gICAgICAtIGNvbnN0OiBncmYKPiA+ICsgICAgICAtIGVudW06
Cj4gPiArICAgICAgICAgIC0gZ3JmCj4gPiArICAgICAgICAgIC0gaGNsawo+IAo+IGFyZSB5b3Ug
c3VyZSBhYm91dCB0aGF0Pwo+IAo+IFRoZSBlZHAgdXNlcyB0aGUgdm8xLWdyZiAtIHNvIHdoYXQg
ZW5hYmxlcyBpdHMgY2xvY2s/Cj4gRm9yIGV4YW1wbGUgdGhlIGhkbWkgY29udHJvbGxlcnMgb24g
cmszNTg4IGFsc28gdXNlIHRoZSB2bzEtZ3JmIGFuZAo+IGV4cGxpY2l0bHkgaGFuZGxlIHRoYXQg
Y2xvY2suCj4gCj4gU28gd2hvIGRvZXMgaXQgZm9yIHRoZSBlRFA/CgpBaCwgLi4uIGZvdW5kIHRo
ZSBoY2xrX3ZvMSBpbiB0aGUgZm9sbG93aW5nIHBhdGNoZXMuCgpTdGlsbCB0aGUgYmluZGluZyBj
b21taXQgbWVzc2FnZSBjb3VsZCB1c2Ugc29tZSBtb3JlIHdvcmRzIGFib3V0IHdoYXQgdGhhdApj
bG9jayBpcywgYW5kIHdoeSBpdCBjYW4gInJlcGxhY2UiIHRoZSBHUkYgY2xvY2sgZnJvbSBlYXJs
aWVyIFNvQ3MuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
