Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A56CC47422
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jan 2024 22:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvHgA+S32QGVLLXEZsmIjZxBlLuD75XG1y1fAuLHtUw=; b=u0iYpnRGqUPOAp
	9S/LbkgYe1TZC/t2X2J2NnPxnwDXSA24F9ByQutqvh9otqZjz0nlYzL+nWC6Nr/6Zu+dEGS9uiTkc
	/073J2yfianu3lCrfagH5WM+3pqwmq00KhQlZAaB36f/qEEDsK1hXbJTcSMrkCmZMr5pscPFv9eOx
	kIqCRU3sXC0ACPfHXbIlSbD/eYzeWGAKN38ba+ODb9IF88pD0Ws6JFvjd1oA+DOvv0WRRTP78fU02
	sijj4cblJncm+w+5KNmwE0D8lAS1syRBYqZUbPpJQylz2i100Wepoq77Gw+WWgnyVzmHdJHQWF1cN
	9p6lsYA6ZPkipwYxMLRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRg44-00A6lG-06;
	Sun, 21 Jan 2024 22:13:16 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRg40-00A6kl-19
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jan 2024 22:13:13 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-67fe0264dd2so19298836d6.0
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Jan 2024 14:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1705875190; x=1706479990; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VepHfkFUQi5Ztbvh0v7iqmXPYzszpDFD5MuXkxYNeM0=;
        b=fxmj0XIMJYAdEDBb7mfBGh/xSiq4Z/eiqaT0MLH/qrk/liyF8OSuvSEquid3hbs1PB
         Cdy3yhrwJlbcpuHHyTKkvkgMKWvpYXgPT6N380nyj2bm1w2WcPC2SDXgR4EDYTref8Ak
         8V8ybX/lEQwdYYwDBHiRXPXbG7y6ik15ud6KqrcawY2P/DXqBytUk8QRH6Jjsr2ITfYn
         Gjwqr2Vy6TQbVZ73YQzy7mCJvYVmYAGIbT4JvJKdHEmU0hPc53b9HsnM8dytMtUVhtni
         wmJmmdUqLr1k3IdhWQksvtBfuYI52v+ktBMYEybk3XRgNSx7JAsHhGe4sS1QuTTJjexh
         RGNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705875190; x=1706479990;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VepHfkFUQi5Ztbvh0v7iqmXPYzszpDFD5MuXkxYNeM0=;
        b=kCGQpFvGuSruxOfE+Iq+AkkwlJZ0wtL5S7vM9oF/eaCek6IrsgBzjBx0KmgrdpRtwD
         r1j9J178SAYXMNr39oI0dxFzYlcr6LH9fztxtglAM+yaH4OGUAhmC7DBkWJM8hml1MBp
         z1ZGiVL02tanCIHsXNk4v0knxOFTWlWOEp/QLNP16DddNNfkaFZ1TqBOQFYAYNoEwyJC
         OV/GG/LKwslX6NTBw4OrxTVqybnyOIcSRiBn9n0HEQnmx9Zzq7CLgrlDYmmFYSlJ5CaG
         l6eGzQAJ8IE/dgAhsp1OzzM7FDMOWWze6RwdjSergkyeeATegh+dau0+eqhhChpTSX/l
         Y1OA==
X-Gm-Message-State: AOJu0YzEejoGHMLafMISmSFTxiJyIldnmEOWDibzgV3VxzHUgiN4DBRy
	shWIeCwvtRUzWZASBcRVdadmtzVXiTO3RAD+IPW/KHHsuanMsoLhHV6P8YSP9c7oo6fj6GTpNkO
	w2/uM31cE4CgwjIiNcRYPHRhWiSVLQHUz4Qr6PtU1xHkVjphE7IM=
X-Google-Smtp-Source: AGHT+IGxoCZ7N4AlTl4Cty7IqnIIfBlU2/ZbSssJ8mWcaIqv4e99vprsv0UhiTLHjMXmIww9aWp1benDZSm4d2df8kA=
X-Received: by 2002:a05:6214:f26:b0:685:8b1e:600c with SMTP id
 iw6-20020a0562140f2600b006858b1e600cmr4877959qvb.83.1705875190617; Sun, 21
 Jan 2024 14:13:10 -0800 (PST)
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego> <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
In-Reply-To: <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Sun, 21 Jan 2024 22:12:59 +0000
Message-ID: <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_141312_398781_CAF5A15D 
X-CRM114-Status: GOOD (  33.06  )
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

