Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65009CDB474
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Oct 2023 07:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GORdP/GgNyRsp8HUNw1afwbaEiWARLGy5xjuliSK8nk=; b=F6MYnI3LiZYzIS
	zIIstnI+KeYY6ET8VsQbJ3XtWT9B9/SMDZ9wVoQ/Uw/h6pNjsNesKMjaoYVY6PyYhP6GixPHM+Sop
	IzSStB2da6D4eJGnPOMhWujUouv/4QOeiiZuPlRHSGusElhYAZL0XzOwGLXfkJDp/hp1P43lc01Rn
	z1h5/uXSZY4kxCS52DdXHXCv1EGZbmThLxLE7L3nckvTaNgwmO1NyEfFe+59ezQ5F57pXOZULHn58
	m3F/OTOkLpnovYEurdW+Vs7KIvaENoZ/wZMkTJfcjsc5HrusC9vOqf1Mo0sQu34q+01ffiCL0j2pN
	PEVp3SWfvfvm5GmELcbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsekO-00BaYv-12;
	Tue, 17 Oct 2023 07:44:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsekK-00BaV6-2X
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Oct 2023 07:44:10 +0000
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsekB-0005qD-9e; Tue, 17 Oct 2023 09:43:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Guido =?ISO-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 andyshrk@163.com, jagan@edgeble.ai, daniel@ffwll.ch, airlied@gmail.com,
 sam@ravnborg.org, neil.armstrong@linaro.org, megous@megous.com,
 kernel@puri.sm, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
Date: Tue, 17 Oct 2023 09:43:57 +0200
Message-ID: <3022818.687JKscXgg@diego>
In-Reply-To: <SN6PR06MB53428A7534F1AB449688AA67A5D7A@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com> <2140189.3Lj2Plt8kZ@diego>
 <SN6PR06MB53428A7534F1AB449688AA67A5D7A@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_004408_821218_5E39B22D 
X-CRM114-Status: GOOD (  30.12  )
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

