Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5555C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+Iv5tNXxYMXiTZ/wFSfCqYzwxZR6daB6PJaHKB2Ag4=; b=LyWY4Ez06lffVo
	zTwZrQdoJr111YUrZC8Uv26D9avUe+rtcDmsS+iRmRauRNkVEF9TYG57TZ8x8Xtp9DgLeDt/In4tm
	trKRUWCuscLvUsmKywsohh/KEiyjxb28y73IK2+NZbgHdb282eSVRy0/4G1RY61AtJHdh3tGlM2Bt
	XUpjHWFIdIze4JBxUHy9purnMjlMjshc2YmzH20QMeLeU1U/AouIHMe1nzuAQ0v8U1pTJVzNjYGMk
	9bpRGZpPCiNR2FhC+TgPgQa4rxAcRmdXAROlcvJCAM90jzQ3IjRYqniJc0QboB6Iz5zKay5tLtYNh
	CAn1evxY19aoET4Ugmsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJGsr-0000000C7cy-3KLk;
	Mon, 17 Jun 2024 18:15:13 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJGsh-0000000C7YQ-2s94;
	Mon, 17 Jun 2024 18:15:09 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-707040e3018so1219618a12.1;
        Mon, 17 Jun 2024 11:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648103; x=1719252903; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M974AISyUszw6KdNIV1RmKUL/HdSEb00BoNkc7VhsBc=;
        b=Tc6Y3cn7GlnjG0PXp9UQTVpkZEmgpXUkdRzWIatt5yfbwsmtfakC7PrB4tW5+zEVga
         VvuXgzv1m3fpUsil+5dfqm3hxo0Yd7nxXm3cH8ko2VWfdZ2B+PHigqyBHqCp1t4hT57X
         ntsR+6tSX+ecbhghv0g4gy24QSauQTyYIfIa9eqh0VeGOxXxAxV5hTKUuXCfo6vHvqVB
         mRkS0f7D6QrE4Pba08nmf8u0gm9vpNum9TFLVphIzmmDOxS9PvprdKr4awhw1aYRSbkp
         P6Td1yBqva/eNMSnHzOh4xw3NSt2wX6P5iiz+G2syOVg5OyNsG/QZ1eOxp8for+SP8Ft
         +SiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648103; x=1719252903;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M974AISyUszw6KdNIV1RmKUL/HdSEb00BoNkc7VhsBc=;
        b=WeNfiD5HjB6n4HSrgMl03Sw2BPpXpVHiAJj4YOIE8clpwEjwEkj47xLIluuwI/z5RO
         V4DqJU+9YTc3M7OUkrj/CPxtQt4SedOdSZ2SUv3nrliUaBFoAye/pHuW+IIKBH1B9+Jj
         IJDVXrgRkWXogoNJ/F0ysRjSNHpI7hqf8b2heE651gtzgQdj2lE0O4GjKfrhOn32V9dm
         uhh83d/dVNM6V02SfC/xvOBw+R7Lmi9oaw6+iUAYy8rrNrtrQCIdcB0gr4mQWtML9Mx9
         CKgZq9qfgmiRAvL+K5Jc+HnLHDHfWTCSqVPVCnca+yBkPCcbDiy8SrkOK4UNTeVNtN5G
         pRRA==
X-Forwarded-Encrypted: i=1; AJvYcCVNqda3r8ZloUxSr6x0GdVZi59IrAfq44PdVnhltC7G7VRNt0lRtv8Y01YhaUmQXFKKifA4/hpMgAGyluVpoUti8brG0W9Qa3xy64iZhlhcx1+MQuG9DT8KdjThTk7E0BAE914RPVgkYF53WecTS4vNY97BaQN2fJRvj9X5gzGpZVbAmz2Zw2iSfkqrWgPk9IuqvqVLNVkh
X-Gm-Message-State: AOJu0YyVj4E1gL2G1FT5KybepuyIGrK1ge7NqaeGUkrjMpz6SW44A1zP
	YJZb7a9qQ8tZodPFyuSUimtfFRKvLFXPgBCqyQ2EXFVMst/mV2vyopOCe+nBOqBZJLRH1LqmHsC
	Vu7Bi03Q15yMayxpQ28jO69alT0u5Q2kszRM=
