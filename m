Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815A4C021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 05:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOeD8d4j+qBNH94zVuJEjxt219hufPu9KqLJis1g3ek=; b=Cuwns6Jegy5Ldm
	KnFwdARFNMytW0ZG2/T/+Ks2/2yeexwVb6Hvd/u3kMxnWn2ZAeLaQWgActQUYYIM8/YP6L+y4iJoK
	iaB+mhkVME1EfYuwCQ6YIeN/da8DoruAwSD8tFMbYBTiysxZcHlXnyVMc0cOO1MaGN5Dbiksjuhw0
	3kiOrvjivJmivotg6Xqwdgr3+RDLUfIcD+U3N3LMBAcLmKBHFdEHrl4bZSAhEglZh+xxxRSwVHRsM
	+JXkUw1B4JTktUwfe+UYl8O8bBIATBhVyPasm2HCITFLsJT34jVPDHFAzhxGmRnIn/CtfqAWPuq9a
	F/qtrT6ZhZ1QSnn6cEYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhqI-00000007THb-3RwA;
	Sat, 22 Feb 2025 05:14:22 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhop-00000007T9G-1fhY;
	Sat, 22 Feb 2025 05:12:52 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-38f325ddbc2so1991300f8f.1;
        Fri, 21 Feb 2025 21:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740201170; x=1740805970; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6T/KCHf+Ei6zi7zTvWLwzhq48X8JCTZYV766cOvpN9c=;
        b=IO2kmdumt2dJN6x/nOwTFKQaUn9wE4ArymIb6WC8iNknTEojsWWoIUrvzXdq0X52ue
         MbNY1UZ5u6CDZUlNkWP0KvfKW0ia/i1XAgiFhXFaH1Zm/6gefcuPg8hhVJkhdfvwuCvU
         nFV+IVr0chJtf/dIerKc2JHtgn7Qwo/hrSl06N7ip69SBMnKsEUdGfHW/ipIInC7HMVn
         zaMN3aMZYxC/mnRTEBx/eH0ZNUo7S5JzGn0Agc55N+3YYQNjF4koyVDZDeTJttnFP8rK
         m7YHXUS0ldgsNWXtS+o6Tur3h++rwQ3+NuNT4WVZdY7Y+d34vjJXfMk5RdC53pspBb6r
         ankA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740201170; x=1740805970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6T/KCHf+Ei6zi7zTvWLwzhq48X8JCTZYV766cOvpN9c=;
        b=Tc4bkLpNwWTIEW1tvnAvlO6gP08YvbYpIHpBJGDJQuTkiLQ/oHQYSoocesIkkugKlT
         aPji57l5YcHFnJfABfwIw+MsFt8rfcXSJ+xAN5lDTWbgAC5SNa8dWswX4uT5LSdjVaZw
         w+RCJN1HiIGJ7hO4rFarZnqfOjBS2I2IWxbFTDrDGu2ALov9jgl/RFSJ53cv2JNGIXtK
         y1Zydca6A5MRlI3TLWD9RnS72YSlq/jjuV8+a3IVCQQB5PYWzG7+8SOJdI8J0ybHl9QP
         YKcLuuCN/7wQMWh39ZN67EBi3IdQIzVXHS9zPl2TE83KoLwV+tymNAfMPTPCM51KpKDb
         WOpA==
X-Forwarded-Encrypted: i=1; AJvYcCVpzlAqLOJH8CIxjBL5+zy4XZpgWkslvwnGJQQkUP1v5jI/OccEgKcG9+lq6uwHZmeO9B1rZPl9EA5m0/P3StE=@lists.infradead.org, AJvYcCX02DyQlgWtGzV6822gTYxDHq6pJHFNZVj6IpF3L47BXVt1NM/ewc+qRmiQ74Qy+OMZ2T5HP2wp9zRqYmCm2Nqv@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6BbbSJXzLTUpCpbH+eJoi2ec5LQwl9sZC4xfV8Lm1zP3vGMmR
	m1UiUeEJgtmRXGuGHwtUM/hYngOy8b3zYMBd/T33HyK84IJLDUdH/G7W/G5ZXdjdxESuydjCARf
	prEHLRhl/j2NwZmkyMIzbXGc7iEp9Vn3hdXs=
X-Gm-Gg: ASbGncun0cd4P/JCA/cNYyJfc8dliqd8GcA5SvdBMpvtzLoa5eEm70qnNXIYTLMEO2M
	eH8qQOQw3MT0gZkeq+9LyAJdYDqNk7YKYqC6yRpegV8DHGCMoJTY26uqp+HTbe4BmYSFJmqsdcf
	83JsTNaxxf/dnoxqGip49GxMVPhPjgd4gPnQNSVfE=