SGkgQ2hyaXMsCgpBbSBNb250YWcsIDE2LiBPa3RvYmVyIDIwMjMsIDIwOjI2OjU4IENFU1Qgc2No
cmllYiBDaHJpcyBNb3JnYW46Cj4gT24gTW9uLCBPY3QgMTYsIDIwMjMgYXQgMDg6MTg6MjVQTSAr
MDIwMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBIaSwKPiA+IAo+ID4gQW0gTW9udGFnLCAx
Ni4gT2t0b2JlciAyMDIzLCAxODowNzo1MiBDRVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+ID4g
PiBPbiAyMDIzLTEwLTE2IDE3OjUyLCBDaHJpcyBNb3JnYW4gd3JvdGU6Cj4gPiA+ID4gQ29uZmly
bWVkIHRoYXQgdGhvc2UgcGVuZGluZyBwYXRjaGVzIERPIGZpeCB0aGUgcGFuZWwgc3VzcGVuZCBp
c3N1ZXMuIAo+ID4gPiA+IFRoYW5rIHlvdS4KPiA+ID4gCj4gPiA+IEF3ZXNvbWUsIHRoYXQncyBn
cmVhdCB0byBoZWFyISAgUGVyaGFwcyBhICJUZXN0ZWQtYnkiIGluIHRoZSBvcmlnaW5hbCAKPiA+
ID4gTEtNTCB0aHJlYWQgWzFdIGNvdWxkIGhlbHAgd2l0aCBoYXZpbmcgdGhlIHBhdGNoIHB1bGxl
ZCBzb29uZXIuCj4gPiA+IAo+ID4gPiBMaW5rczoKPiA+ID4gWzFdIAo+ID4gPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9sa21sLzMzYjcyOTU3LTEwNjItMWI2Ni04NWViLWMzN2RjNWNhMjU5YkBy
ZWRoYXQuY29tL1QvCj4gPiA+IAo+ID4gPiAKPiA+ID4gPiBPbiBNb24sIE9jdCAxNiwgMjAyMyBh
dCAzOjQx4oCvQU0gR3VpZG8gR8O8bnRoZXIgPGd1aWRvLmd1bnRoZXJAcHVyaS5zbT4gCj4gPiA+
ID4gd3JvdGU6Cj4gPiA+ID4+IAo+ID4gPiA+PiBIaSBDaHJpcywKPiA+ID4gPj4gT24gRnJpLCBP
Y3QgMTMsIDIwMjMgYXQgMDE6Mzk6MTZQTSAtMDUwMCwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgo+ID4g
PiA+PiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiA+
ID4+ID4KPiA+ID4gPj4gPiBUaGUgUG93a2lkZHkgUkdCMzAgNCBpbmNoIHBhbmVsIGlzIGEgNCBp
bmNoIDcyMHg3MjAgRFNJIHBhbmVsIHVzZWQgaW4KPiA+ID4gPj4gPiB0aGUgUG93a2lkZHkgUkdC
MzAgaGFuZGhlbGQgZ2FtaW5nIGRldmljZS4gQWRkIHN1cHBvcnQgZm9yIGl0Lgo+ID4gPiA+PiA+
Cj4gPiA+ID4+ID4gVE9ETzogVGhlIHBhbmVsIHNlZW1zIHRvIG5vdCByZXN1bWUgcHJvcGVybHkg
ZnJvbSBzdXNwZW5kLiBJJ3ZlCj4gPiA+ID4+ID4gY29uZmlybWVkIG9uIHRoZSBvdGhlciBTVDc3
MDMgYmFzZWQgZGV2aWNlcyBpdCB3b3JrcyBjb3JyZWN0bHkuCj4gPiAKPiA+IHNvIHRoaXMgVE9E
TyBpdGVtIGNvdWxkIGdvIGF3YXksIHJpZ2h0Pwo+ID4gSSBjYW4gcmVtb3ZlIGl0IHdoZW4gYXBw
bHlpbmcgdGhlIHBhdGNoLCBqdXN0IHdhbnQgdG8gbWFrZSBzdXJlCj4gPiBhbGwgcmV2aWV3IGNv
bW1lbnRzIGFyZSBhZGRyZXNzZWQgLSBvbmx5IHRoZSBzdXNwZW5kIHRoaW5nIGl0IHNlZW1zLgo+
IAo+IFRoYXQgaXMgY29ycmVjdCwgYnV0IGxldCBtZSBzZW5kIGEgdjIgb2YgdGhpcyBpbnN0ZWFk
LiBJJ2xsIHJlbW92ZSB0aGlzCj4gdmVyYmlhZ2UgYW1vbmcgb3RoZXIgZml4ZXMuIEVuZCB1c2Vy
cyB3YW50ZWQgbWUgdG8gc2VlIGlmIEkgY291bGQgZ2V0Cj4gdGhpcyBwYW5lbCB0byBydW4gYXQg
cHJlY2lzZWx5IDYwaHosIHdoaWNoIEkgYmVsaWV2ZSBJIGFtIGFibGUgdG8gZG8KPiB3aXRoIHRo
ZSBhZGRpdGlvbiBvZiBhIG5ldyBQTEwgY2xvY2sgaW4gY2xrX3JrMzU2OC4gSSBiZWxpZXZlIEkg
aGF2ZQo+IHRha2VuIGV2ZXJ5IGNvbnN0cmFpbnQgZGV0YWlsZWQgaW4gdGhlIGRhdGFzaGVldCB0
byBoZWFydCBmb3IgdGhlIG5ldwo+IGZyZXF1ZW5jeSBJJ2xsIGJlIHJlcXVlc3RpbmcuIEJ5IHVz
aW5nIHRoZSBmcmVxdWVuY3kgb2YgMjkyNTAwMDAwIGZvcgo+IHRoZSBWUExMIEkgY2FuIGdldCB0
aGUgcGFuZWwgcnVubmluZyBhdCA1OS45NjloeiB3aGljaCBpbiBteSB2aWV3IGlzCj4gY2xvc2Ug
ZW5vdWdoIHRvIHRoZSBpZGVhbCA1OS45OGh6Lgo+IAo+IEkgYWxzbyBhY2NpZGVudGFsbHkgbGVm
dCB0aGUgVUFSVDIgYWN0aXZlIGV2ZW4gdGhvdWdoIHRoaXMgZGV2aWNlIGhhcwo+IG5vIGV4cG9z
ZWQgVUFSVCBwb3J0LCBzbyBJIG5lZWQgdG8gZml4IHRoYXQgdG9vIGJ5IGRpc2FibGluZyBpdC4K
PiAKPiBMYXN0bHkgSSdsbCBhZGQgbXkgdGVzdGVkIGJ5IHRvIHRoZSBkcmktZGV2ZWwgcGF0Y2hl
cyBhcyB3ZWxsLgoKdG9vIGxhdGUgOy0pCgpMb29rcyBsaWtlIHlvdXIgbWFpbCBhbmQgbWUgYXBw
bHlpbmcgdGhlIHNlcmllcyBoYXBwZW5lZCBhdCBhIHNpbWlsYXIKdGltZSBhbmQgSSBqdXN0IHNh
dyB5b3VyIG1haWwuCgpTbyBpZiB5b3Ugd2FudCB0byBjaGFuZ2UgdGhlIGR0cyBub3csIHBsZWFz
ZSBkbyBhIGZvbGxvd3VwIHBhdGNoLgoKVGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
