Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0520BC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jan 2024 12:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/le1qMtfyu8HQRUTM3hNEA53nCJ4Xy1RJpQHsfhnjek=; b=0rdkkQlcLCcafW
	rq6f14U4fOO6jj/Ppjy/I9lXnQcJJf8uEIl5tUdviqN8GjUwHbz7LXnG0p6NOUY/7ANoRkyfyuBK+
	mslTqcLHXMVlrJqkv7aUO0D4kxmL0gUiK7hNRjPK11/jJD60XSK/QeAwUdOBcVhf0gQYy5KaDXfhg
	ctQdEQV6t1vk3KjxF7o8VT9d4frKcd4M+glkFzMKtw1bA3zYxK3XaFFpqPcrihNhWSgKsnxydFSjc
	pvYnovlsPgHvDc3pvW0XoJK9bTieCk55m0cG0vuMZnuiOMJYVUrP5OtGXsHHPFEV/YG17jF7YzoSs
	T3IINqHnEwhtP1YomBQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMoTe-0050N2-0M;
	Mon, 08 Jan 2024 12:11:34 +0000
Received: from mail-vk1-xa2b.google.com ([2607:f8b0:4864:20::a2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMoTb-0050Kc-09
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jan 2024 12:11:32 +0000
Received: by mail-vk1-xa2b.google.com with SMTP id 71dfb90a1353d-4b739b29686so1076064e0c.0
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jan 2024 04:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1704715888; x=1705320688; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjS8ArwYoYD13Rw/ppxlKL+z8C87I1HaN+kHJCMBTLs=;
        b=vSFH5FNfUxV4OihxW968qFZ3k/HmoQ9SPbNcC/bNf4jofPxzCSD8leLZBQaV4jDvP5
         mpMmzVG4qdnIWCIdOoIEjGbkSJH8NUn0TYCuqM6/IN7BEdavkuMA04Ijky9YWmcEaw1T
         F8xO6Ap7RpuDbePCRQWpF36AGoWCh8mH9RCP4Pol4DtUo3XWz+BvEp3CM9p5U9mot/f/
         kVvOSjfzVdo7kD3jrppLUKZkZic7MW/+oJQYGYCZT95gdjfbsmVAinS9palCD4EVySEE
         8PTWotf4qg+a7QRBycdi6tZdLdhaZuTsbeixFh3Of2/0A04pa+DC+CIaGu7ou+IYpfcX
         ljxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704715888; x=1705320688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HjS8ArwYoYD13Rw/ppxlKL+z8C87I1HaN+kHJCMBTLs=;
        b=h5DpzoQ13qf4ryomJp2ZV6tK3kZodyM51wLGdMOgAQdDdbYr5rxEgK9KgF3mwbD/GA
         fBfdFwCcblXl7b2Okc0iDI1cx/q6f+lr1d4115I6mY0wlcG4panz6Sy1RaL3bFR3k4D5
         HnCtix5Ttk7GIqVnzYLFfYEFhrXoerWjCBbUnGih4VoEASWsTayCV/ABumwDNhVAJgug
         27i2imM63z07OQVqZ+gK1n5psNFkt4GzoR8/uo77jzUsN8ajRr7429OpjfcqIXTCArK5
         WV43xTYPjOgmE1bfr+ALrgN4ktgeyOCyvFwQGzOL9d5QNdM2COWj+cmbfooTYzTmGN07
         G2Bw==
X-Gm-Message-State: AOJu0Yx2midxkYDG/MoIjAQDQgvY1R6v6HFwErWLprBdIoJsUNt0ac3E
	2GEI6gY11OAx/OPfnysnFxVuBFBT0Uso6rwTNIaVMIsWS+Ba/w==
X-Google-Smtp-Source: AGHT+IHuqRQlF0qoGK+dApu+zRih+m3QuW0KO3eELzwwqavuuUrIVzXrVfAsZfH3tCaN78eGW//cpzr663M/l9HvIhg=
X-Received: by 2002:a05:6122:1798:b0:4b2:c554:cd04 with SMTP id
 o24-20020a056122179800b004b2c554cd04mr1733995vkf.16.1704715888459; Mon, 08
 Jan 2024 04:11:28 -0800 (PST)
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <2323515.eGJsNajkDb@diego>
 <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com> <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
In-Reply-To: <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Mon, 8 Jan 2024 12:11:17 +0000
Message-ID: <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_041131_301345_75A52B37 
X-CRM114-Status: GOOD (  25.92  )
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

SGkgRHJhZ2FuLAoKT24gVGh1LCBKYW4gNCwgMjAyNCBhdCA5OjUw4oCvQU0gRHJhZ2FuIFNpbWlj
IDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjAyNC0wMS0wNCAxMDo0NCwgU2hh
bnR1ciBSYXRob3JlIHdyb3RlOgo+ID4gT24gRnJpLCBEZWMgMjksIDIwMjMgYXQgMTA6MDjigK9Q
TSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+PiBBbSBGcmVpdGFn
LCAyMi4gRGV6ZW1iZXIgMjAyMywgMTU6MTY6MTYgQ0VUIHNjaHJpZWIgU2hhbnR1ciBSYXRob3Jl
Ogo+ID4+ID4gVVNCIHBvcnQgcmVndWxhdG9ycyBzaG91bGQgYmUgY29udHJvbGxlZCBieSBQSFlz
Cj4gPj4gPiBzbyB3ZSByZW1vdmUgYWx3YXlzLW9uIHByb3BlcnR5IGFuZCBsZXQgUEhZcyBtYW5h
Z2UgdGhlCj4gPj4gPiByZWd1bGF0b3IuCj4gPj4gPgo+ID4+ID4gcGh5LXN1cHBseSBpc24ndCBz
Y29uZnVncmVkIGZvciB0aGUgVHlwZUMgcG9ydCBhbmQgbm93IHRoYXQgd2UgYXJlCj4gPj4gICAg
ICAgICAgICAgICAgIF5eIGNvbmZpZ3VyZWQgPwo+ID4+Cj4gPj4gPiByZW1vdmluZyByZWd1bGF0
b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0aGUgcGh5LXN1cHBseQo+ID4+ID4gc28gdGhl
IFBIWXMgYXJlIGFibGUgdG8gdHVybiBwb3dlciB0byB0eXBlLWMgcG9ydC4KPiA+PiA+Cj4gPj4g
PiBTZXJpZXMtdmVyc2lvbjogMgo+ID4+ID4KPiA+PiA+IFNpZ25lZC1vZmYtYnk6IFNoYW50dXIg
UmF0aG9yZSA8aUBzaGFudHVyLmNvbT4KPiA+PiA+IC0tLQo+ID4+ID4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgMyArLS0KPiA+PiA+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPj4gPgo+ID4+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82
NC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
c2kKPiA+PiA+IGluZGV4IGJjYTJiNTBlMGEuLmY3MjczZjc5OTAgMTAwNjQ0Cj4gPj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ID4+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
c2kKPiA+PiA+IEBAIC0xOTIsNyArMTkyLDYgQEAgdmNjNXYwX2hvc3Q6IHZjYzV2MC1ob3N0LXJl
Z3VsYXRvciB7Cj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+ID4+
ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfaG9zdCI7Cj4gPj4gPiAt
ICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPj4gPiAgICAgICAgICAgICAgIHZp
bi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+ID4+ID4gICAgICAgfTsKPiA+PiA+Cj4gPj4gPiBA
QCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNjNXYwLXR5cGVjLXJlZ3VsYXRvciB7
Cj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4gPiAg
ICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX3R5cGVjX2VuPjsKPiA+PiA+ICAgICAg
ICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3R5cGVjIjsKPiA+PiA+IC0gICAgICAg
ICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+PiA+ICAgICAgICAgICAgICAgdmluLXN1cHBs
eSA9IDwmdmNjNXYwX3VzYj47Cj4gPj4gPiAgICAgICB9Owo+ID4+ID4KPiA+PiA+IEBAIC04NTks
NiArODU3LDcgQEAgJnUycGh5MCB7Cj4gPj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4g
Pgo+ID4+ID4gICAgICAgdTJwaHkwX290Zzogb3RnLXBvcnQgewo+ID4+ID4gKyAgICAgICAgICAg
ICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdHlwZWM+Owo+ID4+ID4gICAgICAgICAgICAgICBzdGF0
dXMgPSAib2theSI7Cj4gPj4gPiAgICAgICB9Owo+ID4+Cj4gPj4gSnVzdCB0byBleHBsYWluIGZv
ciBtZSwgd2hhdCBpcyBzdXBwbHlpbmcgdGhlICJvdGhlciIgT1RHIHBvcnQKPiA+PiAgICAgICAg
IHUycGh5MV9vdGc6IG90Zy1wb3J0IHt9Cj4gPj4KPiA+PiBpbiB1MnBoeTEgLi4uIHRoaXMgb25l
IGlzIHN0YXR1cyBva2F5LCBidXQgZG9lcyBub3QgaGF2ZSBhbnkgcGh5Cj4gPj4gc3VwcGx5Pwo+
ID4+Cj4gPiBJbiBSb2NrUHJvNjQgdGhlcmUgaXMgb25seSAxIFVTQi1DIE9URyBwb3J0IGFuZCB0
aGUgb3RoZXIgcG9ydAo+ID4gaXMgYSBVU0ItMy4wIHBvcnQuCj4gPiBUbyBiZSBob25lc3QsIEkg
YW0gbm90IDEwMCUgc3VyZSBob3cgdGhpcyBhbGwgd29ya3MsIGFzIEkgdW5kZXJzdGFuZAo+ID4g
dGhlIFVTQjMuMCBwb3J0IGlzIHdpcmVkIHRvIHRoZSBzZWNvbmQgVHlwZUMgUGh5Lgo+ID4KPiA+
IE1heWJlIERyYWdhbiBoYXMgbW9yZSBpbmZvIG9uIHRoaXMuCj4KPiBJJ2xsIGhhdmUgaXQgY2hl
Y2tlZCBhbmQgdGVzdGVkIGluIGRldGFpbCwgb2YgY291cnNlLCBidXQgSSBoYXZlIHRvCj4gcmVj
b3ZlciBmcm9tIHRoaXMgbmFzdHkgZmx1IGZpcnN0LiAgVW5mb3J0dW5hdGVseSwgaXQgaGFzIHJl
bmRlZGVkIG1lCj4gdW5hYmxlIHRvIGV2ZW4gdGhpbmsgc3RyYWlnaHQuCgpIb3BlIHlvdSBmZWVs
IGJldHRlciBzb29uLgpJdCB3b3VsZCBiZSBhd2Vzb21lIGlmIHdlIGNhbiBnZXQgdGhpcyBpbiB3
aGlsZSB0aGUgY3VycmVudCBtZXJnZQp3aW5kb3cgaXMgb3Blbi4KCktpbmQgcmVnYXJkcywKU2hh
bnR1cgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