X-Google-Smtp-Source: AGHT+IHpOuUM0L3BTbS1HfBI1VIZPv5eoLvdmVxiN/0e5Oe64mve/QeTY1xhV69RJoQVC6c6pivweM3JaT15w45jUO0=
X-Received: by 2002:a17:90a:608:b0:2c2:dfc3:10b6 with SMTP id
 98e67ed59e1d1-2c4db44b84emr10119160a91.24.1718648102615; Mon, 17 Jun 2024
 11:15:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240617085341.34332-2-shresthprasad7@gmail.com> <f691c7f9-cd81-4bdf-a794-95118cb26686@kernel.org>
In-Reply-To: <f691c7f9-cd81-4bdf-a794-95118cb26686@kernel.org>
From: Shresth Prasad <shresthprasad7@gmail.com>
Date: Mon, 17 Jun 2024 23:44:50 +0530
Message-ID: <CAE8VWiLqBUq=-PzT2XVKB_C9nvEERM0x-maWU5qt0+aK1Rd-kg@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, sebastian.reichel@collabora.com, 
	andy.yan@rock-chips.com, s.hauer@pengutronix.de, jbx6244@yandex.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, javier.carrasco.cruz@gmail.com, 
	skhan@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_111503_786840_F2F1C7BC 
X-CRM114-Status: GOOD (  28.52  )
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

