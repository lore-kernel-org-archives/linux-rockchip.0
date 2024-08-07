Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89425C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 18:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7WjjVnl6IXwPtAwHYCBIAao/IOlpEJOD0w/FixTL9OM=; b=oSxEDrMbqAoezz27V5sjKfib7z
	2pT6TTPGjCz7OgOQZUh81PZpfd7HumlGqBYvbnJa7E0jiP9W2RHnKCNoOZsoOGzMSwScRCJU4PROT
	D87aMYMD7WltQpirHh0L4kH2Nz3DaX8vhyYO/WGSBVqH7PIugyeNqvR7aEQwmrWYGkAeO/9Dc+Rlg
	pinCCuICuUIGUBKoGXhC0fJIwcpDSix0RZnqMEY0//EJwaMdPtqnxHUKXDo/B0Y24fd6JkuUp68CB
	/vyfvfKCmL9SQl7ATBD1KSpd8j4mr8o/2jMkJwPVd68RHmrlEO+JoFdNRZDTf6kSi4a3KiFUZqIrB
	saifUGnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbl77-00000005u43-1Jrh;
	Wed, 07 Aug 2024 18:10:21 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbl74-00000005u3e-2I7l
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 18:10:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723054215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oD8nWQfbHdg/tDqhXZlgM/njeL+rMK+UNMTkXxoTD/E=;
	b=k5bxQP8fR+fISE1vvxabUoZnPflErejCCNiLOyU/IjZLA+bZm1H2UxdoRFJP5BkGjlK7Fw
	RJFAd6KpXw7iTZRIOYfDGr567p36sh/tn0jqINdjmn9u8+UX2Zp7+kSGxZJcdgzmq6f0cW
	vWb7QKeEVk6AhhU4QCHz4eSf96rRU+O+GCY6jyn1vcPDckzYNp9fwl8fGI8UerhlcsFFOo
	YXxM8UZtwO43uGIsKjdNd/ic1pQaWvqFo9sRojYCp96zH/y741rtmW6/tiaEauoN1nnWYd
	+8VakQm/7acPe3YslxyNMxyv/Qwq5J9zHwd1LGzBXGfZiyJG7pxf8KomwhR/Qg==
Date: Wed, 07 Aug 2024 20:10:15 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: [RFC 1/2] dt-bindings: arm: rockchip: add Radxa E52C
In-Reply-To: <ED7CECC5A1D5AB39+c52f07a4-0015-4c30-8ac8-545d3c66e167@radxa.com>
References: <20240807084642.742-1-naoki@radxa.com>
 <b7f1f8c0cdc132b175d8cfba218b4441@manjaro.org>
 <ED7CECC5A1D5AB39+c52f07a4-0015-4c30-8ac8-545d3c66e167@radxa.com>
Message-ID: <0c96e7293df0ab2bdc5ea7a25a21b8ce@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_111018_749475_3D0C607A 
X-CRM114-Status: GOOD (  13.21  )
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

