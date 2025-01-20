Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56BE2C02181
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 14:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ni4xYNkv5rYrxfUra8Pe6QhRIbnifgRhxKakut8sc9o=; b=Kc+YqY0enyTom/
	YXSvFQIQLGss4iSY1m+Ga0TlaKMj9KcuJXp7SXZUzJ0RHANoSg0Ecm5L1j26h3nhid5AfWPagar++
	T07oqiMCG9Bhvjpru81WTFB6QBNPjB8XHyylb/6A2vx1fTc2+rnSywaro6Yk96S1mmHZmVSskWiQU
	kNuYh/i+CwB7V7+244IUas9SBwl7pD2o0IaY2rRK2/LBKlncOm8j69VrWp5f6YR0DyA8w+tQqIeIx
	VMNyr4UbLxAFiWT0X6oHiub4Rc91H042fea6ZSkN4HW5hOSvIFL6FdQ2gTJ5kf2HMdJLdu8RYUkfS
	t+EITUZLVUIUBv3kna3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZszh-00000005ovN-2BWk;
	Mon, 20 Jan 2025 14:43:13 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsze-00000005oty-2TL0
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 14:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737384188;
	bh=moVdPJi6H3MH4JPSPbrrx0GBl26cgxCmGTLHQcNr0GY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=CmYnKP+xXCmB07IEOqurAWp4Q6e0Iytl8SAiyeAblFas7KkhECXkZZWVMyEhxQ+YX
	 Zf9ytFCYmprAYJ36G1rGO/xQepErSUZUJYby1UIjUKnIOLO9+XnY5riSyYc9KeVxJC
	 n7THTG2Va9HrFa6H4UuXFfgG8rsW19dcMQcbjm8scz6yTtjvZGztjEv/lhjJ4wk1Hh
	 OagQjGoZ5vcBLJ33XzVjPyBPw9jYi55fCUU3nhbINL2gE+q8CqPfKUlQPYtTcb/cXe
	 Mw8LZfynfkfVHGOMa6U5KIW0Bzuu1zkLXk5F43VAC4ph+7Vxh4iNOl19aU80O86v9F
	 At/FA8sRl0dFQ==
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:11:e976::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AB0C717E0FAA;
	Mon, 20 Jan 2025 15:43:07 +0100 (CET)
Message-ID: <e307cb3980711ed9d0ad06648b127ec8f6a9ffa9.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: HEVC: Initialize start_bit field
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Adam Ford <aford173@gmail.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Mon, 20 Jan 2025 09:43:06 -0500
In-Reply-To: <CAHCN7xKySGN6wnE2FmpuLms-DyThBvx9w6vdKqJvsaWpgW6FOQ@mail.gmail.com>
References: <20250120081052.63224-1-benjamin.gaignard@collabora.com>
	 <cc3b22c9-ff98-4328-9e70-4d22c29a6b0d@collabora.com>
	 <95a8e3c6d28444750bd312ff61a3f6b0daea177a.camel@collabora.com>
	 <CAHCN7xKySGN6wnE2FmpuLms-DyThBvx9w6vdKqJvsaWpgW6FOQ@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_064310_832973_CFBA94A6 
X-CRM114-Status: GOOD (  21.50  )
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

