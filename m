Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF406C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 22:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeQGLgLfvEX3qU4RxB3sAqyJd6mFZNUlSMgVxm/DgOw=; b=bA04EmKioBKhoo
	x3DlNVjnbsrBZQ0rJrQKH6DYAWUGQ7CuRaEAK0ayZim1HAOhkz2yUw62IyHkbeWirqpp4+2FNOeyF
	z7RqRJ5p3KpyACTsfqdrxrwTH6cObsf8XQsnbbrtEDB1MteriybN7KitCrdVYZQnJzow2Hr+zjnaX
	uejntViM17k0QC2qzsS/vnBNwMz68mJdcbxFlsU5yCX/m+0aVd0UARJsVALJbboWNbCDg0agUezrA
	YRCCEKgpNlkbkxlCnRHrzAuC0ygIbUuvWFXXqEq/vv5kbipv7C0Uzb21PyqzuILMBbSLTrQAu+7Az
	TDftzPOIkjyF2amkjEDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0V0b-002ZNu-0J;
	Tue, 07 Nov 2023 22:57:21 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0V0Y-002ZN5-0K
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 22:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1699397823;
 bh=63OQgizHEU87zRiwSvu33mfZCT/ztnxnRkDGWR/1lLU=;
 b=bIDMRN/VYHY1n0fc2dDmI+neX3bp6WW8KAO8Ay7WzNULVEbC6DG52D8ez1vm9JUl6QF7v83U7
 p9EIYWOptKN7GLbNxAJRsa4exZT6zEbUID1FdFrWa8izpMNq6oIuNvqYr/MJvQDsDBF/vcrFGIE
 KNB0FyOH+9qfhqdqREejPRIAfkmsa90OfRcRMg9QbdRIE7d1iy3daTk3SuHatusuLireZe6aX6V
 /gTuAn6ciEjGbNn3kOThRAzaX0zqqd9GIkoI+LhnEYTb1xjl7yX5EYRvZiyfmrzjEXPkey3seAU
 tXtIvvAtyN+kVQkmkPi82FgAqgpp1WwP92K/E0tK1W7g==
Message-ID: <bfabc182-4113-46fb-85e9-8550c97d132b@kwiboo.se>
Date: Tue, 7 Nov 2023 23:56:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/11] media: rkvdec: h264: Remove SPS validation at
 streaming start
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20231105165521.3592037-1-jonas@kwiboo.se>
 <20231105165521.3592037-6-jonas@kwiboo.se>
 <c75c894a09292775773ad338121ee81924337cf0.camel@collabora.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <c75c894a09292775773ad338121ee81924337cf0.camel@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 654ac0bea95f640b16f9fb5f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_145718_200392_DD75479F 
X-CRM114-Status: GOOD (  24.49  )
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

