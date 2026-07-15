Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C07C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 11:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdQQRFoMMeGqUpslnng4/vDxISB1OHQeLmKpXNyELxE=; b=yG0p7m9oZ6xydR
	26FP2zKmCvMeoVGLCnud1cH6d5TpUhLHT+Pwhp7QpBiVbO0MI6MuP0G1nKplygop2gbo9jzYyvarj
	q1EvHk5NVWs9PdiyFi1cqbY98SA/zSW9B+a2Cxqfecrxak5/IT+41uP2217w0ArxqZnX1o6k5VsEV
	tq7OFNJS7TLkPySXPBg60mrQshIzLZjlaeujH8aB2NL2wnmyCnnzxkzqwEhrxhuvRMAMKCntdYrJs
	Yu5tNKHDernJo8eKScH2Cg2TF9viUNBu+1IBVLJlrxboltJYDWzqpisGfPl/wnpwTnonSmgwXR4mg
	uG3PNj0Hg4r6lD/q/ZKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjy18-0000000Ebth-3fbv;
	Wed, 15 Jul 2026 11:43:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjy15-0000000EbsP-3R2H;
	Wed, 15 Jul 2026 11:43:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4iI7cm50TUfbt29M1XzW54/S6U86vKbruO9GvSiUuH0=; b=sWAGpdJCjLiATuC2iZfg0E1iT8
	5rxsKju5Y4nlh3QLn3hMx6qr69JvQ1H46Qx/HsW0jfcCJ9E1uEAmYxCjAQk2N1mtHLO9iWgx3hQs8
	hURR00Tun5XOsU60sNFUfEPbTRh8BX9ZGBbA93gw79jfPTfSrl2OZEsjqWvI64QdLJvaUQ5Wx/+G5
	KKAilP1EEdH8GzlFbgiWs3V+WrQiRkVrbjAZc+M5qkCbE2v7zdTBdvkCY5p0xCv7498A0R+kbF7Uu
	OXI6aZs476f1wARdihN6FYfJJSsSUK9FYe2uyZvk04uj3HRJz4PWbcZoATcASfIVPLNZLOCeHh7bx
	6hx4xtyw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: srini@kernel.org, Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: rockchip-efuse: add
 rockchip,efuse-write-enable property
Date: Wed, 15 Jul 2026 13:42:56 +0200
Message-ID: <2363663.KTMopqUuYO@diego>
In-Reply-To: <20260715110107.409204-2-hrushirajg23@gmail.com>
References: <20260715110107.409204-1-hrushirajg23@gmail.com>
 <20260715110107.409204-2-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_044307_909074_EB2E6104 
X-CRM114-Status: GOOD (  18.12  )
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

