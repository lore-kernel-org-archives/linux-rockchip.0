Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C0CC5B543
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 15:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sRzwji6jTOIs4HQEfy0o4RmrUWrhB89Ob0aK6avj7Z4=; b=3oW6T786RI4KBN
	xXNy+xpmOHmiyeFaqIRii82KSWP9nlX6VFsm4bw9oPLokbs9BHEadBpF+uYLsxANbnhQn6qNgTjyV
	AMUd89KbX/TjtN+bklW1SBUlXe98qV/DDQn74sRtmVVsqbgS9Vspy3jNR+IMwr2f2/Dli9g+2gPXX
	3tATRT0uHrPjpRXCCRAS4HGdIglzwUaBskpjR63WE/xOVeKAwfOp1k9KmrctSbWsMzuxHVatn1JFc
	fBgPA8C7pgLH4AeRWLWnZjUdlGICLdLPmN2Ap9QPjj2wUAt5zkx44nkPBoJDFx+lQLUAVWqYbi1ij
	etx3OQuJ6TV92jejOv/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP0pR-00000007IHZ-2bRr;
	Tue, 10 Jun 2025 15:23:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOwwt-00000006dBL-1dj5;
	Tue, 10 Jun 2025 11:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=/85cBozlC2xgCBTAbhplu80kMsNDggD57qUAZNnBQxI=; b=tsBVOirOAvOm71dK34kUlVeUNi
	ouTxpOtMJtNNtzjjiUEZWob1gPEsFEEPEOqcSoM3KdScCZBo/7t+WyOcGCd2XMRbdY1ROI9/wzWBN
	IrOADU6laOx8+wUXbBcCZD80AN35RejZHuXm2s/ozUkfql+al0+JYH7sPfNgaSxItrTm9KzOOKEm4
	cxB7A8agEwhqAIL5dAPt3k6iOEIV0pRtKFkGYxnS+cZ2yFOIFZ8MA2LMf9wjET5/DDQMl7o4h0dFz
	hIkIEhaE7GXDXV6L4a/19zTHLwBBvfxmudLReOsyXQEYiMdIrYadRoijTI4tS1XIDp+pgYdMNw/xf
	6pdcmNtA==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOwwq-0000iK-Fz; Tue, 10 Jun 2025 13:15:20 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add overlay for RockPro64 screen
Date: Tue, 10 Jun 2025 13:15:19 +0200
Message-ID: <7187768.GXAFRqVoOG@diego>
In-Reply-To: <78773d27-d815-4fac-a131-275bde51788d@kernel.org>
References: <20250518215944.178582-1-pbrobinson@gmail.com>
 <62276efe-13ca-448c-ad1d-ec0a8657737f@kernel.org>
 <78773d27-d815-4fac-a131-275bde51788d@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_041523_454661_94A53D55 
X-CRM114-Status: GOOD (  22.43  )
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

QW0gRGllbnN0YWcsIDEwLiBKdW5pIDIwMjUsIDEyOjQ4OjUwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiAxMC8wNi8yMDI1IDEy
OjQ0LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4gT24gMTgvMDUvMjAyNSAyMzo1OSwg
UGV0ZXIgUm9iaW5zb24gd3JvdGU6Cj4gPj4gVGhlIFBpbmU2NCB0b3VjaCBwYW5lbCBpcyBhIHBh
bmVsIGNvbnNpc3Rpbmcgb2YgdGhlIEZlaXlhbmcgZnkwNzAyNGRpMjZhMzBkCj4gPj4gcGFuZWwg
d2l0aCBhIEdvb2RpeCBndDkxMSB0b3VjaCBzY3JlZW4uIEFkZCBhIGRldmljZSB0cmVlIG92ZXJs
YXkgdG8KPiA+PiBhbGxvdyB0aGUgZGlzcGxheSB0byBiZSBlYXNpbHkgdXNlZCBvbiB0aGUgZGV2
aWNlLgo+ID4+Cj4gPj4gVGhpcyB3YXMgcHJldmlvdXNseSBpbmNsdWRlZCBpbiB0aGUgbWFpbiBk
ZXZpY2UgdHJlZSBidXQgbGVmdCBkaXNhYmxlZAo+ID4+IGJ5IGRlZmF1bHQgd2hpY2ggc3RpbGwg
cmVxdWlyZWQgcmVidWlsZGluZyB0aGUgRFQgdG8gdXNlIHRoZSBkZXZpY2UsIG5vdwo+ID4+IG92
ZXJsYXlzIGNhbiBnbyB1cHN0cmVhbSB0aGUgb3ZlcmxheSBpcyB0aGUgYmVzdCB3YXkgdG8gaGFu
ZGxlIHRoZQo+ID4+IGFkZCBvbiBkZXZpY2VzLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogUGV0
ZXIgUm9iaW5zb24gPHBicm9iaW5zb25AZ21haWwuY29tPgo+ID4+IC0tLQo+ID4+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgOSArKwo+ID4+ICAuLi4v
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQtc2NyZWVuLmR0c28gfCA4OSArKysrKysrKysr
KysrKysrKysrCj4gPj4gIDIgZmlsZXMgY2hhbmdlZCwgOTggaW5zZXJ0aW9ucygrKQo+ID4+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9j
a3BybzY0LXNjcmVlbi5kdHNvCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFr
ZWZpbGUKPiA+PiBpbmRleCAzZTg3NzFlZjY5YmExLi5jN2IxM2JmZjNhYzIwIDEwMDY0NAo+ID4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+PiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPj4gQEAgLTc3LDYgKzc3LDcg
QEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2NrLXBpLTRjLmR0Ygo+
ID4+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2s5NjAuZHRiCj4g
Pj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9ja3BybzY0LXYyLmR0
Ygo+ID4+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2twcm82NC5k
dGIKPiA+PiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1yb2NrcHJvNjQt
c2NyZWVuLmR0c28KPiA+IAo+ID4gCj4gPiBUaGlzIHdhcyBhYnNvbHV0ZWx5IG5ldmVyIGJ1aWx0
IGFzIHJlcG9ydGVkIGJ5IE5hcmVzaC4gWW91IHNob3VsZCBuZXZlcgo+ID4gc2VudCBwYXRjaGVz
IHdoaWNoIGFyZSBhdCBsZWFzdCBidWlsdCB0ZXN0ZWQuLi4gYWx0aG91Z2ggdGhleSBzaG91bGQg
YmUKPiA+IGFjdHVhbGx5IHRlc3RlZCBhcyB3ZWxsLCBidXQgaWYgY29kZSBkb2VzIG5vdCBidWls
ZCBhY3R1YWwgdGVzdGluZyBpcwo+ID4gaW1wb3NzaWJsZS4KPiAKPiBIdWgsIEkgd2FzIHdyb25n
IC0gdGhpcyBhY3R1YWxseSBidWlsZHMsIGp1c3QgY2Fubm90IGV4ZWN1dGUgaW5zdGFsbCB0YXJn
ZXQuCgpJIGRpZCBidWlsZCBpdCBhcyB3ZWxsIGFmdGVyIGFwcGx5aW5nIC0gYnV0IHN0aWxsIG1h
bmFnZWQgdG8gb3Zlcmxvb2sgdGhlIGR0c28gdnMuIGR0Ym8KQnV0IEknbSBzdXJwcmlzZWQgdGhh
dCBzdGlsbCBidWlsdCB5ZXN0ZXJkYXkKCkknbGwgYW1lbmQgdGhlIGNvbW1pdCBmb3IgdGhlIGR0
c28gLT4gZHRibyBjaGFuZ2UuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
