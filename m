Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F0B4F588EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 15:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FE4AofLWCslhN7m3YmqnrTaLJA1rf1FNPOFr8HTVmJE=; b=KVVu21pjE4M6g4
	u2nIQ1zCvbvOjS57Vb+eItucoYABl+Ml7IYPDnM2EJaX+6N9uZAj8RsSkBRtExXz+qxv/FU/Y1lcu
	nOpxIkOH7PfN0pALL+nvynZzMpA3elnGXAp0gIk4a1/jkMcy82QLe5CzBZUJKH4SfOTeHtwH+SPzS
	jcXGkmxqqtiKzaa+ivJRRC7YuPPzGjI0EVG2BjLHNLmpZ9U9FokGk29Pn98bKrN/6aQI4V4tH+Nei
	4sjq+ScCoQX6a7lqI7nr8ok2LP0LqmGmknKyoS7a3yye5NqvOl29ep6RxZiDttkEl0D3JAnXm1mNH
	mDwboF18O/0wV3paOcew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEqwJ-00000007Nil-3GK7;
	Mon, 20 Apr 2026 15:53:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEqwH-00000007Ni5-20Zu;
	Mon, 20 Apr 2026 15:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776700406;
	bh=AD5SU7VAHmOec5494xhlBBXbP87I8anCA//9QBwyto4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DqsBU3cAZqitqjmVK+sLr4bmFIpQ0J6XbYpByue8a6Mbcc3TfQS1UPd9g9fZ0wS4L
	 2pmXCQHwczCr5cK9WTdkdbmG3PakX0/qnZnEl1vutxb6PLUYbOn4kZnpicMQtrGe7K
	 bQ4AbJ7yV0Td+uwv+qzpGNzR9V+MgL/ydHQ2imXC46kmQidtbLOMQAOq3ucEaoRK2l
	 /6Qv9yJzeadicJbQJSZoDDgDMODBTjzPqgKtE2Iesm3SYErdK7AHEr+lj26iBHecV6
	 0o0mY/7DcEF3VN+kZwl2mYqxrfXss8KIP4iUdw7918pAagajKHrEYYgZeIVcykIJqR
	 kHoRpmFhAvk+g==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9105517E137D;
	Mon, 20 Apr 2026 17:53:26 +0200 (CEST)
Message-ID: <693537c8-b7d9-40e9-9c53-284c1af78e06@collabora.com>
Date: Mon, 20 Apr 2026 18:53:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3576-luckfox-core3576
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <2282688.C4sosBPzcN@phil>
 <401a020f-ca5d-4c7d-941e-f0288e144357@collabora.com>
 <2480203.yKrmzQ4Hd0@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2480203.yKrmzQ4Hd0@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_085333_760104_DD3EE308 
X-CRM114-Status: GOOD (  25.44  )
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

