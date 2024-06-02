Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A865C25B7E
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Jun 2024 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4XY45LG1rlQfQriqOScERpyI40gC6TSk/lqBi5qoIPw=; b=qaDm7yOuV/6BqFjOlwByMLZZiy
	65pZy5islwaxtQNSED+dJRFaxpPSKXMdGwSha59nqr3qt42q68ld+Gcbo0KbVCVfmnPqdIMSOU1g+
	PTrDeARjIUK7yWAECSlobz9lmvacm4dqO09E8FySHhR4dwcguWWgXcZ3rI550FARv40ALDVCQgqbj
	2AFUNAyy3vJ4VxQXd/G407ZhbM2r6/K8WcK0JCm2zAB/ZuK9I0ije66UYvo1vVJ6jOfl1xGWY/B6l
	tyMpcs2LpACgiirKkEMPf+/vTdgJHVEeWMmRxjQljFPsTKOHc1MQhFoNEVkGmXXJ7Sux2vzx6Sz88
	WxGLruAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDc0w-0000000Dg8j-3Lvg;
	Sun, 02 Jun 2024 03:36:10 +0000
Received: from out-186.mta0.migadu.com ([91.218.175.186])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDc0t-0000000Dg7M-1Jxu
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Jun 2024 03:36:09 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1717299358;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4WnZLNXTxyDKxHBiNiWfRKN88LzF8Z4jtB2f1P6shSE=;
	b=REwyQdi8bfi4u4XEBzbddwpO0MQxQfI9ErTXsxtufVF9fIcdf6NS62jw1lycOEWsOrB+Ju
	GbI7Z85iRrcIVZZWL+MZnawhnmmEPmq/H6kwagha1ddxTkI3T78CuM81ffieSFZ4vKgAG3
	KS5IOylF+9a+kyXEq5VA9pea0auYbzv63Suyqgx0iiFBh+zwhA1zVr7xuac0PUa1UbFiAm
	IacXBPMpjGCXAEKzblB2h6LiBECq8s3INeyYTbisOIlICFVa4d+4YV6I1qxgSot231et1i
	LvQnvfIGsgY4kNiCaZaqwEBaLxsBSlNIzHSShbwRW52eLxdU/I3sOEa8mrWzWQ==
X-Envelope-To: stable@vger.kernel.org
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
Date: Sun, 02 Jun 2024 00:35:36 -0300
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
Subject: Re: [PATCH v3 1/2] drm/rockchip: vop: clear DMA stop bit upon vblank
 on RK3066
To: Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: stable@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, Andy Yan
	<andy.yan@rock-chips.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Message-Id: <CNOFES.QFA1L3UJ3SH82@packett.cool>
In-Reply-To: <20240527231202.23365-1-val@packett.cool>
References: <20240527231202.23365-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_203607_536952_4482D84C 
X-CRM114-Status: GOOD (  17.05  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="cp1251"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiBNb24sIE1heSAyNyAyMDI0IGF0IDIwOjExOjQ5IC0wMzowMDowMCwgVmFsIFBhY2tldHQg
Cjx2YWxAcGFja2V0dC5jb29sPiB3cm90ZToKPiBUaGUgUkszMDY2IFZPUCBzZXRzIGEgZG1hX3N0
b3AgYml0IHdoZW4gaXQncyBkb25lIHNjYW5uaW5nIG91dCBhIGZyYW1lCj4gYW5kIG5lZWRzIHRo
ZSBkcml2ZXIgdG8gYWNrbm93bGVkZ2UgdGhhdCBieSBjbGVhcmluZyB0aGUgYml0Lgo+IAo+IFNv
IHVubGVzcyB3ZSBjbGVhciBpdCAiYmV0d2VlbiIgZnJhbWVzLCB0aGUgUkdCIG91dHB1dCBvbmx5
IHNob3dzIAo+IG5vaXNlCj4gaW5zdGVhZCBvZiB0aGUgcGljdHVyZS4gdmJsYW5rIHNlZW1zIHRv
IGJlIHRoZSBtb3N0IGFwcHJvcHJpYXRlIHBsYWNlIAo+IHRvCj4gZG8gaXQsIHNpbmNlIGl0IGlu
ZGljYXRlcyBleGFjdGx5IHRoYXQ6IHRoYXQgdGhlIGhhcmR3YXJlIGlzIGRvbmUKPiB3aXRoIHRo
ZSBmcmFtZS4KPiAKPiBUaGlzIHNlZW1zIHRvIGJlIGEgcmVkdW5kYW50IHN5bmNocm9uaXphdGlv
biBtZWNoYW5pc20gdGhhdCB3YXMgCj4gcmVtb3ZlZAo+IGluIGxhdGVyIGl0ZXJhdGlvbnMgb2Yg
dGhlIFZPUCBoYXJkd2FyZSBibG9jay4KPiAKPiBGaXhlczogZjRhNmRlOCAoImRybTogcm9ja2No
aXA6IHZvcDogYWRkIHJrMzA2NiB2b3AgZGVmaW5pdGlvbnMiKQo+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogVmFsIFBhY2tldHQgPHZhbEBwYWNrZXR0LmNvb2w+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCA2
ICsrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oIHwg
MSArCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3BfcmVnLmMgfCAxICsK
PiAgMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyAKPiBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBpbmRleCBhMTM0NzNiMmQuLjI3MzFm
ZTJiMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Au
Ywo+IEBAIC0xNzY2LDYgKzE3NjYsMTIgQEAgc3RhdGljIHZvaWQgdm9wX2hhbmRsZV92Ymxhbmso
c3RydWN0IHZvcCAqdm9wKQo+ICAJfQo+ICAJc3Bpbl91bmxvY2soJmRybS0+ZXZlbnRfbG9jayk7
Cj4gCj4gKwlpZiAoVk9QX0hBU19SRUcodm9wLCBjb21tb24sIGRtYV9zdG9wKSkgewo+ICsJCXNw
aW5fbG9jaygmdm9wLT5yZWdfbG9jayk7Cj4gKwkJVk9QX1JFR19TRVQodm9wLCBjb21tb24sIGRt
YV9zdG9wLCAwKTsKPiArCQlzcGluX3VubG9jaygmdm9wLT5yZWdfbG9jayk7Cj4gKwl9Cj4gKwoK
T29wc4Ugc28gZG9pbmcgaXQgaGVyZSBhY3R1YWxseSBjYXVzZXMgZGVhZGxvY2tzLCB1bmxlc3Mg
d2UgYWxzbyAKY2hhbmdlIGFsbCBvdGhlciByZWdfbG9jayB1c2FnZXMgdG8gYmUgc3Bpbl9sb2Nr
X2lycS9zcGluX3VubG9ja19pcnEuCgpOb3Qgc3VyZSBpZiBkb2luZyB0aGF0IG9yIGdvaW5nIGJh
Y2sgdG8gdjEgd291bGQgYmUgYmV0dGVyLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
