Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49CCCCA1002
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 13:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEFp82P5KXNs9yNC4mK/yh8aPturRxlddBMEt6UfO2U=; b=GOXyAIz2WIStv5
	jtvxbPAt49Cen5wO0skiRFNHEdJEWElh/BkPmitHABnta4NW8PnvxwMWa/mh/nz/8NhBSaiJG6BlS
	fajeER/3RswrP9Y1EXMl6BJtIz/3kinmuVxqruGYT9w1Vy0lUW0k12hOyUf2oRh+X8E9nnD+n93GT
	CXAtDnHTe5ps1AvDgANTNouqiY5gDgOz1VeMWdmo4dQBtXtT91eSBPbdBIe3s8v1cWOTytmBnzJxM
	G/p1ZiD5KsJ+6RSAp0wY/oPhIb02ZS+nHlGsbA0YTQn4c42gKh7/eLTUjzm+nBD7eyBKJhQtJ0luN
	HrilqEJ2asPuEFobmamA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uut6q-00000007pb0-2F17;
	Sat, 06 Sep 2025 13:37:40 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uut40-00000007pTt-0rds;
	Sat, 06 Sep 2025 13:34:45 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-625f7457475so544110a12.0;
        Sat, 06 Sep 2025 06:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757165682; x=1757770482; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aJ6kAa7oShKc/lpiM+bPhxWta9HH3iqlBxnqLQNfAj0=;
        b=MDETuxXhYiT7W6+mTye2l5IRHYIX/si9t4oxJAaH48jjMO6gJa2kHmh0USprPNQFip
         iDmQ+g+N30wXLKVhxhnrp9CXeYZUoDWz06cizTojmkWrpy9Wko+jDyG0J6KEoY3+oxVI
         5Cr9NnmfRbcRGPlpXL6unysusJAVzdhfWjzhnS7leAh10dsHrEUMnEEOSBPLtMx6wyz/
         uK8g/NnCzugQW7H3i7DnE6GwRIfr0m+19MP9Y8zrrvPD4HKzxXR4k5f5GbuI0tJiZKaA
         SkF7+IreF+zj+LiJODlj2q5+zE4x4yP/3Tyhe/QykOPgCt3Pgox+3pG22maIMfzEiScq
         TBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757165682; x=1757770482;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aJ6kAa7oShKc/lpiM+bPhxWta9HH3iqlBxnqLQNfAj0=;
        b=fqZ31YDcZSzwVlcUZxJWJ9IMLxmzOQXHx9p5IHi45Lcou/wLsl2W+DxwXd7tas2VtZ
         XdRDhNUC+8gCdXty2hQNMGycT6mZmLifK8HDzpqEQRjfBcxzLDvPdzybttKa9Zw69XCh
         pJtf+CFSkhwwkoHSQwU9u9aFdPQgjWSEt7KRDoJrY/yzXO9R30TWr2sn9Jd/DqR1iOir
         Q3iR1WUE++aKeJMhIGP/KR92mdkgh6YVjcD9Ks3AY8VH3ox/J99Ueu/husmrVo2FBiKu
         MK/x3PSyXaek9tB+L9nYEGagXxu31e189ftFlksOUbVBn0nF/61vwQWdZvpKcqLlZJ0Q
         pCig==
X-Forwarded-Encrypted: i=1; AJvYcCVpIcptiBCONWXjAl1MHdx17zkYZXLEQ4a0egPBJjJNydMv/CSlEo0FzyBFjjKH3tlzHvlqSLT8iuP1/kMhX/U=@lists.infradead.org, AJvYcCWlv1IbseLCUpOCSaUdvzdyJVpNhrO0Vp1wNQMmfmaoBU3hA0nXRrT4NZkn3rRU6Vr6zGkAacU7gUExsubCwWXI@lists.infradead.org
X-Gm-Message-State: AOJu0YwsY1rvsVO6ffgTJwIQ3lRthEnZ+FlOtK3VEBMJQt+Wzd0k2av+
	sHHcfuVprmP33vBWybuDAHNb0Gj5K6BYZjd0R66BTbv4hqR29MaS2TZjaA+G1oXe/3ltrtfZUrB
	cXtmZfHU+kdOZX1ATuqJhbsywOmZsoMY=
