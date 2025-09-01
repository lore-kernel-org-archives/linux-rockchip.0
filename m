Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ED44CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Sep 2025 00:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwOvNo8iG9Q85Hojk/9pRqRElnlNtN3Lia3haRkgL+4=; b=aiOFQClZI1e8iB
	IfV6UIM890oAQigt2FrxmsJLjpRaEu492GHsFNL6rR61H12iYSDOBS0HAzgo3tMrzC01Jn9K+8eqm
	fptXdXQ7vOBuVsun5ywbyh8UsEc1EMqnkRXd1y7PYV43IuQXiSucwmWVkH2KzticA8CliVsVW9esg
	PwOyQuI20bGlCi/EbuNNKAGuHzQxcg5r6Bl9U4s2weEs89DXvDE5QLfUvz2dnM/X3w+kpQ0yGAVka
	Hjrs4T5sHhSau+UFM7TZ6ZX2PriifTOnUlIYDZDJJ4Eik4WFsMfs0RXxzkdfUZCEPXgFqKquCjKi3
	hBKuhXKeCjBMYiaFFheg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussjY-0000000AswQ-23Wf;
	Mon, 01 Sep 2025 00:49:20 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussgp-0000000Asq8-09dA;
	Mon, 01 Sep 2025 00:46:32 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-61cb4370e7bso5633110a12.3;
        Sun, 31 Aug 2025 17:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756687589; x=1757292389; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=caq28f0MR5Zp2zVT+QmZvY0xnQl9VUoGhuuYwcNrVy8=;
        b=a5GOGz1WkBkGtZ+DBu3lSmLvpbzx3N1QLVb6PzNZMpXrVcpaXrO2TgvbSRLweISlPl
         IDz4jlUsgsxD8wnb4JVrHF/JIO5Xtcy73i2bFob4A5EwdvFuEBD9yxYiEQOfJTv95LVF
         LveitNm3niAJ1ygIL1RuvDAdpCTe2oDxExv7xDWRiOqYf/yUssJE5AHEhw9/WCRv1gkP
         tJBH+xDJqzMSnCCEiM1Q8S/e2cIG2+p6knoVSzzjDzQJiZfNqEi/IF7228qhxFbxYBbc
         puWntW+qvEqcIcYktrlKVkFByGg/OA1qBXRerRtiXV1xJu1JvguWdUnQSdOXJZZUqBSN
         D9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756687589; x=1757292389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=caq28f0MR5Zp2zVT+QmZvY0xnQl9VUoGhuuYwcNrVy8=;
        b=YrG3pl1Mx4vS7ChjG/RVFgGvmmkefdGBOYd7ksM1RZS5Whk/bFYeogQqIJo1xvm5p5
         tg9EBFX8dkBBdf28KVA6Pdxls5yH/IoNBmaKRmdNk+68IH97BKIZyZmzd0P348nt8Wsl
         yqWnPaNNJ41gOvWYS9+6uRNn+RFW3Dyy3uDUr2u9uFxTWKLjG6p2Rz1d0g/SPGJdUdtS
         j5mrZmkZXIpMtAejAOBSv4JZ2Kyk/vhU3xUJfUiWVnUkfGVsCOzbaVGGJ4OhQCyi7ULZ
         PTal69erDY+aZ+s+bEfBT3xgmjATu6o8N1eHZfz7KanFHSF6THPiLCEHANhNMM2adtDi
         ztxg==
X-Forwarded-Encrypted: i=1; AJvYcCUbMgdk/BfH2hteKEmUH0duc4CS8kgU7TJ3BMdJv5gFDqWwj73mkCxYALJU1b5/N1ee1XKWyrmeB0eqS0sXLcs=@lists.infradead.org, AJvYcCVJ0R+rlmZxrdJvjsH3tyYamCNZ9Fyu9K6ise7N3hXH27YfIZKA2i+2pBfgI1kHyfOiyg6iwSuSi8EoHn5R9pj3@lists.infradead.org
X-Gm-Message-State: AOJu0YxqzUcrXIJODN7XCVJ7/XMqz4i5KjXTwknMVTyAJKdg1NGeUNCO
	A5nQhnyGWzPRZbWvQKdh2scXb/QCQw7rEUpt187X36xKdjE3M3PG60hOLR7pHXL0baPm2GtYdPn
	3az8aPPQdqeU4Vhia0xhd8Kc4wJ31Kzk=
