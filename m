Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C4B1CCFA0D
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 03:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0fYsWxtPdTOhMcO7rMNN3R9LnT+iNV2k19Ie+qjL2I=; b=mMnQ5iETOtjquS
	MEyBeo4Hl7gleMjP/DBw8r+krpvHn8NrJzFieXHNmLidXLOQjCTCOQAisUguCLDxgVy3o7u3oRP3D
	WxcL33feUX/9WYzbGL1MxzGATXpNykOPo/ZyDvOUhFUvAyyoi6sljUOEtnY63KaB9X0n4AqAn5hMi
	YM3hDZ5KFt+X143tM9ndTjpQbQGSaslSMN5tws1+nGCzmvy58LkWXYa/nT8lhDK420tyCNLIBRhal
	jAZXCuBaWpD7hV7fDMkifsmqogwgZ8GiIeIxRWohN7tzFaheN22aSmtWlEq9CCG4cKGOKimACmB3N
	TWiyK06xFlBhZiLGsH6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGqiq-0000000Eou2-1BPy;
	Thu, 06 Nov 2025 03:31:40 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGqio-0000000Eooe-0UnI
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 03:31:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id D6C9140F7A;
	Thu,  6 Nov 2025 04:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762399892; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=SWWzg5H94lHh9buLKIaiUJFjPPZVUI7WXndqnCOHcco=;
	b=soBrfV3vVnaf+j1XcTnKYf+7T5a0OYEQbPlCcMmjMR6QtOCWz32tmpmczFwH2S4PiLtea4
	+Smr+43ryd14Z3FjNzUsSE4lBJ0cKe6Yx8hb3Y8O54QfZrEFsJhaVLsX30+q1Wy8QbNjju
	YKvxQEQfeNn5KZqEZUIWU9FUc4i1ilQkjitdmtXd4DMc0cshYZ/9++wQ+FIv0wmQODv30R
	oojbNBIMV4KAC1CWZUWhfvwelTT4o6qCpfWZn4pFzMjos/JCxkbMvK27V/kA0djxRIXWnl
	xmYgm6J8qJttFLd/+tFnNDZGY+z72E6KYa9lF4j3PPm8F0dod+4DoFie4IfEuw==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com> <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
Date: Thu, 06 Nov 2025 04:31:27 +0100
Cc: "Jimmy Hon" <honyuenkwun@gmail.com>, heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v6 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Radxa CM5 IO Board
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_193138_523463_267B7670 
X-CRM114-Status: GOOD (  20.89  )
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

