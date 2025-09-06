Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D716ACA1002
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 13:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2QiCMJIZoNdDcnNxPMZMX2zTwKA5zT/xizsRaomVoLo=; b=IYGQE27IwdWpkBmqAslxNv+UHS
	Vk2SC8Ikr35pG9uV27TL4o03k1a08Uuqk8fF2vL7ZwyhT/6GabAUS3Cqa0HGgOTFlclT8yiQlE5cd
	6dtRqjPOhNfoQXh6yCWWzC9uwTfLWUjTZz5IuvYO4oNMM/ZQrPQhLy7A0QpBCAdJlHLvwak3g+l8C
	6FtPsdLOPnIyApNTSfd3X4Nkgcx4MUyF+GeuHaSR497XNPcLHFAnqdqOwxLEHy0v8cdCnD96iC8Ba
	qP+OFD5PCgwcU9eQsBbYpkENP4cofEcTY8p0A3nB91Axe44+nUpzuppmkg0y45tUrxqOlPCPyebyB
	vS/ArQ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uusXG-00000007nGu-3N9t;
	Sat, 06 Sep 2025 13:00:54 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uusUP-00000007n8Z-3M1B;
	Sat, 06 Sep 2025 12:57:59 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1757163476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gBvknfRADrFTmcYESe6FCG/DDohCJeCBYoa6CBvKIBU=;
	b=XkpDbGiOFHdQgB47WOPXPYIS3DTQy0c5jxkWEfob9EfgzYFSNRP9rSKd1v0AIi9ihAVPdx
	aZjIX4ENRCw9Qb+7f9vDATzWkRvOPjT3RqdIZ9/LYiXqGBX7fl5d4aBQh7ANwssBHKcWkL
	DzZQR3TYyHg0/PgBKf6mgXezWu2W4fPkYZlKZwbecZGYkWZEBi/NMhE8lcE1KAMN0f2M7W
	DK8rTMFX8t0t3ZfY44BlmrlUwtBULe4ON2qDeWalDoKKQj4Hh1Lz2oshs8X0s1jEzHIyZA
	KoMUppZZvNgrdQw9KCVfaqmHItrj6uqcIyPIBCSlTjgStWa0lLx0cKVZGml6kQ==
Date: Sat, 06 Sep 2025 14:57:55 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Make RK3588 GPU OPP table naming
 uniform
In-Reply-To: <3169011.CbtlEUcBR6@diego>
References: <355c16ab070688fc6285e0d4419eb54a3f699eee.1757152740.git.dsimic@manjaro.org>
 <DCLOTR9Y380M.22GZYL11XXZM2@cknow.org>
 <47cf50f2f497108a923815c12b1f8c9b@manjaro.org> <3169011.CbtlEUcBR6@diego>