T24gNC8yMC8yNiA2OjE4IFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBNb250YWcsIDIw
LiBBcHJpbCAyMDI2LCAxMzowMDoyNSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hy
aWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4gSGkgSGVpa28sCj4+Cj4+IE9uIDQvMTgvMjYgMjox
MiBBTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+PiBIaSBDcmlzdGlhbiwKPj4+Cj4+PiBBbSBG
cmVpdGFnLCAxNy4gQXByaWwgMjAyNiwgMTg6MzQ6MTcgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1l
cnplaXQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4+Pj4gT24gNC8xNy8yNiAyOjMyIFBN
LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4+Pj4gdGhlIGNvbW1lbnRzIGJlbG93IGFwcGx5IHNv
cnQgb2YgdG8gYWxsIHBhdGNoZXMgaW4gdGhhdCBzZXJpZXMuCj4+Pj4+Cj4+Pj4+IEFtIEZyZWl0
YWcsIDE3LiBBcHJpbCAyMDI2LCAxMToyNDozOSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVp
dCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4+Pj4+IFRoZSBib2FyZCBleHBvc2VzIHRo
ZSBHUElPNF9DNiBsaW5lIHRvIGNvbnRyb2wgdGhlIHZvbHRhZ2UgYmlhcyBvbiB0aGUKPj4+Pj4+
IEhETUkgZGF0YSBsaW5lcy4gIEl0IG11c3QgYmUgYXNzZXJ0ZWQgd2hlbiBvcGVyYXRpbmcgaW4g
SERNSSAyLjEgRlJMCj4+Pj4+PiBtb2RlIGFuZCBkZWFzc2VydGVkIGZvciBIRE1JIDEuNC8yLjAg
VE1EUyBtb2RlLgo+Pj4+Pj4KPj4+Pj4+IFdpcmUgdXAgdGhlIEhETUkgbm9kZSB0byB0aGUgR1BJ
TyBsaW5lIHVzaW5nIHRoZSBmcmwtZW5hYmxlLWdwaW9zCj4+Pj4+PiBwcm9wZXJ0eSBhbmQgZHJv
cCB0aGUgbGluZSBmcm9tIHRoZSB2Y2NfNXYwX2hkbWkgcmVndWxhdG9yIHRvIGFsbG93Cj4+Pj4+
PiBhZGp1c3RpbmcgdGhlIGJpYXMgd2hlbiB0cmFuc2l0aW9uaW5nIGJldHdlZW4gVE1EUyBhbmQg
RlJMIG9wZXJhdGluZwo+Pj4+Pj4gbW9kZXMuCj4+Cj4+IFsuLi5dCj4+Cj4+Pj4+Cj4+Pj4+Cj4+
Pj4+PiBAQCAtMjMxLDYgKzIyOCw4IEBAICZncHUgewo+Pj4+Pj4gIH07Cj4+Pj4+PiAgCj4+Pj4+
PiAgJmhkbWkgewo+Pj4+Pj4gKwlwaW5jdHJsLTAgPSA8JmhkbWlfdHhtMF9waW5zICZoZG1pX3R4
X3NjbCAmaGRtaV90eF9zZGEgJmhkbWlfZnJsX2VuPjsKPj4+Pj4+ICsJZnJsLWVuYWJsZS1ncGlv
cyA9IDwmZ3BpbzQgUktfUEM2IEdQSU9fQUNUSVZFX0xPVz47Cj4+Pj4+Cj4+Pj4+IHRoaXMgc2hv
dWxkIGJlIHNvcnRlZCB0aGUgb3RoZXIgd2F5IGFyb3VuZCBJIHRoaW5rLgo+Pj4+Pgo+Pj4+PiBB
bHNvIHBsZWFzZSBwcm92aWRlIGEgcGluY3RybC1uYW1lcyBwcm9wZXJ0eSB0b28uIElmIGZvciB3
aGF0ZXZlciByZWFzb24KPj4+Pj4gdGhlIGR3LWhkbWkgYXF1aXJlcyBhIDJuZCBwaW5jdHJsIHN0
YXRlIGluIHRoZSBmdXR1cmUsIHRoaXMgbWFrZXMgc3VyZQo+Pj4+PiBib2FyZCBEVHMgYXJlIHN0
YXlpbmcgaW4gdGhlICJvbGQiIGNvbXBhdGlibGUgbW9kZSB1bnRpbCB0aGV5IGFyZSBhZGFwdGVk
Lgo+Pj4+Cj4+Pj4gSnVzdCB0byBtYWtlIHN1cmUgSSBmdWxseSB1bmRlcnN0YW5kLCB0aGUgY29u
dmVudGlvbiBpcyB0aGF0IAo+Pj4+Cj4+Pj4gICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
Pj4+Cj4+Pj4gc2hvdWxkIGJlIGFsd2F5cyBwcm92aWRlZCwgZXZlbiB3aGVuIHRoZSBub2RlIG92
ZXJyaWRlcyBhbiBleGlzdGluZyBwaW5jdHJsLTAKPj4+PiBwcm9wZXJ0eT8KPj4+Pgo+Pj4+IEUu
Zy4gaW4gcmszNTc2LmR0c2kgd2UgaGF2ZToKPj4+Pgo+Pj4+ICAgaGRtaTogaGRtaUAyN2RhMDAw
MCB7Cj4+Pj4gICAgIC4uLgo+Pj4+ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4+
ICAgICBwaW5jdHJsLTAgPSA8JmhkbWlfdHhtMF9waW5zICZoZG1pX3R4X3NjbCAmaGRtaV90eF9z
ZGE+Owo+Pj4+ICAgICAuLi4KPj4+PiAgIH0KPj4+Pgo+Pj4+IEhlbmNlIEkgb21pdHRlZCBwaW5j
dHJsLW5hbWVzIHdoaWNoIGRvZXNuJ3QgY2hhbmdlIGFuZCBqdXN0IGFwcGVuZGVkCj4+Pj4gJmhk
bWlfZnJsX2VuIHRvIHBpbmN0cmwtMCdzIG9yaWdpbmFsIHZhbHVlLgo+Pj4KPj4+IGNvcnJlY3Qs
IHBsZWFzZSBhbHdheXMgcHJvdmlkZSBhIHBpbmN0cmwtbmFtZXMgZW50cnkgd2hlbiBzZXR0aW5n
IGEgbmV3Cj4+PiBwaW5jdHJsLTAgLgo+Pj4KPj4+IFRoZSBiYWNrZ3JvdW5kIGlzLCBpbWFnaW5l
IHlvdSBoYXZlIGEgYmFzZToKPj4+Cj4+PiBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4g
cGluc3RybC0wID0gPC4uLi4+Owo+Pj4KPj4+IGFuZCBvdmVycmlkZSBwaW5jdHJsLTAgaW4gYSBi
b2FyZC4KPj4+Cj4+PiBOb3cgYSBuZXdlciBiaW5kaW5nIGludHJvZHVjZXMgYSAybmQgcGluY3Ry
bCBzdGF0ZSAiZm9vIi4gT2YgY291cnNlCj4+PiB3ZSdyZSBiYWNrd2FyZHMgY29tcGF0aWJsZSwg
YW5kIGJvdGggYXJlIHZhbGlkIGFuZCB0aGUgZHJpdmVyIGNoZWNrcwo+Pj4gd2hhdCBzdGF0ZXMg
YXJlIGRlZmluZWQuCj4+Pgo+Pj4gU28gdGhlIGJhc2Ugc2V0czoKPj4+IHBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCIsICJmb28iOwo+Pj4gcGluY3RybC0wID0gPC4uLj47Cj4+PiBwaW5jdHJsLTEg
PSA8Li4uPjsKPj4+Cj4+PiBpbiB5b3VyIChvbGQpIGJvYXJkIHlvdSBvdmVycmlkZSBwaW5jdHJs
LTAsIGJ1dCB0aGUgZHJpdmVyIHN0aWxsIHNlZXMKPj4+IHRoZSBuZXcgdmFyaWFudCB3aXRoIDIg
cGluY3RybCBzdGF0ZXMsIHdoZXJlIGl0IHNob3VsZCd2ZSBzdGF5ZWQgd2l0aAo+Pj4gdGhlIGxl
Z2FjeSAxLXN0YXRlLCB1bnRpbCB0aGUgYm9hcmQtZHRzIG1pZ2h0IGdldCBhZGFwdGVkIGluIHRo
ZSBmdXR1cmUuCj4+Pgo+Pj4KPj4+IEFuZCBJIGtub3csIHdlJ3JlIGxpa2VseSBub3QgZG9pbmcg
dGhhdCBldmVyeXdoZXJlLCBhbmQgYWxzbyBpbiBtb3N0Cj4+PiBjYXNlcyBpdCB3b24ndCByZWFs
bHkgbWF0dGVyLCBidXQgc3RpbGwgaXQgaXMgc2FmZXIgYW5kIHNldHMgdGhlIGJldHRlcgo+Pj4g
cHJlY2VkZW50IDotKSAuCj4+Cj4+IFRoYW5rcyBmb3IgdGhlIGRldGFpbGVkIGV4cGxhbmF0aW9u
LCB0aGF0IGNsZWFycyB0aGluZ3MgdXAhCj4+Cj4+IFRoZXJlIGFyZSBzZXZlcmFsIG90aGVyIG5v
ZGVzIChlLmcuIGkyYywgcHdtLCB1YXJ0KSB0aGF0IGFsc28gbGFjawo+PiBwaW5jdHJsLW5hbWVz
IGRlc3BpdGUgcHJvdmlkaW5nIHBpbmN0cmwtMCAtIEkgY2FuIGFkZHJlc3MgdGhvc2UgaW4gYQo+
PiBzZXBhcmF0ZSBwYXRjaC4KPiAKPiBBcyBzYWlkIGFib3ZlIGl0IGlzIGFuIGlkZWFsIHRvIGFz
cGlyZSB0byAoaGF2aW5nIC1uYW1lcyB0b2dldGhlciB3aXRoCj4gZGVmaW5pbmcgc3RhdGVzKSwg
YnV0IGlmIHlvdSB3YW50IHRvIGFkZCB0aGUgIm1pc3NpbmciIC1uYW1lcywKPiBnbyBhaGVhZCA6
LSkgLgo+IAo+IAo+PiBJIGFsc28gbm90aWNlZCBhbiBpbmNvbnNpc3RlbmN5IGluIHByb3BlcnR5
IG9yZGVyaW5nOiBzb21lIG5vZGVzIHBsYWNlCj4+IHBpbmN0cmwtbmFtZXMgYmVmb3JlIHBpbmN0
cmwtPG4+IGFuZCBvdGhlcnMgYWZ0ZXIuICBJIGhhdmUgYWx3YXlzIHVzZWQKPj4gdGhlIGZvcm1l
ciwgYnV0IHdlIHNob3VsZCBwcm9iYWJseSBwcmVmZXIgdGhlIGxhdHRlciB0byBzdGF5IGNvbnNp
c3RlbnQKPj4gd2l0aCBob3cgY2xvY2tzLCByZXNldHMsIHBoeXMsIGV0Yy4gYXJlIG9yZGVyZWQu
Cj4+Cj4+IFRob3VnaHRzPwo+IAo+IFRoZXJlIGlzIHNvcnQgb2YgYSAiY29uZmxpY3QiIGJldHdl
ZW4gcmVndWxhciBvcmRlcmluZyBhbmQgcG9zc2libHkKPiBiZXR0ZXIgcmVhZGFiaWxpdHkuIEku
ZS4gdGhlIGR0LXdyaXRpbmcgZ3VpZGVsaW5lcyBwcm9wb3NlIGFscGhhYmV0aWNhbAo+IG9yZGVy
aW5nIHdoaWNoIEkgZ3Vlc3MgcHV0cyBudW1iZXJzIGJlZm9yZSBsZXR0ZXJzLgo+IAo+IE9uIHRo
ZSBvdGhlciBoYW5kIHRoZSBzZW1hbnRpYyBkZWZpbml0aW9uIG9mIGxpc3QgdGhlIHN0YXRlcyBh
bmQgdGhlbgo+IGRlZmluZSB0aGVtIChuYW1lcyBmaXJzdCwgLTAsIC0xLCBldGMgc2Vjb25kKSBs
b29rcyBtb3JlIHNlbnNpYmxlIGZyb20KPiBhIHVuZGVyc3RhbmRpbmcgc3RhbmRwb2ludC4KPiAK
PiAKPiBCdXQgdGhlcmUgd2UnZCBlbmQgdXAgd2l0aCBzcGVjaWFsIHJ1bGVzLCBzbyBqdXN0IHN0
aWNraW5nIHRvIHRoZQo+IGJhc2Ugc29ydGluZyB3aWxsIGNhdXNlIGxlc3MgZnJpY3Rpb24gaW4g
dGhlIGxvbmcgcnVuIEkgdGhpbmsuCj4gQWthLCAtMCwgLTEgZmlyc3Q7IC1uYW1lcyBhZnRlciwg
Zm9sbG93cyB0aGUgbWFpbiBzb3J0aW5nIHN1Z2dlc3Rpb25zCj4gc28gaXQncyBlYXN5IHRvIGV4
cGxhaW4gdG8gbmV3Y29tZXJzLgoKWWVzLCB0aGF0IHNlZW1zIGxpa2UgYSBnb29kIGVub3VnaCBy
ZWFzb24gdG8gZ28gd2l0aCB0aGlzIGFwcHJvYWNoLgoKPiBCdXQgcGxlYXNlIGRvbid0IHJlLXNv
cnQgZXhpc3RpbmcgZW50cmllcyA6LSkKCk9oLCBubywgaXQncyBqdXN0IGZvciB0aGUgY3VycmVu
dCBjaGFuZ2VzLiA6LSkKClRoYW5rcywKQ3Jpc3RpYW4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
