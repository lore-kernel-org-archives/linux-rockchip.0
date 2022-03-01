Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB849C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 13:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fxbeIT61570WlDqIuuYUcjP90R4rw+nqw43OuuFRsyU=; b=tLT0/z3pA5X48b
	mCCDUX/3eB5Kv7V8zA4ONJCcv23OlT5Y7J8qyYNN/U72JdmZ3+s9yrPPovGTWv7cv+R5oDOLNQYzj
	vRx2NNAGtwV1jSEMKyVWFkt0//iv7oRRAkeUqGLKsKX/iIqudMpPVexnKKN70trMquLbHxcdnLeYC
	gxgWT6WuG2vgLoKarVc4E64gGhA4dlwgVKGTKt5NYJhMPntd/Nqbq6V56PPFhPnfvkgD+aDJGWzte
	ll1PEY80ZNKXmgHB6SEz3Yz+m0C4Kl4P/HvsP+/gbA4GN5hKi0OhmD5lRq7PlL6xy1xoGoNb5czbs
	akmx7JNBABnH/Kz5Wdkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP2jM-00Gvbz-OD; Tue, 01 Mar 2022 13:39:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP2j6-00GvZo-RR; Tue, 01 Mar 2022 13:39:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5E3E1042;
 Tue,  1 Mar 2022 05:39:37 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D14883F70D;
 Tue,  1 Mar 2022 05:39:35 -0800 (PST)
Message-ID: <5184ecf2-8734-3121-cbbc-5dcfcf0d02f8@arm.com>
Date: Tue, 1 Mar 2022 13:39:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Dmitry Osipenko <digetx@gmail.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
 <20220228141921.GN19585@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220228141921.GN19585@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_053940_992714_8BBCC476 
