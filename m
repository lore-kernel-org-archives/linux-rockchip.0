Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04264D5C0D0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 14:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v6RJUAJpC1CiTuc3d/Nunn63mxqKJ5FJ3LJLcWQwPVg=; b=0UCGSGaXT4CTe5TP2MBmtca4jY
	qOWwoBdkLH0p92RABeVuqNo7eO1pxDAtJTaGIv+SVkqNiTfM5G5ub/nWfDRimp25S2oadBMjMoelt
	grMjD+DY3EJLs7rv7bsTmAmMMqJ4lRoZPIo990CA7vApFnJ3xtAZD64MOI0LY4H2eQacWiJJzolii
	P5rP/JArwKdPRkReDcuXJKDcf4DKEU22x4IhGFiaZc2hJOxPHkY3SYBFTbw1uxvZhNmISsMrIF3Xt
	lBeVgo5g+z8sSu5gcPczeuzCQ8sEDNtssNa00iFRUbojWBLuLpPmCeORQEUpd4t1vhf6dryaIeGqt
	aEHuw4AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9QDp-0000000AtSW-2cXv;
	Fri, 08 Nov 2024 14:44:25 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Pk0-0000000AoRm-0TF8;
	Fri, 08 Nov 2024 14:13:37 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731075214;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A1XhJx+fIAJODu/uxCWon9+hPz79kYKO9bkmFz44OSI=;
	b=H057aWJezfIgKTUjmJGTSgdB2Pr0tldAJmTO3ztuFXCrA1ZciBYv6xlqAa/OQt0lTkYLAm
	OsuOvCy30s0gFQ9HiucRPIolWx1h2m5NsAi/QohLy1PgkZJ5yCVVtJbPQd3GVEo6TIgJwa
	JLyQtlPZzlana/KT82xUOgEJnmzvmcJDmPgZxLCdjyZQqG6fczk6IL5mY6u55kOia9Ckmf
	/wZUKHMjd5DCIIyvBzQ/9kPGWs/iZ83F2iWUphjLdKeUY7+3EMXOW1xuYKisIqVNFBm8cV
	6CASTLXiJBO4eJhj6JW7NB/tP1Ev+UXzX6hrkD46a6Njga+s/jHyIqUmay/rPw==
Date: Fri, 08 Nov 2024 15:13:33 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, simona@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/rockchip: dsi: Perform trivial code cleanups
In-Reply-To: <10558711.nUPlyArG6x@diego>
References: <cover.1731073565.git.dsimic@manjaro.org>
 <13633881.uLZWGnKmhe@diego> <3734f6a5424e3537d717c587a058fc85@manjaro.org>
 <10558711.nUPlyArG6x@diego>
Message-ID: <047164cc6e88dcbc7701cb0e28d564db@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_061336_476914_3906E079 
X-CRM114-Status: GOOD (  20.85  )
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

