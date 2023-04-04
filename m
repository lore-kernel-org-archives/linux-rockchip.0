Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87586C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 16:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oP1yaKyrjdYi6sNWPkPTSnp/0Z7KOtjZ9PX4DuX+qqE=; b=HT3AKnabAPPQN1
	W0k2K78A+CaJ/L5qPeCZ6OxebFFmg7V4r2Oa7Nvwc6hNN5144AgJ1y5bgbM+LI+WJPTT+iNJKlQV0
	gRBoMd0lhNQ46TuXC30mCWusAfqd4hTpltU0CeVheGo5AanpEO76MyiYTJDSYBM5VjA76vUMYH2D6
	u9iMt8CbPRp3v7OXEkmVS6CklHiSMNSR4EJ+2F2xGVL81AEOdqkZ9Zq9BIStr0HMjuVTCt8WfHXlY
	poB+WjJXTXp8GNTOtCOGWT0Yw8t7wkDq7psP1jOKHA2Tr4Aa3d8koNuhC9L1jK9oaYso4gFthyuqb
	Wg0YG4G5uEsFL+w0rJJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjwZ-002Hyi-3A;
	Tue, 04 Apr 2023 16:55:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjwW-002Hwy-1l;
	Tue, 04 Apr 2023 16:55:37 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pjjwE-0000HT-RK; Tue, 04 Apr 2023 18:55:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-kernel@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 Peter Robinson <pbrobinson@gmail.com>, Caleb Connolly <kc@postmarketos.org>,
 Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:  Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for Pinephone Pro
 to 1.5 MB
Date: Tue, 04 Apr 2023 18:55:17 +0200
Message-ID: <3999080.iIbC2pHGDl@diego>
In-Reply-To:  <CAMdYzYqT=vVZxFK=P6xYDAht_KWk3CTsTtruPAbGqx1K9EcJsQ@mail.gmail.com>
References:  <20230403175937.2842085-1-javierm@redhat.com> <3738011.44csPzL39Z@diego>
 <CAMdYzYqT=vVZxFK=P6xYDAht_KWk3CTsTtruPAbGqx1K9EcJsQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_095536_580950_21F80FF8 
X-CRM114-Status: GOOD (  22.94  )
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

SGkgUGV0ZXIsCgpBbSBEaWVuc3RhZywgNC4gQXByaWwgMjAyMywgMTQ6NTI6MDIgQ0VTVCBzY2hy
aWViIFBldGVyIEdlaXM6Cj4gT24gVHVlLCBBcHIgNCwgMjAyMyBhdCAzOjU14oCvQU0gSGVpa28g
U3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPgo+ID4gSGksCj4gPgo+ID4gQW0g
TW9udGFnLCAzLiBBcHJpbCAyMDIzLCAxOTo1OTozNyBDRVNUIHNjaHJpZWIgSmF2aWVyIE1hcnRp
bmV6IENhbmlsbGFzOgo+ID4gPiBUaGlzIGJhdWQgcmF0ZSBpcyBzZXQgZm9yIHRoZSBkZXZpY2Ug
YnkgbWFpbmxpbmUgdS1ib290IGFuZCBpcyBhbHNvIHdoYXQKPiA+ID4gaXMgc2V0IGluIHRoZSBQ
aW5lYm9vayBQcm8gRGV2aWNlIFRyZWUsIHdoaWNoIGlzIGEgZGV2aWNlIHNpbWlsYXIgdG8gdGhl
Cj4gPiA+IFBpbmVQaG9uZSBQcm8gYnV0IHdpdGggYSBkaWZmZXJlbnQgZm9ybSBmYWN0b3IuCj4g
PiA+Cj4gPiA+IE90aGVyd2lzZSwgdGhlIGJhdWQgcmF0ZSBvZiB0aGUgZmlybXdhcmUgYW5kIExp
bnV4IGRvbid0IG1hdGNoIGJ5IGRlZmF1bHQKPiA+ID4gYW5kIGEgJ2NvbnNvbGU9dHR5UzIsMTUw
MDAwMG44JyBrZXJuZWwgY29tbWFuZCBsaW5lIHBhcmFtZXRlciBpcyByZXF1aXJlZAo+ID4gPiB0
byBoYXZlIHByb3BlciBvdXRwdXQgZm9yIGJvdGguCj4gPgo+ID4gVGhlIGludGVyZXN0aW5nIHF1
ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwgYnJlYWsgc29tZW9uZSBlbHNlJ3Mgc2V0dXAu
Cj4gPiBJJ3ZlIG5ldmVyIHJlYWxseSB1bmRlcnN0b29kIHRoZSBzdHJhbmdlIHNldHRpbmcgb2Yg
MS41TUJwcywgYnV0IG9uIHRoZQo+ID4gb3RoZXIgaGFuZCBpdCBfaXNfIGEgcmVhbGl0eSBvbiBt
b3N0IGJvYXJkcy4KCj4gVGhlIDEuNU0gYmF1ZCBpcyBkZWZhdWx0IGJlY2F1c2UgdGhlIGNsb2Nr
IHN0cnVjdHVyZSBvbiByb2NrY2hpcAo+IGRldmljZXMgZG9lcyBub3QgYWxsb3cgYSBjbGVhbiAx
MTUyMDAgYmF1ZC4gQnkgYXR0ZW1wdGluZyB0byBmb3JjZQo+IDExNTIwMCwgaXQgd2lsbCBhbHdh
eXMgYmUgc2xpZ2h0bHkgb2ZmIChlaXRoZXIgbG93IG9yIGhpZ2ggZGVwZW5kaW5nCj4gb24gaG93
IHRoZSBkcml2ZXIgZGVjaWRlZCB0byByb3VuZCkuIElmIHRoaXMgYWN0dWFsbHkgY2F1c2VzIGFu
eQo+IHByb2JsZW1zIGlzIHRoZSBzdWJqZWN0IG9mIG11Y2ggZGViYXRlLgoKdGhhbmtzIHNvIG11
Y2ggZm9yIHRoaXMgcGllY2Ugb2YgY2xvY2stZGV0YWlsLiBBcyBJIHdyb3RlLCBJIG5ldmVyIHJl
YWxseQp1bmRlcnN0b29kIHRoZSB3aHkgX2JlZm9yZV8gYnV0IGFsc28gbmV2ZXIgY2FyZWQgdGhh
dCBtdWNoIHRvIGRpdmUKaW50byBpdCBhbmQgZmluZCBvdXQuCgpTbyB5b3VyIGV4cGxhbmF0aW9u
IGNsb3NlcyBvbmUga25vd2xlZGdlIGdhcCBpbiBteSBoZWFkLgoKVGhhbmtzIGEgbG90IDotKQpI
ZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