SEkgRHJhZ2FuLAoKT24gTW9uLCBKYW4gOCwgMjAyNCBhdCAyOjQ34oCvUE0gRHJhZ2FuIFNpbWlj
IDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjAyNC0wMS0wOCAxMzoyOSwgSGVp
a28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBBbSBNb250YWcsIDguIEphbnVhciAyMDI0LCAxMzoxMTox
NyBDRVQgc2NocmllYiBTaGFudHVyIFJhdGhvcmU6Cj4gPj4gT24gVGh1LCBKYW4gNCwgMjAyNCBh
dCA5OjUw4oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPj4gd3JvdGU6
Cj4gPj4gPiBPbiAyMDI0LTAxLTA0IDEwOjQ0LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPj4g
PiA+IE9uIEZyaSwgRGVjIDI5LCAyMDIzIGF0IDEwOjA44oCvUE0gSGVpa28gU3TDvGJuZXIgPGhl
aWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPj4gPiA+PiBBbSBGcmVpdGFnLCAyMi4gRGV6ZW1iZXIg
MjAyMywgMTU6MTY6MTYgQ0VUIHNjaHJpZWIgU2hhbnR1ciBSYXRob3JlOgo+ID4+ID4gPj4gPiBV
U0IgcG9ydCByZWd1bGF0b3JzIHNob3VsZCBiZSBjb250cm9sbGVkIGJ5IFBIWXMKPiA+PiA+ID4+
ID4gc28gd2UgcmVtb3ZlIGFsd2F5cy1vbiBwcm9wZXJ0eSBhbmQgbGV0IFBIWXMgbWFuYWdlIHRo
ZQo+ID4+ID4gPj4gPiByZWd1bGF0b3IuCj4gPj4gPiA+PiA+Cj4gPj4gPiA+PiA+IHBoeS1zdXBw
bHkgaXNuJ3Qgc2NvbmZ1Z3JlZCBmb3IgdGhlIFR5cGVDIHBvcnQgYW5kIG5vdyB0aGF0IHdlIGFy
ZQo+ID4+ID4gPj4gICAgICAgICAgICAgICAgIF5eIGNvbmZpZ3VyZWQgPwo+ID4+ID4gPj4KPiA+
PiA+ID4+ID4gcmVtb3ZpbmcgcmVndWxhdG9yLWFsd2F5cy1vbiwgd2UgbmVlZCB0byBmaXggdGhl
IHBoeS1zdXBwbHkKPiA+PiA+ID4+ID4gc28gdGhlIFBIWXMgYXJlIGFibGUgdG8gdHVybiBwb3dl
ciB0byB0eXBlLWMgcG9ydC4KPiA+PiA+ID4+ID4KPiA+PiA+ID4+ID4gU2VyaWVzLXZlcnNpb246
IDIKPiA+PiA+ID4+ID4KPiA+PiA+ID4+ID4gU2lnbmVkLW9mZi1ieTogU2hhbnR1ciBSYXRob3Jl
IDxpQHNoYW50dXIuY29tPgo+ID4+ID4gPj4gPiAtLS0KPiA+PiA+ID4+ID4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgMyArLS0KPiA+PiA+ID4+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPiA+PiA+
ID4+ID4KPiA+PiA+ID4+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2twcm82NC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+ID4+ID4gaW5kZXggYmNhMmI1MGUwYS4uZjcyNzNm
Nzk5MCAxMDA2NDQKPiA+PiA+ID4+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+ID4+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+ID4+ID4gQEAgLTE5Miw3
ICsxOTIsNiBAQCB2Y2M1djBfaG9zdDogdmNjNXYwLWhvc3QtcmVndWxhdG9yIHsKPiA+PiA+ID4+
ID4gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+ID4gPj4gPiAg
ICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+ID4+ID4gPj4gPiAg
ICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9ob3N0IjsKPiA+PiA+ID4+ID4g
LSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4+ID4gPj4gPiAgICAgICAgICAg
ICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+ID4+ID4gPj4gPiAgICAgICB9Owo+ID4+
ID4gPj4gPgo+ID4+ID4gPj4gPiBAQCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNj
NXYwLXR5cGVjLXJlZ3VsYXRvciB7Cj4gPj4gPiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPiA+PiA+ID4+ID4gICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8
JnZjYzV2MF90eXBlY19lbj47Cj4gPj4gPiA+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5h
bWUgPSAidmNjNXYwX3R5cGVjIjsKPiA+PiA+ID4+ID4gLSAgICAgICAgICAgICByZWd1bGF0b3It
YWx3YXlzLW9uOwo+ID4+ID4gPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2
MF91c2I+Owo+ID4+ID4gPj4gPiAgICAgICB9Owo+ID4+ID4gPj4gPgo+ID4+ID4gPj4gPiBAQCAt
ODU5LDYgKzg1Nyw3IEBAICZ1MnBoeTAgewo+ID4+ID4gPj4gPiAgICAgICBzdGF0dXMgPSAib2th
eSI7Cj4gPj4gPiA+PiA+Cj4gPj4gPiA+PiA+ICAgICAgIHUycGh5MF9vdGc6IG90Zy1wb3J0IHsK
PiA+PiA+ID4+ID4gKyAgICAgICAgICAgICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBfdHlwZWM+Owo+
ID4+ID4gPj4gPiAgICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+PiA+ID4+ID4gICAg
ICAgfTsKPiA+PiA+ID4+Cj4gPj4gPiA+PiBKdXN0IHRvIGV4cGxhaW4gZm9yIG1lLCB3aGF0IGlz
IHN1cHBseWluZyB0aGUgIm90aGVyIiBPVEcgcG9ydAo+ID4+ID4gPj4gICAgICAgICB1MnBoeTFf
b3RnOiBvdGctcG9ydCB7fQo+ID4+ID4gPj4KPiA+PiA+ID4+IGluIHUycGh5MSAuLi4gdGhpcyBv
bmUgaXMgc3RhdHVzIG9rYXksIGJ1dCBkb2VzIG5vdCBoYXZlIGFueSBwaHkKPiA+PiA+ID4+IHN1
cHBseT8KPiA+PiA+ID4+Cj4gPj4gPiA+IEluIFJvY2tQcm82NCB0aGVyZSBpcyBvbmx5IDEgVVNC
LUMgT1RHIHBvcnQgYW5kIHRoZSBvdGhlciBwb3J0Cj4gPj4gPiA+IGlzIGEgVVNCLTMuMCBwb3J0
Lgo+ID4+ID4gPiBUbyBiZSBob25lc3QsIEkgYW0gbm90IDEwMCUgc3VyZSBob3cgdGhpcyBhbGwg
d29ya3MsIGFzIEkgdW5kZXJzdGFuZAo+ID4+ID4gPiB0aGUgVVNCMy4wIHBvcnQgaXMgd2lyZWQg
dG8gdGhlIHNlY29uZCBUeXBlQyBQaHkuCj4gPj4gPiA+Cj4gPj4gPiA+IE1heWJlIERyYWdhbiBo
YXMgbW9yZSBpbmZvIG9uIHRoaXMuCj4gPj4gPgo+ID4+ID4gSSdsbCBoYXZlIGl0IGNoZWNrZWQg
YW5kIHRlc3RlZCBpbiBkZXRhaWwsIG9mIGNvdXJzZSwgYnV0IEkgaGF2ZSB0bwo+ID4+ID4gcmVj
b3ZlciBmcm9tIHRoaXMgbmFzdHkgZmx1IGZpcnN0LiAgVW5mb3J0dW5hdGVseSwgaXQgaGFzIHJl
bmRlZGVkIG1lCj4gPj4gPiB1bmFibGUgdG8gZXZlbiB0aGluayBzdHJhaWdodC4KPiA+Pgo+ID4+
IEhvcGUgeW91IGZlZWwgYmV0dGVyIHNvb24uCj4gPj4gSXQgd291bGQgYmUgYXdlc29tZSBpZiB3
ZSBjYW4gZ2V0IHRoaXMgaW4gd2hpbGUgdGhlIGN1cnJlbnQgbWVyZ2UKPiA+PiB3aW5kb3cgaXMg
b3Blbi4KPiA+Cj4gPiBqdXN0IGEgc21hbGwgY29tbWVudCByZWdhcmRpbmcgdGltaW5nLiBBbGwg
cmVndWxhciBkZXZlbG9wbWVudCBjaGFuZ2VzCj4gPiBuZWVkIHRvIGJlIGZpbmlzaGVkIGFuZCBp
biBsaW51eC1uZXh0IF9iZWZvcmVfIHRoZSBtZXJnZS13aW5kb3cgb3BlbnMuCj4gPgo+ID4gQXMg
dGhpcyBpcyBub3QgYSBmaXggaXQgd2lsbCBnbyB0byA2LjkgYW55d2F5IC0gaGVuY2Ugbm8gbmVl
ZCB0byBydXNoLgo+Cj4gQWgsIHllcywgSSBrZWVwIGZvcmdldHRpbmcgdGhhdCB0aGUgY3VycmVu
dCBtZXJnZSB3aW5kb3cgYmFzaWNhbGx5IGdvZXMKPiBvbmUgbW9yZSBrZXJuZWwgdmVyc2lvbiBp
bnRvIHRoZSBwYXN0LiA6KSAgVGhhbmsgeW91IGZvciB0aGUKPiBjbGFyaWZpY2F0aW9uLgoKSG9w
ZSB5b3UgYXJlIGZlZWxpbmcgYmV0dGVyLgpKdXN0IHRvIHVwZGF0ZSwgbXkgcGF0Y2ggaGFzIGJl
ZW4gZHJvcHBlZCBpbiB1LWJvb3QgaW4gZXhwZWN0YXRpb24gb2YKaXQgYmVpbmcgZml4ZWQgaGVy
ZS4KCkRvIHlvdSBmb3Jlc2VlIGl0IGhhcHBlbmluZyBhbnl0aW1lIHNvb24/CgpLaW5kIHJlZ2Fy
ZHMsClNoYW50dXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
