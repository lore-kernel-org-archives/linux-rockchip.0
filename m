Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E31B1F436BD
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIGYOWuzCc+OjL8qNplV6TehKmDUD3l6ZOkNrpILf9I=; b=e9yF5x6SzrtcBY
	bKK4qBtDaa8dRbmatm/qOOCM2sK64Y8rKSx7IngxA0N9ebxVC+rbqlNRT4vKH3YLVmWvXEJUeXzPH
	Y3/5V7s4aDPRpmDdmMDXRwhdDNiAU2lZsc4ViRKRnFaAtlmpwtyyYQaI86zCKJNrGjndpslE3yq8E
	7jjP3lLRxAI2kCOjOoqWFe4rPtJSmdU+RXhXRohfEYt/m5KhC14+wYsT3NKJ48APKVJyWtPu4Lte8
	R7hzz8alkqzmpeKKB1A2towJ4VGc9Lru4ItkcB/fMjxq7aa0fHFxhHpgtpeG1TdASGnoZd//mpwUr
	TPEQ6ZYVr1N71ZkQFj9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDm9D-00000004Gdi-1BoC;
	Fri, 17 Apr 2026 16:34:27 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDm98-00000004Gcc-16XS;
	Fri, 17 Apr 2026 16:34:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776443658;
	bh=g4lO6rW3zr2fdZujOWSFg/NCpM1f2D3pE6jpFlC8CCU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=I4chTyUmARiCkAr8wAFIH6QrsG06odlCvgC9ew0ysyOYaBoBNeF4h2hi3EPiHgj2d
	 h0S1z1pVk33KxZZ5bQmbi7wDKw49dHifiBD0eKTZijhNZofq+IsgZAQ866QEfLEs5/
	 rAgFTBkDO74HFToE20td/XX5qDqfEdROD6lkl1d8RUYVzdGmOu96Mjp4szcXzCRYds
	 5c3pWvNFxcvA/lNfV5/V0NkKehYKxZRWUYz0k6qsfbX1t4jA/5/AuEd8zXqQLDub5j
	 2L2/GYTAfEzNG26ITUgJOMQ/mzapqsVDX67xPWde4PfXYezDFQcnJ6vq6VQlCwi5Yq
	 YufoG8GVwzHCQ==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EE40617E127F;
	Fri, 17 Apr 2026 18:34:17 +0200 (CEST)
Message-ID: <62f51359-9d91-4107-917b-cd722c7321c2@collabora.com>
Date: Fri, 17 Apr 2026 19:34:17 +0300
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
 <20260417-dts-rk-frl-enable-gpios-v1-5-a19c0dd8c9f6@collabora.com>
 <2000470.6tgchFWduM@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2000470.6tgchFWduM@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_093423_301016_96847CB2 
X-CRM114-Status: GOOD (  24.90  )
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