T24gMjAyNC0xMS0wOCAxNTowOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRnJlaXRhZywg
OC4gTm92ZW1iZXIgMjAyNCwgMTU6MDU6MDIgQ0VUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiBP
biAyMDI0LTExLTA4IDE0OjU2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gPiBBbSBGcmVpdGFn
LCA4LiBOb3ZlbWJlciAyMDI0LCAxNDo1Mzo1NyBDRVQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+
ID4+IFBlcmZvcm0gYSBmZXcgdHJpdmlhbCBjb2RlIGNsZWFudXBzLCB0byBtYWtlIG9uZSBsb2dn
ZWQgbWVzc2FnZSBhIGJpdAo+PiA+PiBtb3JlCj4+ID4+IGNvbnNpc3RlbnQgd2l0aCB0aGUgb3Ro
ZXIgbG9nZ2VkIG1lc3NhZ2VzIGJ5IGNhcGl0YWxpemluZyBpdHMgZmlyc3QKPj4gPj4gd29yZCwg
YW5kCj4+ID4+IHRvIGF2b2lkIGxpbmUgd3JhcHBpbmcgYnkgdXNpbmcgdGhlIDEwMC1jb2x1bW4g
d2lkdGggYmV0dGVyLgo+PiA+Pgo+PiA+PiBObyBpbnRlbmRlZCBmdW5jdGlvbmFsIGNoYW5nZXMg
YXJlIGludHJvZHVjZWQgYnkgdGhlc2UgY29kZSBjbGVhbnVwcy4KPj4gPj4KPj4gPj4gU2lnbmVk
LW9mZi1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4+ID4+IC0tLQo+PiA+
PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMgfCAxMiAr
KysrLS0tLS0tLS0KPj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCj4+ID4+Cj4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYwo+PiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCj4+ID4+IGluZGV4IDU4YTQ0YWYwZTlhZC4uZjQ1MWU3
MGVmYmRkIDEwMDY0NAo+PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlw
aS1kc2ktcm9ja2NoaXAuYwo+PiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHct
bWlwaS1kc2ktcm9ja2NoaXAuYwo+PiA+PiBAQCAtMTM3OSw3ICsxMzc5LDcgQEAgc3RhdGljIGlu
dCBkd19taXBpX2RzaV9yb2NrY2hpcF9wcm9iZShzdHJ1Y3QKPj4gPj4gcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+PiA+PiAgCX0KPj4gPj4KPj4gPj4gIAlpZiAoIWRzaS0+Y2RhdGEpIHsKPj4gPj4g
LQkJRFJNX0RFVl9FUlJPUihkZXYsICJubyBkc2ktY29uZmlnIGZvciAlcyBub2RlXG4iLCBucC0+
bmFtZSk7Cj4+ID4+ICsJCURSTV9ERVZfRVJST1IoZGV2LCAiTm8gZHNpLWNvbmZpZyBmb3IgJXMg
bm9kZVxuIiwgbnAtPm5hbWUpOwo+PiA+Cj4+ID4gdGhpcyBpcyBhbGwgcHJvYmUtcmVsYXRlZCwg
d2h5IG5vdCBjb252ZXJ0IHRvIGRldl9lcnJfcHJvYmU/Cj4+ID4KPj4gPiBBcyB0aGUgZG9jIHN0
YXRlcyBbMF0sIERSTV9ERVZfRVJST1IgaXMgZGVwcmVjYXRlZCBpbiBmYXZvciBvZiBkZXZfZXJy
Lgo+PiA+IFNvIGRldl9lcnJfcHJvYmUgd291bGQgYmUgdGhlIGNvcnJlY3Qgd2F5IHRvIGdvPwo+
PiAKPj4gVGhhbmtzIGZvciB5b3VyIHF1aWNrIHJlc3BvbnNlISAgU2VlaW5nIHRoYXQgRFJNX0RF
Vl9FUlJPUigpIGlzIG5vdwo+PiBkZXByZWNhdGVkICh3aGljaCBJIG9yaWdpbmFsbHkgbWlzc2Vk
LCBpbiBhbGwgaG9uZXN0eSkgbWFrZXMgbWUgdmVyeQo+PiBoYXBweS4gOikgIEkndmUgbmV2ZXIg
YmVlbiBhIGh1Z2UgZmFuIG9mIHRoZSBmb3JtYXQgb2YgdGhlIG1lc3NhZ2VzCj4+IHRoYXQgRFJN
X0RFVl9FUlJPUigpIHByb2R1Y2VzLgo+PiAKPj4gSG93ZXZlciwgcGVyaGFwcyBpdCB3b3VsZCBi
ZSBiZXR0ZXIgdG8ga2VlcCB0aGVzZSBwYXRjaGVzIGFzLWlzLCBhcwo+PiBzb21lIGtpbmQgb2Yg
YW4gaW50ZXJtZWRpYXRlLCBsaW1pdGVkLXNjb3BlIGNsZWFudXAgKyBidWdmaXggY29tYm8sCj4+
IGFuZCBsZWF2ZSB0aGUgY29tcGxldGUgRFJNX0RFVl9FUlJPUigpIC0tPiBkZXZfZXJyKCkvZGV2
X2Vycl9wcm9iZSgpCj4+IGNvbnZlcnNpb24gdG8gc2VwYXJhdGUgcGF0Y2hlcy4gIEkgdGhpbmsg
aXQgd291bGQgYmUgYmV0dGVyIHRvIGF2b2lkCj4+IGEgcGFydGlhbCBjb252ZXJzaW9uLCBhbmQg
SSdsbCBiZSBtb3JlIHRoYW4gaGFwcHkgdG8gcHV0IHRoZSBjb21wbGV0ZQo+PiBjb252ZXJzaW9u
IG9uIG15IFRPRE8gbGlzdC4gOikKPiAKPiBCdXQgeW91ciBwYXRjaC0yIHJlYWxseSBqdXN0IG9w
ZW4tY29kZXMsIHdoYXQgZGV2X2Vycl9wcm9iZSBpcyBtZWFudAo+IHRvIGZpeC4gU28gd2l0aCBn
b2luZyB0aGlzIHdheSwgeW91J3JlIHNvcnQgb2YgbWFraW5nIHRoaW5ncyB3b3JzZSAKPiBmaXJz
dCwKPiB1bnRpbCB0aGF0IHNlY29uZCBzdGVwIGhhcHBlbnMuCj4gCj4gU2ltaWxhcmx5LCByZWZs
b3dpbmcgbGluZXMgZm9yIHRoaW5ncyB0aGF0IGdldCByZW1vdmVkIGluIGEgd2VlayBkbyBub3QK
PiBzZXJ2ZSBhIHB1cnBvc2UgLSB0aG9zZSBsaW5lLWJyZWFrcyBoYXZlIGJlZW4gdGhhdCB3YXkg
Zm9yIHllYXJzCj4gYWxyZWFkeS4KCkhtbSwgaXQgbWFrZXMgc2Vuc2Ugd2hlbiBkZXNjcmliZWQg
dGhhdCB3YXkuICBJJ2xsIHNlZSB0byBwZXJmb3JtIHRoZQpjb21wbGV0ZSBjb252ZXJzaW9uIGlu
IHRoZSBuZXh0IGZldyBkYXlzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
