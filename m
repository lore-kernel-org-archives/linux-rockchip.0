Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 531BDC2BD05
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3j9Zfm2Aq6Xhx4zX52v5DSLTcTWr72pmTqcWfy7dkk=; b=IFC+83/m64chyt
	GFpG3ii4muzpl0675MPC3lT3n81/UvBBkDVcswFUW6Z0JLVhxhwM/3koWjlppG5r5C8uk0lZSAFbp
	E2F5onRN44J5LW0Tw8/a8KDaZ0alGzxMk6g6F47d+D3qAHCAl1aPHtam82UWIfEbDJORtlINGaf2d
	6hoDchcGNqEgWwvrrWTt8rTpjhDjARNUaRnFsWFgekQfGV+yk+DAd0GTCaZovqIoe7tQvHLr5LqB0
	LcP+DSYTIQPdsHBhOopE/4XyxXV0OUiHINf1SgCU5m2mIs4UWzXTyQib3UKAx9ATGy7PqELpa1BYq
	OzArKoPw2DogxvML3SUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKPgf-00000006qzh-40mt;
	Thu, 20 Jun 2024 21:51:21 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKPgb-00000006qxY-2sIi;
	Thu, 20 Jun 2024 21:51:19 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout12.mail.de (Postfix) with ESMTPS id 52E40240AE7;
	Thu, 20 Jun 2024 23:51:16 +0200 (CEST)
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout02.mail.de (Postfix) with ESMTP id 31768240E86;
	Thu, 20 Jun 2024 23:51:16 +0200 (CEST)
Received: from smtp01.mail.de (smtp03.bt.mail.de [10.0.121.213])
	by postfix01.mail.de (Postfix) with ESMTP id 12B7C80102;
	Thu, 20 Jun 2024 23:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718920276;
	bh=jS4tGX7Yr+F4Pgav2Qb5MERvvFle9VrE1JzJPH9w6gw=;
	h=Message-ID:Date:Subject:To:Cc:From:From:To:CC:Subject:Reply-To;
	b=fYXhP9XWv8R9NfFyLu0p9bECXAvkCoG4tyq8CP7rG1v5IXS6ngMg8+4KGjyvD9mtI
	 KV7gCoiQfTOwCW6cCR9nQ3ZP4cNRo/zTq+hPc9DDXdQV485NhL4RMdxr8xai66jyXw
	 Julp268jMYuAEbxy8rhDXTkunfszXMInjK3BqxXHbH+ipgA0tlubvqYHioU8X3cp3c
	 mjDy7VGxhvkyYqmF3ubRJKBTEhM7QgOdvOrAr/9eWRHc5Z3hf0KWzbeWhlHeEDDPiJ
	 5sQ61TOjhMrjt2TtDOjWtqPZ/3qYP3hrOymgkpOruzRi4oXghwyrO/lOyVhQ5y2j+J
	 pzTHuhS4Ppfrg==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 84B272409AB;
	Thu, 20 Jun 2024 23:51:15 +0200 (CEST)
Message-ID: <7cc3d7c4-d0c9-45f3-ada9-d0e0d3fe7cc2@mail.de>
Date: Thu, 20 Jun 2024 23:51:14 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Improve LEDs on NanoPi R6C/R6S
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240612205056.397204-1-seb-dev@mail.de>
 <20240612205056.397204-4-seb-dev@mail.de> <2564239.kdYZ1jHi8b@diego>
From: Sebastian Kropatsch <seb-dev@mail.de>
In-Reply-To: <2564239.kdYZ1jHi8b@diego>
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1112
X-purgate-ID: 154282::1718920275-4EE221F9-E6050407/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_145117_884969_DD6E998D 
X-CRM114-Status: GOOD (  11.51  )
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

QW0gMjAuMDYuMjAyNCB1bSAyMDo0MiBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+IEFtIE1pdHR3
b2NoLCAxMi4gSnVuaSAyMDI0LCAyMjo0ODoxMiBDRVNUIHNjaHJpZWIgU2ViYXN0aWFuIEtyb3Bh
dHNjaDoKPj4gRFQgdmFsaWRhdGlvbiBkb2Vzbid0IGxpa2UgdGhlICdsaW51eCxkZWZhdWx0LXRy
aWdnZXIgPSAic3RtbWFjLTA6MDE6bGluayInCj4+IHByb3BlcnRpZXMsIHNpbmNlICIqOmxpbmsi
IGlzIG5vdCBhIHZhbGlkIHZhbHVlIGFjY29yZGluZyB0bwo+PiBbRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2xlZHMvY29tbW9uLnlhbWxdLiBUaGVzZSBMRURzIGRvCj4+IGhhdmUg
dGhlIHNwZWNpZmljIHB1cnBvc2UgdG8gc2hvdyBpZiBhbiBFdGhlcm5ldCBsaW5rIGlzIHVwIHRo
b3VnaC4KPj4gVGhlcmUgaXMgb25lIExFRCBmb3IgZWFjaCBFdGhlcm5ldCBwb3J0IGFuZCB0aGV5
IGFyZSBsYWJlbGVkIFdBTiBhbmQKPj4gTEFOLgo+PiBVc2luZyB0aGUgJ2xpbnV4LGRlZmF1bHQt
dHJpZ2dlcicgbGlrZSB0aGlzIGRvZXMgd29yayBwZXJmZWN0bHkgZmluZQo+PiB3aXRoIHRoaXMg
c29sdXRpb24uIEkgY291bGQgbm90IGZpbmQgYW5vdGhlciB3YXkgdG8gYWNoaWV2ZSB0aGlzLiBQ
bGVhc2UKPj4gbGV0IG1lIGtub3cgaWYgdGhlcmUgaXMgYSBiZXR0ZXIgd2F5Lgo+PiBNYXliZSBp
dCB3b3VsZCBhbHNvIGJlIHZhbGlkIHRvIGFkZCBhbiBlbnRyeSB0byB0aGUgRFQgYmluZGluZ3Mg
ZmlsZSB0bwo+PiBhbGxvdyAiKjpsaW5rIiBhcyBhIHZhbHVlIGZvciAnbGludXgsZGVmYXVsdC10
cmlnZ2VyJz8KPiAKPiBjb3JyZWN0LiBJZiBuZWVkZWQsIHRoaW5ncyBzaG91bGQgYmUgYWRkZWQg
dG8gYmluZGluZy4KCkFscmlnaHQsIEknbGwgYWRkIHRoaXMgdG8gdGhlIGJpbmRpbmcgYXQKW0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9sZWRzL2NvbW1vbi55YW1sXQoKU2hvdWxk
IHRoaXMgYmUgYSBjb21wbGV0ZWx5IHNlcGFyYXRlIHBhdGNoIG9yIGlzIGl0IHByZWZlcnJlZAp0
byBhZGQgYSBwYXRjaCB0byB0aGlzIE5hbm9QaSBwYXRjaCBzZXJpZXM/CgpDaGVlcnMsClNlYmFz
dGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