X-CRM114-Status: GOOD (  28.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMjAyMi0wMi0yOCAxNDoxOSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIEZyaSwgRmViIDI1
LCAyMDIyIGF0IDAyOjExOjU0UE0gKzAxMDAsIFNhc2NoYSBIYXVlciB3cm90ZToKPj4gT24gRnJp
LCBGZWIgMjUsIDIwMjIgYXQgMTI6NDE6MjNQTSArMDAwMCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+
Pj4gT24gMjAyMi0wMi0yNSAxMToxMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+Pj4+IDI1LjAy
LjIwMjIgMTM6NDksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+Pj4+PiBPbiBGcmksIEZlYiAy
NSwgMjAyMiBhdCAwMToyNjoxNFBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+Pj4+
PiAyNS4wMi4yMDIyIDEwOjUxLCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPj4+Pj4+PiBUaGUg
cmszNTY4IEhETUkgaGFzIGFuIGFkZGl0aW9uYWwgY2xvY2sgdGhhdCBuZWVkcyB0byBiZSBlbmFi
bGVkIGZvciB0aGUKPj4+Pj4+PiBIRE1JIGNvbnRyb2xsZXIgdG8gd29yay4gVGhlIHB1cnBvc2Ug
b2YgdGhhdCBjbG9jayBpcyBub3QgY2xlYXIuIEl0IGlzCj4+Pj4+Pj4gbmFtZWQgImhjbGsiIGlu
IHRoZSBkb3duc3RyZWFtIGRyaXZlciwgc28gdXNlIHRoZSBzYW1lIG5hbWUuCj4+Pj4+Pj4KPj4+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+
Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4KPj4+Pj4+PiBOb3RlczoKPj4+Pj4+PiAgICAgICBDaGFuZ2Vz
IHNpbmNlIHY1Ogo+Pj4+Pj4+ICAgICAgIC0gVXNlIGRldm1fY2xrX2dldF9vcHRpb25hbCByYXRo
ZXIgdGhhbiBkZXZtX2Nsa19nZXQKPj4+Pj4+Pgo+Pj4+Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgfCAxNiArKysrKysrKysrKysrKysrCj4+Pj4+Pj4g
ICAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+Pj4+Pj4+IGluZGV4IGZl
NGY5NTU2MjM5YWMuLmM2YzAwZTg3NzlhYjUgMTAwNjQ0Cj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+Pj4+Pj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPj4+Pj4+PiBAQCAtNzYsNiArNzYs
NyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaSB7Cj4+Pj4+Pj4gICAgCWNvbnN0IHN0cnVjdCByb2Nr
Y2hpcF9oZG1pX2NoaXBfZGF0YSAqY2hpcF9kYXRhOwo+Pj4+Pj4+ICAgIAlzdHJ1Y3QgY2xrICpy
ZWZfY2xrOwo+Pj4+Pj4+ICAgIAlzdHJ1Y3QgY2xrICpncmZfY2xrOwo+Pj4+Pj4+ICsJc3RydWN0
IGNsayAqaGNsa19jbGs7Cj4+Pj4+Pj4gICAgCXN0cnVjdCBkd19oZG1pICpoZG1pOwo+Pj4+Pj4+
ICAgIAlzdHJ1Y3QgcmVndWxhdG9yICphdmRkXzB2OTsKPj4+Pj4+PiAgICAJc3RydWN0IHJlZ3Vs
YXRvciAqYXZkZF8xdjg7Cj4+Pj4+Pj4gQEAgLTIyOSw2ICsyMzAsMTQgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9oZG1pX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9oZG1pICpoZG1pKQo+Pj4+Pj4+
ICAgIAkJcmV0dXJuIFBUUl9FUlIoaGRtaS0+Z3JmX2Nsayk7Cj4+Pj4+Pj4gICAgCX0KPj4+Pj4+
PiArCWhkbWktPmhjbGtfY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGhkbWktPmRldiwgImhj
bGsiKTsKPj4+Pj4+PiArCWlmIChQVFJfRVJSKGhkbWktPmhjbGtfY2xrKSA9PSAtRVBST0JFX0RF
RkVSKSB7Cj4+Pj4+Pgo+Pj4+Pj4gSGF2ZSB5b3UgdHJpZWQgdG8gaW52ZXN0aWdhdGUgdGhlIGhj
bGs/IEknbSBzdGlsbCB0aGlua2luZyB0aGF0J3Mgbm90Cj4+Pj4+PiBvbmx5IEhETUkgdGhhdCBu
ZWVkcyB0aGlzIGNsb2NrIGFuZCB0aGVuIHRoZSBoYXJkd2FyZSBkZXNjcmlwdGlvbgo+Pj4+Pj4g
ZG9lc24ndCBsb29rIGNvcnJlY3QuCj4+Pj4+Cj4+Pj4+IEkgYW0gc3RpbGwgbm90IHN1cmUgd2hh
dCB5b3UgbWVhbi4gWWVzLCBpdCdzIG5vdCBvbmx5IHRoZSBIRE1JIHRoYXQKPj4+Pj4gbmVlZHMg
dGhpcyBjbG9jay4gVGhlIFZPUDIgbmVlZHMgaXQgYXMgd2VsbCBhbmQgdGhlIGRyaXZlciBoYW5k
bGVzIHRoYXQuCj4+Pj4KPj4+PiBJJ20gY3VyaW91cyB3aGV0aGVyIERTSS9EUCBhbHNvIG5lZWQg
dGhhdCBjbG9jayB0byBiZSBlbmFibGVkLiBJZiB0aGV5Cj4+Pj4gZG8sIHRoZW4geW91IGFyZW4n
dCBtb2RlbGluZyBoL3cgcHJvcGVybHkgQUZBSUNTLgo+Pj4KPj4+IEFzc3VtaW5nIG5vYm9keSBh
dCBSb2NrY2hpcCBkZWNpZGVkIHRvIG1ha2UgdGhpbmdzIG5lZWRsZXNzbHkgaW5jb25zaXN0ZW50
Cj4+PiB3aXRoIHByZXZpb3VzIFNvQ3MsIEhDTEtfVk9QIHNob3VsZCBiZSB0aGUgY2xvY2sgZm9y
IHRoZSBWT1AncyBBSEIgc2xhdmUKPj4+IGludGVyZmFjZS4gVXN1YWxseSwgaWYgdGhhdCBhZmZl
Y3RlZCBhbnl0aGluZyBvdGhlciB0aGFuIGFjY2Vzc2luZyBWT1AKPj4+IHJlZ2lzdGVycywgaW5k
ZWVkIGl0IHdvdWxkIHNtZWxsIG9mIHNvbWV0aGluZyBiZWluZyB3cm9uZyBpbiB0aGUgY2xvY2sg
dHJlZSwKPj4+IGJ1dCBpbiB0aGlzIGNhc2UgSSdkIGFsc28gYmUgc3VzcGljaW91cyBvZiB3aGV0
aGVyIGl0IG1pZ2h0IGhhdmUgZW5kZWQgdXAKPj4+IGNsb2NraW5nIHJlbGF0ZWQgR1JGIHJlZ2lz
dGVycyBhcyB3ZWxsIChlaXRoZXIgZGlyZWN0bHksIG9yIGluZGlyZWN0bHkgdmlhCj4+PiBzb21l
IGdhdGUgdGhhdCB0aGUgY2xvY2sgZHJpdmVyIGhhc24ndCBtb2RlbGxlZCB5ZXQpLgo+Pgo+PiBP
aywgSSBhbSBiZWdpbm5pbmcgdG8gdW5kZXJzdGFuZC4gSSB2ZXJpZmllZCB0aGF0IGhkbWksIG1p
cGkgYW5kIGRwIGFyZQo+PiBoYW5naW5nIHdoZW4gSENMS19WT1AgaXMgZGlzYWJsZWQgYnkgZGlz
YWJsaW5nIHRoYXQgY2xvY2sgdmlhIHN5c2ZzCj4+IHVzaW5nIENMT0NLX0FMTE9XX1dSSVRFX0RF
QlVHRlMuIFdoZW4gaXQncyBkaXNhYmxlZCB0aGVuIHRoZSByZWdpc3RlcnMKPj4gb2YgdGhhdCB1
bml0cyBjYW4ndCBiZSBhY2Nlc3NlZC4gSG93ZXZlciwgd2hlbiBJIGRpc2FibGUgSENMS19WT1Ag
YnkKPj4gZGlyZWN0bHkgd3JpdGluZyB0byB0aGUgZ2F0ZSBiaXQgUkszNTY4X0NMS0dBVEVfQ09O
KDIwKSB0aGVuIG9ubHkKPj4gYWNjZXNzaW5nIFZPUCByZWdpc3RlcnMgaGFuZ3MsIHRoZSBvdGhl
ciB1bml0cyBzdGF5IGZ1bmN0aW9uYWwuCj4+IFNvIGl0IHNlZW1zIGl0IG11c3QgYmUgdGhlIHBh
cmVudCBjbG9jayB3aGljaCBtdXN0IGJlIGVuYWJsZWQuIFRoZQo+PiBwYXJlbnQgY2xvY2sgaXMg
aGNsa192by4gVGhpcyBjbG9jayBzaG91bGQgYmUgaGFuZGxlZCBhcyBwYXJ0IG9mIHRoZQo+PiBS
SzM1NjhfUERfVk8gcG93ZXIgZG9tYWluOgo+Pgo+PiAJcG93ZXItZG9tYWluQFJLMzU2OF9QRF9W
TyB7Cj4+ICAgICAgICAgICAgICAgICAgcmVnID0gPFJLMzU2OF9QRF9WTz47Cj4+ICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZjcnUgSENMS19WTz4sCj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPCZjcnUgUENMS19WTz4sCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUg
QUNMS19WT1BfUFJFPjsKPj4gICAgICAgICAgICAgICAgICAgcG1fcW9zID0gPCZxb3NfaGRjcD4s
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmcW9zX3ZvcF9tMD4sCj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDwmcW9zX3ZvcF9tMT47Cj4+ICAgICAgICAgICAgICAgICAgICNw
b3dlci1kb21haW4tY2VsbHMgPSA8MD47Cj4+ICAgICAgICAgIH07Cj4gCj4gRm9yZ2V0IHRoaXMu
IFRoZSBjbG9ja3MgaW4gdGhpcyBub2RlIGFyZSBvbmx5IGVuYWJsZWQgZHVyaW5nIGVuYWJsaW5n
IG9yCj4gZGlzYWJsaW5nIHRoZSBwb3dlciBkb21haW4sIHRoZXkgYXJlIGRpc2FibGVkIGFnYWlu
IGltbWVkaWF0ZWx5IGFmdGVyd2FyZHMuCj4gCj4gT0ssIEkgbmVlZCBIQ0xLX1ZPIHRvIGFjY2Vz
cyB0aGUgSERNSSByZWdpc3RlcnMuIEkgdmVyaWZpZWQgdGhhdCBieQo+IGRpc2FibGluZyBIQ0xL
X1ZPIGF0IHJlZ2lzdGVyIGxldmVsIChDUlVfR0FURV9DT04oMjApIEJJVCgxKSkuIFRoZQo+IEhE
TUkgcmVnaXN0ZXJzIGJlY29tZSBpbmFjY2Vzc2libGUgdGhlbi4gVGhpcyBtZWFucyBJJ2xsIHJl
cGxhY2UKPiBIQ0xLX1ZPUCBpbiB0aGUgSERNSSBub2RlIHdpdGggSENMS19WTy4gRG9lcyB0aGlz
IHNvdW5kIHNhbmU/CgpXZWxsLCBpdCdzIHN0aWxsIGEgbXlzdGVyeSBoYWNrIG92ZXJhbGwsIGFu
ZCBpbiBzb21lIHdheXMgaXQgc2VlbXMgZXZlbiAKbW9yZSBzdXNwZWN0IHRvIGJlIGNsYWltaW5n
IGEgd2hvbGUgYnJhbmNoIG9mIHRoZSBjbG9jayB0cmVlIHJhdGhlciB0aGFuIAphIGxlYWYgZ2F0
ZSB3aXRoIGEgc3BlY2lmaWMgcHVycG9zZS4gSSdtIHJlYWxseSBzdGFydGluZyB0byB0aGluayB0
aGF0IAp0aGUgdW5kZXJseWluZyBpc3N1ZSBoZXJlIGlzIGEgYnVnIGluIHRoZSBjbG9jayBkcml2
ZXIsIG9yIGEgaGFyZHdhcmUgCm1pc2hhcCB0aGF0IHNob3VsZCBsb2dpY2FsbHkgYmUgd29ya2Vk
IGFyb3VuZCBieSB0aGUgY2xvY2sgZHJpdmVyLCAKcmF0aGVyIHRoYW4gaW5kaXZpZHVhbCB0aGUg
Y29uc3VtZXJzLgoKRG9lcyBpdCB3b3JrIGlmIHlvdSBoYWNrIHRoZSBjbG9jayBkcml2ZXIgdG8g
dGhpbmsgdGhhdCBQQ0xLX1ZPIGlzIGEgCmNoaWxkIG9mIEhDTEtfVk8/IEV2ZW4gaWYgdGhhdCdz
IG5vdCB0ZWNobmljYWxseSB0cnVlLCBpdCB3b3VsZCBzZWVtIHRvIAplZmZlY3RpdmVseSBtYXRj
aCB0aGUgb2JzZXJ2ZWQgYmVoYXZpb3VyIChpLmUuIGFsbCAzIHRoaW5ncyB3aG9zZSAKcmVnaXN0
ZXIgYWNjZXNzIGFwcGFyZW50bHkgKnNob3VsZCogYmUgZW5hYmxlZCBieSBhIGdhdGUgb2ZmIFBD
TEtfVk8sIApzZWVtIHRvIGFsc28gcmVxdWlyZSBIQ0xLX1ZPKS4KClRoYW5rcywKUm9iaW4uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
