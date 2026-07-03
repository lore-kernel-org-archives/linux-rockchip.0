Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 977CEC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 18:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mB2ISFpQaeNtcc2TA0z5FhrSOt9kxwHjBVMCpsJ2wnk=; b=cSGow/9BUbEKyp
	mBCOcRo1jMaQRaupfD8lCPWLVTTD/8ppX46eJE+x/JCyR9XHB9jvy1oyAcqHAYPQ7Lxtq5UcvElPV
	n6GmZhJM1PQlvDlP2N0ZNkfIL2qJ8wpYj5TXb3R46GweekR5Im+541ULvwm1KpHR9Y/Ps+T/0hae7
	sIphjjNjgQlo5ZKjU76t4W9t+EX5WrB/Wdkilc3Se3M58KkiviNHD6oV4cKxTeXatt2ceNY2okeS5
	rzj/8ERh5BCakNgRZdFRliuCKFtJ0qJ/84BpKpbGZEm0cHNyr/YePKe1rwdOJMOR4b6AOO/OhXdPs
	qHNFK6H6uSUS+VeVqEPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfifC-00000007i1w-3La6;
	Fri, 03 Jul 2026 18:30:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfifA-00000007i1C-1Uyn;
	Fri, 03 Jul 2026 18:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uLFc/USnoLD2hdkK6f4FbXFFpkJWctZScq6uqGjV+8Q=; b=b1Em13SVmD7Gxe4wQguf4VtJvA
	KQ6XnrbNh6sBpdgYe8/uWZOI08NhZ8Af8uTMIJ913qcXEuuywZwoht0+2Cp2JiuVaqo/jvXGNqEz9
	o3xuvt3gabxgrQ2Hd/zlHbU9G+FwcAvlbCIBtMnilDfgfwuazZupUHxAyjNPZDZR9OgFV9V1BU0vF
	ogdLlr5eH7Y0mF/ylKhy9Sg2wTYTHaX/kkrmoDB4IpWQOcfC1n706osycop0ka6lcwDvFJx98Cqap
	oINWRvxPexdduOl/EEHLOt7SC52t+SwG7wm7vSH2JXlRvDpcH0wdQx1xgv0z6V16Ohdrgp+V6VSu8
	6b86iuZw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Diogo Silva <diogompaissilva@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, linux-arm-kernel@lists.infradead.org,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 "javierm@redhat.com" <javierm@redhat.com>
Subject: Re: [PATCH v4] drm/rockchip: Remove dependency on DRM simple helpers
Date: Fri, 03 Jul 2026 20:30:41 +0200
Message-ID: <2837071.mvXUDI8C0e@phil>
In-Reply-To: <CAJpoHp489qKfkfLOX-XPLpOWo86gibZB=NM_dXPbv0yDGmxysg@mail.gmail.com>
References: <20260608124018.480365-2-diogompaissilva@gmail.com>
 <CAJpoHp6DnspnA0rirGb6E=A9wCS3eaDn=eFaqmae98Q+39b1PA@mail.gmail.com>
 <CAJpoHp489qKfkfLOX-XPLpOWo86gibZB=NM_dXPbv0yDGmxysg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_113056_420390_D551CBA4 
X-CRM114-Status: GOOD (  18.31  )
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