X-Gm-Gg: ASbGncsyCctyCFmHv96qHSMtQXd7x2h1PtNForPp1o4yjCQ+XPKAiA4EDOXITdJyyg4
	yqNppqagjce+D7Qtv1R1CeigUz0ApnVEhTjV6lHoAJVlRbKfiJU3g+N9I/32wSu4+PLLEUHsPs7
	Ekdlus6I7pb8mnbKxNuAEnudNbgwkX9lYk9z/a7E7wZEa3URX8LljhZJYcws0i2APLsP6N1xbpe
	3orqijnRorxe5NEpg==
X-Google-Smtp-Source: AGHT+IFG1phE+ZeZqgW1zMy+uFKSv2Qx1hsWmfAK05w/g8wdzyZKfVxtUYHEK5SPBjzsv/309PI16u5CYZdBDd/9NL0=
X-Received: by 2002:a05:6402:909:b0:624:6ba9:52c0 with SMTP id
 4fb4d7f45d1cf-6246ba9555fmr1617735a12.15.1757165681932; Sat, 06 Sep 2025
 06:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250905132328.9859-1-cn.liweihao@gmail.com> <20250905132328.9859-3-cn.liweihao@gmail.com>
 <707aad1d-fcdb-4c66-8d96-41cf1a1b02ce@kernel.org> <CAPEOAkRTVtKBsmiGTbKOCar0oNS-C3dRXqdpuowroRPH1bFS7g@mail.gmail.com>
 <58b638c8-b27e-49a6-b79e-f078135c575b@kernel.org>
In-Reply-To: <58b638c8-b27e-49a6-b79e-f078135c575b@kernel.org>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Sat, 6 Sep 2025 21:34:25 +0800
X-Gm-Features: AS18NWBAYmmcyxx9GhaGWWnfw6zHk7za_4uCKBVeQx-mNiFJOJIfxAZlKy9QaMc
Message-ID: <CAPEOAkSpEzVtUqyUJQbDmbmPOjORnAfuehhvo1qqZgAAeY=ZVA@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] dt-bindings: clock: rk3368: add CLK_I2S_8CH_PRE
 and CLK_I2S_8CH_FRAC
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_063444_247881_8162D7A4 
X-CRM114-Status: GOOD (  18.57  )
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

SGksCgpLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IOS6jjIwMjXlubQ55pyI
NuaXpeWRqOWFrSAxNToyMeWGmemBk++8mgo+Cj4gT24gMDYvMDkvMjAyNSAwMzozNCwg5p2O57u0
6LGqIHdyb3RlOgo+ID4gSGksCj4gPgo+ID4gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJu
ZWwub3JnPiDkuo4yMDI15bm0OeaciDXml6XlkajkupQgMjI6MTPlhpnpgZPvvJoKPiA+Pgo+ID4+
IE9uIDA1LzA5LzIwMjUgMTU6MjMsIFdlaUhhbyBMaSB3cm90ZToKPiA+Pj4gV2UgbmVlZCBhIGNs
b2NrIGlkIHRvIGFzc2lnbiBjbG9jayBwYXJlbnQgd2hlbiB1c2UgaTJzIDhjaCBhcyBhdWRpbwo+
ID4+PiBkZXZpY2UsIENMS19JMlNfOENIX0ZSQUMgc2hvdWxkIGJlIENMS19JMlNfOENIX1BSRSBw
YXJlbnQgc28gd2UgY2FuIGdldAo+ID4+PiBmcmVxdWVuY3kgd2Ugd2FudC4KPiA+Pj4KPiA+Pj4g
U2lnbmVkLW9mZi1ieTogV2VpSGFvIExpIDxjbi5saXdlaWhhb0BnbWFpbC5jb20+Cj4gPj4+IC0t
LQo+ID4+PiAgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmggfCAzICsrKwo+
ID4+PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+ID4+Pgo+ID4+PiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmggYi9pbmNsdWRlL2R0
LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1jcnUuaAo+ID4+PiBpbmRleCBiOTUxZTI5MDY5Li43OTVl
NzIxOTU3IDEwMDY0NAo+ID4+PiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzM2
OC1jcnUuaAo+ID4+PiArKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1jcnUu
aAo+ID4+PiBAQCAtMTgzLDYgKzE4Myw5IEBACj4gPj4+ICAjZGVmaW5lIEhDTEtfQlVTICAgICAg
ICAgICAgIDQ3Nwo+ID4+PiAgI2RlZmluZSBIQ0xLX1BFUkkgICAgICAgICAgICA0NzgKPiA+Pj4K
PiA+Pj4gKyNkZWZpbmUgQ0xLX0kyU184Q0hfUFJFICAgICAgICAgICAgICA1MDAKPiA+Pgo+ID4+
IDQ3OQo+ID4+Cj4gPj4+ICsjZGVmaW5lIENMS19JMlNfOENIX0ZSQUMgICAgIDUwMQo+ID4+Cj4g
Pj4gNDgwLCBubz8KPiA+Pgo+ID4KPiA+IE5laXRoZXIgb2YgdGhlc2UgY2xvY2tzIGJlbG9uZyB0
byB0aGUgcHJldmlvdXMgZ3JvdXBpbmcgaW4gdGVybXMgb2YKPiA+IHR5cGUsIHNvIEkgY2hvc2Ug
dG8gc3RhcnQgd2l0aCBhIG5ldyBpbnRlZ2VyIGlkIGhlcmUuCj4KPiBJIGRvbid0IGtub3cgd2hh
dCBpcyAicHJldmlvdXMgZ3JvdXBpbmciIGhlcmUsIGJ1dCBJRHMgYXJlIGFic3RyYWN0IGFuZAo+
IGFyZSBpbmNyZW1lbnRlZCBieSAxLgoKSW4gdGhlIGN1cnJlbnQga2VybmVsIGNvZGUsIHRoZSBS
SzMzNjggY2xvY2sgSURzIGFyZSBjYXRlZ29yaXplZCBieQpTQ0xLLCBBQ0xLLCBQQ0xLLCBhbmQg
SENMSy4KCkhvd2V2ZXIsIGZvciB0aGUgSTJTIDhDSCBwZXJpcGhlcmFsLCB0aGUgZGVmYXVsdCBN
Q0xLIG91dHB1dCBmcmVxdWVuY3kKZGVwZW5kcyBvbiBJMlNfOENIX1BSRSwgd2hpY2ggaGFzIGZv
dXIgcG9zc2libGUgY2xvY2sgc291cmNlczoKaTJzXzhjaF9zcmMsIGkyc184Y2hfZnJhYywgZXh0
X2kycywgYW5kIHhpbjEybS4KClRoZSBwYXJlbnQgY2xvY2sgb2YgaTJzXzhjaF9mcmFjIGlzIGky
c184Y2hfc3JjLCBhbmQgdGhlIGZyZXF1ZW5jeSBvZgppMnNfOGNoX3NyYyBjb21lcyBmcm9tIGVp
dGhlciB0aGUgQ1BMTCBvciBHUExMLgoKRHVlIHRvIHRoZSBjbG9jayB0b3BvbG9neSwgQ0xLX0ky
U184Q0hfUFJFIGFuZCBDTEtfSTJTXzhDSF9GUkFDIGNhbm5vdApiZSBzaW1wbHkgY2F0ZWdvcml6
ZWQgYXMgU0NMSywgQUNMSywgUENMSywgYW5kIEhDTEsgbWVudGlvbmVkIGFib3ZlLApzbyBJIGNo
b29zZSB0byBzdGFydCBjb3VudGluZyBmcm9tIGEgbmV3IElELgoKSWYgdGhpcyB3YXkgb2YgYXNz
aWduaW5nIElEcyBpcyBub3QgYXBwcm9wcmlhdGUsIEkgY2FuIG1vZGlmeSBpdCB0bwppbmNyZW1l
bnQgYmFzZWQgb24gdGhlIHByZXZpb3VzIG9uZS4KCkJlc2ggd2lzaGVzLApXZWlIYW8KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
