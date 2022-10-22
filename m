Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 059C4C04A95
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 12:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BH5cIynv/rx/Vv1rFXhJVpoDTeyr/VvM28s4KQXD1BE=; b=1oI9V1jTlL1iyP
	4mOhdNgdKNeE0/FsZsKgRUlln3Lw6k85npT4ov0o3I5ChHkPgC5usaRKOSKywBalT9/CtTEVXrx1J
	VKvtSPoDTdmV8DuPsi2R/G0saAzj1KEG2EFe3iMk0nZRbYIuR/YTG0co0TaqTk86kfL+jFqp3zAy5
	HM9CawTw+jMii9CwvrsLEJDsLACL1hnhcrQ90u0BkBhAFLymYhPz5wywFeyy2oB+1zrDontOBuoBL
	EFmVobavn+fiaIKi4ejZHLIsssEUjTJ38QpG6M2tmChL+mbKElasc2I69UFAd8Xe7xvK5djcYgW0w
	DUlN1zagyxO61BtHkl2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omDU8-00CZ1T-C4; Sat, 22 Oct 2022 12:20:16 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omDU5-00CZ04-AT; Sat, 22 Oct 2022 12:20:15 +0000
Received: by mail-wr1-x431.google.com with SMTP id o4so487616wrq.6;
        Sat, 22 Oct 2022 05:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqgQmpthFtTKMqinrF6XH8lDGi0vzOcHTbCq+06suV8=;
        b=XYsOqslHc6NB/IZUEoGoi6//b5rrjvV+2ZXq08K6CfW2wDN2jLqQxqdEbXhHLHqkVR
         HUsOWkz5Oih7hTLO/sMyGeuuW6NtpMSSxK7lNwT0V9IjZduTcSV53hV/d30gOG/5Wez5
         +EwFg38ucmAH60wvhugz4gV9+l0Fy17HEe28GSbYE98jRidroXcYK0eSmSOXDTKFtx/i
         L2w/8B8thwK/bYWxHyR15mTLhJ8fFGvEN6GLGnJe8M6vvQPCbeF5xlZF1fZa4nE1+BSo
         6K4r9yMfRro7s6mB2dO7DKIHjlrAxF0/QZmrKYbBPIlgOvr0Y2C0+XIRZts/MFqL8zEh
         bwbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XqgQmpthFtTKMqinrF6XH8lDGi0vzOcHTbCq+06suV8=;
        b=zyYUZ0LFB1LBUsGrZlpMRe3dB2Fo91a50GUWjWlhBA7R9cAZf8kPncZym+qaD0j8GI
         elqitWkwQAJrHu9R3VeqAwWy5K68BHDDPvyzLs6Hlm81sDIOGeiavTZoVwn3BHDVxZiR
         N3KPXZ61RS9uJoXUhmjiCYB9xe+FU9zoLzbGXyRROtETAfTEZpnuwrwZjvdN1McdOoT0
         et6UKm05XcKAd8rww9SDAH++hhv4XiR6z7B6WoMMsF/jIUBMnsuxrCJcp8YijCYI6AiA
         3l+0DqAbx3fjSvJ89aR5HP+EBotTSxx5nuMW3VsvEzgVJ5sYL1Vv1tVqOowEzkKpAjK/
         Xf5A==
X-Gm-Message-State: ACrzQf0Y+Ml4yUtETuDCAJZPj7/vhHSu/7T2K4BVOG2TDNwsJs5eD2sV
	NHcSH9nafP17vC+sjYWGXzQBUUS+/fJuH9jPB/CsiD/lKdjBDA==
X-Google-Smtp-Source: AMsMyM7aEBBWfrqZ6s3SgA9CgPBVd+S3cBD8nocD48HeBNF1UcEzyFY++aYpR2vMTpBrY/NFqSqUL/WjhFGOkIKcJIY=
X-Received: by 2002:a5d:42c6:0:b0:235:1b3a:8d2e with SMTP id
 t6-20020a5d42c6000000b002351b3a8d2emr9784028wrr.689.1666441209297; Sat, 22
 Oct 2022 05:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20221005085439.740992-1-megi@xff.cz> <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core> <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
 <20221021153913.l5ry6v4mcnzcmj2v@core> <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
 <20221021193248.2he6amnj7knk4biu@core> <87edv0sxup.fsf@bloch.sibelius.xs4all.nl>
