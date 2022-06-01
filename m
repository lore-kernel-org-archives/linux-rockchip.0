Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 874EEC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jun 2022 16:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYSnO/FnstCDcvkhAoaySHWqPC7WWr8KxsDMR6iIH2A=; b=k2sr/JAkUCeLAF
	/cz4qm2a16+f/5aifzhLHfeYH7O22NP4hX/E+3WYua2NDk5dEVdCj/PD6aj10ZjJ8CYX51RAUTIHS
	E8jtDT8D0/NO827YomnBazO/OfG36l/yvuJqkKsW+LYQpE7xBJp4U9/58iCJruaURz5vQmrg6jMoL
	+hlxBcxNdnI9fZ02qSJCYVmWPSrMeGsDHY9L5NSOhVETModZOqtYapUdKNSud1G91eXmZLafOS2E7
	+4uNhi/yXv1HvJIYn03zWYcXsnTkoKOVIFnJDe5nPJjG2eHmEAjlXvKanJKZW+rHHw1YnYc6CbqUj
	GJZNjEuerIu6Ajs1HURw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwRHy-00H9ON-Tr; Wed, 01 Jun 2022 16:33:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwRHj-00H9K5-Mp; Wed, 01 Jun 2022 16:33:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: benjamin.gaignard)
	with ESMTPSA id 185571F443D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654101205;
	bh=/k2OEvYaoBLK0+XQCL14qvZ3P2lVQFrna6Q3sC0KYJY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LhYjdTfziVYE4CSpnF0AFdDiN/mKl0eldKoNIk27TXvwqz1y4BkuAQWECFdQUJrXH
	 l+KzGfLMIjl9SgtEZPAeu3cXPpYv3N1xd2/l5sAy4/HOYN44VXAOX24VG3Tb8aCUky
	 rlbdm0bNTY2cZB1ywfHARxEW2jQ1ksKfE0ItQY/uJ8FLSQFHIFIksy3j2wPBv4GXvp
	 8/RYhcdch23W59SgxPTZojCScv8DXBdfqWLR8hf3fp8FEczZ4E14KACkdwYIV3qG9x
	 NnGuqoG0gwOc9ruYBeto8uA/uJTIo0w97QR4M/HKTaJepg9b2JYNe4qOAvGa+15AoT
	 J+WGVXVFha9kA==
Message-ID: <c330e3e1-e10c-5930-2d1d-6260cb8d64b8@collabora.com>
Date: Wed, 1 Jun 2022 18:33:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v6 16/17] media: uapi: Change data_bit_offset definition
Content-Language: en-US
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org,
 nicolas.dufresne@collabora.com, andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com>
 <20220527143134.3360174-17-benjamin.gaignard@collabora.com>
 <3175529.44csPzL39Z@kista> <7385576.EvYhyI6sBW@kista>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <7385576.EvYhyI6sBW@kista>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_093328_062901_162B69BE 
X-CRM114-Status: GOOD (  20.30  )
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

