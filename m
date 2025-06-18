Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6F1FC71157
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 19:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTN4/R6714VlTicawxAZ+7xoavcOtqo80aeY+r3/vZ4=; b=ObcSl+Cdrct3FD
	qTiqoeSxpFhLRnrmV8nLxBow31QaR9efws0nZkYULFs/mgvRCSQFEqs5lXG2N2Mr7kke9qpG57DiG
	hTgRpryyOhb1PjjdJEbg1SxgbvUAHRxT836YdqXdfYL4Hp7sk1k4vgFr9SqFXmkDE001MWUQXddHy
	QnJu05XuXExDx/gCR0kOcxYDmffzEyMjaVklwoW3LDP1e/H2n78L3vWv2rCb4hxGtk45dgEu5psPq
	ivCyRBI689NQ0BUFCaCbpdzpq0+Uz+zEQ68/dhVz8kjT7zK1aAzvFdinlYrbdC5HbeTReU9BH1Tmx
	l0Fg7o1w8HfJNs1o4usg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRyCZ-0000000BAKQ-0bD8;
	Wed, 18 Jun 2025 19:12:03 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRwxb-0000000Awui-0qpK
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 17:52:32 +0000
Received: by mail-il1-x12c.google.com with SMTP id e9e14a558f8ab-3ddc9872e69so29297135ab.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jun 2025 10:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750269150; x=1750873950; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GiZhn9um+VeiLM3OTddCldxchfZplFLnri2Dg7rfYTM=;
        b=geZizZ9YKQoeE3G3B0A4zZTTE9maOYDNKq15C3ZrP+LdOPtGCbwvdpmZ+mgCvbFZvs
         jcDDYBFKZAc1Xatz+O4LFQaQ6k9aXv0g62jZa1Ef5nmJRfIx4xz6SbcbsIi8EzZ/TGq3
         7vwa44OAgZfaRPyDYTIv7gM6i4tNoAg0y3VKNySausy+5wZyp4lknyRQLaxBZeia0MKy
         qfJYEsZIcmJdlJRS/84zMYDmLEhWM0awkuAN5WHvqc8pS01NySE+576w28+DIF1XBNua
         MpwEPbNHMAgiujS8OI+72b68RyiXOeHRth1hNqnP7sR54DSkCxbwRTZHQ6NHknUl8c8x
         Md+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750269150; x=1750873950;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GiZhn9um+VeiLM3OTddCldxchfZplFLnri2Dg7rfYTM=;
        b=GMBOtp2uA7/0/HJvQ7QA4gbQSQT+of4p4iq/DizpyLU694WLx3siKkpU49d+xXI4iV
         a9PqVI+lyUhJ015B4Tp970x1Dw7QKWI1vrxgvglpyR3p3A9E97jzAqPO3fa+F35C110q
         pK1KQz+cq9+8O/r4dhkadtoBB5CL7OnbyMkzflKBz9oMbF5j2jexDoYbzFkKZaOp08l6
         cJg6OJf/J9VCmoEtpjBWxI7CLiB1pgin0KKET5d4oVcJGhiMt8ICYZP9mPNLXEvCfWtg
         QKAQzjMhkZnwqfik8bTtPVLpo7MfOzX5zh3ZXqkMMPOjz0g7jT+t0Lcg9uxO2q4rNz5I
         ZUuA==
X-Forwarded-Encrypted: i=1; AJvYcCWIuVdkaRIZmCyt9LSB0Jq1QLfSAWfMLo2DfMfhKgdyJOxorEdRFwO0nsL3w1jW3bOFMcYby0BiSFR5rwRjvw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywl87qtJ6mtXn3od6eGlyvHXo3q8ngQCFk6T4WXQHJse/qaJTUf
	XmNa9amkCJDg0E3SlQKGiOANHiKMYF4B2zcCPldB/EDGf1gJ+PJSWkjDYrnN7G3BDkbSfs6WZlD
	GuAMwh6gfYAkDhCmTQ3tY/Wb5LsVKJNU=
X-Gm-Gg: ASbGncs/TofrC8M8w3HECHhTVaBYHNbMWck7ed173uz8c2XYbYvWpp8mLebbXhIIb7q
	Z0YYhbzabKwJ7I2uUOpLaFZ0Pwrg92T/X7f9DqQeLCjFWUTR3vyzvLnyDgXGWx+1xqjMZFrweMG
	7YovqrHA2FxEPdrlh65VhFi6Y2bcMAFKC/hSgka1uzMw==
