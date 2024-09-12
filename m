Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C949EEE266
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 21:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1arRcQLK0ztdxELQjjeD+z+mpcgc9cp9mH4/QXVLlI=; b=D1Ywjxe3p+V9A1
	xYriJiQp32+eN8wpMHKY4Uwpuwxtev859svjK5sWN1h1gyio0t1oPGpTxFwfQny+i8LbNcWGMzuT1
	/evNJiGRwunSN2Hc75kyLz22V8dO9d7e1f2re8/FMRIQBFDYWn+EWzKPzTIM9SFxrZupIo67VyQBf
	kCiCBu4MlRlwFaU7rM7M6fEgjElI8j8hgaHnl5m/PNxw6dnSJRXzdJqHW+6Xlem2uDYnBirNWP9M8
	1erDwKYtxoEdXgvwBeoOpKapb5L0qY8lBVKtcuAHtUSG7HSLRN8ucy70c3nQj4BWjfGPW9dwXjJWz
	rJUSHgydUKn1epJ6XWiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sor30-0000000EFtJ-2a8h;
	Thu, 12 Sep 2024 21:08:14 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sor1Y-0000000EFjf-480J;
	Thu, 12 Sep 2024 21:06:46 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5c245c62362so1633465a12.0;
        Thu, 12 Sep 2024 14:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726175203; x=1726780003; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M3icDhOuZ25W4TPAI+V+FnNmr4Y9zRWbBHCfxgpLHww=;
        b=HLOljJxRWs5kwhpg4QDvEO5kjITxDZQqmmPsKa4AwQUPaUlIcMqo/h5jnTNjgkQ7RS
         Gq4HBkHUfHfiDF7oBjUPQoJntQvpKyiUU/pFsCCojFqWoWs+oecr0Sz5FRAstMDlkr79
         8MX6s9fxyHzduROaS7IhszMVOeNUm6Saj9uoC5kzqBwpocQmvXjz4YKOS2mUGXu3+Z0v
         2Tk1xcVh32SL+GqkZ7p1HD7B6MghBmVuY9nUpMxLVBD5uZ01LIlBZQZc2UxOlws+8O2V
         +38/Da73EE00rVscJEyD8J+y/df8fGLEyueggpPVg3xKqX7mfyzjq2+QwIYztK8ElRXb
         C+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726175203; x=1726780003;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M3icDhOuZ25W4TPAI+V+FnNmr4Y9zRWbBHCfxgpLHww=;
        b=T4sM+3iaohX6Co/6Q7uJExoKwYHP+Wq07xsyReHhQTSkOc5Kib7n8buHT/VZahgwLr
         wKv7tFFmu6Qzn+PFy+ZGpf531hhqcW1L3tudoEs4eIZ5IIVpy8FZtu4DUHexWRjQtUjE
         3o/lnL3b5fBK7F2zDgfgQn+hU0ALuRavWmyzo6xQtWlJ+WBDCd2FB9GZTAOhdN4LzKrA
         dEpVY9f8SUzJrE0y/BkbsN5JIR+shCcFZONtxTRqwxic9ELY+7iZG2qnTqLnyJ8N179X
         MFS8eMR1EoWsOaSZQnGm0SHMJuYS4XuL3Sy+OXo92gqW91fojRzLTTfHTxNl1j0peyKS
         bGNg==
X-Forwarded-Encrypted: i=1; AJvYcCW5MFN4aVONUKyxRNPsZIQXq6DpbwEoYObPMixYO7e0lkX6zfpxMa5lX4a7I8BvCUpRkgohdeIo7qFH97mxjQKI@lists.infradead.org, AJvYcCWtJxYuZkXVF57ZYcxvL5ZX8g+JvIzxEGAIUpvyUKl6jahsiOSITvxCyWJ5/6Z+c8gyEMCKjKOJkGaS4fegXks=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsikoGx80kcu5FF7mzHB18HGMpa1dpsN2x2xicZEJlwBIQ+5Dc
	5Ff4YTG27qup3EV9AR/1eoCEFQYs2d8e8sUs+bEgZ7CyUWx9aN2JHE4mpnOV+gpFJQNQffbVw0I
	QmhCkOM4qPVr0/yIK6BYQyTzPGWQ=
X-Google-Smtp-Source: AGHT+IFrQrdqAxHzrPLVGz1hbEuwHetZrtXDERaEA0Nn5RHxr3g5dYXt3TyxDHWraN+GSFlYSOXR30ibkiavfFB5P2Y=
X-Received: by 2002:a17:907:f168:b0:a77:d52c:c42d with SMTP id
 a640c23a62f3a-a902941e749mr390227666b.13.1726175202427; Thu, 12 Sep 2024
 14:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240912025034.180233-1-CFSworks@gmail.com> <20240912025034.180233-5-CFSworks@gmail.com>
 <ed4b6913-f19b-4280-b3b2-f5bb1e7f47eb@kwiboo.se>