CkxlIDAxLzA2LzIwMjIgw6AgMTg6MTcsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+IERu
ZSBuZWRlbGphLCAyOS4gbWFqIDIwMjIgb2IgMDg6NDU6NTcgQ0VTVCBqZSBKZXJuZWogxaBrcmFi
ZWMgbmFwaXNhbChhKToKPj4gRG5lIHBldGVrLCAyNy4gbWFqIDIwMjIgb2IgMTY6MzE6MzMgQ0VT
VCBqZSBCZW5qYW1pbiBHYWlnbmFyZCBuYXBpc2FsKGEpOgo+Pj4gJ0YuNy4zLjYuMSBHZW5lcmFs
IHNsaWNlIHNlZ21lbnQgaGVhZGVyIHN5bnRheCcgc2VjdGlvbiBvZiBIRVZDCj4+PiBzcGVjaWZp
Y2F0aW9uIGRlc2NyaWJlcyB0aGF0IGEgc2xpY2UgaGVhZGVyIGFsd2F5cyBlbmQgYWxpZ25lZCBv
bgo+Pj4gYnl0ZSBib3VuZGFyeSwgdGhlcmVmb3JlIHdlIG9ubHkgbmVlZCB0byBwcm92aWRlIHRo
ZSBkYXRhIG9mZnNldCBpbiBieXRlcy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gICBE
b2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3Qg
fCA0ICsrLS0KPj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNf
aDI2NS5jICAgICAgICAgIHwgMiArLQo+Pj4gICBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA0ICsrLS0KPj4+ICAgMyBmaWxlcyBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJz
dCBiLwo+PiBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1j
b2RlYy5yc3QKPj4+IGluZGV4IDQ4YTg4MjVhMDAxYi4uMzcwNzk1ODFjNjYxIDEwMDY0NAo+Pj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29k
ZWMucnN0Cj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4
dC1jdHJscy1jb2RlYy5yc3QKPj4+IEBAIC0zMDA4LDggKzMwMDgsOCBAQCBlbnVtIHY0bDJfbXBl
Z192aWRlb19oZXZjX3NpemVfb2ZfbGVuZ3RoX2ZpZWxkIC0KPj4+ICAgICAgICAgLSBgYGJpdF9z
aXplYGAKPj4+ICAgICAgICAgLSBTaXplIChpbiBiaXRzKSBvZiB0aGUgY3VycmVudCBzbGljZSBk
YXRhLgo+Pj4gICAgICAgKiAtIF9fdTMyCj4+PiAtICAgICAgLSBgYGRhdGFfYml0X29mZnNldGBg
Cj4+PiAtICAgICAgLSBPZmZzZXQgKGluIGJpdHMpIHRvIHRoZSB2aWRlbyBkYXRhIGluIHRoZSBj
dXJyZW50IHNsaWNlIGRhdGEuCj4+PiArICAgICAgLSBgYGRhdGFfYnl0ZV9vZmZzZXRgYAo+Pj4g
KyAgICAgIC0gT2Zmc2V0IChpbiBieXRlcykgdG8gdGhlIHZpZGVvIGRhdGEgaW4gdGhlIGN1cnJl
bnQgc2xpY2UgZGF0YS4KPj4+ICAgICAgICogLSBfX3UzMgo+Pj4gICAgICAgICAtIGBgbnVtX2Vu
dHJ5X3BvaW50X29mZnNldHNgYAo+Pj4gICAgICAgICAtIFNwZWNpZmllcyB0aGUgbnVtYmVyIG9m
IGVudHJ5IHBvaW50IG9mZnNldCBzeW50YXggZWxlbWVudHMgaW4gdGhlCj4+IHNsaWNlIGhlYWRl
ci4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2Nl
ZHJ1c19oMjY1LmMgYi9kcml2ZXJzLwo+PiBzdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRy
dXNfaDI2NS5jCj4+PiBpbmRleCA0MTE2MDE5NzUxMjQuLjgzNTQ1NDIzOWY3MyAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+
Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5j
Cj4+PiBAQCAtNDA1LDcgKzQwNSw3IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19oMjY1X3NldHVwKHN0
cnVjdCBjZWRydXNfY3R4ICpjdHgsCj4+PiAgIAkvKiBJbml0aWFsaXplIGJpdHN0cmVhbSBhY2Nl
c3MuICovCj4+PiAgIAljZWRydXNfd3JpdGUoZGV2LCBWRV9ERUNfSDI2NV9UUklHR0VSLAo+PiBW
RV9ERUNfSDI2NV9UUklHR0VSX0lOSVRfU1dERUMpOwo+Pj4gICAKPj4+IC0JY2VkcnVzX2gyNjVf
c2tpcF9iaXRzKGRldiwgc2xpY2VfcGFyYW1zLT5kYXRhX2JpdF9vZmZzZXQpOwo+Pj4gKwljZWRy
dXNfaDI2NV9za2lwX2JpdHMoZGV2LCBzbGljZV9wYXJhbXMtPmRhdGFfYnl0ZV9vZmZzZXQgKiA4
KTsKPj4gV2hpbGUgaXQncyB0cnVlIHRoYXQgYWN0dWFsIGRhdGEgc3RhcnRzIG9uIDgtYml0IGFs
aWduZWQgYWRkcmVzcywgQ2VkcnVzIGZvcgo+PiBzb21lIHJlYXNvbiBuZWVkcyBvZmZzZXQgd2hp
Y2ggcG9pbnRzIGF0IHRoZSBlbmQgb2YgdGhlIGhlYWRlciwgYmVmb3JlCj4+IGFsaWdubWVudC4g
VGhlcmUgaXMgdmVyeSBzaW1wbGUgd2F5IHRvIGRldGVybWluZSB0aGF0LCBidXQgdW5mb3J0dW5h
dGVseQo+IHRoaXMKPj4gbWVhbnMgcmVhZGluZyBzb3VyY2UgYnVmZmVyLgo+Pgo+PiBJbiBzaG9y
dCwgYWJvdmUgY29kZSB3b24ndCB3b3JrLiBJJ2xsIHByb3ZpZGUgYSBmaXguCj4gUGxlYXNlIGlu
Y2x1ZGUgZm9sbG93aW5nIGZpeCBodHRwOi8vaXguaW8vM1o4eCBvdGhlcndpc2UgQ2VkcnVzIHdp
bGwgZmFpbCB0bwo+IGRlY29kZSBzbGljZS4KPgo+IE90aGVyIHRoYW4gZml4IGluIHByZXZpb3Vz
IGUtbWFpbCBhbmQgdGhpcyBvbmUsIGNvZGUgbG9va3MgZ29vZCBhbmQgSSdsbCBiZQo+IGFibGUg
dG8gYWRkIG1pc3NpbmcgZnVuY3Rpb25hbGl0eSB0byBDZWRydXMgd2l0aG91dCBtdWNoIHRyb3Vi
bGUgaW4gZm9sbG93IHVwCj4gc2VyaWVzLgoKVGhhbmtzIGZvciB0aGUgcGF0Y2ggaXQgd2lsbCBi
ZSBpbiB2ZXJzaW9uIDcuCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IEJlc3QgcmVnYXJkcywKPiBK
ZXJuZWoKPgo+Pj4gICAKPj4+ICAgCS8qIEJpdHN0cmVhbSBwYXJhbWV0ZXJzLiAqLwo+Pj4gICAK
Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCBiL2luY2x1ZGUvbWVk
aWEvaGV2Yy1jdHJscy5oCj4+PiBpbmRleCA5YWJjYTFhNzViZDQuLjkzNmZmNjkzOTY3YiAxMDA2
NDQKPj4+IC0tLSBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+PiArKysgYi9pbmNsdWRl
L21lZGlhL2hldmMtY3RybHMuaAo+Pj4gQEAgLTMxMiw3ICszMTIsNyBAQCBzdHJ1Y3QgdjRsMl9o
ZXZjX3ByZWRfd2VpZ2h0X3RhYmxlIHsKPj4+ICAgICogVjRMMl9DVFJMX0ZMQUdfRFlOQU1JQ19B
UlJBWSBmbGFnIG11c3QgYmUgc2V0IHdoZW4gdXNpbmcgaXQuCj4+PiAgICAqCj4+PiAgICAqIEBi
aXRfc2l6ZTogc2l6ZSAoaW4gYml0cykgb2YgdGhlIGN1cnJlbnQgc2xpY2UgZGF0YQo+Pj4gLSAq
IEBkYXRhX2JpdF9vZmZzZXQ6IG9mZnNldCAoaW4gYml0cykgdG8gdGhlIHZpZGVvIGRhdGEgaW4g
dGhlIGN1cnJlbnQKPiBzbGljZQo+PiBkYXRhCj4+PiArICogQGRhdGFfYnl0ZV9vZmZzZXQ6IG9m
ZnNldCAoaW4gYnl0ZXMpIHRvIHRoZSB2aWRlbyBkYXRhIGluIHRoZSBjdXJyZW50Cj4+IHNsaWNl
IGRhdGEKPj4+ICAgICogQG51bV9lbnRyeV9wb2ludF9vZmZzZXRzOiBzcGVjaWZpZXMgdGhlIG51
bWJlciBvZiBlbnRyeSBwb2ludCBvZmZzZXQKPiBzeW50YXgKPj4+ICAgICoJCQkgICAgIGVsZW1l
bnRzIGluIHRoZSBzbGljZSBoZWFkZXIuCj4+PiAgICAqIEBuYWxfdW5pdF90eXBlOiBzcGVjaWZp
ZXMgdGhlIGNvZGluZyB0eXBlIG9mIHRoZSBzbGljZSAoQiwgUCBvciBJKQo+Pj4gQEAgLTM1Niw3
ICszNTYsNyBAQCBzdHJ1Y3QgdjRsMl9oZXZjX3ByZWRfd2VpZ2h0X3RhYmxlIHsKPj4+ICAgICov
Cj4+PiAgIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19zbGljZV9wYXJhbXMgewo+Pj4gICAJX191MzIJ
Yml0X3NpemU7Cj4+PiAtCV9fdTMyCWRhdGFfYml0X29mZnNldDsKPj4+ICsJX191MzIJZGF0YV9i
eXRlX29mZnNldDsKPj4+ICAgCV9fdTMyCW51bV9lbnRyeV9wb2ludF9vZmZzZXRzOwo+Pj4gICAJ
LyogSVNPL0lFQyAyMzAwOC0yLCBJVFUtVCBSZWMuIEguMjY1OiBOQUwgdW5pdCBoZWFkZXIgKi8K
Pj4+ICAgCV9fdTgJbmFsX3VuaXRfdHlwZTsKPj4+IC0tIAo+Pj4gMi4zMi4wCj4+Pgo+Pj4KPj4K
Pj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
