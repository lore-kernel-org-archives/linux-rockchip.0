Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5ADC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 21:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyJdqoVyYGNI26OERJS7WXVrkriC7lipIfZf2ZA/whw=; b=PHNXVYiS9Onfh4E7ewBZimAb/Z
	DiZcg4MCM8eHQYOvmYg7wyxHcs1QUh/HX/HSYEV/cbCLJeNDuqPS7UibgdK/5mSAbQKSSU56x+E1h
	Eq7JCOtDfTUB/STTDqH7KpEBvT7sFOXsZYRp4ikGr0C0FeQ41940Jp4cYFg8XwnPga/oCe3lScsVX
	domqyesnxmrjK2ML7gR933/O3g2u5qrrNEIc1AlaoF5hjFXciUtayAoaJIvPcv7+x62em7j7R5/mM
	Pmo4G0PCK7ELs2r034v7fHR+d3U6t2y9uR2PsJB+YndmmSStGHyRZwliEq0tT8e9FbZk79+JYhRxn
	qTp7cX4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sboFe-00000006LCr-0C9k;
	Wed, 07 Aug 2024 21:31:22 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sboF2-00000006L2v-0joW;
	Wed, 07 Aug 2024 21:30:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723066241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=clM14XZnCkKlnQEqf0XCli4TSu2XTFrkaDKcxnbToic=;
	b=TWJcjB4HIYS5OdulQ4drZ+lzlqOnbRJxLXKcRvgYDUfl7Oo4+SVaOAJ37y12rQv1PuizBj
	xkVpaoIubMZwlyVLqKiinxU7wgmaDbmwmqWNQCKNsBd+iJm65nie5Pl98C3a4Xcj3RBpvn
	flURP7yCQdIyAC9VwCtr4pOfA898ShYn6uvnNSU05UY+S5UaQtHiAwwgJGIihKHP1ANd83
	//vRPj1oPu81lYeZPTCtpcW60rPd5E5PT4Nlbr2vsbjIHZufHoIKzU+JajeiOGc5l50PWz
	GORbm6cCJY1dcp64sHX5tny8bY8W4GCHkYGtL2T8hG1CsJg+P08dURHXVxAiMg==
Date: Wed, 07 Aug 2024 23:30:40 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Florian Klink <flokli@flokli.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Kever Yang
 <kever.yang@rock-chips.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <tszucs@protonmail.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi
 on orangepi-5-plus
In-Reply-To: <4888470.OV4Wx5bFTl@latitude-fedora>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <krvprzy3iz5b7n37eo2mb6sol6pcjkxsjdbdi6sxeebwveqtnr@e52cvrlkdjsa>
 <1b2e1b1b321f84f5cbff2ae18c3eba2e@manjaro.org>
 <4888470.OV4Wx5bFTl@latitude-fedora>
Message-ID: <f524a2e5ddbec28dbbc0be4ef47a120b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_143044_675938_41709B6E 
X-CRM114-Status: GOOD (  24.45  )
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