In-Reply-To: <ed4b6913-f19b-4280-b3b2-f5bb1e7f47eb@kwiboo.se>
From: Sam Edwards <cfsworks@gmail.com>
Date: Thu, 12 Sep 2024 14:06:30 -0700
Message-ID: <CAH5Ym4jEMvBVQNNS6U49RWTAVPX4GmOVC-VjgXsFCR=X68QWgA@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>, 
	Chris Morgan <macromorgan@hotmail.com>, Alex Zhao <zzc@rock-chips.com>, 
	Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jing Luo <jing@jing.rocks>, 
	Kever Yang <kever.yang@rock-chips.com>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, =?UTF-8?Q?Daniel_Kukie=C5=82a?= <daniel@kukiela.pl>, 
	Joshua Riek <jjriek@verizon.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_140645_047665_5A4F5170 
X-CRM114-Status: GOOD (  28.18  )
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

T24gVGh1LCBTZXAgMTIsIDIwMjQgYXQgMTI6NTPigK9QTSBKb25hcyBLYXJsbWFuIDxqb25hc0Br
d2lib28uc2U+IHdyb3RlOgo+Cj4gSGkgU2FtLAo+Cj4gU291bmRzIGxpa2UgdGhpcyBtYXkgYmUg
bWlzc2luZwo+Cj4gICAgICAgICByb2NrY2hpcCxkcC1sYW5lLW11eCA9IDwwIDEgMiAzPjsKPgo+
IG9yCj4KPiAgICAgICAgIHJvY2tjaGlwLGRwLWxhbmUtbXV4ID0gPDMgMiAxIDA+Owo+Cj4gaWYg
YWxsIGxhbmVzIGFyZSB1c2VkIGZvciBEUCBhbmQgbm9uZSBhcmUgdXNlZCBmb3IgVVNCLgo+Cj4g
SXQgc2hvdWxkIGhlbHAgZGVzY3JpYmUgdGhlIGh3IGFuZCBhbHNvIGhlbHAgdGhlIGRyaXZlciBz
ZXQgbW9kZSB0bwo+IFVEUEhZX01PREVfRFAgYW5kIHRoYXQgc2hvdWxkIGRpc2FibGUgdGhlIHUz
IHBvcnQsIG9yIHRoZXJlIG1heSBiZSBhbgo+IGlzc3VlIHRvIGZpeCBpbiB0aGUgcGh5IGRyaXZl
ci4KClRoYW5rcyBmb3IgeW91ciBpbnNpZ2h0cyBKb25hcyEKCkkgaGF2ZW4ndCB5ZXQgZ290dGVu
IHRvIERQIGVuYWJsZW1lbnQgc28gSSBkb24ndCBrbm93IHRoZSBjb3JyZWN0IERQCmxheW91dC4g
VWx0aW1hdGVseSBJIGRvIHdhbnQgdGhlIFVTQkRQMCBub2RlIHRvIGhhdmUgdGhlIG5lY2Vzc2Fy
eQpwcm9wZXJ0aWVzIGZvciBEUCwgYnV0IGFsYXMgdGhhdCdzIGEgcGF0Y2ggZm9yIGFub3RoZXIg
ZGF5LgoKTm9uZXRoZWxlc3MsIEkgYnJpZWZseSB0cmllZCBpdCBhbmQgSSBkb24ndCB0aGluayBV
RFBIWV9NT0RFX0RQCmFmZmVjdHMgdGhlIFBIWSdzICJiYWNrZW5kIiAoY3RybDwtPnBoeSBpZmFj
ZSkgYXQgYWxsLCBvbmx5IHRoZQphdmFpbGFiaWxpdHkgb2YgZnJvbnRlbmQgbGFuZXMgdG8gdGhl
IFVTQi1zcGVjaWZpYyBiYWNrZW5kOiBTbyBwb3J0IHUzCmlzIHN0aWxsIGVuYWJsZWQsIHRoZXJl
J3MganVzdCBubyB3YXkgdG8gcmVhY2ggaXQgZWxlY3RyaWNhbGx5LgoKV2l0aCB0aGF0IGluIG1p
bmQsIHdvdWxkIHlvdSByZWNvbW1lbmQgdGhhdCBJIGFkZCBhIHBsYWNlaG9sZGVyCmRwLWxhbmUt
bXV4IG9mIDAgMSAyIDMgZm9yIG5vdywganVzdCB0byBrZWVwIHRoZSBQSFkgZnJvbSBhdHRlbXB0
aW5nCnRvIHNwZWFrIFVTQiB0byBhIERQIGRldmljZT8gSSBkb24ndCBmb3Jlc2VlIGFueSBoYXJt
IGluIGxlYXZpbmcgaXQKYXMtaXMgYnV0IHlvdSBtYXkga25vdyBzb21ldGhpbmcgdGhhdCBJIGRv
bid0LgoKPgo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiArCj4gPiArJnVz
Yl9ob3N0MF94aGNpIHsKPiA+ICsgICAgIGV4dGNvbiA9IDwmdTJwaHkwPjsKPiA+ICsgICAgIG1h
eGltdW0tc3BlZWQgPSAiaGlnaC1zcGVlZCI7Cj4KPiBJZiB0aGlzIG9ubHkgdXNlIHRoZSBVU0Iy
IHBoeSwgdGhpcyBzaG91bGQgcHJvYmFibHkgYWxzbyBvdmVycmlkZSB0aGUKPiBkZWZhdWx0IHBo
eXMgYW5kIHBoeS1uYW1lcyBwcm9wcyB3aXRoOgo+Cj4gICAgICAgICBwaHlzID0gPCZ1MnBoeTBf
b3RnPjsKPiAgICAgICAgIHBoeS1uYW1lcyA9ICJ1c2IyLXBoeSI7CgpJIGFncmVlIGNvbXBsZXRl
bHk6IGlmIHRoZSBjb250cm9sbGVyIGRvZXNuJ3QgbmVlZCB0aGUgVVNCMyBQSFksIHRoZW4KaXQg
c2hvdWxkIG5vdCAoaW1wbGljaXRseSkgYmUgc3BlY2lmaWVkIGluIHRoZSBEVC4gQmVpbmcgYWJs
ZSB0byBhZGQKdGhlc2Ugb3ZlcnJpZGVzIGlzIGEgYmlnIGdvYWwgb2YgbWluZSBhcyB3ZWxsLiA6
KQoKU2FkbHksIGBwaHlzYCBpcyB3aGF0IGluaXRpYWxpemVzIFVTQkRQJ3MgVVNCLXNpZGUgYmFj
a2VuZCwgc28gd2l0aG91dAppdCB0aGUgUlhfU1RBVFVTIGxpbmUgZ29lcyBmbG9hdGluZywgYW5k
IGJlY2F1c2UgdGhlIGNvbnRyb2xsZXIgc3RpbGwKZXhwZWN0cyBhIHBvcnQgdGhlcmUsIGl0IG1p
c2JlaGF2ZXM6ClsgICAzMC45ODEwNzZdIHVzYiB1c2IyLXBvcnQxOiBjb25uZWN0LWRlYm91bmNl
IGZhaWxlZAoKSSBjYW4gdGVsbCB0aGUgY29udHJvbGxlciB0aGF0IHRoZXJlIGlzIG5vIHUzIHBv
cnQgYnkgZG9pbmcgdGhpcyBpbiBVLUJvb3Q6Cj0+IG13LmwgMHhmZDVhYzAxYyAweGYwMDAwMDAw
ICMgdXNiM290ZzBfaG9zdF9udW1fdTNfcG9ydD0wCj0+IGJvb3QKLi4uYW5kIHRoYXQgbWFrZXMg
c2luZ2xlLVBIWSBvcGVyYXRpb24gd29yayBwZXJmZWN0bHkhIEJ1dCB1bmxlc3MKTGludXggaXRz
ZWxmIGVmZmVjdHMgdGhhdCBjaGFuZ2UsIHRoaXMgcGF0Y2ggY2FuJ3QgcmVseSBvbiB0aGF0IEdS
RgpiZWluZyBzZXQgY29ycmVjdGx5LgoKRG8geW91IGhhdmUgYSByZWNvbW1lbmRhdGlvbiBvbiBo
b3cgSSBtaWdodCBnbyBhYm91dCBkaXNhYmxpbmcgdGhpcwpwb3J0PyBJIHNlbnQgYSBwYXRjaHNl
dCBsYXN0IHllYXIgWzFdIHRoYXQgaGFkIHRoZSBEV0MzL3hIQ0kgZHJpdmVyCmlnbm9yZSBlbnVt
ZXJhdGVkIHUzIHBvcnRzIHdoZW4gdGhlIG1heGltdW0tc3BlZWQgd2FzIHNldCB0bwpoaWdoLXNw
ZWVkLCBidXQgdGhlIGNvbnNlbnN1cyBzZWVtcyB0byBiZSB0aGF0IHRoaXMgc2hvdWxkbid0IGJl
CmFkZHJlc3NlZCBhdCB0aGUgeEhDSSBkcml2ZXIgbGV2ZWwsIHNvIHNvbWVob3cgemVyb2luZyB0
aGUgbmVjZXNzYXJ5CkdSRiBiaXRzIHNvdW5kcyBsaWtlIHRoZSB3YXkgdG8gZ28gaGVyZS4gV2hh
dCBkbyB5b3UgdGhpbms/CgpLaW5kIHJlZ2FyZHMsClNhbQoKWzFdOiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyMzEyMDgyMTA0NTguOTEyNzc2LTEtQ0ZTd29ya3NAZ21haWwuY29tLwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
