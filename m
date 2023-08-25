Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C9EC71133
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 14:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:In-Reply-To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bh61/dzkbOwHbxa6Ewhc5jfxvUJXKaywLK/dsQGPeoU=; b=17jwKELa872UPC
	83WkCokgtGxrMbyRRP415JpNOZ4SA+Mgb0AlJ69gR/3+/c1SEG1uMRXyq2LPo+M/9rtGAlrLmvnpn
	3F5KtERGXjZbEGzjngt0oPz6ZP2mKbdrZ9kmVkRRONK/HzQlcUxiPNNeW9V5fRiAervBYRpvXDSXB
	OCBU5hATWVFaYYD4FePBQxguPLkwgS4bg3+OXyOaBSCU3rFvWpmUYBas/wi05HVhv6++d1x4GQdBi
	3V92QI45YhBQQgW3xLevmRm7FHK9ntV40sZdYoqwG816I2Sz9A0TGiZvaOidkpatxejvT+j5ItgxP
	XkpDb8UB0QoGaWeT1zYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZXtI-005bnx-10;
	Fri, 25 Aug 2023 14:34:24 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZXtE-005bn0-0T;
	Fri, 25 Aug 2023 14:34:21 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1c:f269::1])
	by madras.collabora.co.uk (Postfix) with ESMTP id 12B3E66071BE;
	Fri, 25 Aug 2023 15:34:15 +0100 (BST)
From: "Helen Mae Koike Fornazier" <helen.koike@collabora.com>
In-Reply-To: <CAF6AEGs4p0xXJjsNug45CFiP0n-5h7wpdy22YBryjrnWFROESg@mail.gmail.com>
X-Forward: 127.0.0.1
Date: Fri, 25 Aug 2023 15:34:15 +0100
Cc: "Jani Nikula" <jani.nikula@linux.intel.com>, "Vignesh Raman" <vignesh.raman@collabora.com>, dri-devel@lists.freedesktop.org, emma@anholt.net, linux-doc@vger.kernel.org, david.heidelberg@collabora.com, linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, daniels@collabora.com, martin.blumenstingl@googlemail.com, robclark@freedesktop.org, anholt@google.com, linux-mediatek@lists.infradead.org, mripard@kernel.org, matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org, guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de
To: "Rob Clark" <robdclark@gmail.com>
MIME-Version: 1.0
Message-ID: <29c7-64e8bc00-3-6afffd8@162524261>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/6] =?utf-8?q?drm=3A?==?utf-8?q?_ci=3A?= Force 
 db410c to host mode
User-Agent: SOGoMail 5.8.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_073420_314227_06C97699 
X-CRM114-Status: GOOD (  30.40  )
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

