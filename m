Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF74C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Apr 2024 13:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ugs/x32TzHCjdxxCJm/jR5ggxpl+H1H5GPCzOKPVQHQ=; b=AOJKbkwEM3WeP1sWSoeAAsAq65
	8k/FnkzbC1wVRrBtDNCfCs0bns0QBHFoaYZoB5kY6PbjVRaiQw0J6B2VQlBq5cf5Oyf2FowvRc7Iq
	25tNnXNxJXJBE5c/gBVo6j4c6RYXlnRfI981Im9q2lPLTPEgrMI2U9+xdo8FFEraify8DsNEkhml7
	OrymHy3pbDSjnH2I4vwiAp+1M92v2KfZ6nlhBfU/Dh08A+2Zd7RXsayKGJZDH7uOF7gFS1w0VXA9B
	hqqhkkS3TGREz7MEOUTUb6pcwcWTAb1/C2K6PwdkN9sugBuFyT5v013Y+2xYIz8ajulgQjVH6IcXD
	/nKCF02g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryXeb-0000000AbqN-0GxI;
	Sun, 21 Apr 2024 13:54:49 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryXeW-0000000Aboi-1oI2;
	Sun, 21 Apr 2024 13:54:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713707675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/4ooY+dJBDon3+uBiWdkfQ49raa8NLkoa8U8AjhBhvA=;
	b=C4CWtl+DvcM0SmFngK7FHkT2L/ZMtfaY6AswksaDF51yPAlkJLOg7sc9j+mRdNRjlt4Qqp
	IdmaYM6OJN8IGQaaHdfUybveyzIOgkjYQPTcaG46wuE2lZWRmWtxb8HmM1NGAgWJ3pM9JQ
	wKNk6Gn+OA5IDp+jcm0Fk3f+lI/aoQAcK3eEOLZG9KSbl88ppMwjFMyfYedDFfWDrSQ9A8
	roWBJ2bmEE3Ch2WLVybA4EBG02vYlB8Z+ajPSDL1A0Vrq/a0ngbUlL1cSJvgHHA/c8CEfm
	lckgPzXyZyoU65b/4Pb2yAR8GuPL2rV2qBCKp/02SE7qECbYyBMywyIlizS12Q==
Date: Sun, 21 Apr 2024 15:54:32 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, amadeus@jmu.edu.cn,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Radxa boards
In-Reply-To: <20240419-triumph-cheddar-77fc2f6948b0@spud>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
 <1888572.CQOukoFCf9@diego> <20240418-attach-tigress-bc2b9f844fc7@spud>
 <c3c4a6ad48fbd62b44991c9bfd81570a@manjaro.org>
 <20240419-triumph-cheddar-77fc2f6948b0@spud>
Message-ID: <a3930b26634a78888c9fe3013284563c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240421_065445_081466_1D1B1711 
X-CRM114-Status: GOOD (  16.41  )
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