QW0gTWl0dHdvY2gsIDE1LiBKdWxpIDIwMjYsIDEzOjAxOjA2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgSHJ1c2hpcmFqIEdhbmRoaToKPiBBZGQgYW4gb3B0aW9uYWwgYm9v
bGVhbiBwcm9wZXJ0eSB0byBleHBsaWNpdGx5IG9wdCBpbiB0byB3cml0ZSAoT1RQCj4gcHJvZ3Jh
bW1pbmcpIHN1cHBvcnQuIGVGdXNlIGJpdHMgYXJlIG9uZS10aW1lLXByb2dyYW1tYWJsZSBhbmQK
PiBwZXJtYW5lbnRseSBzZXQgb25jZSB3cml0dGVuOyB3cml0ZSBzdXBwb3J0IG11c3QgdGhlcmVm
b3JlIG5vdCBiZQo+IGVuYWJsZWQgYnkgZGVmYXVsdCBvbiBhcmJpdHJhcnkgYm9hcmRzLgo+IAo+
IEJvYXJkcyB0aGF0IGludGVuZCB0byB1c2Ugc29mdHdhcmUtaW5pdGlhdGVkIGVGdXNlIHByb2dy
YW1taW5nIChlLmcuCj4gZmFjdG9yeSBrZXkgcHJvdmlzaW9uaW5nKSBtdXN0IGRlY2xhcmUgdGhp
cyBwcm9wZXJ0eSBhbmQgbXVzdCBlbnN1cmUKPiB0aGUgcmVxdWlyZWQgVlFQUyBwcm9ncmFtbWlu
ZyBzdXBwbHkgKDEuOFYgdG8gMS45OFYgcGVyIFJLMzM5OSBUUk0pCj4gaXMgcHJlc2VudCBhbmQg
Y29ycmVjdGx5IHNlcXVlbmNlZCBkdXJpbmcgd3JpdGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhy
dXNoaXJhaiBHYW5kaGkgPGhydXNoaXJhamcyM0BnbWFpbC5jb20+Cj4gLS0tCj4gIC4uLi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL252bWVtL3JvY2tjaGlwLWVmdXNlLnlhbWwgICAgIHwgMTEgKysrKysr
KysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL252bWVtL3JvY2tjaGlwLWVmdXNl
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnZtZW0vcm9ja2NoaXAt
ZWZ1c2UueWFtbAo+IGluZGV4IGI4MGZkOGQxYWU1Yi4uOGE3MTk1MjQ1Yzg0IDEwMDY0NAo+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9udm1lbS9yb2NrY2hpcC1lZnVz
ZS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL252bWVtL3Jv
Y2tjaGlwLWVmdXNlLnlhbWwKPiBAQCAtNDYsNiArNDYsMTcgQEAgcHJvcGVydGllczoKPiAgICAg
ICAgdGhpcyBwcm9wZXJ0eSBpcyBkZWZpbmVkLgo+ICAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMu
eWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCj4gIAo+ICsgIHJvY2tjaGlwLGVmdXNlLXdyaXRlLWVu
YWJsZToKPiArICAgIHR5cGU6IGJvb2xlYW4KPiArICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBF
bmFibGUgd3JpdGUgKHByb2dyYW1taW5nKSBzdXBwb3J0IGZvciB0aGlzIGVGdXNlIGJsb2NrLiBl
RnVzZSBiaXRzCj4gKyAgICAgIGFyZSBvbmUtdGltZS1wcm9ncmFtbWFibGU7IHNldHRpbmcgYSBi
aXQgaXMgcGVybWFuZW50IGFuZCBjYW5ub3QgYmUKPiArICAgICAgdW5kb25lLiBUaGlzIHByb3Bl
cnR5IG11c3Qgb25seSBiZSBzZXQgb24gYm9hcmRzIHdoZXJlIGlycmV2ZXJzaWJsZQo+ICsgICAg
ICBPVFAgcHJvZ3JhbW1pbmcgZnJvbSBzb2Z0d2FyZSBpcyBhbiBpbnRlbmRlZCB1c2UgY2FzZSAo
ZS5nLiBmYWN0b3J5Cj4gKyAgICAgIHByb3Zpc2lvbmluZyksIGFuZCB3aGVyZSB0aGUgcmVxdWly
ZWQgVlFQUyBwcm9ncmFtbWluZyB2b2x0YWdlCj4gKyAgICAgICgxLjhWIHRvIDEuOThWIHBlciBS
SzMzOTkgVFJNKSBpcyBndWFyYW50ZWVkIHRvIGJlIHByZXNlbnQgYW5kCj4gKyAgICAgIGNvcnJl
Y3RseSBzZXF1ZW5jZWQgYnkgdGhlIGJvYXJkJ3MgcG93ZXIgZGVzaWduIGR1cmluZyB3cml0ZXMu
CgpEZXZpY2V0cmVlIGlzIG5vdCBhIGNvbmZpZ3VyYXRpb24gc3BhY2UsIGFuZCBJIHRoaW5rIHRo
aXMgcmVhbGx5IGRvZXMgY291bnQKYXMgY29uZmlndXJhdGlvbiAtIGFzIHRoZSBlZnVzZSB3aWxs
IGJlIHdyaXRlYWJsZSBvbiBldmVyeSBib2FyZC4KCllvdSBtZW50aW9uIHRoZSBWUVBTIHZvbHRh
Z2UuIElmIEknbSByZWFkaW5nIHNjaGVtYXRpY3MgYW5kIGFwcGxpY2F0aW9uCm5vdGVzIGNvcnJl
Y3RseSwgdGhpcyBpcyBhIHNlcGFyYXRlIGlucHV0IHVzZWQgc29sZWx5IGZvciB3cml0aW5nIGVm
dXNlcwphbmQgX25lZWRzXyB0byBiZSAwViAob2ZmPykgZHVyaW5nIHJlYWRzLgoKWW91IG1lbnRp
b24gIm5lZWRzIHRvIGJlIHByZXNlbnQgYW5kIGNvcnJlY3RseSBzZXF1ZW5jZWQiLCB3aG8gaXMg
c3VwcG9zZWQKdG8gdHVybiBvbi9vZmYgdGhhdCByZWd1bGF0b3I/CgpTbyB5b3UgdmVyeSBsaWtl
bHkgbmVlZCB0byBkZWZpbmUgdGhhdCByZWd1bGF0b3IgYW5kIGNhbiBldmVuIHVzZSBpdHMKYWJz
ZW5jZSBhcyBhbiBpbmRpY2F0b3IgdG8gZGlzYWJsZSB3cml0ZXMuCgoKSGVpa28KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