In-Reply-To: <87edv0sxup.fsf@bloch.sibelius.xs4all.nl>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 22 Oct 2022 08:19:57 -0400
Message-ID: <CAMdYzYp6ShLqKxdiAjaRFiRF5i+wzfKiQvwPMzyQLAutWZbApg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
To: Mark Kettenis <mark.kettenis@xs4all.nl>
Cc: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, michael.riesch@wolfvision.net, 
	frattaroli.nicolas@gmail.com, s.hauer@pengutronix.de, frank-w@public-files.de, 
	ezequiel@vanguardiasur.com.ar, yifeng.zhao@rock-chips.com, jbx6244@gmail.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_052013_397803_0F55783B 
X-CRM114-Status: GOOD (  37.39  )
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

T24gRnJpLCBPY3QgMjEsIDIwMjIgYXQgNDo1MiBQTSBNYXJrIEtldHRlbmlzIDxtYXJrLmtldHRl
bmlzQHhzNGFsbC5ubD4gd3JvdGU6Cj4KPiA+IERhdGU6IEZyaSwgMjEgT2N0IDIwMjIgMjE6MzI6
NDggKzAyMDAKPiA+IEZyb206IE9uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+Cj4gPiBP
biBGcmksIE9jdCAyMSwgMjAyMiBhdCAxMjo0ODoxNVBNIC0wNDAwLCBQZXRlciBHZWlzIHdyb3Rl
Ogo+ID4gPiBPbiBGcmksIE9jdCAyMSwgMjAyMiBhdCAxMTozOSBBTSBPbmTFmWVqIEppcm1hbiA8
bWVnaUB4ZmYuY3o+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gRnJpLCBPY3QgMjEsIDIwMjIg
YXQgMDk6MDc6NTBBTSAtMDQwMCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+ID4gPiA+IEdvb2QgTW9y
bmluZyBIZWlrbywKPiA+ID4gPiA+Cj4gPiA+ID4gPiBBcG9sb2dpZXMgZm9yIGp1c3QgZ2V0dGlu
ZyB0byB0aGlzLCBJJ20gc3RpbGwgaW4gdGhlIG1pZGRsZSBvZiBtb3ZpbmcKPiA+ID4gPiA+IGFu
ZCBqdXN0IGdvdCBteSBsYWIgc2V0IGJhY2sgdXAuCj4gPiA+ID4gPgo+ID4gPiA+ID4gSSd2ZSB0
ZXN0ZWQgdGhpcyBwYXRjaCBzZXJpZXMgYW5kIGl0IGxlYWRzIHRvIHRoZSBzYW1lIHJlZ3Jlc3Np
b24gd2l0aAo+ID4gPiA+ID4gTlZNZSBkcml2ZXMuIEEgbG9vcCBvZiBtZDVzdW0gb24gdHdvIGlk
ZW50aWNhbCA0R0IgcmFuZG9tIGZpbGVzCj4gPiA+ID4gPiBwcm9kdWNlcyB0aGUgZm9sbG93aW5n
IHJlc3VsdHM6Cj4gPiA+ID4gPiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVz
dC1yYW5kLmltZwo+ID4gPiA+ID4gZmFkOTdlOTFkYThkNGZkNTU0Yzg5NWNhZmE4OTgwOWIgIHRl
c3QtcmFuZDIuaW1nCj4gPiA+ID4gPiAyZDU2YTdiYWEwNWMzODUzNWY0YzE5YTJiMzcxZjkwYSAg
dGVzdC1yYW5kLmltZwo+ID4gPiA+ID4gNzRlOGU2ZjkzZDdjM2RjM2FkMjUwZTkxMTc2ZjU5MDEg
IHRlc3QtcmFuZDIuaW1nCj4gPiA+ID4gPiAyNWNmY2ZlY2Y0ZGQ1MjllNGU5ZmJiZTJiZTQ4MjA1
MyAgdGVzdC1yYW5kLmltZwo+ID4gPiA+ID4gNzRlOGU2ZjkzZDdjM2RjM2FkMjUwZTkxMTc2ZjU5
MDEgIHRlc3QtcmFuZDIuaW1nCj4gPiA+ID4gPiBiOTYzNzUwNWJmODhlZDcyNWY2ZDAzZGViNzA2
NWRhYiAgdGVzdC1yYW5kLmltZwo+ID4gPiA+ID4gZjc0MzdlODhkNTI0ZWE5MmUwOTdkYjUxZGNl
MWM2MGQgIHRlc3QtcmFuZDIuaW1nCj4gPiA+ID4gPgo+ID4gPiA+ID4gQmVmb3JlIHRoaXMgcGF0
Y2ggc2VyaWVzOgo+ID4gPiA+ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRl
c3QtcmFuZC5pbWcKPiA+ID4gPiA+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0
ZXN0LXJhbmQyLmltZwo+ID4gPiA+ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAg
IHRlc3QtcmFuZC5pbWcKPiA+ID4gPiA+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUw
ICB0ZXN0LXJhbmQyLmltZwo+ID4gPiA+ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJk
ZTAgIHRlc3QtcmFuZC5pbWcKPiA+ID4gPiA+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYy
ZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4gPiA+ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJl
ZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+ID4gPiA+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzVi
ZWYyZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4gPiA+ID4KPiA+ID4gPiA+IFRob3VnaCBJIGRvIGxv
dmUgd2hlcmUgdGhpcyBwYXRjaCBpcyBnb2luZyBhbmQgd291bGQgbGlrZSB0byBzZWUgaWYgaXQK
PiA+ID4gPiA+IGNhbiBiZSBtYWRlIHRvIHdvcmssIGluIGl0cyBjdXJyZW50IGZvcm0gaXQgZG9l
cyBub3QuCj4gPiA+ID4KPiA+ID4gPiBUaGFua3MgZm9yIHRoZSB0ZXN0LiBDYW4geW91IHBsZWFz
ZSBhbHNvIHRlc3QgdjE/IEFsc28gcGxlYXNlIHNoYXJlIGxzcGNpIC12dnYKPiA+ID4gPiBvZiB5
b3VyIG52bWUgZHJpdmUsIHNvIHRoYXQgd2UgY2FuIHNlZSBhbGxvY2F0ZWQgYWRkcmVzcyByYW5n
ZXMsIGV0Yy4KPiA+ID4KPiA+ID4gR29vZCBjYXRjaCwgd2l0aCB5b3VyIHBhdGNoIGFzIGlzLCB0
aGUgZm9sbG93aW5nIGlzc3VlIGNyb3BzIHVwOgo+ID4gPiBSZWdpb24gMDogTWVtb3J5IGF0IDMw
MDAwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbc2l6ZT0xNktdCj4gPiA+IFJlZ2lv
biAyOiBJL08gcG9ydHMgYXQgMTAwMCBbZGlzYWJsZWRdIFtzaXplPTI1Nl0KPiA+ID4KPiA+ID4g
SG93ZXZlciwgd2l0aCBhIHNpbXBsZSBmaXgsIHdlIGNhbiBnZXQgdGhpczoKPiA+ID4gUmVnaW9u
IDA6IE1lbW9yeSBhdCAzMDAwMDAwMDAgKDY0LWJpdCwgbm9uLXByZWZldGNoYWJsZSkgW3ZpcnR1
YWxdIFtzaXplPTE2S10KPiA+ID4gUmVnaW9uIDI6IEkvTyBwb3J0cyBhdCAxMDAwIFt2aXJ0dWFs
XSBbc2l6ZT0yNTZdCj4gPiA+Cj4gPiA+IGFuZCB3aXRoIGl0IGEgd29ya2luZyBOVk1lIGRyaXZl
Lgo+ID4gPgo+ID4gPiBDaGFuZ2UgdGhlIGZvbGxvd2luZyByYW5nZToKPiA+ID4gMHgwMjAwMDAw
MCAweDAgMHg0MDAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDAgMHg0MDAwMDAwMD47Cj4gPiA+IHRv
Cj4gPiA+IDB4MDIwMDAwMDAgMHgwIDB4MDAwMDAwMDAgMHgzIDB4MDAwMDAwMDAgMHgwIDB4NDAw
MDAwMDA+Owo+ID4KPiA+IEkndmUgYWxyZWFkeSB0cmllZCB0aGlzLCBidXQgdGhpcyB1bmZyb3R1
bmF0ZWx5IGJyZWFrcyB0aGUgd2lmaSBjYXJkcy4KPiA+ICh0aG9zZSBvbmx5IHVzZSB0aGUgSS9P
IHNwYWNlKSBNYXliZSBiZWNhdXNlIEkvTyBhbmQgbWVtb3J5IGFkZHJlc3Mgc3BhY2VzCj4gPiBu
b3cgb3ZlcmxhcCwgSSBkb24ndCBrbm93LiBUaGF0J3Mgd2h5IEkgdXNlZCB0aGUgMUdpQiBvZmZz
ZXQgZm9yIG1lbW9yeQo+ID4gc3BhY2UuCj4KPiBNZWFud2hpbGUsIEkgaGF2ZSBhbiBOVk1lIGRy
aXZlIHRoYXQgb25seSB3b3JrcyBpZiBtbWlvIGlzIGNvbXBsZXRlbHkKPiB1bnRyYW5zbGF0ZWQu
ICBUaGlzIGlzIGFuIEFEQVRBIFNYODAwME5QIGRyaXZlLCB3aGljaCB1c2VzIGEgU2lsaWNvbgo+
IE1vdGlvbiBTTTIyNjAgY29udHJvbGxlci4KPgo+IFNvIGZvciBtZSwgYSB3b3JraW5nIGNvbmZp
Z3VyYXRpb24gaGFzIHRoZSBmb2xsb3dpbmcgInJhbmdlcyI6Cj4KPiByYW5nZXMgPSA8MHgwMTAw
MDAwMCAweDAgMHgwMDAwMDAwMCAweDMgMHgzZmZmMDAwMCAweDAgMHgwMDAxMDAwMD4sCj4gICAg
ICAgICAgPDB4MDIwMDAwMDAgMHgwIDB4ZjQwMDAwMDAgMHgwIDB4ZjQwMDAwMDAgMHgwIDB4MDIw
MDAwMDA+LAo+ICAgICAgICAgIDwweDAzMDAwMDAwIDB4MyAweDEwMDAwMDAwIDB4MyAweDEwMDAw
MDAwIDB4MCAweDJmZmYwMDAwPjsKPgo+IFRoaXMgYWxzbyBuZWVkcyBjaGFuZ2VzIHRvIHRoZSAi
cmVnIiBwcm9wZXJ5Ogo+Cj4gcmVnID0gPDB4MyAweGMwMDAwMDAwIDB4MCAweDAwNDAwMDAwPiwK
PiAgICAgICA8MHgwIDB4ZmUyNjAwMDAgMHgwIDB4MDAwMTAwMDA+LAo+ICAgICAgIDwweDMgMHgw
MDAwMDAwMCAweDAgMHgxMDAwMDAwMD47CgpOb3cgdGhpcyBpcyBpbnRlcmVzdGluZy4gSSd2ZSBi
ZWVuIHJlYWRpbmcgdXAgb24gUENJZSByYW5nZXMgYW5kIHdoYXQKaXMgbmVjZXNzYXJ5IGZvciB0
aGluZ3MgdG8gd29yayBwcm9wZXJseSwgYW5kIEkgZm91bmQgdGhpcyBpbnRlcmVzdGluZwphcnRp
Y2xlIGZyb20gQVJNOgpodHRwczovL2RldmVsb3Blci5hcm0uY29tL2RvY3VtZW50YXRpb24vMTAy
MzM3LzAwMDAvUHJvZ3JhbW1lcnMtbW9kZWwvTWVtb3J5LW1hcHMvQVAtc3lzdGVtLW1lbW9yeS1t
YXAvUENJZS1NTUlPLWFuZC1FQ0FNLW1lbW9yeS1yZWdpb25zCgpUTERSOiBXZSBuZWVkIGEgbG93
IHJlZ2lvbiAoYmVsb3cgNGcpIGFuZCBhIGhpZ2ggcmVnaW9uLgoKRnJvbSBvdGhlciBhcnRpY2xl
cyBJJ3ZlIGdsZWFuZWQgdGhhdCB0aGUgY29uZmlnIC8gaW8gc2hvdWxkIHByb2JhYmx5CmFsc28g
YmUgaW4gdGhlIGxvdyByYW5nZS4gQXMgc3VjaCBJIGJlbGlldmUgdGhlIG90aGVyIHBhdGNoIHRo
YXQgd2FzCnNlbnQgdG8gbWUgbWF5IGJlIHRoZSBjb3JyZWN0IHdheSB0byBnby4gSWYgYm90aCBv
ZiB5b3Ugd291bGQgdHJ5IHRoZQpmb2xsb3dpbmcgcmVnIC8gcmFuZ2VzOgoKcmVnID0gPDB4MyAw
eGMwMDAwMDAwIDB4MCAweDAwNDAwMDAwPiwKICAgICAgPDB4MCAweGZlMjYwMDAwIDB4MCAweDAw
MDEwMDAwPiwKICAgICAgPDB4MCAweGY0MDAwMDAwIDB4MCAweDAwMTAwMDAwPjsKCnJhbmdlcyA9
IDwweDAxMDAwMDAwIDB4MCAweGY0MTAwMDAwIDB4MCAweGY0MTAwMDAwIDB4MCAweDAwMTAwMDAw
PiwKPDB4MDIwMDAwMDAgMHgwIDB4ZjQyMDAwMDAgMHgwIDB4ZjQyMDAwMDAgMHgwIDB4MDFlMDAw
MDA+LAo8MHgwMzAwMDAwMCAweDAgMHg0MDAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDAgMHg0MDAw
MDAwMD47CgpWZXJ5IFJlc3BlY3RmdWxseSwKUGV0ZXIgR2VpcwoKPgo+IE5vdyBhZG1pdHRlZGx5
LCB0aGlzIGlzIHdpdGggT3BlbkJTRCBydW5uaW5nIG9uIEVESzIgVUVGSSBmaXJtd2FyZQo+IGZy
b20KPgo+ICAgaHR0cHM6Ly9naXRodWIuY29tL2phcmVkbWNuZWlsbC9xdWFydHo2NF91ZWZpCj4K
PiB0aGF0IEkgbW9kaWZpZWQgdG8gcGFzcyB0aHJvdWdoIHRoZSBkZXZpY2UgdHJlZSBhbmQgbW9k
aWZ5IHRoZSByYW5nZXMKPiBhcyBhYm92ZS4gIEJ1dCB0aGUgd2F5IG15IE9wZW5CU0QgZHJpdmVy
IHNldHMgdXAgdGhlIGFkZHJlc3MKPiB0cmFuc2xhdGlvbiB3aW5kb3dzIG1hdGNoZXMgd2hhdCB0
aGUgbWFpbmxpbmUgTGludXggZHJpdmVyIGRvZXMuCj4KPiBJIHBpY2tlZCB0aGUgcmFuZ2VzIGFi
b3ZlIHRvIG1hdGNoIHRoZSBFREsyIGNvbmZpZ3VyYXRpb24uICBCdXQgaXQgaXMKPiBhIHNldHVw
IHRoYXQgbWF4aW1pemVzIHRoZSAzMi1iaXQgbW1pbyB3aW5kb3cuCj4KPiBDaGVlcnMsCj4KPiBN
YXJrCj4KPiA+ID4gSSBzdGlsbCBoYXZlbid0IHRlc3RlZCB0aGlzIHdpdGggb3RoZXIgY2FyZHMg
eWV0LCBhbmQgYW5vdGhlciBwYXRjaAo+ID4gPiB0aGF0IGRvZXMgc2ltaWxhciB3b3JrIEkndmUg
dGVzdGVkIHN1Y2Nlc3NmdWxseSBhcyB3ZWxsIHdpdGggTlZNZQo+ID4gPiBkcml2ZXMuIEknbGwg
aGF2ZSB0byBnZXQgYmFjayB0byB5b3Ugb24gdGhlIHJlc3VsdHMgb2YgZ3JlYXRlcgo+ID4gPiB0
ZXN0aW5nLgo+ID4gPgo+ID4gPiBWZXJ5IFJlc3BlY3RmdWxseSwKPiA+ID4gUGV0ZXIgR2Vpcwo+
ID4gPgo+ID4gPiA+Cj4gPiA+ID4ga2luZCByZWdhcmRzLAo+ID4gPiA+ICAgICAgICAgby4KPiA+
ID4gPgo+ID4gPiA+ID4gVmVyeSBSZXNwZWN0ZnVsbHksCj4gPiA+ID4gPiBQZXRlciBHZWlzCj4g
Pgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+
IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