SGVsbG8gQWxleGV5LAoKT24gMjAyNC0wOC0wNyAyMzoxMiwgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4gT24gV2VkbmVzZGF5LCBBdWd1c3QgNywgMjAyNCA5OjMyOjUx4oCvUE0gR01UKzMgRHJhZ2Fu
IFNpbWljIHdyb3RlOgo+PiBPbiAyMDI0LTA4LTA3IDIwOjE0LCBGbG9yaWFuIEtsaW5rIHdyb3Rl
Ogo+PiA+IE9uIFdlZCwgQXVnIDA3LCAyMDI0IGF0IDA3OjI0OjI3UE0gR01ULCBEcmFnYW4gU2lt
aWMgd3JvdGU6Cj4+ID4+IE9uIDIwMjQtMDgtMDcgMTk6MDAsIEZsb3JpYW4gS2xpbmsgd3JvdGU6
Cj4+ID4+PiBUaGlzIGZvbGxvd3MgdGhlIHNhbWUgbG9naWMgYXMgODJkNDBiMTQxYTRjICgiYXJt
NjQ6IGR0czogcm9ja2NoaXA6Cj4+ID4+PiBhZGQKPj4gPj4+IHJma2lsbCBub2RlIGZvciBNLjIg
S2V5IEUgV2lGaSBvbiByb2NrLTViIikuCj4+ID4+Pgo+PiA+Pj4gT24gdGhlIG9yYW5nZXBpLTUt
cGx1cywgdGhlcmUncyBhbHNvIGEgR1BJTyBwaW4gY29ubmVjdGluZyB0aGUgV2lGaQo+PiA+Pj4g
ZW5hYmxlIHNpZ25hbCBpbnNpZGUgdGhlIE0uMiBLZXkgRSBzbG90Lgo+PiA+Pj4KPj4gPj4+IFRo
ZSBleGFjdCBHUElPIFBJTiBjYW4gYmUgdmFsaWRhdGVkIGluIHRoZSBBcm1iaWFuIHJrLTUuMTAt
cmtyNAo+PiA+Pj4ga2VybmVsCj4+ID4+PiByazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0c2kgZmls
ZSBbMV0sIHdoaWNoIGNvbnRhaW5zIGEgYHdpZmlfZGlzYWJsZWAKPj4gPj4+IG5vZGUgcmVmZXJl
bmNpbmcgUktfUEM0IG9uICZncGlvMC4KPj4gPj4+Cj4+ID4+PiBTaWduZWQtb2ZmLWJ5OiBGbG9y
aWFuIEtsaW5rIDxmbG9rbGlAZmxva2xpLmRlPgo+PiA+Pj4gVGVzdGVkLWJ5OiBGbG9yaWFuIEts
aW5rIDxmbG9rbGlAZmxva2xpLmRlPgo+PiA+Pgo+PiA+PiBJIGZvcmdvdCB0byBtZW50aW9uIHRo
YXQgcHJvdmlkaW5nIGEgVGVzdGVkLWJ5IHRhZyBpcyByZWR1bmRhbnQgd2hlbgo+PiA+PiB0aGVy
ZSdzIGFscmVhZHkgYSBTaWduZWQtb2ZmLWJ5IHRhZywgYmVjYXVzZSB0aGUgbGF0dGVyIGFscmVh
ZHkKPj4gPj4gaW1wbGllcwo+PiA+PiB0aGUgZm9ybWVyLgo+PiA+Cj4+ID4gVGhpcyBjYW1lIGFm
dGVyIEkgc2VudCB0aGUgdjMuIEdlbmVyYWxseSBJIHdpc2ggcGVvcGxlIHdvdWxkIHRlc3QKPj4g
PiB0aGluZ3MKPj4gPiAtIHRob3VnaCB0b28gb2Z0ZW4gaXQncyBub3QuIEkgZXhwbGljaXRseSB0
ZXN0ZWQgdGhpcyB0byB3b3JrICh3aXRoIGEKPj4gPiB3aWZpIG1vZHVsZSBhZGRlZCB0byB0aGF0
IHNsb3QgYmVpbmcgdW5ibG9jay1hYmxlIGFmdGVyd2FyZHMpLCBhbmQKPj4gPiB3YW50ZWQgdG8g
cG9pbnQgdGhhdCBvdXQsIHRodXMgYWRkaW5nIHRoZSBUZXN0ZWQtYnkuCj4+IAo+PiBJbiBnZW5l
cmFsLCBzb21lIHRpbWUgc2hvdWxkIGJlIGFsbG93ZWQgYmV0d2VlbiBzZW5kaW5nIGNvbnNlY3V0
aXZlCj4+IHZlcnNpb25zIG9mIHRoZSBzYW1lIHBhdGNoLCBzbyBwZW9wbGUgY2FuIHByb3ZpZGUg
dGhlaXIgZmVlZGJhY2suCj4+IAo+PiBXaGVuIGl0IGNvbWVzIHRvIHRlc3RpbmcgdGhlIHN1Ym1p
dHRlZCBwYXRjaGVzLCBwbGVhc2Ugbm90ZSB0aGF0IAo+PiBzaWduaW5nCj4+IG9mZiBhIHBhdGNo
IGltcGxpZXMgdGhhdCB0aGUgc2lnbmVyIGhhcyBhbHJlYWR5LCB0byB0aGUgYmVzdCBvZiB0aGVp
cgo+PiBhYmlsaXRpZXMsIG1hZGUgc3VyZSB0aGF0IHRoZSBwYXRjaCB3b3JrcyBhcyBkZXNjcmli
ZWQgYW5kIGV4cGVjdGVkLgo+PiAKPj4gV2l0aCBhbGwgdGhhdCBpbiBtaW5kLCBwbGVhc2UgYWxs
b3cgbWUgdG8gcmVwZWF0IHRoYXQgYSBUZXN0ZWQtYnkgdGFnCj4+IHNob3VsZCBub3QgYmUgcHJv
dmlkZWQgZnJvbSB0aGUgc2FtZSBwZXJzb24gdGhhdCB0aGUgU2lnbmVkLW9mZi1ieSB0YWcKPj4g
aXMgYWxyZWFkeSBjb21pbmcgZnJvbS4gIEl0J3Mgc2ltcGx5IHJlZHVuZGFudC4KPiAKPiBKdXN0
IHR3byBjZW50czogcGVyaGFwcyBkcm9wcGluZyB0aGUgdGFnIGFuZCBleHBhbmRpbmcgdGhlIGNv
bW1pdCAKPiBtZXNzYWdlIGEKPiBiaXQgY291bGQgYmUgdGhlIGJlc3Qgb2YgYm90aCB3b3JsZHMu
IEp1c3Qgc3RhdGUgdGhhdCB5b3UgdGVzdGVkIGl0IAo+IHdpdGggc3VjaAo+IGFuZCBzdWNoIG1v
ZHVsZSwgb2JzZXJ2aW5nIHN1Y2ggYW5kIHN1Y2ggcmVzdWx0cy4gVGhhdCB3b3VsZCBhbHNvIGhl
bHAgCj4gaWYgZm9yCj4gZXhhbXBsZSBhbm90aGVyIHVzZXIgdHJpZXMgYSBkaWZmZXJlbnQgbW9k
dWxlIGFuZCB0aGF0IGZhaWxzIGR1ZSB0byAKPiBzb21lCj4gcXVpcmtzOiBpdCdzIGVhc2llciB0
byBkZWJ1ZyBhIHBvdGVudGlhbCBpc3N1ZSB3aGVuIG9uZSBrbm93cyBhIHdvcmtpbmcKPiBjb25m
aWd1cmF0aW9uIHRvIGNvbXBhcmUgYSBub24td29ya2luZyBvbmUgYWdhaW5zdC4KClRvdGFsbHkg
YWdyZWVkLiAgUHJvdmlkaW5nIGFzIG11Y2ggZGV0YWlsIG9mIHRoZSBwZXJmb3JtZWQgdGVzdGlu
ZwphcyBwb3NzaWJsZSBpbiB0aGUgcGF0Y2ggZGVzY3JpcHRpb24gaXMgYWx3YXlzIGEgZ29vZCB0
aGluZy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