Message-ID: <f34b6fad7768dd88b40284fa330af4f2@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_055758_185789_F3961683 
X-CRM114-Status: GOOD (  23.27  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI1LTA5LTA2IDE0OjIxLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBTYW1zdGFnLCA2LiBTZXB0ZW1iZXIgMjAyNSwgMTQ6MTA6MjIgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQKPiBzY2hyaWViIERyYWdhbiBTaW1pYzoKPj4gT24gMjAyNS0wOS0wNiAx
Mzo0MCwgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPj4gPiBPbiBTYXQgU2VwIDYsIDIwMjUgYXQg
MTI6MDEgUE0gQ0VTVCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiA+PiBVbmlmeSB0aGUgbmFtaW5n
IG9mIHRoZSBleGlzdGluZyBHUFUgT1BQIHRhYmxlIG5vZGVzIGZvdW5kIGluIHRoZQo+PiA+PiBS
SzM1ODgKPj4gPj4gYW5kIFJLMzU4OEogU29DIGR0c2kgZmlsZXMgd2l0aCB0aGUgb3RoZXIgU29D
J3MgR1BVIE9QUCBub2RlcywKPj4gPj4gZm9sbG93aW5nCj4+ID4+IHRoZSBtb3JlICJtb2Rlcm4i
IG5vZGUgbmFtaW5nIHNjaGVtZS4KPj4gPgo+PiA+IExpa2Ugd2UgZGlzY3Vzc2VkIGluIHByaXZh
dGUgKHdpdGhvdXQgYW4gYWdyZWVtZW50KSwgSSB0aGluayBpdCB3b3VsZAo+PiA+IGJlCj4+ID4g
YmVuZWZpY2lhbCBpZiB0aGUgKGdwdSkgb3BwIG5hbWluZyB3b3VsZCBiZSBtYWRlIGNvbnNpc3Rl
bnQgYWNyb3NzIFNvQwo+PiA+IHNlcmllcyBhcyByaWdodCBub3cgdGhlcmUgYXJlIHNldmVyYWwg
ZGlmZmVyZW50IG5hbWluZyBzY2hlbWVzIGFwcGxpZWQuCj4+ID4gVGhleSdyZSBhbGwgdmFsaWQs
IGJ1dCBpbmNvbnNpc3RlbnQuIEFuZCBpZiBjb25zaXN0ZW5jeSBpcyBpbXByb3ZlZCwKPj4gPiB3
aGljaCBJIGxpa2UsIHRoZW4gbGV0J3MgZ28gJ2FsbCB0aGUgd2F5Jz8KPj4gCj4+IEFzIHdlIGRp
c2N1c3NlZCBpdCBhbHJlYWR5IGluIHByaXZhdGUsIEkgZnVsbHkgYWdyZWUgYWJvdXQgcGVyZm9y
bWluZwo+PiB0aGUgIm9wcC10YWJsZS1YID0+IG9wcC10YWJsZS17Y2x1c3RlclgsZ3B1fSIgbmFt
aW5nIGNsZWFudXAKPj4gY29uc2lzdGVudGx5Cj4+IGZvciBhbGwgUm9ja2NoaXAgU29DcywgYnV0
IEknbSBhZnJhaWQgaXQgd291bGQgYmUgc2VlbiBhcyBhbiAKPj4gdW5uZWNlc3NhcnkKPj4gImNv
ZGUgY2h1cm4iIGF0IHRoaXMgcG9pbnQsIGVzcGVjaWFsbHkgYmVjYXVzZSBteSB1cGNvbWluZyBS
b2NrY2hpcCAKPj4gU29DCj4+IGJpbm5pbmcgcGF0Y2ggc2VyaWVzIGlzIGEgZ29vZCBjYW5kaWRh
dGUgZm9yIHN1Y2ggYSBjbGVhbnVwLgo+PiAKPj4gT24gdG9wIG9mIHRoYXQsIEknZCBiZSBhIGJp
dCB3ZWFyeSBhYm91dCBwZXJmb3JtaW5nIGF0IGxlYXN0IHNvbWUgb2YgCj4+IHRoZQo+PiB0ZXN0
aW5nIGFzc29jaWF0ZWQgd2l0aCBzdWNoIGEgcGxhdGZvcm0td2lkZSBjbGVhbnVwLCBkZXNwaXRl
IGFjdHVhbGx5Cj4+IHBlcmZvcm1pbmcgbm8gZnVuY3Rpb25hbCBjaGFuZ2VzIGFuZCBiZWluZyBh
IHNhZmUgY2hhbmdlLiAgT24gdGhlIAo+PiBvdGhlcgo+PiBoYW5kLCAiYnVuZGxpbmciIHN1Y2gg
YSBjbGVhbnVwIHdpdGggdGhlIFJvY2tjaGlwIFNvQyBiaW5uaW5nIHBhdGNoZXMKPj4gd291bGQg
Z2V0IHVzIGRldGFpbGVkIHRlc3RpbmcgZm9yIGZyZWUsIHNvIHRvIHNwZWFrLgo+PiAKPj4gT2Yg
Y291cnNlLCBpZiB0aGUgbWFpbnRhaW5lcnMgc2VlIHRoaXMgYXMgYSBnb29kIG9wcG9ydHVuaXR5
IHRvIAo+PiBwZXJmb3JtCj4+IGEgcGxhdGZvcm0td2lkZSBjbGVhbnVwIGF0IHRoaXMgcG9pbnQs
IGluc3RlYWQgb2Ygc2VlaW5nIGl0IGFzIGEgImNvZGUKPj4gY2h1cm4iLCBJJ2xsIHN0aWxsIGJl
IGhhcHB5IHRvIGV4dGVuZCB0aGlzIHNtYWxsIHBhdGNoIGludG8gYSAKPj4gcGxhdGZvcm0tCj4+
IHdpZGUgbmFtaW5nIGNsZWFudXAgb2YgdGhlICJvcHAtdGFibGUtWCIgbm9kZXMuICBPbiB0aGUg
b3RoZXIgaGFuZCwgaWYKPj4gdGhpcyBwYXRjaCByZW1haW5zIGFzLWlzLCBpdCBtYXkgaGl0IGEg
Z29vZCBiYWxhbmNlIGJldHdlZW4gcmVzb2x2aW5nCj4+IHRoZSBjdXJyZW50bHkgcHJlc2VudCBu
YW1pbmcgYW1iaWd1aXR5IGFuZCB0aGUgYW1vdW50IG9mIGludHJvZHVjZWQKPj4gY2hhbmdlcy4K
PiAKPiBQZXJzb25hbGx5IEknbSBhbHdheXMgZm9yIHRoZSAid2Ugc3RyaXZlIHRvIGdldCB0aGVy
ZSBldmVudHVhbGx5IiAKPiB0aGluZy4KPiBJZiB0aGVyZSBpcyBhbiBlc3RhYmxpc2hlZCBnb2Fs
IHRvIHJlYWNoLCBzdGVwcyBjYW4gYmUgaW5jcmVtZW50YWwgOi0pIAo+IC4KPiAKPiBBbmQgYWxz
byBzaG9ydCBhbmQgc2NvcGUtbGltaXRlZCBwYXRjaGVzIGFyZSBlYXNpZXIgdG8gcmV2aWV3IGFu
eXdheS4KCkkgc2VlLiAgQWZ0ZXIgdGhpbmtpbmcgYSBiaXQgbW9yZSBhYm91dCBpdCwgSSdsbCB0
dXJuIHRoaXMgcGF0Y2ggaW50bwphIHNtYWxsIHNlcmllcywgaW4gd2hpY2ggdGhpcyBwYXRjaCBi
ZWNvbWVzIHRoZSAxLzIsIGFuZCB0aGUgMi8yIGlzCmEgbmV3LCBsYXJnZXIgcGF0Y2ggdGhhdCBl
eHRlbmRzIHRoZSAib3BwLXRhYmxlLVgiIG5hbWluZyBjbGVhbnVwIHRvCnRoZSBlbnRpcmUgcGxh
dGZvcm0uICBUaGF0IHdheSwgdGhlIDEvMiBraW5kIG9mIGZpeGVzIHNvbWV0aGluZywgd2hpbGUK
dGhlIDIvMiBwZXJmb3JtcyBhIGNsZWFudXAsIHdoaWNoIG1heSBiZSBoZWxwZnVsIGluIHRoZSB1
bmxpa2VseSBjYXNlCnRoYXQgc29tZSByZWdyZXNzaW9uIGlzIGZvdW5kIGRvd24gdGhlIHJvYWQu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