X-Google-Smtp-Source: AGHT+IEW6AS6PpfMRepDRzL9ExNcBTNuvf/NS8ymolr77jne2YAUCpK0x5UZBFn7h33SprUxjhKLmpAbB1mx2B78zlE=
X-Received: by 2002:a05:6000:1a86:b0:38a:8906:6b66 with SMTP id
 ffacd0b85a97d-38f708267ffmr5716008f8f.38.1740201169476; Fri, 21 Feb 2025
 21:12:49 -0800 (PST)
MIME-Version: 1.0
References: <20250220041010.3801-1-honyuenkwun@gmail.com> <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com> <20250222043632.GU16911@sventech.com>
In-Reply-To: <20250222043632.GU16911@sventech.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 21 Feb 2025 23:12:38 -0600
X-Gm-Features: AWEUYZmOz5ZgFaqw7x29fs1q8XxuuW6_nHq5zINvZiHD-ka87Z3BCTFNSH7lH2Q
Message-ID: <CALWfF7JWiZnqJCAqCK4-TjVuUTqv96+=u2pC2iNvTbCBOCLuqw@mail.gmail.com>
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_211251_440185_5FE9862D 
X-CRM114-Status: GOOD (  14.60  )
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

T24gRnJpLCBGZWIgMjEsIDIwMjUgYXQgMTA6MzbigK9QTSBKb2hhbm5lcyBFcmRmZWx0IDxqb2hh
bm5lc0BlcmRmZWx0LmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEZlYiAyMSwgMjAyNSwgSmltbXkg
SG9uIDxob255dWVua3d1bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gT24gRnJpLCBGZWIgMjEsIDIw
MjUgYXQgNToxM+KAr1BNIEpvaGFubmVzIEVyZGZlbHQgPGpvaGFubmVzQGVyZGZlbHQuY29tPiB3
cm90ZToKPiA+ID4gSSdsbCBhbHNvIHNlZSBpZiBJIGNhbiBnaXZlIEhETUkgYSB0ZXN0Lgo+ID4K
PiA+IFBsZWFzZSByZXBvcnQgeW91ciByZXN1bHRzIHdoZW4geW91IGRvLiBUaGlzIGlzIG9uZSBv
ZiB0aGUgZGlmZmVyZW5jZXMKPiA+IGZyb20gdGhlIE9yYW5nZSBQaSA1IE1heC4gVGhlIEhETUkx
IHBpbmN0cmxzIGRvZXMgbm90IHVzZSB0aGUgZGVmYXVsdAo+ID4gcGluY3RybHMgbGlrZSBvdGhl
ciBSSzM1ODggYm9hcmRzIChpbmNsdWRpbmcgdGhlIE9yYW5nZSBQaSA1IFBsdXMpLgo+Cj4gTm8g
bHVjayB5ZXQuIEkgZG8gc2VlIHRoaXMgbWVzc2FnZSBpbiB0aGUga2VybmVsIGxvZ3MgOCB0aW1l
cyBhdCBib290Ogo+Cj4gWyAgIDQxLjU1Mjc1MV0gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lz
dGVtOiBbZHJtXSAqRVJST1IqIGZhaWxlZCB0bwo+IGdldCBwbGxfaGRtaXBoeTAKT2gsIEkgYmVs
aWV2ZSB5b3UncmUgaGl0dGluZyB0aGlzLgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1y
b2NrY2hpcC8wZGQ0ODU5OS00NDhmLTQ0NzItOWE4YS01NGI3ZjAzNzljMTNAY29sbGFib3JhLmNv
bS9ULyNtYTRlYjQyN2RlNzdiNWE0ODA2YTJjMmI1YmVmMmZjOGQ0MDAzZjgwMQoKSSBpbmNsdWRl
ZCB0aGF0IHBhdGNoc2V0IGluIHRoZSBpbnRlZ3JhdGUtNi4xNSBicmFuY2guIEkgZG9uJ3QgaGF2
ZQp0aGUgcHJvYmxlbSBvbiB0aGUgTWF4IGJlY2F1c2UgaXQgaGFzIGJvdGggdGhlIEhETUkwIGFu
ZCBIRE1JMQplbmFibGVkLiBIb3dldmVyLCB3aXRoIG9ubHkgSERNSTEgb24gdGhlIFVsdHJhLCBp
dCdzIG5vdCBoYW5kbGluZyB0aGUKZGlzYWJsZWQgaGRwdHhwaHkwLiBBIHF1aWNrIGhhY2sgaXMg
dG8gYWxzbyBlbmFibGUgaGRwdHhwaHkwIGFsc28gaW4KdGhlIFVsdHJhIGR0cy4KCj4KPiBJJ2xs
IGNvbmZpcm0gd2l0aCB0aGUgdmVuZG9yIGltYWdlIHRoYXQgbXkgSERNSSBzZXR1cCBpcyBjb3Jy
ZWN0Lgo+Cj4gSkUKPgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