SGkgSGVpa28sCgpPbiA0LzE3LzI2IDI6MzIgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEhp
IENyaXN0aWFuLAo+IAo+IHRoZSBjb21tZW50cyBiZWxvdyBhcHBseSBzb3J0IG9mIHRvIGFsbCBw
YXRjaGVzIGluIHRoYXQgc2VyaWVzLgo+IAo+IEFtIEZyZWl0YWcsIDE3LiBBcHJpbCAyMDI2LCAx
MToyNDozOSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENyaXN0aWFuIENp
b2NhbHRlYToKPj4gVGhlIGJvYXJkIGV4cG9zZXMgdGhlIEdQSU80X0M2IGxpbmUgdG8gY29udHJv
bCB0aGUgdm9sdGFnZSBiaWFzIG9uIHRoZQo+PiBIRE1JIGRhdGEgbGluZXMuICBJdCBtdXN0IGJl
IGFzc2VydGVkIHdoZW4gb3BlcmF0aW5nIGluIEhETUkgMi4xIEZSTAo+PiBtb2RlIGFuZCBkZWFz
c2VydGVkIGZvciBIRE1JIDEuNC8yLjAgVE1EUyBtb2RlLgo+Pgo+PiBXaXJlIHVwIHRoZSBIRE1J
IG5vZGUgdG8gdGhlIEdQSU8gbGluZSB1c2luZyB0aGUgZnJsLWVuYWJsZS1ncGlvcwo+PiBwcm9w
ZXJ0eSBhbmQgZHJvcCB0aGUgbGluZSBmcm9tIHRoZSB2Y2NfNXYwX2hkbWkgcmVndWxhdG9yIHRv
IGFsbG93Cj4+IGFkanVzdGluZyB0aGUgYmlhcyB3aGVuIHRyYW5zaXRpb25pbmcgYmV0d2VlbiBU
TURTIGFuZCBGUkwgb3BlcmF0aW5nCj4+IG1vZGVzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDcmlz
dGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+PiAtLS0K
Pj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWx1Y2tmb3gtY29yZTM1NzYu
ZHRzaSB8IDkgKysrKy0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NzYtbHVja2ZveC1jb3JlMzU3Ni5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NzYtbHVja2ZveC1jb3JlMzU3Ni5kdHNpCj4+IGluZGV4IDc0OWYwYTU0YjQ3
OC4uOTNhZTM3Njk5MzY2IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU3Ni1sdWNrZm94LWNvcmUzNTc2LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NzYtbHVja2ZveC1jb3JlMzU3Ni5kdHNpCj4+IEBAIC0xNDAsMTAg
KzE0MCw3IEBAIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiAgCj4+ICAJdmNjXzV2MF9oZG1pOiBy
ZWd1bGF0b3ItdmNjLTV2MC1oZG1pIHsKPj4gIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4
ZWQiOwo+PiAtCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4+IC0JCWdwaW9zID0gPCZncGlvNCBSS19Q
QzYgR1BJT19BQ1RJVkVfSElHSD47Cj4+IC0JCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+
IC0JCXBpbmN0cmwtMCA9IDwmaGRtaV9jb25fZW4+Owo+PiArCQlyZWd1bGF0b3ItYWx3YXlzLW9u
Owo+PiAgCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPj4gIAkJcmVndWxh
dG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+ICAJCXJlZ3VsYXRvci1uYW1lID0gInZj
Y181djBfaGRtaSI7Cj4gCj4gSSB0aGluayB0aGlzIHJlZ3VsYXRvciB3YXMgc29ydCBvZiBhIGNv
bXBsZXRlIGhhY2ssIHRvIHNldCB0aGF0Cj4gZ3BpbyB0byBzb21lIHNvcnQgb2YgZGVmYXVsdCBz
dGF0ZSwgYnkgZGVjbGFyaW5nIGl0IGFzIGhkbWktcHdyLXN1cHBseS4KPiAKPiBPbmx5IDIgcmsz
NTc2IGJvYXJkcyBzZWVtLCB0byB1c2UgdGhhdCBoYWNrLCBzbyBJIHRoaW5rIGFzIHRoYXQgInJl
Z3VsYXRvciIKPiBpcyBjb21wbGV0ZWx5IGZ1bmN0aW9ubGVzcyBub3csIHRoZSB3aG9sZSB0aGlu
ZyBjb3VsZCBiZSByZW1vdmVkPwoKQWNrLCBsZXQncyBqdXN0IGRyb3AgaXQuCgo+IAo+IAo+PiBA
QCAtMjMxLDYgKzIyOCw4IEBAICZncHUgewo+PiAgfTsKPj4gIAo+PiAgJmhkbWkgewo+PiArCXBp
bmN0cmwtMCA9IDwmaGRtaV90eG0wX3BpbnMgJmhkbWlfdHhfc2NsICZoZG1pX3R4X3NkYSAmaGRt
aV9mcmxfZW4+Owo+PiArCWZybC1lbmFibGUtZ3Bpb3MgPSA8JmdwaW80IFJLX1BDNiBHUElPX0FD
VElWRV9MT1c+Owo+IAo+IHRoaXMgc2hvdWxkIGJlIHNvcnRlZCB0aGUgb3RoZXIgd2F5IGFyb3Vu
ZCBJIHRoaW5rLgo+IAo+IEFsc28gcGxlYXNlIHByb3ZpZGUgYSBwaW5jdHJsLW5hbWVzIHByb3Bl
cnR5IHRvby4gSWYgZm9yIHdoYXRldmVyIHJlYXNvbgo+IHRoZSBkdy1oZG1pIGFxdWlyZXMgYSAy
bmQgcGluY3RybCBzdGF0ZSBpbiB0aGUgZnV0dXJlLCB0aGlzIG1ha2VzIHN1cmUKPiBib2FyZCBE
VHMgYXJlIHN0YXlpbmcgaW4gdGhlICJvbGQiIGNvbXBhdGlibGUgbW9kZSB1bnRpbCB0aGV5IGFy
ZSBhZGFwdGVkLgoKSnVzdCB0byBtYWtlIHN1cmUgSSBmdWxseSB1bmRlcnN0YW5kLCB0aGUgY29u
dmVudGlvbiBpcyB0aGF0IAoKICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwoKc2hvdWxkIGJl
IGFsd2F5cyBwcm92aWRlZCwgZXZlbiB3aGVuIHRoZSBub2RlIG92ZXJyaWRlcyBhbiBleGlzdGlu
ZyBwaW5jdHJsLTAKcHJvcGVydHk/CgpFLmcuIGluIHJrMzU3Ni5kdHNpIHdlIGhhdmU6CgogIGhk
bWk6IGhkbWlAMjdkYTAwMDAgewogICAgLi4uCiAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
OwogICAgcGluY3RybC0wID0gPCZoZG1pX3R4bTBfcGlucyAmaGRtaV90eF9zY2wgJmhkbWlfdHhf
c2RhPjsKICAgIC4uLgogIH0KCkhlbmNlIEkgb21pdHRlZCBwaW5jdHJsLW5hbWVzIHdoaWNoIGRv
ZXNuJ3QgY2hhbmdlIGFuZCBqdXN0IGFwcGVuZGVkCiZoZG1pX2ZybF9lbiB0byBwaW5jdHJsLTAn
cyBvcmlnaW5hbCB2YWx1ZS4KCj4gCj4gCj4+ICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgfTsKPj4g
IAo+PiBAQCAtNjU1LDcgKzY1NCw3IEBAICZwY2llMCB7Cj4+ICAKPj4gICZwaW5jdHJsIHsKPj4g
IAloZG1pIHsKPj4gLQkJaGRtaV9jb25fZW46IGhkbWktY29uLWVuIHsKPj4gKwkJaGRtaV9mcmxf
ZW46IGhkbWktZnJsLWVuIHsKPiAKPiBwaW5jdHJsIG5hbWVzIHNob3VsZCBpZGVhbGx5IG1hdGNo
IHRoZSBuYW1pbmcgaW4gc2NoZW1hdGljcywgZm9yIGV4YW1wbGUgdGhlCj4gIkhETUkwX1RYX09O
X0giIGZvciBqYWd1YXIgYW5kIHRpZ2VyLiBUaGlzIG1ha2VzIGl0IHdheSBlYXNpZXIgdG8+IGdv
IGZyb20gRFQKPiB0byBzY2hlbWF0aWNzIGFuZCBiYWNrLgoKSSBvcHRlZCBmb3IgYSBtb3JlIGRl
c2NyaXB0aXZlIG5hbWUgdGhhdCBjb3VsZCBiZSB1c2VkIGNvbnNpc3RlbnRseSBhY3Jvc3MgYWxs
CmJvYXJkcywgZ2l2ZW4gdGhhdCBub3QgYWxsIHNjaGVtYXRpY3MgYXJlIHB1YmxpY2x5IGF2YWls
YWJsZS4KCllvdSBtYWtlIGEgZmFpciBwb2ludCB0aG91Z2gsIHdlIHNob3VsZCBwcm9iYWJseSBz
dGljayB3aXRoIHRoZSBwcmV0dHkgdGVycmlibGUKaGRtaVtOXV90eF9vbl9oIG5hbWluZyBpbnN0
ZWFkLgoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
