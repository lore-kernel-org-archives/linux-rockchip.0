Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED06D5C0E6
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 15:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iymRY33cC/TFEvUvlnTZ4hNQJQwBhjqgV0Kg9BzXPmY=; b=qR+DRQS8LVCgYzZZxg/Wvhxpgu
	6wmWmfSqIAEVvhLzMdd9LUZF3PLGMY5/Jwb8OiqOT2NnDovv1BzzonEirGb+9lY5I1XGt7LDTiSbJ
	EgYOPCRyc+pmTl0K+hNKcJZBIlh1q06WkGMpgWi+yIFQZIYGCT1mKgovuXVSNIdM/nDcLIINzOwEA
	zdp76BnZ5CKJCkWEp53NL0rFohnq+1JRvAtFTulgh5LJJ87Pk3vD8ufSp/kSgPwR+suAVFZNBSpi2
	AM0FgrKBYfkv+pe0GMacfK/NXZD1/XULBeXshGuzZttAAUpyEZQytdzJ+JtKYeLeKHOBsKKf1Psx9
	EOMOcPSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Qac-0000000AyQy-1d50;
	Fri, 08 Nov 2024 15:07:58 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Pzy-0000000Ar5D-3JWo;
	Fri, 08 Nov 2024 14:30:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731076204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mXU0zqzH64T+oZBcduwWmn4Upe7MVevQ2K4G2VK2A+s=;
	b=RzWyT0OmX20cYiDWD/utFaU9an5SMKNlc3LneUtjhWoQxRHjmNaPJpQJ5FqC6wpPgihgBk
	/XLPL8amsRINXZGDWOn8rhiiIivVkkG2z2bYteFr00U+8lTpoMrhwNyVitsk+Ix0l/jKRM
	NeBe9BsGknLAoDw6+bJy+ctIHXksGy2vhe3e+b53uZupo5ZIpmnns/hvcj61pkr7HUibtz
	kM+t3uAWNvRCBI8qKK0+4gPtWsT1K32UYpUv3BmszszMf4jfTGtlEaPIxcHwryV+yWOMxR
	Z7oXE2gbuIVh8X/QVy/blRlOT5/WL/qps4joY/eI4+AsRZ1lw0URJHpci0teKQ==
Date: Fri, 08 Nov 2024 15:30:03 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/rockchip: dsi: Perform trivial code cleanups
In-Reply-To: <22484879.EfDdHjke4D@diego>
References: <cover.1731073565.git.dsimic@manjaro.org>
 <10558711.nUPlyArG6x@diego> <047164cc6e88dcbc7701cb0e28d564db@manjaro.org>
 <22484879.EfDdHjke4D@diego>
