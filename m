Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C3A606A32E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 19:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hnpXkT0t;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=1QIv0Fjm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NML1fHdD3KJSrw20iRDbFJur1m5TaUATHD84mHF0U5g=; b=hnpXkT0tugzdhEZ5DNNMxjoa2D
	khOusRXkWRpenPbm6pPezesHOIVfXgISkhChBUn08w9QiHDmm8lYGsNR87n2rQFkikEOVMzwVifnC
	bwro2DA0TKj7iS7P8cSGb3LEt5AfoC8lwQL8fPnO7DwYItGsqzFe8FhVSBQVYqFh/XgUik7ce6rlL
	jqlJYdW5nu+8wqGXpN87w1iBsCxdhk/9SKcSCDRZHDvEpzUEJu2NsSjgeh1h2cMgfWCf6eYOu05lz
	bUXXJDb7YA4XahsSEk8iLW4b4nItaemQXHC2PNX45rIM03bPnC/cxEHt3LgXLkvGaa/bATP4Cp5Bx
	awvVNqPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOJsW-00000003Uqe-1WIG;
	Tue, 03 Nov 2026 19:09:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOJsU-00000003Uph-0AW7
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 19:09:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=R+P3IkoL4I5ZNgNuJJGHc28hYyVfwE/0EISTFVpNB28=; b=1QIv0FjmCBDhMcBIA6j2CeXlgG
	X2AmJiqbdXSvExoFWs0UMYDqCg0UuC/ktXCfLwbeW6a4bHetxNrG9nR4rR/Xvk/n6qb2GndGr2VCB
	YDqz0JQLwdZ2rwY039n5ZXwVPlcaovrUZe4ZTjWVotxnvFofUPkqGGqtrktC1wKG73oBSCqoDhGiS
	hiQ5nyhBqvNWlyn1xtt37hRDJ+W8I1NZeTM+PwjRLGqHndrWQsmOcaO1Ey6CZEIk5XnQx+SiVRNkz
	3ZNZf8ac20FVqPkQiTHKz9hBY5b/QK3wt+zy/Mlq1dm8dYjFFa9fvCFN8vuNPctnxOl8EuSmk0EsL
	lyIzLQ0w==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>,
 devicetree@vger.kernel.org, shawn.lin@rock-chips.com,
 diederik@cknow-tech.com, michael.riesch@collabora.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Date: Tue, 03 Nov 2026 20:08:51 +0100
Message-ID: <2607835.uoxibFcf9D@diego>
In-Reply-To: <PH0PR19MB9973388CD960185681A4C3E16DA5692@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20261103153144.343764-1-macroalpha82@gmail.com> <3661431.qSoW2BAyJ8@diego>
 <PH0PR19MB9973388CD960185681A4C3E16DA5692@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_110902_106478_F2B5E34F 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDMuIE5vdmVtYmVyIDIwMjYsIDE5OjA3OjE5IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQ2hyaXMgTW9yZ2FuOgo+IE9uIFR1ZSwgTm92IDAzLCAyMDI2
IGF0IDA2OjAxOjM3UE0gKzAxMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gSGkgQ2hyaXMs
Cj4gPiAKPiA+IEFtIERpZW5zdGFnLCAzLiBOb3ZlbWJlciAyMDI2LCAxNjozMTo0MyBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIENocmlzIE1vcmdhbjoKPiA+ID4gRnJvbTog
Q2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+ID4gCj4gPiA+IEFkZCBj
b21wYXRpYmxlIHN0cmluZyBmb3IgUm9ja2NoaXAgUkszNTY4IHRpbWVyLgo+ID4gPiAKPiA+ID4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+
ID4gLS0tCj4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvcm9j
a2NoaXAscmstdGltZXIueWFtbCB8IDEgKwo+ID4gCj4gPiBQbGVhc2UgbWFrZSBzdXJlIHRvIGNo
ZWNrIGdldF9tYWludGFpbmVycyB0byBjYXRjaCBhbGwgbmVlZGVkIHJlY2lwaWVudHMuCj4gPiAK
PiA+ICMgc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtZiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvdGltZXIvcm9ja2NoaXAscmstdGltZXIueWFtbAo+ID4gCj4gPiB5b3UncmUg
ZXNwZWNpYWxseSBtaXNzaW5nIHRoZSBjbG9ja3NvdXJjZSBtYWludGFpbmVyczoKPiA+ICAgICBE
YW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9Aa2VybmVsLm9yZz4gKG1haW50YWluZXI6Q0xP
Q0tTT1VSQ0UsIENMT0NLRVZFTlQgRFJJVkVSUyxpbiBmaWxlKQo+ID4gICAgIFRob21hcyBHbGVp
eG5lciA8dGdseEBrZXJuZWwub3JnPiAobWFpbnRhaW5lcjpDTE9DS1NPVVJDRSwgQ0xPQ0tFVkVO
VCBEUklWRVJTKQo+ID4gCj4gPiBhbmQgc29tZSBhZGRpdGlvbmFsIGxpc3RzOgo+ID4gICAgIGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcgKG9wZW4gbGlzdDpDTE9DS1NPVVJDRSwgQ0xPQ0tF
VkVOVCBEUklWRVJTKQo+ID4gICAgIGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZyAobW9kZXJhdGVkIGxpc3Q6QVJNL1JvY2tjaGlwIFNvQyBzdXBwb3J0KQo+ID4gCj4gPiB0aGUg
Y2xvY2tzb3VyY2UgcGFydCBkb2VzIG5vdCBzZWVtIHRvIGhhdmUgYSBkZWRpY2F0ZWQgbGlzdCwg
c28KPiA+IGxpbnV4LWtlcm5lbCBzaG91bGQgYmUgaW5jbHVkZWQuCj4gPiAKPiA+IAo+ID4gSGVp
a28KPiA+IAo+ID4gCj4gCj4gSSBhcG9sb2dpemUsIHNvcnJ5IGFib3V0IHRoYXQuIEkgYXNzdW1l
ZCBzaW5jZSBJIHdhcyBvbmx5IG1vZGlmeWluZyB0aGUKPiBkZXZpY2UtdHJlZSBhbmQgYmluZGlu
Z3MgSSBkaWRuJ3QgbmVlZCB0byBjb3B5IHRoZSByZXN0IG9mIHRoZSB0ZWFtcy4KPiAKPiBTaG91
bGQgSSByZXN1Ym1pdCB3aXRoIHRoZSBhZGRpdGlvbmFsIG5hbWVzPwoKdmVyeSBsaWtlbHkgLi4u
IGkuZS4gdGhlIGJpbmRpbmcgaXMgZ2VuZXJhbGx5IGdvaW5nIHRocm91Z2ggdGhlIGRyaXZlci10
cmVlCmhlcmUgdGhlIHRyZWUgaG9sZGluZyB0aGUgY2xvY2tzb3VyY2UgZHJpdmVycy4KCkZvciBt
ZSB0byBhcHBseSB0aGUgYmluZGluZywgSSdkIGRlZmluaXRseSBuZWVkIGFuIEFjayBmcm9tIHRo
ZSBjbG9ja3NvdXJjZQpwZW9wbGUuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