TGUgbHVuZGkgMjAgamFudmllciAyMDI1IMOgIDA4OjE1IC0wNjAwLCBBZGFtIEZvcmQgYSDDqWNy
aXTCoDoKPiBPbiBNb24sIEphbiAyMCwgMjAyNSBhdCA4OjEw4oCvQU0gTmljb2xhcyBEdWZyZXNu
ZQo+IDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gCj4gPiBMZSBs
dW5kaSAyMCBqYW52aWVyIDIwMjUgw6AgMTE6MDAgKzAxMDAsIEJlbmphbWluIEdhaWduYXJkIGEg
w6ljcml0IDoKPiA+ID4gTGUgMjAvMDEvMjAyNSDDoCAwOToxMCwgQmVuamFtaW4gR2FpZ25hcmQg
YSDDqWNyaXQgOgo+ID4gPiA+IEFsd2F5cyBzZXQgc3RhcnRfYml0IGZpZWxkIHRvIDAsIGlmIG5v
dCBpdCBjb3VsZCBsZWFkIHRvIGNvcnJ1cHRlZCBmcmFtZXMKPiA+ID4gPiBzcGVjaWFsbHkgd2hl
biBkZWNvZGluZyBWUDkgYml0c3RyZWFtcyBhdCB0aGUgc2FtZSB0aW1lIHNpbmNlIFZQOSBkcml2
ZXIKPiA+ID4gPiBzZXQgaXQgZm9yIGl0IG93biBwdXJwb3NlLgo+ID4gCj4gPiAgICAgICAgICAg
ICAgICBpdHMKPiA+IAo+IAo+IERvZXMgdGhpcyBpbXBhY3QgdGhlIEZsdXN0ZXIgc2NvcmU/CgpP
bmx5IGlmIHlvdSBjb25jdXJyZW50bHkgdGVzdCBWUDkgYW5kIEhFVkMgYXQgdGhlIHNhbWUgdGlt
ZS4gRmx1c3RlciBkb2VzIG5vdApwYXJhbGxlbGl6ZWQgYWNyb3NzIGNvZGVjcywgY291bGQgYmUg
YSBuaWNlIGFkZGl0aW9uIHRvIGNhdGNoIG1vcmUgaXNzdWVzLgoKTmljb2xhcwoKPiAKPiA+ID4g
PiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KPiA+ID4gCj4gPiA+IEkgY291bGQgYWRkIHRoaXMgdGFnOgo+
ID4gPiAKPiA+ID4gRml4ZXM6IGNiNWRkNWEwZmE1MTggKCJtZWRpYTogaGFudHJvOiBJbnRyb2R1
Y2UgRzIvSEVWQyBkZWNvZGVyIikKPiA+IAo+ID4gSSBoYXZlIHRlc3RlZCB0aGlzIG9uIElNWDhN
USBib2FyZCB1c2luZyB0aGUgZm9sbG93aW5nIEdTdHJlYW1lciBwaXBlbGluZS4KPiA+IEJlZm9y
ZSB0aGUgY2hhbmdlLCB0aGUgSEVWQyB3aW5kb3cgd2FzIGVudGlyZWx5IGNvcnJ1cHRlZC4gVGhl
IHN0cmVhbXMgZG9uJ3QKPiA+IG1hdHRlciBhcyBsb25nIGFzIHRoZXkgdXNlIGJvdGggSEVWQyBh
bmQgVlA5IGNvZGVjLgo+ID4gCj4gPiBnc3QtbGF1bmNoLTEuMCBcCj4gPiAgIGZpbGVzcmMgbG9j
YXRpb249aGV2Yy5tcDQgISBwYXJzZWJpbiAhIHY0bDJzbGgyNjVkZWMgISBmYWtldmlkZW9zaW5r
IFwKPiA+ICAgZmlsZXNyYyBsb2NhdGlvbj12cDkubWt2ICEgcGFyc2ViaW4gISB2NGwyc2x2cDlk
ZWMgISBmYWtldmlkZW9zaW5rCj4gPiAKPiA+IFRlc3RlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8
bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+ID4gCj4gPiAKPiA+ID4gCj4gPiA+ID4g
LS0tCj4gPiA+ID4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19n
Ml9oZXZjX2RlYy5jIHwgMSArCj4gPiA+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm9fZzJfaGV2Y19kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vaGFudHJvX2cyX2hldmNfZGVjLmMKPiA+ID4gPiBpbmRleCA4NWE0NDE0M2Iz
NzguLjBlMjEyMTk4ZGQ2NSAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4gPiA+ID4gKysrIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfaGV2Y19kZWMuYwo+ID4gPiA+
IEBAIC01MTgsNiArNTE4LDcgQEAgc3RhdGljIHZvaWQgc2V0X2J1ZmZlcnMoc3RydWN0IGhhbnRy
b19jdHggKmN0eCkKPiA+ID4gPiAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9zdHJlYW1f
bGVuLCBzcmNfbGVuKTsKPiA+ID4gPiAgICAgaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9zdHJt
X2J1ZmZlcl9sZW4sIHNyY19idWZfbGVuKTsKPiA+ID4gPiAgICAgaGFudHJvX3JlZ193cml0ZSh2
cHUsICZnMl9zdHJtX3N0YXJ0X29mZnNldCwgMCk7Cj4gPiA+ID4gKyAgIGhhbnRyb19yZWdfd3Jp
dGUodnB1LCAmZzJfc3RhcnRfYml0LCAwKTsKPiA+ID4gPiAgICAgaGFudHJvX3JlZ193cml0ZSh2
cHUsICZnMl93cml0ZV9tdnNfZSwgMSk7Cj4gPiAKPiA+IEkndmUgYWxzbyBjcm9zc2VkIGFnYWlu
c3QgImRlY29kZXJfc3dyZWdfbWFwX2cyLnhsc3giIGRvY3VtZW50YXRpb24sIGlmIHlvdSBhcmUK
PiA+IGx1Y2t5IHRvIGhhdmUgYWNjZXNzIHRvIHRoYXQsIGFuZCB3aXRoaW4gc3dyZWc1IHRoZXJl
IGlzIG9ubHkgZzJfdGVtcG9yX212cF9lCj4gPiB0aGF0IGlzIGFsc28gc2hhcmVkLCBhbmQgaXRz
IGFscmVhZHkgYmVpbmcgc2V0IGluIGJvdGggZHJpdmVycy4KPiA+IAo+ID4gUmV2aWV3ZWQtYnk6
IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiA+IAo+
ID4gCj4gPiA+ID4gCj4gPiA+ID4gICAgIGhhbnRyb193cml0ZV9hZGRyKHZwdSwgRzJfVElMRV9T
SVpFU19BRERSLCBjdHgtPmhldmNfZGVjLnRpbGVfc2l6ZXMuZG1hKTsKPiA+ID4gCj4gPiAKPiA+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