X-Google-Smtp-Source: AGHT+IEd+rxhOFmrifmrmXK2OULn0BsywltupdAkxwojvOIkJBUKs5x9bwegJMYFGrDHhRvroIH5VJJAUb2GFou8V5I=
X-Received: by 2002:a05:6e02:1529:b0:3dd:cbbb:b731 with SMTP id
 e9e14a558f8ab-3de07c55b92mr205125115ab.9.1750269150311; Wed, 18 Jun 2025
 10:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
 <20250617-rk3588s-cm5-io-dts-upstream-v5-3-8d96854a5bbd@gmail.com> <CALWfF7+G6MRvuSm8a-a0KcPduXz=sYsJT0bB300rAqmtt2w-cg@mail.gmail.com>
In-Reply-To: <CALWfF7+G6MRvuSm8a-a0KcPduXz=sYsJT0bB300rAqmtt2w-cg@mail.gmail.com>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Wed, 18 Jun 2025 10:51:54 -0700
X-Gm-Features: AX0GCFuJuejOzHsp-CvdKX0VYtCf4cr4vDQS7O0UvLWU7-HV3kQfFUCTGAEajEo
Message-ID: <CAMWSM7g8ptE4VkUAKrWrYmU5HZWboVn=NFY2GzLHF3oGmNG-Qw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: Add support for CM5 IO carrier
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_105231_238792_A4DCC1CB 
X-CRM114-Status: GOOD (  12.95  )
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

T24gVHVlLCBKdW4gMTcsIDIwMjUgYXQgNjo1OeKAr1BNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5A
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIFR1ZSwgSnVuIDE3LCAyMDI1IGF0IDU6MTLigK9QTSBK
b3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gKwo+ID4gKyZn
bWFjMSB7Cj4gPiArICAgICAgIGNsb2NrX2luX291dCA9ICJvdXRwdXQiOwo+ID4gKyAgICAgICBw
aHktaGFuZGxlID0gPCZyZ21paV9waHkxPjsKPiA+ICsgICAgICAgcGh5LW1vZGUgPSAicmdtaWkt
aWQiOwo+ID4gKyAgICAgICBwaHktc3VwcGx5ID0gPCZ2Y2NfM3YzX3MwPjsKPiA+ICsgICAgICAg
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsgICAgICAgcGluY3RybC0wID0gPCZnbWFj
MV9taWltCj4gPiArICAgICAgICAgICAgICAgICAgICAmZ21hYzFfdHhfYnVzMgo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgJmdtYWMxX3J4X2J1czIKPiA+ICsgICAgICAgICAgICAgICAgICAgICZn
bWFjMV9yZ21paV9jbGsKPiA+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV9yZ21paV9idXMK
PiA+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV9jbGtpbm91dD47Cj4gPiArICAgICAgIHN0
YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+ID4gKwo+IFNvcnJ5LCBJIG1lYW50IG9ubHkgdGhlIHN0
YXR1cyBwcm9wZXJ0eSBzaG91bGQgZ28gdG8gdGhlIGJvYXJkIERUUy4KPiBUaGUgcmVzdCBvZiB0
aGUgZ21hYzEgZGVmaW5pdGlvbiBtYWtlcyBzZW5zZSB0byBwdXQgaW4gdGhlIFNvTSBkdHNpLAo+
IHNpbmNlIHRoZSBQSFkgaXMgb24gdGhlIFNvTSAoYXMgZGVmaW5lZCBpbiAgdGhlIG1kaW8xIG5v
ZGUpLiBTbyBhbGwKPiB0aGUgcGlucyBiZXR3ZWVuIHRoZSBNQUMgYW5kIFBIWSB3aWxsIGJlIHRo
ZSBzYW1lLgo+Cj4gSmltbXkKPgoKQWgsIHRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uIFRo
YXQncyBhIHNtYWxsIGZpeHVwLCBubyB3b3JyaWVzLgoKVGhhbmtzIGZvciB0aGUgZmVlZGJhY2ss
IEknbGwgZm9sbG93IHVwLgoKSm9zZXBoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