SGVsbG8gTmFva2ksCgpPbiBUaHVyc2RheSwgTm92ZW1iZXIgMDYsIDIwMjUgMDA6MzggQ0VULCBG
VUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+IE9uIDExLzYvMjUgMDM6Mjcs
IEppbW15IEhvbiB3cm90ZToKPiA+IE9uIFR1ZSwgTm92IDQsIDIwMjUgYXQgMTE6MTTigK9QTSBG
VUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gVGhlIFJhZHhh
IENNNSBJTyBCb2FyZCBpcyBhbiBhcHBsaWNhdGlvbiBib2FyZCBmb3IgdGhlIFJhZHhhIENNNS4K
PiA+Pgo+ID4+IFNwZWNpZmljYXRpb246Cj4gPiAKPiA+PiAtIDF4IG1pY3JvU0QgY2FyZCBzbG90
Cj4gPiAKPiA+IFsgc25pcCBdCj4gPiAKPiA+PiArCj4gPj4gKyZzZG1tYyB7Cj4gPj4gKyAgICAg
ICBidXMtd2lkdGggPSA8ND47Cj4gPj4gKyAgICAgICBjYXAtbW1jLWhpZ2hzcGVlZDsKPiA+PiAr
ICAgICAgIGNhcC1zZC1oaWdoc3BlZWQ7Cj4gPj4gKyAgICAgICBjZC1ncGlvcyA9IDwmZ3BpbzAg
UktfUEE0IEdQSU9fQUNUSVZFX0xPVz47Cj4gPj4gKyAgICAgICBkaXNhYmxlLXdwOwo+ID4+ICsg
ICAgICAgbm8tc2RpbzsKPiA+PiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
Pj4gKyAgICAgICBwaW5jdHJsLTAgPSA8JnNkbW1jX2J1czQgJnNkbW1jX2NsayAmc2RtbWNfY21k
PjsKPiA+PiArICAgICAgIHNkLXVocy1zZHIxMDQ7Cj4gPj4gKyAgICAgICB2bW1jLXN1cHBseSA9
IDwmdmNjXzN2M19zMz47Cj4gPj4gKyAgICAgICB2cW1tYy1zdXBwbHkgPSA8JnZjY2lvX3NkX3Mw
PjsKPiA+PiArICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+PiArfTsKPiA+IAo+ID4gV2hlbiB1
c2VkIGFzIGEgVEYgc2xvdCwgc2hvdWxkbid0IHRoZXJlIGJlIGEgIm5vLW1tYyIgYWxzbz8KPiAK
PiBXZSBoYXZlICJlTU1DIHRvIHVTRC4iCj4gICBodHRwczovL3JhZHhhLmNvbS9wcm9kdWN0cy9h
Y2Nlc3Nvcmllcy9lbW1jLXRvLXVzZAo+IAo+IFsgIDIwMi4xNzY3NTddIG1tY19ob3N0IG1tYzE6
IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQ5NTAwMDAwSHogKHNsb3QgcmVxIAo+IDUyMDAwMDAwSHos
IGFjdHVhbCA0OTUwMDAwMEhaIGRpdiA9IDApCj4gWyAgMjAyLjE3ODQ3N10gbW1jMTogbmV3IGhp
Z2ggc3BlZWQgTU1DIGNhcmQgYXQgYWRkcmVzcyAwMDAxCj4gWyAgMjAyLjE3OTUzNF0gbW1jYmxr
MTogbW1jMTowMDAxIFNMRDY0RyA1Ny42IEdpQgo+IFsgIDIwMi4yMDczMzZdIG1tY2JsazFib290
MDogbW1jMTowMDAxIFNMRDY0RyA0LjAwIE1pQgo+IFsgIDIwMi4yMTAzNzRdIG1tY2JsazFib290
MTogbW1jMTowMDAxIFNMRDY0RyA0LjAwIE1pQgo+IFsgIDIwMi4yMTI5NjddIG1tY2JsazFycG1i
OiBtbWMxOjAwMDEgU0xENjRHIDQuMDAgTWlCLCBjaGFyZGV2ICg1MTE6MSkKPiAKPiAoSSdtIG5v
dCBzdXJlIHdoeSBpdCBzYXlzICJOb3Qgd29yayB3aXRoIHRoZSBTRCBzbG90IG9uIHRoZSBib2Fy
ZC4iIEkgCj4gd2lsbCBjaGVjay4pCgpUaGFua3MgZm9yIGJyaW5naW5nIHRoaXMgdXAsIEkndmUg
YWx3YXlzIHdvbmRlcmVkIGhvdyBhcmUgc3VjaApzaW1wbGUgZU1NQy10by1taWNyb1NEIGFkYXB0
ZXJzIHN1cHBvc2VkIHRvIHdvcmssIHNvIHRoaXMgd2FzCmEgZ29vZCBvcHBvcnR1bml0eSB0byBy
ZXNlYXJjaCB0aGF0IGEgYml0IGZ1cnRoZXIuCgpJbiBhIGZldyB3b3JkcywgdGhleSdyZSBub3Qg
c3VwcG9zZWQgdG8gd29yayBpbiB0cnVlIG1pY3JvU0QgY2FyZApzbG90cywgYW5kIHRoZXkgc2Vl
bSB0byByZWx5IG9uIFVTQiBjYXJkIHJlYWRlcnMgdGhhdCBzdXBwb3J0Cm11bHRpcGxlIGNhcmQg
aW50ZXJmYWNlIHN0YW5kYXJkcywgYnV0IG5vdCBtb3JlIHRoYW4gYSBzaW5nbGUgY2FyZAphdCBv
bmNlLCBieSB3aXJpbmcgdGhlaXIgc2luZ2xlIGludGVyZmFjZSBsaW5lcyBpbiBwYXJhbGxlbCB0
byB0aGUKZGlmZmVyZW50IHR5cGVzIG9mIGNhcmQgc2xvdHMgdGhhdCB0aGV5IHByb3ZpZGUuCgpU
byBleHBsYWluIGl0IGEgYml0IGZ1cnRoZXIsIGFuIGVNTUMgY2hpcCBzdXBwb3J0cyBkaWZmZXJl
bnQgZGF0YQpidXMgd2lkdGhzIGFuZCBhIGJhY2t3YXJkLWNvbXBhdGlibGUgTU1DIGNhcmQgbW9k
ZSwgYnV0IHRoZXkgaGF2ZQp2ZXJ5IGxpdHRsZSBrbm93bGVkZ2UgYWJvdXQgdGhlIFNEIHNwZWNp
ZmljYXRpb24sIGRlc3BpdGUgYmVpbmcKc29tZXdoYXQgc2ltaWxhcjsgdGhlIGV4Y2VwdGlvbiBp
cyB0aGUgc2ltcGxpZmllZCBlTU1DIGJvb3QgbW9kZS4KVGhpcyBpcyBleHBsYWluZWQgZnVydGhl
ciBpbiB0aGUgSkVERUMgSkVTRDg0LUI1MSBzdGFuZGFyZCwgd2hpY2gKaXMgYXZhaWxhYmxlIGZy
ZWVseSBmcm9tIHRoZSBKRURFQyB3ZWJzaXRlIGFmdGVyIHJlZ2lzdHJhdGlvbi4KClRoaXMgaXMg
YWxzbyBjb25maXJtZWQgYnkgdGhlIGtlcm5lbCBtZXNzYWdlcyBxdW90ZWQgYWJvdmUsIHdoaWNo
CnNob3cgdGhhdCB0aGUgZU1NQyBjaGlwIGlzIGRldGVjdGVkIGFzIGFuIE1NQyBjYXJkIHRoaXMg
d2F5LgoKV2l0aCBhbGwgdGhhdCBpbiBtaW5kLCB3ZSBzaG91bGQgc3BlY2lmeSAibm8tbW1jIiBo
ZXJlLCBiZWNhdXNlCndlJ3JlIGRlc2NyaWJpbmcgYSBtaWNyb1NEIHNsb3QsIGluc3RlYWQgb2Yg
ZGVzY3JpYmluZyBzb21lIGh5YnJpZApNTUMvbWljcm9TRCBzbG90LiAgVGhhdCBhbHNvIGV4cGxh
aW5zIHdoeSB0aGUgYWRhcHRlciBzb2xkIGJ5IFJhZHhhCmlzIGRlc2NyaWJlZCBhcyBub3QgdG8g
YmUgdXNlZCB3aXRoIG1pY3JvU0QgY2FyZCBzbG90cyBvbiBTQkNzLiAgSSdkCmFsc28gbGlrZSB0
byBoZWFyIGlzIHRoaXMgYWRhcHRlci9lTU1DIGNoaXAgY29tYm8gcmVjb2duaXplZCBieSB0aGUK
a2VybmVsIHdoZW4gIm5vLW1tYyIgaXMgc3BlY2lmaWVkOyBpdCBzaG91bGQgZmFpbC4KCkFjdHVh
bGx5LCBub3Qgc3BlY2lmeWluZyAibm8tbW1jIiBoZXJlIG1heSByZXN1bHQgaW4gc29tZSB1bmZv
cmVzZWVuCmlzc3VlcyB3aXRoIHNvbWUgKG9yIHBlcmhhcHMgbWFueT8pIG1pY3JvU0QgY2FyZHMs
IGJlY2F1c2UgdGhlIE1NQwpkcml2ZXJzIHdpbGwgdHJlYXQgdGhlbSBhcyBNTUMtY2FwYWJsZSBk
ZXZpY2VzIGFuZCB0cnkgdG8gaW5pdGlhbGl6ZQp0aGVtIGFzIHN1Y2gsIHdoaWNoIG1heSBjYXVz
ZSBhbGwga2luZHMgb2YgaXNzdWVzLiAgSW4gZmFjdCwgSSdtIG5vdApyZWFsbHkgc3VyZSB0aGF0
IHRoZSBNTUMgZHJpdmVycyBhcmUgYWN0dWFsbHkgaW1wbGVtZW50ZWQgaW4gYSB3YXkKdGhhdCBh
dm9pZHMgYWxsIHBvc3NpYmxlIGlzc3VlcyB3aXRoIHRoZSBzdG9yYWdlIGNvbnRyb2xsZXJzIHRo
YXQKYXJlIGNhcGFibGUgb2YgYm90aCBTRCBhbmQgTU1DIG1vZGVzIHdoZW4gbmVpdGhlciBvZiAi
bm8tc2QiIGFuZAoibm8tbW1jIiBpcyBzcGVjaWZpZWQgaW4gdGhlaXIgRFQgbm9kZXMuCgpGdXJ0
aGVybW9yZSwgaXQgc2VlbXMgdGhhdCBzcGVjaWZ5aW5nICJjYXAtbW1jLWhpZ2hzcGVlZCIgdG9n
ZXRoZXIKd2l0aCAibm8tZW1tYyIgaXMgYWN0dWFsbHkgcmVkdW5kYW50LCB3aGljaCB3b3VsZCBt
YWtlIHNlbnNlLCBidXQKZnVydGhlciByZXNlYXJjaCBvZiB0aGUgTU1DIGRyaXZlcnMgaXMgbmVl
ZGVkLiAgSSd2ZSBhZGRlZCB0aGF0IHRvCm15IGV2ZXItZ3Jvd2luZyBUT0RPIGxpc3QuIDopCgo+
ID4gVGhhdCdzIGhvdyB0aGUgUm9jayA1QSwgNUIsIGFuZCA1QyB3ZXJlIGRlZmluZWQuCj4gCj4g
SSBoYXZlIHN1Ym1pdHRlZCBhIHBhdGNoIHdpdGhvdXQgIm5vLW1tYyIgYmVmb3JlLiBJIGludGVu
ZCB0byBzZW5kIG9uZSAKPiBhZ2FpbiB3aGVuIEkgaGF2ZSB0aGUgY2hhbmNlLgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