T24gMjAyMy0xMS0wNyAyMzowMSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBMZSBkaW1hbmNo
ZSAwNSBub3ZlbWJyZSAyMDIzIMOgIDE2OjU1ICswMDAwLCBKb25hcyBLYXJsbWFuIGEgw6ljcml0
wqA6Cj4+IFNQUyBwYXJhbWV0ZXJzIGlzIHZhbGlkYXRlZCBpbiB0cnlfY3RybCgpIG9wcyBzbyB0
aGVyZSBpcyBubyBuZWVkIHRvCj4gCj4gICAgICAgICAgICAgICAgICBhcmUKPiAKPj4gcmUtdmFs
aWRhdGUgd2hlbiBzdHJlYW1pbmcgc3RhcnRzLgo+Pgo+PiBSZW1vdmUgdGhlIHVubmVjZXNzYXJ5
IGNhbGwgdG8gdmFsaWRhdGUgc3BzIGF0IHN0cmVhbWluZyBzdGFydC4KPiAKPiBUaGlzIHBhdGNo
IGlzIG5vdCB3b3JraW5nIHNpbmNlIHVzZXIgbWF5IGNoYW5nZSB0aGUgZm9ybWF0IGFmdGVyIHRo
ZQo+IGNvbnRyb2wgaGF2ZSBiZWVuIHNldC4gVGhlIHByb3BlciBmaXggc2hvdWxkIGFjdHVhbGx5
IHJlc2V0IHRoZSBTUFMKPiAod2VsbCBhbGwgaGVhZGVyIGNvbnRyb2xzKSB0byBtYXRjaCB0aGUg
dGhlIG5ld2x5IHNldCBmb3JtYXQuIFRoZW4gdGhpcwo+IHZhbGlkYXRpb24gd29uJ3QgYmUgbmVl
ZGVkIGFueW1vcmUuCj4gCj4gVGhlIHNlcXVlbmNlIHRoYXQgaXMgcHJvYmxlbWF0aWMgYWZ0ZXIg
dGhpcyBwYXRjaCBpczoKPiAKPiBTX0ZNVCAoT1VUUFVULCB3aWR0aCwgaGVpZ2h0KTsKPiBTX0NU
UkwgKFNQUykgLy8gdmFsaWQKPiBTX0ZNVChPVVRQVVQsIHdpZHRoJywgaGVpZ2h0Jyk7IC8vIFNQ
UyBpcyBubyBsb25nZXIgdmFsaWQKPiAKPiBPbmUgc3VnZ2VzdGlvbiBJIG1heSBtYWtlIGlzIHRv
IGFkZCBhIG9wcyBzbyB0aGF0IGVhY2ggY29kZWMKPiBpbXBsZW1lbnRhdGlvbiBjYW4gcmVzZXQg
dGhlaXIgaGVhZGVyIGNvbnRyb2xzIHRvIG1ha2UgaXQgdmFsaWQgYWdhaW5zdAo+IHRoZSBuZXcg
cmVzb2x1dGlvbi4gV2l0aCB0aGF0IGluIHBsYWNlIHlvdSdsbCBiZSBhYmxlIGRyb3AgdGhlIGNo
ZWNrLgoKQWNjb3JkaW5nIHRvIHRoZSBJbml0aWFsaXphdGlvbiBzZWN0aW9uIG9mIHRoZSBWNEwy
IHN0YXRlbGVzcwpkb2N1bWVudGF0aW9uIGEgY2xpZW50IGlzIHN1cHBvc2VkIHRvIFNfQ1RSTChT
UFMpIGFmdGVyIFNfRk1UKE9VVFBVVCkuCgpodHRwczovL2RvY3Mua2VybmVsLm9yZy91c2Vyc3Bh
Y2UtYXBpL21lZGlhL3Y0bC9kZXYtc3RhdGVsZXNzLWRlY29kZXIuaHRtbCNpbml0aWFsaXphdGlv
bgoKSSBndWVzcyB0aGF0IGFsbCBzdGF0ZWxlc3MgZGVjb2RlcnMgcHJvYmFibHkgc2hvdWxkIHJl
c2V0IGFsbCBjdHJscyB0bwpkZWZhdWx0IHZhbHVlIG9uIFNfRk1UKE9VVFBVVCkgb3IgZGVjb2Rl
cnMgbWF5IGVuZCB1cCBpbiBhbiB1bmV4cGVjdGVkCnN0YXRlPwoKSXMgcmVzZXR0aW5nIGEgY3Ry
bCB2YWx1ZSBiYWNrIHRvIGRlZmF1bHQgc29tZXRoaW5nIHRoYXQgaXMgc3VwcG9ydGVkIGJ5CnY0
bDIgY3RybCBjb3JlPyBEaWQgbm90IGZpbmQgYW55IG9idmlvdXMgd2F5IHRvIHJlc2V0IGEgY3Ry
bCB2YWx1ZS4KCldpbGwgcHJvYmFibHkganVzdCBkcm9wIHRoaXMgcGF0Y2ggaW4gdjUuCgpSZWdh
cmRzLApKb25hcwoKPiAKPiBOaWNvbGFzCj4gCj4gcC5zLiB5b3UgY2FuIGFsc28ganVzdCBkcm9w
IHRoaXMgcGF0Y2ggZnJvbSB0aGUgc2VyaWVzIGFuZCByZXZpc2l0IGl0Cj4gbGF0ZXIsIHRob3Vn
aCBJIHRoaW5rIGl0cyB3b3J0aCBmaXhpbmcuCj4gCj4+Cj4+IFN1Z2dlc3RlZC1ieTogRXplcXVp
ZWwgR2FyY2lhIDxlemVxdWllbEB2YW5ndWFyZGlhc3VyLmNvbS5hcj4KPj4gU2lnbmVkLW9mZi1i
eTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgo+PiAtLS0KPj4gdjQ6Cj4+IC0gTm8g
Y2hhbmdlCj4+Cj4+IHYzOgo+PiAtIE5ldyBwYXRjaAo+Pgo+PiAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jIHwgMTkgKystLS0tLS0tLS0tLS0tLS0tLQo+PiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPj4gaW5kZXggOGJjZTg5MDJi
OGRkLi44MTVkNTM1OWRkZDUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a3ZkZWMvcmt2ZGVjLWgyNjQuYwo+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVj
L3JrdmRlYy1oMjY0LmMKPj4gQEAgLTEwNzAsMTcgKzEwNzAsNiBAQCBzdGF0aWMgaW50IHJrdmRl
Y19oMjY0X3N0YXJ0KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgpCj4+ICAJc3RydWN0IHJrdmRlY19k
ZXYgKnJrdmRlYyA9IGN0eC0+ZGV2Owo+PiAgCXN0cnVjdCBya3ZkZWNfaDI2NF9wcml2X3RibCAq
cHJpdl90Ymw7Cj4+ICAJc3RydWN0IHJrdmRlY19oMjY0X2N0eCAqaDI2NF9jdHg7Cj4+IC0Jc3Ry
dWN0IHY0bDJfY3RybCAqY3RybDsKPj4gLQlpbnQgcmV0Owo+PiAtCj4+IC0JY3RybCA9IHY0bDJf
Y3RybF9maW5kKCZjdHgtPmN0cmxfaGRsLAo+PiAtCQkJICAgICAgVjRMMl9DSURfU1RBVEVMRVNT
X0gyNjRfU1BTKTsKPj4gLQlpZiAoIWN0cmwpCj4+IC0JCXJldHVybiAtRUlOVkFMOwo+PiAtCj4+
IC0JcmV0ID0gcmt2ZGVjX2gyNjRfdmFsaWRhdGVfc3BzKGN0eCwgY3RybC0+cF9uZXcucF9oMjY0
X3Nwcyk7Cj4+IC0JaWYgKHJldCkKPj4gLQkJcmV0dXJuIHJldDsKPj4gIAo+PiAgCWgyNjRfY3R4
ID0ga3phbGxvYyhzaXplb2YoKmgyNjRfY3R4KSwgR0ZQX0tFUk5FTCk7Cj4+ICAJaWYgKCFoMjY0
X2N0eCkKPj4gQEAgLTEwODksOCArMTA3OCw4IEBAIHN0YXRpYyBpbnQgcmt2ZGVjX2gyNjRfc3Rh
cnQoc3RydWN0IHJrdmRlY19jdHggKmN0eCkKPj4gIAlwcml2X3RibCA9IGRtYV9hbGxvY19jb2hl
cmVudChya3ZkZWMtPmRldiwgc2l6ZW9mKCpwcml2X3RibCksCj4+ICAJCQkJICAgICAgJmgyNjRf
Y3R4LT5wcml2X3RibC5kbWEsIEdGUF9LRVJORUwpOwo+PiAgCWlmICghcHJpdl90YmwpIHsKPj4g
LQkJcmV0ID0gLUVOT01FTTsKPj4gLQkJZ290byBlcnJfZnJlZV9jdHg7Cj4+ICsJCWtmcmVlKGgy
NjRfY3R4KTsKPj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4+ICAJfQo+PiAgCj4+ICAJaDI2NF9jdHgt
PnByaXZfdGJsLnNpemUgPSBzaXplb2YoKnByaXZfdGJsKTsKPj4gQEAgLTExMDAsMTAgKzEwODks
NiBAQCBzdGF0aWMgaW50IHJrdmRlY19oMjY0X3N0YXJ0KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgp
Cj4+ICAKPj4gIAljdHgtPnByaXYgPSBoMjY0X2N0eDsKPj4gIAlyZXR1cm4gMDsKPj4gLQo+PiAt
ZXJyX2ZyZWVfY3R4Ogo+PiAtCWtmcmVlKGgyNjRfY3R4KTsKPj4gLQlyZXR1cm4gcmV0Owo+PiAg
fQo+PiAgCj4+ICBzdGF0aWMgdm9pZCBya3ZkZWNfaDI2NF9zdG9wKHN0cnVjdCBya3ZkZWNfY3R4
ICpjdHgpCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