T24gTW9uLCBKdW4gMTcsIDIwMjQgYXQgOToyOeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAxNy8wNi8yMDI0IDEwOjUzLCBTaHJlc3RoIFBy
YXNhZCB3cm90ZToKPiA+IENvbnZlcnQgdHh0IGJpbmRpbmdzIG9mIFJvY2tjaGlwIEVNTUMgUEhZ
IHRvIGR0c2NoZW1hIHRvIGFsbG93Cj4gPiBmb3IgdmFsaWRhdGlvbi4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBTaHJlc3RoIFByYXNhZCA8c2hyZXN0aHByYXNhZDdAZ21haWwuY29tPgo+ID4gLS0t
Cj4KPgo+IC4uLgo+Cj4KPiA+ICsKPiA+ICsgIHJlZzoKPiA+ICsgICAgbWF4SXRlbXM6IDEKPiA+
ICsKPiA+ICsgIGNsb2NrLW5hbWVzOgo+ID4gKyAgICBjb25zdDogZW1tY2Nsawo+ID4gKwo+ID4g
KyAgY2xvY2tzOgo+ID4gKyAgICBtYXhJdGVtczogMQo+Cj4gS2VlcCBvcmRlciBmcm9tIERUUyBj
b2Rpbmcgc3R5bGUsIHNvIGNsb2NrcyB0aGVuIGNsb2NrLW5hbWVzLgo+Cj4gPiArCj4gPiArICBk
cml2ZS1pbXBlZGFuY2Utb2htOgo+ID4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9k
ZWZpbml0aW9ucy91aW50MzIKPiA+ICsgICAgZGVzY3JpcHRpb246Cj4gPiArICAgICAgU3BlY2lm
aWVzIHRoZSBkcml2ZSBpbXBlZGFuY2UgaW4gT2htLgo+ID4gKyAgICBlbnVtOiBbMzMsIDQwLCA1
MCwgNjYsIDEwMF0KPiA+ICsgICAgZGVmYXVsdDogNTAKPiA+ICsKPiA+ICsgIHJvY2tjaGlwLGVu
YWJsZS1zdHJvYmUtcHVsbGRvd246Cj4gPiArICAgIHR5cGU6IGJvb2xlYW4KPiA+ICsgICAgZGVz
Y3JpcHRpb246IHwKPiA+ICsgICAgICBFbmFibGUgaW50ZXJuYWwgcHVsbC1kb3duIGZvciB0aGUg
c3Ryb2JlCj4gPiArICAgICAgbGluZS4gIElmIG5vdCBzZXQsIHB1bGwtZG93biBpcyBub3QgdXNl
ZC4KPiA+ICsKPiA+ICsgIHJvY2tjaGlwLG91dHB1dC10YXBkZWxheS1zZWxlY3Q6Cj4gPiArICAg
ICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+ID4gKyAgICBk
ZXNjcmlwdGlvbjoKPiA+ICsgICAgICBTcGVjaWZpZXMgdGhlIHBoeWN0cmxfb3RhcGRseXNlYyBy
ZWdpc3Rlci4KPiA+ICsgICAgZGVmYXVsdDogMHg0Cj4gPiArICAgIG1heGltdW06IDB4Zgo+ID4g
Kwo+ID4gKyAgIiNwaHktY2VsbHMiOgo+ID4gKyAgICBjb25zdDogMAo+ID4gKwo+ID4gK3JlcXVp
cmVkOgo+ID4gKyAgLSBjb21wYXRpYmxlCj4gPiArICAtIHJlZwo+ID4gKyAgLSAiI3BoeS1jZWxs
cyIKPiA+ICsKPiA+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiA+ICsKPiA+ICtleGFt
cGxlczoKPiA+ICsgIC0gfAo+ID4gKyAgICBncmY6IHN5c2NvbkBmZjc3MDAwMCB7Cj4KPiBEcm9w
IGxhYmVsLi4uIGFjdHVhbGx5IGVudGlyZSBub2RlIGxvb2tzIG5vdCBuZWVkZWQuCgpGcm9tIHdo
YXQgSSB1bmRlcnN0YW5kLCB0aGlzIGBwaHlgIG5vZGUgc2hvdWxkIGJlIGEgc3ViLW5vZGUgb2Yg
YSBgZ3JmYApub2RlIHdoaWNoIGlzIHdoeSBpdCBpcyBwYXJ0IG9mIHRoZSBleGFtcGxlLgoKPgo+
ID4gKyAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWdyZiIsICJzeXNjb24iLCAi
c2ltcGxlLW1mZCI7Cj4KPiBEcm9wCj4KPiA+ICsgICAgICByZWcgPSA8MHhmZjc3MDAwMCAweDEw
MDAwPjsKPgo+IERyb3AKClJlbW92aW5nIGByZWdgIGNhdXNlcyB0aGUgZm9sbG93aW5nIHdhcm5p
bmc6Cldhcm5pbmcgKHVuaXRfYWRkcmVzc192c19yZWcpOiAvZXhhbXBsZS0wL3N5c2NvbkBmZjc3
MDAwMDogbm9kZSBoYXMgYQp1bml0IG5hbWUsIGJ1dCBubyByZWcgb3IgcmFuZ2VzIHByb3BlcnR5
CgpQbGVhc2UgbGV0IG1lIGtub3cgd2hhdCB0aGUgcHJlZmVyZWQgc29sdXRpb24gd291bGQgYmUg
aGVyZS4KCj4KPgo+ID4gKyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gKyAgICAgICNz
aXplLWNlbGxzID0gPDE+Owo+ID4gKwo+ID4gKyAgICAgIGVtbWNwaHk6IHBoeUBmNzgwIHsKPgo+
IERyb3AgbGFiZWwKPgo+ID4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTkt
ZW1tYy1waHkiOwo+ID4gKyAgICAgICAgcmVnID0gPDB4Zjc4MCAweDIwPjsKPiA+ICsgICAgICAg
IGNsb2NrcyA9IDwmc2RoY2k+Owo+ID4gKyAgICAgICAgY2xvY2stbmFtZXMgPSAiZW1tY2NsayI7
Cj4gPiArICAgICAgICBkcml2ZS1pbXBlZGFuY2Utb2htID0gPDUwPjsKPiA+ICsgICAgICAgICNw
aHktY2VsbHMgPSA8MD47Cj4gPiArICAgICAgfTsKPiA+ICsgICAgfTsKPiA+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWVtbWMtcGh5
LnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtZW1t
Yy1waHkudHh0Cj4gPiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDU3ZDI4YzBk
NTY5Ni4uMDAwMDAwMDAwMDAwCj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3JvY2tjaGlwLWVtbWMtcGh5LnR4dAo+ID4gKysrIC9kZXYvbnVsbAo+ID4gQEAg
LTEsNDMgKzAsMCBAQAo+ID4gLVJvY2tjaGlwIEVNTUMgUEhZCj4gPiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiA+IC0KPiA+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ID4gLSAtIGNvbXBhdGli
bGU6IHJvY2tjaGlwLHJrMzM5OS1lbW1jLXBoeQo+ID4gLSAtICNwaHktY2VsbHM6IG11c3QgYmUg
MAo+ID4gLSAtIHJlZzogUEhZIHJlZ2lzdGVyIGFkZHJlc3Mgb2Zmc2V0IGFuZCBsZW5ndGggaW4g
ImdlbmVyYWwKPiA+IC0gICByZWdpc3RlciBmaWxlcyIKPiA+IC0KPiA+IC1PcHRpb25hbCBwcm9w
ZXJ0aWVzOgo+ID4gLSAtIGNsb2NrLW5hbWVzOiBTaG91bGQgY29udGFpbiAiZW1tY2NsayIuICBB
bHRob3VnaCB0aGlzIGlzIGxpc3RlZCBhcyBvcHRpb25hbAo+ID4gLSAgICAgICAgICAgICAoYmVj
YXVzZSBtb3N0IGJvYXJkcyBjYW4gZ2V0IGJhc2ljIGZ1bmN0aW9uYWxpdHkgd2l0aG91dCBoYXZp
bmcKPiA+IC0gICAgICAgICAgICAgYWNjZXNzIHRvIGl0KSwgaXQgaXMgc3Ryb25nbHkgc3VnZ2Vz
dGVkLgo+ID4gLSAgICAgICAgICAgICBTZWUgLi4vY2xvY2svY2xvY2stYmluZGluZ3MudHh0IGZv
ciBkZXRhaWxzLgo+ID4gLSAtIGNsb2NrczogU2hvdWxkIGhhdmUgYSBwaGFuZGxlIHRvIHRoZSBj
YXJkIGNsb2NrIGV4cG9ydGVkIGJ5IHRoZSBTREhDSSBkcml2ZXIuCj4gPiAtIC0gZHJpdmUtaW1w
ZWRhbmNlLW9obTogU3BlY2lmaWVzIHRoZSBkcml2ZSBpbXBlZGFuY2UgaW4gT2htLgo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgIFBvc3NpYmxlIHZhbHVlcyBhcmUgMzMsIDQwLCA1MCwgNjYg
YW5kIDEwMC4KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICBJZiBub3Qgc2V0LCB0aGUgZGVm
YXVsdCB2YWx1ZSBvZiA1MCB3aWxsIGJlIGFwcGxpZWQuCj4gPiAtIC0gcm9ja2NoaXAsZW5hYmxl
LXN0cm9iZS1wdWxsZG93bjogRW5hYmxlIGludGVybmFsIHB1bGwtZG93biBmb3IgdGhlIHN0cm9i
ZQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxpbmUuICBJZiBub3Qg
c2V0LCBwdWxsLWRvd24gaXMgbm90IHVzZWQuCj4gPiAtIC0gcm9ja2NoaXAsb3V0cHV0LXRhcGRl
bGF5LXNlbGVjdDogU3BlY2lmaWVzIHRoZSBwaHljdHJsX290YXBkbHlzZWMgcmVnaXN0ZXIuCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSWYgbm90IHNldCwgdGhlIHJl
Z2lzdGVyIGRlZmF1bHRzIHRvIDB4NC4KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBNYXhpbXVtIHZhbHVlIDB4Zi4KPiA+IC0KPiA+IC1FeGFtcGxlOgo+ID4gLQo+ID4g
LQo+ID4gLWdyZjogc3lzY29uQGZmNzcwMDAwIHsKPiA+IC0gICAgIGNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszMzk5LWdyZiIsICJzeXNjb24iLCAic2ltcGxlLW1mZCI7Cj4gPiAtICAgICAjYWRk
cmVzcy1jZWxscyA9IDwxPjsKPiA+IC0gICAgICNzaXplLWNlbGxzID0gPDE+Owo+ID4gLQo+ID4g
LS4uLgo+ID4gLQo+ID4gLSAgICAgZW1tY3BoeTogcGh5QGY3ODAgewo+ID4gLSAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1lbW1jLXBoeSI7Cj4gPiAtICAgICAgICAg
ICAgIHJlZyA9IDwweGY3ODAgMHgyMD47Cj4gPiAtICAgICAgICAgICAgIGNsb2NrcyA9IDwmc2Ro
Y2k+Owo+ID4gLSAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJlbW1jY2xrIjsKPiA+IC0gICAg
ICAgICAgICAgZHJpdmUtaW1wZWRhbmNlLW9obSA9IDw1MD47Cj4gPiAtICAgICAgICAgICAgICNw
aHktY2VsbHMgPSA8MD47Cj4gPiAtICAgICB9Owo+ID4gLX07Cj4gPiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLnlhbWwKPiA+
IGluZGV4IDc5Nzk4Yzc0NzQ3Ni4uNmUxYjFjZGVhNjgwIDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+ID4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFt
bAo+ID4gQEAgLTE3Niw5ICsxNzYsMTIgQEAgYWxsT2Y6Cj4gPiAgICAgICAgICAgICAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcC1wY2llLXBoeS50eHQKPiA+
Cj4gPiAgICAgICAgcGF0dGVyblByb3BlcnRpZXM6Cj4gPiAtICAgICAgICAicGh5QFswLTlhLWZd
KyQiOgo+ID4gLSAgICAgICAgICBkZXNjcmlwdGlvbjoKPiA+IC0gICAgICAgICAgICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWVtbWMtcGh5LnR4dAo+ID4g
KyAgICAgICAgIl5waHlAWzAtOWEtZl0rJCI6Cj4gPiArICAgICAgICAgIHR5cGU6IG9iamVjdAo+
ID4gKwo+Cj4gRHJvcCBibGFuayBsaW5lCj4KPiA+ICsgICAgICAgICAgJHJlZjogL3NjaGVtYXMv
cGh5L3JvY2tjaGlwLHJrMzM5OS1lbW1jLXBoeS55YW1sIwo+ID4gKwo+Cj4gRHJvcCBibGFuayBs
aW5lCgpUaGUgcmVzdCBvZiB0aGUgZG9jdW1lbnQgYWxzbyBoYXMgdGhlc2UgYmxhbmsgbGluZXMs
IHdoaWNoIGlzIHdoeSBJJ3ZlCmFsc28ga2VwdCB0aGVtIGhlcmUuIEFyZSB5b3Ugc3VyZSBJIHNo
b3VsZCByZW1vdmUgdGhlbT8KCj4KPiA+ICsgICAgICAgICAgdW5ldmFsdWF0ZWRQcm9wZXJ0aWVz
OiBmYWxzZQo+ID4KPiA+ICAgIC0gaWY6Cj4gPiAgICAgICAgcHJvcGVydGllczoKPgo+IE5vdGhp
bmcgaW4gZXhhbXBsZT8gSXNuJ3QgdGhlIGV4YW1wbGUgZm9yIDMzOTk/Cj4KPiBXZSB3YW50IG9u
bHkgb25lIGNvbXBsZXRlIGV4YW1wbGUgb2Ygc3VjaCBtdWx0aS1jaGlsZHJlbiBkZXZpY2VzLCBz
byB0aGUKPiBleGFtcGxlIGNhbiBiZSBtb3ZlZCBhbmQgaW5jbHVkZWQgaW4gZXhpc3Rpbmcgb25l
IGhlcmUuCgpUaGUgZXhhbXBsZSBpbiB0aGlzIGZpbGUgaXMgYWN0dWFsbHkgZm9yIGByb2NrY2hp
cCxyazMzOTktdXNiMnBoeWAgYW5kCm5vdCBgcm9ja2NoaXAscmszMzk5LWVtbWMtcGh5YCB3aGlj
aCBpcyB3aHkgSSBoYXZlbid0IHRvdWNoZWQgaXQuCgpTaG91bGQgSSBhZGQgdG8gdGhlIGV4YW1w
bGUgaW4gYGdyZi55YW1sYCA/Cgo+Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KClBs
ZWFzZSBsZXQgbWUga25vdyBpZiBJJ3ZlIG1pc3VuZGVyc3Rvb2QgYW55dGhpbmcgb3IgaWYgdGhl
cmUgYXJlIGFueQpvdGhlciBjaGFuZ2VzIEkgc2hvdWxkIG1ha2UuCgpSZWdhcmRzLApTaHJlc3Ro
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