SGkgRGlvZ28sCgpBbSBEb25uZXJzdGFnLCAyLiBKdWxpIDIwMjYsIDIyOjE4OjU4IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGlvZ28gU2lsdmE6Cj4gU2ltcGxlIEtNUyBo
ZWxwZXIgYXJlIGRlcHJlY2F0ZWQgc2luY2UgdGhleSBvbmx5IGFkZCBhbiBpbnRlcm1lZGlhdGUK
PiBsYXllciBiZXR3ZWVuIGRyaXZlcnMgYW5kIHRoZSBhdG9taWMgbW9kZXNldHRpbmcuCj4gVGhp
cyBwYXRjaCByZW1vdmVzIHRoZSBkcm1fc2ltcGxlX2VuY29kZXJfaW5pdCgpIGhlbHBlciB1c2Fn
ZSBpbiB0aGUKPiByb2NrY2hpcCBkcml2ZXJzIGJ5IG9wZW4gY29kaW5nIGl0IGFuZCB1c2luZyB0
aGUgZW5jb2RlciBhdG9taWMgaGVscGVycwo+IGRpcmVjdGx5LiBUaGlzIGlzIGEgc3RlcCB0byBl
dmVudHVhbGx5IGdldCByaWQgb2YgdGhpcyBzaW1wbGUgS01TIGhlbHBlciwKPiBvbmNlIGFsbCBk
cml2ZXJzIHRoYXQgdXNlIGl0IGhhdmUgYmVlbiBjb252ZXJ0ZWQuCj4gCj4gUmV2aWV3ZWQtYnk6
IEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyA8amF2aWVybUByZWRoYXQuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IERpb2dvIFNpbHZhIDxkaW9nb21wYWlzc2lsdmFAZ21haWwuY29tPgo+IC0tLQo+IHY0
Ogo+ICAtIGltcHJvdmVkIGNvbW1pdCBtZXNzYWdlIGJhc2VkIG9uIEphdmllciBDYW5pbGxhcyBm
ZWVkYmFjawo+IAo+IHYzOgo+ICAtIHJlYmFzZSBvbiBkcm0tdGlwIHRyZWUKPiAKPiAgZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgIHwgOSArKysrKystLS0K
PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgICAgICAgICAgIHwgOSAr
KysrKystLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlw
LmMgIHwgOSArKysrKysrLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNp
Mi1yb2NrY2hpcC5jIHwgOCArKysrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdf
ZHAtcm9ja2NoaXAuYyAgICAgICAgfCAxIC0KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWktcm9ja2NoaXAuYyAgICAgIHwgMSAtCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
d19oZG1pX3FwLXJvY2tjaGlwLmMgICB8IDEgLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cmszMDY2X2hkbWkuYyAgICAgICAgICAgfCA4ICsrKysrKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMgICAgICAgICB8IDkgKysrKysrKy0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYyAgICAgICAgICB8IDggKysrKysrLS0KPiAg
MTAgZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hp
cC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuYwo+
IGluZGV4IDc3Njk1NGM3ZDA1Mi4uNDZjMjQ1ZTM1ZDIxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMKPiBAQCAtMzAsNyArMzAsNiBA
QAo+ICAjaW5jbHVkZSA8ZHJtL2RybV9vZi5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5o
Pgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcm9iZV9oZWxwZXIuaD4KPiAtI2luY2x1ZGUgPGRybS9k
cm1fc2ltcGxlX2ttc19oZWxwZXIuaD4KPiAKPiAgI2luY2x1ZGUgInJvY2tjaGlwX2RybV9kcnYu
aCIKPiAKPiBAQCAtMzAzLDYgKzMwMiwxMCBAQCByb2NrY2hpcF9kcF9kcm1fZW5jb2Rlcl9hdG9t
aWNfY2hlY2soc3RydWN0Cj4gZHJtX2VuY29kZXIgKmVuY29kZXIsCj4gICAgICAgICByZXR1cm4g
MDsKCnRoZSB0b29sIHlvdSdyZSB1c2luZyB0byBzZW5kIHBhdGNoZXMgc2VlbXMgYnJva2VuLgpJ
biB0aGUgcGF0Y2ggYWxsIHRoZSBwbGFjZXMgdGhhdCBzaG91bGQgYmUgdGFicyBhcmUgcmVwbGFj
ZWQgYXMgc3BhY2VzLgpUaGlzIG9mIGNvdXJzZSBkb2VzIG5vdCBhcHBseS4KCklkZWFsbHkgdXNl
IGdpdCBzZW5kLWVtYWlsIG9yIGI0IGZvciBzZW5kaW5nIHBhdGNoZXMuCgpBbHNvLCBwbGVhc2Ug
ZG9uJ3Qgc2VuZCBuZXcgdmVyc2lvbnMgYXMgcmVwbGllcyB0byBwcmV2aW91cyBvbmVzLgpUb29s
aW5nIGNhbiBnZXQgY29uZnVzZWQgYnkgdGhpcywgc28gcGxlYXNlIHN0YXJ0IGEgbmV3IHRocmVh
ZCBmb3IKdGhlIG5leHQgdmVyc2lvbi4KClRoYW5rcwpIZWlrbwoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