T24gMjAyNC0wOC0wNyAxOTo1OSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBPbiA4LzcvMjQgMjM6
NTAsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNC0wOC0wNyAxMDo0NiwgRlVLQVVNSSBO
YW9raSB3cm90ZToKPj4+IEFkZCBkZXZpY2V0cmVlIGJpbmRpbmcgZm9yIHRoZSBSYWR4YSBFNTJD
Lgo+Pj4gCj4+PiBSYWR4YSBFNTJDIGlzIGEgY29tcGFjdCBuZXR3b3JrIGNvbXB1dGVyIHVzaW5n
IHRoZSBSb2NrY2hpcCBSSzM1ODIKPj4+IGNoaXAuCj4+PiAKPj4+IFNpZ25lZC1vZmYtYnk6IEZV
S0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4+IC0tLQo+Pj4gaG93IHNob3VsZCB3ZSBo
YW5kbGUgUkszNTgyPyBhcyBmYXIgYXMgSSBrbm93LCBpdCdzIGp1c3QgYW4gYW5vdGhlcgo+Pj4g
dmVyc2lvbiBvZiBSSzM1ODhTLgo+PiAKPj4gQ291bGQgeW91LCBwbGVhc2UsIHByb3ZpZGUgbGlu
a3MgdG8gZG93bnN0cmVhbSBrZXJuZWwgY29kZSBmcm9tCj4+IFJvY2tjaGlwIHRoYXQgc2hvd3Mg
dGhlIENQVSBhbmQgR1BVIE9QUHMgZm9yIHRoZSBSSzM1ODI/Cj4gCj4gaHR0cHM6Ly9naXRodWIu
Y29tL3JhZHhhL2tlcm5lbC9jb21taXRzL2xpbnV4LTYuMS1zdGFuLXJrcjEvCgpJbiBmYWN0LCB3
ZSdkIG5lZWQgZG93bnN0cmVhbSBzb3VyY2UgY29kZSBmcm9tIFJvY2tjaGlwIGFzIGEgcmVmZXJl
bmNlLAppbnN0ZWFkIG9mIGRvd25zdHJlYW0gc291cmNlIGNvZGUgZnJvbSBSYWR4YS4KClRoZSBs
aW5rIGF2YWxpYWJsZSBiZWxvdyBzZWVtcyB0byBwcm92aWRlIHRoZSByZXF1aXJlZCBkb3duc3Ry
ZWFtCmluZm9ybWF0aW9uIGFib3V0IHRoZSBSSzM1ODIsIHN0cmFpZ2h0IGZyb20gUm9ja2NoaXAu
ICBJJ2xsIGdvIHRocm91Z2gKaXQgYW5kIGNvbWUgYmFjayB3aXRoIGFuIHVwZGF0ZS4KCmh0dHBz
Oi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvZGV2ZWxv
cC01LjEwL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKCj4gSSBub3Rp
Y2VkIHRoZXJlIGFyZSBzb21lIGRpZmZlcmVuY2VzIGJldHdlZW4gc291cmNlIGFuZCBzY2hlbWF0
aWMuIEkKPiBndWVzcyB0aGVyZSBhcmUgc29tZSBjb3B5ICYgcGFzdGUgd29yaywgYm90aCBhcmUg
bm90IHNvIHJlbGlhYmxlLi4uCj4gCj4+IEJ5IHRoZSB3YXksIGlzIHRoZSBzY2hlbWF0aWMgb2Yg
UmFkeGEgRTUyQyBhdmFpbGFibGU/Cj4gCj4gaXQncyBub3QgeWV0IGF2YWlsYWJsZSBpbiBwdWJs
aWMuIGV2ZXJ5dGhpbmcsIGluY2x1ZGUgaGFyZHdhcmUsIGlzIFdJUC4KPiBidXQgaXQgd2lsbCBi
ZSBhdmFpbGFibGUgYmVmb3JlIGVuZCBvZiB0aGlzIG1vbnRoLgoKSSBzZWUsIHRoYW5rcyBmb3Ig
dGhlIGNsYXJpZmljYXRpb24uICBUaGVuIGl0J3MgdGhlIGJlc3QgdG8gd2FpdCB1bnRpbAp0aGUg
YWN0dWFsIHB1YmxpYyByZWxlYXNlIG9mIHRoaXMgbmV3IGJvYXJkLgoKPj4+IC0tLQo+Pj4gwqBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA2ICsr
KysrKwo+Pj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4+PiAKPj4+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlh
bWwKPj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55
YW1sCj4+PiBpbmRleCAyYWQ4MzVmNDA2OGUuLmJhNmQwM2IzN2JlZiAxMDA2NDQKPj4+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Pj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1s
Cj4+PiBAQCAtNzU5LDYgKzc1OSwxMiBAQCBwcm9wZXJ0aWVzOgo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLSBjb25zdDogcmFkeGEsY20zaQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25z
dDogcm9ja2NoaXAscmszNTY4Cj4+PiAKPj4+ICvCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IFJh
ZHhhIEU1MkMKPj4+ICvCoMKgwqDCoMKgwqDCoCBpdGVtczoKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqAgLSBlbnVtOgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcmFkeGEsZTUyYwo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazM1ODhzCj4+PiArCj4+
PiDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUmFkeGEgUm9jawo+Pj4gwqDCoMKgwqDCoMKg
wqDCoCBpdGVtczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJhZHhhLHJvY2sK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