T24gRnJpZGF5LCBBdWd1c3QgMjUsIDIwMjMgMTE6MzAgLTAzLCBSb2IgQ2xhcmsgPHJvYmRjbGFy
a0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBGcmksIEF1ZyAyNSwgMjAyMyBhdCA2OjU24oCvQU0g
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPgo+ID4g
T24gRnJpLCAyNSBBdWcgMjAyMywgVmlnbmVzaCBSYW1hbiA8dmlnbmVzaC5yYW1hbkBjb2xsYWJv
cmEuY29tPiB3cm90ZToKPiA+ID4gRm9yY2UgZGI0MTBjIHRvIGhvc3QgbW9kZSB0byBmaXggbmV0
d29yayBpc3N1ZSB3aGljaCByZXN1bHRzIGluIGZhaWx1cmUKPiA+ID4gdG8gbW91bnQgcm9vdCBm
cyB2aWEgTkZTLgo+ID4gPiBTZWUgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dmeC1j
aS9saW51eC8tL2NvbW1pdC9jYjcyYTYyOWI4YzE1YzgwYTU0ZGRhNTEwNzQzY2VmZDFjNGI2NWI4
Cj4gPiA+Cj4gPiA+IFNpbmNlIHRoaXMgZml4IGlzIG5vdCBzZW50IHVwc3RyZWFtLCBhZGQgaXQg
dG8gYnVpbGQuc2ggc2NyaXB0Cj4gPiA+IGJlZm9yZSBidWlsZGluZyB0aGUga2VybmVsIGFuZCBk
dHMuIEJldHRlciBhcHByb2FjaCB3b3VsZCBiZQo+ID4gPiB0byB1c2UgZGV2aWNldHJlZSBvdmVy
bGF5cy4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8dmlnbmVzaC5y
YW1hbkBjb2xsYWJvcmEuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9jaS9i
dWlsZC5zaCB8IDQgKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+
ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL2J1aWxkLnNoIGIvZHJp
dmVycy9ncHUvZHJtL2NpL2J1aWxkLnNoCj4gPiA+IGluZGV4IDdiMDE0Mjg3YTA0MS4uYzM5ODM0
YmQ2YmQ3IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2gKPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2NpL2J1aWxkLnNoCj4gPiA+IEBAIC03MCw2ICs3MCwx
MCBAQCBpZiBbIC16ICIkQ0lfTUVSR0VfUkVRVUVTVF9QUk9KRUNUX1BBVEgiIF07IHRoZW4KPiA+
ID4gICAgICBmaQo+ID4gPiAgZmkKPiA+ID4KPiA+ID4gKyMgRm9yY2UgZGI0MTBjIHRvIGhvc3Qg
bW9kZSB0byBmaXggbmV0d29yayBpc3N1ZSB3aGljaCByZXN1bHRzIGluIGZhaWx1cmUgdG8gbW91
bnQgcm9vdCBmcyB2aWEgTkZTLgo+ID4gPiArIyBTZWUgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eC8tL2NvbW1pdC9jYjcyYTYyOWI4YzE1YzgwYTU0ZGRhNTEwNzQz
Y2VmZDFjNGI2NWI4Cj4gPiA+ICtzZWQgLWkgJy8mdXNiIHsvLC9zdGF0dXMgPSAib2theSI7L3Mv
c3RhdHVzID0gIm9rYXkiOy8mXG5cdGRyX21vZGUgPSAiaG9zdCI7LycgYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL2FwcTgwMTYtc2JjLmR0cwo+ID4gPiArCj4gPgo+ID4gSXQgc2VlbXMgbGlrZSBh
IHJlYWxseSBiYWQgaWRlYSB0byBtZSB0byBoYXZlIHRoZSBDSSBidWlsZCBtb2RpZnkgdGhlCj4g
PiBzb3VyY2UgdHJlZSBiZWZvcmUgYnVpbGRpbmcuCj4gPgo+ID4gVGhlIGtlcm5lbCBiZWluZyBi
dWlsdCB3aWxsIGhhdmUgYSBkaXJ0eSBnaXQgcmVwbywgYW5kIHRoZSBsb2NhbHZlcnNpb24KPiA+
IHdpbGwgaGF2ZSAtZGlydHkgaW4gaXQuCj4gPgo+ID4gSSB0aGluayBpdCB3b3VsZCBiZSBiZXR0
ZXIgdG8gZG8gb3V0LW9mLXRyZWUgYnVpbGRzIGFuZCBhc3N1bWUgdGhlCj4gPiBzb3VyY2UgaXMg
cmVhZC1vbmx5Lgo+IAo+IFdlIGhhdmUgdGhlICR7dGFyZ2V0X2JyYW5jaH0tZXh0ZXJuYWwtZml4
ZXMgbWVjaGFuaXNtIHRvIG1lcmdlCj4gbmVjZXNzYXJ5IGNoYW5nZXMgYmVmb3JlIGJ1aWxkaW5n
IHRoZSBrZXJuZWwgZm9yIENJLiAgV2hpY2ggaXMKPiBuZWNlc3NhcnkgZm9yIGEgY291cGxlIG9m
IHJlYXNvbnM6CgpTaG91bGQgd2UgY3JlYXRlIGFuIG9mZmljaWFsIHRvcGljL2RybS1jaS1leHRl
cm5hbC1maXhlcyBicmFuY2ggPwoKUmVnYXJkcywKSGVsZW4KCj4gCj4gMSkgcGF0Y2hlcyBsaWtl
IHRoaXMgd2hpY2ggYXJlbid0IGFwcHJvcHJpYXRlIHVwc3RyZWFtIGJ1dCBuZWNlc3NhcnkKPiBk
dWUgdG8gdGhlIENJIGxhYiBzZXR1cAo+IDIpIHRhcmdldCBicmFuY2ggaWYgb2Z0ZW4gYmFzZWQg
b24gYW4gZWFybHkgLXJjLCBhbmQgaXQgaXNuJ3QgdW5oZWFyZAo+IG9mIHRvIG5lZWQgc29tZSBm
aXggZm9yIHNvbWUgYm9hcmQgb3IgYW5vdGhlciB3aGljaCBpc24ndCBhcHByb3ByaWF0ZQo+IHRv
IGxhbmQgdmlhIGRybS1uZXh0Cj4gCj4gV2Ugc2hvdWxkIHVzZSB0aGUgLWV4dGVybmFsLWZpeGVz
IGJyYW5jaCBtZWNoYW5pc20gZm9yIHBhdGNoZXMgbGlrZSB0aGlzIG9uZS4KPiAKPiBCUiwKPiAt
Ugo+IAo+ID4gPiAgZm9yIG9wdCBpbiAkRU5BQkxFX0tDT05GSUdTOyBkbwo+ID4gPiAgICBlY2hv
IENPTkZJR18kb3B0PXkgPj4gZHJpdmVycy9ncHUvZHJtL2NpLyR7S0VSTkVMX0FSQ0h9LmNvbmZp
Zwo+ID4gPiAgZG9uZQo+ID4KPiA+IERpdHRvIGZvciB0aGUgY29uZmlnIGNoYW5nZXMgaW4gdGhl
IGNvbnRleHQgaGVyZS4gVGhvc2UgYXJlIGZpbGVzIGluCj4gPiBnaXQsIGRvbid0IGNoYW5nZSB0
aGVtLgo+ID4KPiA+IFNob3VsZG4ndCB0aGlzIHVzZSBzb21ldGhpbmcgbGlrZSAnc2NyaXB0cy9j
b25maWcgLS1lbmFibGUnIG9yCj4gPiAnc2NyaXB0cy9jb25maWcgLS1kaXNhYmxlJyBvbiB0aGUg
LmNvbmZpZyBmaWxlIHRvIGJlIHVzZWQgZm9yIGJ1aWxkaW5nCj4gPiBpbnN0ZWFkPwo+ID4KPiA+
Cj4gPiBCUiwKPiA+IEphbmkuCj4gPgo+ID4KPiA+IC0tCj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