X-Gm-Gg: ASbGncsZSqARAA5yLhB4Pj1i7n8YggRNQ3B+8jwIW8/i8D8ErgPrXQrnQrJHSMIgk3f
	7+3VT30TYHR8FYZjzJsx9mEn4GMMqKDNb1LFvRxKOMvFpoPTc4pA0xUINHEs6yMFwrnXrfVeenh
	mTWDH4o1Aywc9Lz+vASN6vIJnnJarBQMG2u8i33vaSPxRLgBXqL8v+NWtgZCw274XIGAVH4chfz
	TVUTaGkzjBAAw==
X-Google-Smtp-Source: AGHT+IHK3Leq+3fJeu89rJWaErCRBW5RO5impY2LzaF/J9OxH2CGpEFncXZ0kPXeWO36QfuOyJpThlBtVSnMBaPVn+c=
X-Received: by 2002:a05:6402:42cc:b0:618:38d6:7819 with SMTP id
 4fb4d7f45d1cf-61d26d78d3cmr5362734a12.21.1756687589297; Sun, 31 Aug 2025
 17:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250831104855.45883-1-cn.liweihao@gmail.com> <22816630.EfDdHjke4D@diego>
In-Reply-To: <22816630.EfDdHjke4D@diego>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Mon, 1 Sep 2025 08:46:18 +0800
X-Gm-Features: Ac12FXyd3Kd-w_dxJLbuguLcQGoKS7dFJvAoLApW6pAwLmBXGkKQ-alchoyDVCE
Message-ID: <CAPEOAkSm+6WtzSL1GzU_srHQT0ZBKKoFD1v5+ePqHTPBndPS=g@mail.gmail.com>
Subject: Re: [PATCH v1 0/7] drm/rockchip: Add MIPI DSI support for RK3368
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_174631_095767_2F28D688 
X-CRM114-Status: GOOD (  24.20  )
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

SGksCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiDkuo4yMDI15bm0OOaciDMx5pel
5ZGo5pelIDIzOjEw5YaZ6YGT77yaCgo+Cj4gSGksCj4KPiBBbSBTb25udGFnLCAzMS4gQXVndXN0
IDIwMjUsIDEyOjQ4OjQ4IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2Vp
SGFvIExpOgo+ID4gVGhpcyBzZXJpZXMgYWRkcyBNSVBJIERTSSBzdXBwb3J0IGZvciB0aGUgUm9j
a2NoaXAgUkszMzY4IFNvQywgZW5hYmxpbmcKPiA+IG5hdGl2ZSBkaXNwbGF5IGNvbm5lY3Rpdml0
eSB0aHJvdWdoIHRoZSBNSVBJIERTSSBob3N0IGNvbnRyb2xsZXIgYW5kCj4gPiBQSFkuIFRoZSBj
aGFuZ2VzIHNwYW4gbXVsdGlwbGUgc3Vic3lzdGVtcywgaW5jbHVkaW5nIGNsb2NrIGNvbnRyb2ws
Cj4gPiBEUk0vVk9QIGludGVncmF0aW9uLCBEU0kgY29udHJvbGxlciBiaW5kaW5nLCBhbmQgUEhZ
IGRyaXZlciB1cGRhdGVzLgo+ID4KPiA+IEtleSBjaGFuZ2VzOgo+ID4gICAtIFVwZGF0ZSB0aGUg
Um9ja2NoaXAgTUlQSSBEU0kgUEhZIGRyaXZlciB0byBwcmVwZXJseSBoYW5kbGUgUkszMzY4Cj4g
PiAgICAgcGh5IGluaXRpYWxpemF0aW9uLgo+Cj4gd2hpY2ggcGF0Y2ggaXMgZG9pbmcgdGhpcywg
YmVjYXVzZSBJIGRvbid0IHNlZSBhbnkgcGh5LXJlbGF0ZWQgY2hhbmdlCj4KClRoZSBmaXJzdCBw
YXRjaCwgY2hhbmdlcyBmb3IgZHctbWlwaS1kc2ktcm9ja2NoaXAuYywgc29tZSBzZXR0aW5ncyBm
b3IKbWlwaSBkcGh5LgoKTWF5YmUgSSBzaG91bGQgYWRqdXN0IHRoZSBkZXNjcmlwdGlvbiwgaXQn
cyBhIGJpdCB1bmNsZWFyLgoKPiA+ICAgLSBBZGQgbWlzc2luZyBsdXRfc2l6ZSBvZiB2b3BfZGF0
YSBmb3IgUkszMzY4Lgo+ID4gICAtIEFkZCBtaXNzaW5nIGNsb2NrIElEIFNDTEtfTUlQSURTSV8y
NE0gdG8gdGhlIFJLMzM2OCBDUlUgZHJpdmVyLAo+ID4gICAgIHdoaWNoIGlzIHJlcXVpcmVkIGZv
ciBlbmFibGluZyB0aGUgMjRNSHogcmVmZXJlbmNlIGNsb2NrLgo+ID4gICAtIEFkZCBNSVBJIERT
SSBub2RlIHRvIHJrMzM2OC5kdHNpIHdpdGggY29ycmVjdCBjbG9ja3MsIHJlc2V0cywKPiA+ICAg
ICBhbmQgcmVnaXN0ZXIgbWFwcGluZ3MuCj4gPgo+ID4gVGhlc2UgY2hhbmdlcyB3ZXJlIHRlc3Rl
ZCBvbiBhIFJLMzM2OC1iYXNlZCBib2FyZCB3aXRoIGEgTUlQSSBEU0kKPiA+IHBhbmVsIFsxXS4g
VGhlIGRpc3BsYXkgYm9vdHMgc3VjY2Vzc2Z1bGx5IHdpdGggY29uc29sZSBvdXRwdXQuCj4gPgo+
ID4gWzFdIGh0dHBzOi8vaWVpYW8uZ2l0aHViLmlvL3dpa2kvZW1iZWRkZWQtZGV2L3JvY2tjaGlw
L3JrMzM2OAo+Cj4gRG8geW91IHBsYW4gb24gc3VibWl0dGluZyB0aGlzIGJvYXJkIHRvIG1haW5s
aW5lPwo+IEJlY2F1c2UgaGF2aW5nIGFuIGFjdHVhbCB1c2VyIG9mIHRoZSBjb2RlIHlvdSdyZSBh
ZGRpbmcgd291bGQKPiBiZSByZWFsbHkgcmVhbGx5IG5pY2UuCj4KCkknZCBiZSBoYXBweSB0byBz
dWJtaXQgdGhpcyBib2FyZCBzdXBwb3J0LgoKSG93ZXZlciwgYWZ0ZXIgc2VhcmNoaW5nIGZvciBh
IHdoaWxlLCBJIGNvdWxkbid0IGZpbmQgdGhlIG1hbnVmYWN0dXJlcgppbmZvcm1hdGlvbiBvZiB0
aGlzIGRldmljZSBhbmQgbWlwaSBkc2kgcGFuZWwuIEkgYW0gbm90IHN1cmUgd2hldGhlcgp0aGUg
ZGV2aWNldHJlZSBzdXBwb3J0IG9mIHVua25vd24gbWFudWZhY3R1cmVycyBhbGxvd3Mgc3VibWlz
c2lvbiB0bwptYWlubGluZS4KCgo+IFRoYW5rcwo+IEhlaWtvCj4KPiA+Cj4gPiBUZXN0ZWQtYnk6
IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9AZ21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogV2Vp
SGFvIExpIDxjbi5saXdlaWhhb0BnbWFpbC5jb20+Cj4gPgo+ID4gV2VpSGFvIExpICg3KToKPiA+
ICAgZHJtL3JvY2tjaGlwOiBkc2k6IEFkZCBzdXBwb3J0IGZvciBSSzMzNjgKPiA+ICAgZHJtL3Jv
Y2tjaGlwOiB2b3A6IGFkZCBsdXRfc2l6ZSBmb3IgUkszMzY4IHZvcF9kYXRhCj4gPiAgIGR0LWJp
bmRpbmdzOiBjbG9jazogcmszMzY4OiBBZGQgU0NMS19NSVBJRFNJXzI0TQo+ID4gICBjbGs6IHJv
Y2tjaGlwOiB1c2UgY2xvY2sgaWRzIGZvciBTQ0xLX01JUElEU0lfMjRNIG9uIHJrMzM2OAo+ID4g
ICBBUk06IGR0czogcm9ja2NoaXA6IEFkZCBkaXNwbGF5IHN1YnN5c3RlbSBmb3IgUkszMzY4Cj4g
PiAgIEFSTTogZHRzOiByb2NrY2hpcDogQWRkIEQtUEhZIGZvciBSSzMzNjgKPiA+ICAgQVJNOiBk
dHM6IHJvY2tjaGlwOiBBZGQgRFNJIGZvciBSSzMzNjgKPiA+Cj4gPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzNjguZHRzaSAgICAgIHwgNzkgKysrKysrKysrKysrKysrKysrKwo+
ID4gIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzNjguYyAgICAgICAgICAgICB8ICAyICst
Cj4gPiAgLi4uL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYyAgIHwgMjAg
KysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wX3JlZy5jICAg
fCAgMSArCj4gPiAgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmggICAgICAg
IHwgIDEgKwo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgMTAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPiA+Cj4gPgo+Cj4KPgo+CgpCZXN0IHJlZ2FyZHMsCldlaUhhbwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