T24gMjAyNC0wNC0xOSAxNjowOSwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+IE9uIFRodSwgQXByIDE4
LCAyMDI0IGF0IDA3OjEyOjM1UE0gKzAyMDAsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAy
NC0wNC0xOCAxOTowNCwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+PiA+IE9uIFRodSwgQXByIDE4LCAy
MDI0IGF0IDA2OjU5OjQyUE0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiA+ID4gQW0g
RG9ubmVyc3RhZywgMTguIEFwcmlsIDIwMjQsIDE4OjI2OjE5IENFU1Qgc2NocmllYiBEcmFnYW4g
U2ltaWM6Cj4+ID4gPiA+IENvcnJlY3QgdGhlIGRlc2NyaXB0aW9ucyBvZiBhIGZldyBSYWR4YSBi
b2FyZHMsIGFjY29yZGluZyB0byB0aGUgdXAtdG8tZGF0ZQo+PiA+ID4gPiBkb2N1bWVudGF0aW9u
IGZyb20gUmFkeGEgYW5kIHRoZSBkZXRhaWxlZCBleHBsYW5hdGlvbiBmcm9tIE5hb2tpLiBbMV0g
IFRvIHN1bQo+PiA+ID4gPiBpdCB1cCwgdGhlIHNob3J0IG5hbWluZywgYXMgc3BlY2lmaWVkIGJ5
IFJhZHhhLCBpcyBwcmVmZXJyZWQuCj4+ID4gPiA+Cj4+ID4gPiA+IFsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9CMjZDNzMyQTREQ0VBOUIzKzI4MmI4Nzc1LTYwMWIt
NGQ0YS1hNTEzLTQ5MjRiNzk0MDA3NkByYWR4YS5jb20vCj4+ID4gPiA+Cj4+ID4gPiA+IFN1Z2dl
c3RlZC1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+PiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPj4gPiA+ID4gLS0tCj4+
ID4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlh
bWwgfCA4ICsrKystLS0tCj4+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQo+PiA+ID4gPgo+PiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+ID4gPiA+IGluZGV4IGZj
ZjczMTZlY2Q3NC4uYWU1OGUyNWMyOWVjIDEwMDY0NAo+PiA+ID4gPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPj4gPiA+ID4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+ID4g
PiA+IEBAIC03NjcsMjIgKzc2NywyMiBAQCBwcm9wZXJ0aWVzOgo+PiA+ID4gPiAgICAgICAgICAg
IC0gY29uc3Q6IHJhZHhhLHJvY2twaXMKPj4gPiA+ID4gICAgICAgICAgICAtIGNvbnN0OiByb2Nr
Y2hpcCxyazMzMDgKPj4gPiA+ID4KPj4gPiA+ID4gLSAgICAgIC0gZGVzY3JpcHRpb246IFJhZHhh
IFJvY2syIFNxdWFyZQo+PiA+ID4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogUmFkeGEgUm9jayAy
IFNxdWFyZQo+PiA+ID4KPj4gPiA+IEkgbWF5IGJlIGp1c3QgYmxpbmQsIGJ1dCB3aGF0IGNoYW5n
ZWQgaGVyZT8KPj4gPgo+PiA+IFRoZXJlJ3Mgbm93IGEgc3BhY2UgYmVmb3JlIHRoZSAyLgo+PiAK
Pj4gRXhhY3RseS4gIFRoYXQncyBwYXJ0IG9mIHRoZSBSYWR4YSdzIG5hbWluZyBjb252ZW50aW9u
LCB3aGljaCBtYXkgYmUKPj4gc2VlbiBhcyBzb21ld2hhdCBzaW1pbGFyIHRvIHRoZSBnZW5lcmFs
IHJ1bGUgb2Ygc3BhY2luZyBvdXQgdmFsdWVzIGFuZAo+PiB0aGVpciBhc3NvY2lhdGVkIHVuaXRz
LCBlLmcuICIyIE1CIiBpcyBpbiBnZW5lcmFsIHByZWZlcnJlZCBvdmVyICIyTUIiCj4+IGluIG5l
YXJseSBhbnkga2luZCBvZiBhIGZvcm1hbGx5IGNvcnJlY3QgZG9jdW1lbnQuCj4gCj4+IEFzIGEg
c2lkZSBub3RlLCB0aGVyZSdzIGV2ZW4gc28tY2FsbGVkICJoYWxmIHNwYWNlIiBhcyBhIHR5cG9n
cmFwaGljYWwKPj4gY29udmVudGlvbiBmb3Igc3BhY2luZyBvdXQgdGhlIHZhbHVlcyBhbmQgdGhl
IGFzc29jaWF0ZWQgdW5pdHMuICBUaGF0Cj4+IG1ha2VzIGZvcm1hdHRlZCB0ZXh0IHdpdGggc3Vj
aCBzcGFjaW5nIGEgYml0IG5pY2VyLiA6KQo+IAo+IExldCdzIG5vdCBpbnRyb2R1Y2UgaGFsZiBz
cGFjZXMgaW50byB0aGUgYmluZGluZ3MgdGhvdWdoIDopCgpPZiBjb3Vyc2UuIDopCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