Message-ID: <c27ab238825451f1c3a4722f39a19531@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_063007_151583_A2518717 
X-CRM114-Status: GOOD (  24.65  )
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0xMS0wOCAxNToyMiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRnJlaXRhZywg
OC4gTm92ZW1iZXIgMjAyNCwgMTU6MTM6MzMgQ0VUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiBP
biAyMDI0LTExLTA4IDE1OjA5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gPiBBbSBGcmVpdGFn
LCA4LiBOb3ZlbWJlciAyMDI0LCAxNTowNTowMiBDRVQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+
ID4+IE9uIDIwMjQtMTEtMDggMTQ6NTYsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiA+PiA+IEFt
IEZyZWl0YWcsIDguIE5vdmVtYmVyIDIwMjQsIDE0OjUzOjU3IENFVCBzY2hyaWViIERyYWdhbiBT
aW1pYzoKPj4gPj4gPj4gUGVyZm9ybSBhIGZldyB0cml2aWFsIGNvZGUgY2xlYW51cHMsIHRvIG1h
a2Ugb25lIGxvZ2dlZCBtZXNzYWdlIGEgYml0Cj4+ID4+ID4+IG1vcmUKPj4gPj4gPj4gY29uc2lz
dGVudCB3aXRoIHRoZSBvdGhlciBsb2dnZWQgbWVzc2FnZXMgYnkgY2FwaXRhbGl6aW5nIGl0cyBm
aXJzdAo+PiA+PiA+PiB3b3JkLCBhbmQKPj4gPj4gPj4gdG8gYXZvaWQgbGluZSB3cmFwcGluZyBi
eSB1c2luZyB0aGUgMTAwLWNvbHVtbiB3aWR0aCBiZXR0ZXIuCj4+ID4+ID4+Cj4+ID4+ID4+IE5v
IGludGVuZGVkIGZ1bmN0aW9uYWwgY2hhbmdlcyBhcmUgaW50cm9kdWNlZCBieSB0aGVzZSBjb2Rl
IGNsZWFudXBzLgo+PiA+PiA+Pgo+PiA+PiA+PiBTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMg
PGRzaW1pY0BtYW5qYXJvLm9yZz4KPj4gPj4gPj4gLS0tCj4+ID4+ID4+ICBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYyB8IDEyICsrKystLS0tLS0tLQo+PiA+
PiA+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4g
Pj4gPj4KPj4gPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1t
aXBpLWRzaS1yb2NrY2hpcC5jCj4+ID4+ID4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
LW1pcGktZHNpLXJvY2tjaGlwLmMKPj4gPj4gPj4gaW5kZXggNThhNDRhZjBlOWFkLi5mNDUxZTcw
ZWZiZGQgMTAwNjQ0Cj4+ID4+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1t
aXBpLWRzaS1yb2NrY2hpcC5jCj4+ID4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCj4+ID4+ID4+IEBAIC0xMzc5LDcgKzEzNzksNyBAQCBz
dGF0aWMgaW50IGR3X21pcGlfZHNpX3JvY2tjaGlwX3Byb2JlKHN0cnVjdAo+PiA+PiA+PiBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ID4+ID4+ICAJfQo+PiA+PiA+Pgo+PiA+PiA+PiAgCWlmICgh
ZHNpLT5jZGF0YSkgewo+PiA+PiA+PiAtCQlEUk1fREVWX0VSUk9SKGRldiwgIm5vIGRzaS1jb25m
aWcgZm9yICVzIG5vZGVcbiIsIG5wLT5uYW1lKTsKPj4gPj4gPj4gKwkJRFJNX0RFVl9FUlJPUihk
ZXYsICJObyBkc2ktY29uZmlnIGZvciAlcyBub2RlXG4iLCBucC0+bmFtZSk7Cj4+ID4+ID4KPj4g
Pj4gPiB0aGlzIGlzIGFsbCBwcm9iZS1yZWxhdGVkLCB3aHkgbm90IGNvbnZlcnQgdG8gZGV2X2Vy
cl9wcm9iZT8KPj4gPj4gPgo+PiA+PiA+IEFzIHRoZSBkb2Mgc3RhdGVzIFswXSwgRFJNX0RFVl9F
UlJPUiBpcyBkZXByZWNhdGVkIGluIGZhdm9yIG9mIGRldl9lcnIuCj4+ID4+ID4gU28gZGV2X2Vy
cl9wcm9iZSB3b3VsZCBiZSB0aGUgY29ycmVjdCB3YXkgdG8gZ28/Cj4+ID4+Cj4+ID4+IFRoYW5r
cyBmb3IgeW91ciBxdWljayByZXNwb25zZSEgIFNlZWluZyB0aGF0IERSTV9ERVZfRVJST1IoKSBp
cyBub3cKPj4gPj4gZGVwcmVjYXRlZCAod2hpY2ggSSBvcmlnaW5hbGx5IG1pc3NlZCwgaW4gYWxs
IGhvbmVzdHkpIG1ha2VzIG1lIHZlcnkKPj4gPj4gaGFwcHkuIDopICBJJ3ZlIG5ldmVyIGJlZW4g
YSBodWdlIGZhbiBvZiB0aGUgZm9ybWF0IG9mIHRoZSBtZXNzYWdlcwo+PiA+PiB0aGF0IERSTV9E
RVZfRVJST1IoKSBwcm9kdWNlcy4KPj4gPj4KPj4gPj4gSG93ZXZlciwgcGVyaGFwcyBpdCB3b3Vs
ZCBiZSBiZXR0ZXIgdG8ga2VlcCB0aGVzZSBwYXRjaGVzIGFzLWlzLCBhcwo+PiA+PiBzb21lIGtp
bmQgb2YgYW4gaW50ZXJtZWRpYXRlLCBsaW1pdGVkLXNjb3BlIGNsZWFudXAgKyBidWdmaXggY29t
Ym8sCj4+ID4+IGFuZCBsZWF2ZSB0aGUgY29tcGxldGUgRFJNX0RFVl9FUlJPUigpIC0tPiBkZXZf
ZXJyKCkvZGV2X2Vycl9wcm9iZSgpCj4+ID4+IGNvbnZlcnNpb24gdG8gc2VwYXJhdGUgcGF0Y2hl
cy4gIEkgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIGF2b2lkCj4+ID4+IGEgcGFydGlhbCBj
b252ZXJzaW9uLCBhbmQgSSdsbCBiZSBtb3JlIHRoYW4gaGFwcHkgdG8gcHV0IHRoZSBjb21wbGV0
ZQo+PiA+PiBjb252ZXJzaW9uIG9uIG15IFRPRE8gbGlzdC4gOikKPj4gPgo+PiA+IEJ1dCB5b3Vy
IHBhdGNoLTIgcmVhbGx5IGp1c3Qgb3Blbi1jb2Rlcywgd2hhdCBkZXZfZXJyX3Byb2JlIGlzIG1l
YW50Cj4+ID4gdG8gZml4LiBTbyB3aXRoIGdvaW5nIHRoaXMgd2F5LCB5b3UncmUgc29ydCBvZiBt
YWtpbmcgdGhpbmdzIHdvcnNlCj4+ID4gZmlyc3QsCj4+ID4gdW50aWwgdGhhdCBzZWNvbmQgc3Rl
cCBoYXBwZW5zLgo+PiA+Cj4+ID4gU2ltaWxhcmx5LCByZWZsb3dpbmcgbGluZXMgZm9yIHRoaW5n
cyB0aGF0IGdldCByZW1vdmVkIGluIGEgd2VlayBkbyBub3QKPj4gPiBzZXJ2ZSBhIHB1cnBvc2Ug
LSB0aG9zZSBsaW5lLWJyZWFrcyBoYXZlIGJlZW4gdGhhdCB3YXkgZm9yIHllYXJzCj4+ID4gYWxy
ZWFkeS4KPj4gCj4+IEhtbSwgaXQgbWFrZXMgc2Vuc2Ugd2hlbiBkZXNjcmliZWQgdGhhdCB3YXku
ICBJJ2xsIHNlZSB0byBwZXJmb3JtIHRoZQo+PiBjb21wbGV0ZSBjb252ZXJzaW9uIGluIHRoZSBu
ZXh0IGZldyBkYXlzLgo+IAo+IGp1c3QgYSBub3RlLCBhcyB3cml0dGVuIG9uIElSQyBlYXJsaWVy
LCBJIGFtIHNpdHRpbmcgb24gYSBkZXZfZXJyX3Byb2JlCj4gY29udmVyc2lvbiBmb3IgZHctZHNp
LXJvY2tjaGlwLgo+IAo+IEkgd2FzIHdhaXRpbmcgdG8gc2VlIGlmIG1vcmUgY2xlYW51cHMgdHVy
bmVkIHVwLCBzbyBkaWRuJ3Qgc2VudCB0aGF0IAo+IHlldC4KPiAKPiBEb24ndCB3YW50IHRvIHN0
ZWFsIHlvdXIgc3BvdGxpZ2h0IHRob3VnaCwgc28gbm90IHN1cmUgaWYgSSBzaG91bGQgc2VuZAo+
IHRoYXQgb3Igd2FpdCBmb3IgeW91ciBjb252ZXJzaW9uIDstKQoKSSBzZWUgbm8gcmVhc29ucyB3
aHkgc2hvdWxkIHdlIGR1cGxpY2F0ZSBzb21lIGVmZm9ydC4gOikgIElmIHlvdSdyZQphbHJlYWR5
IG5lYXJpbmcgdGhlIGZpbGUtbGV2ZWwgY29udmVyc2lvbiB0byBpdHMgY29tcGxldGlvbiwgcGxl
YXNlCmZlZWwgZnJlZSB0byBzZW5kIGl0LCBhbmQgd2UgY2FuIGRyb3AgdGhpcyBzZXJpZXMuIDop
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
