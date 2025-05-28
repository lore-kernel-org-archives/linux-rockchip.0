Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6098C54F30
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 03:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mg1Ts+vpkfJQLksH06gtdtTXeozji8CP/XqTT5IZgTw=; b=qr7Bl9zGTQu31D
	FlQqEKQf7WpLz1mQr34J5bge+bFc0ETPWydzQj/2VIiRt/3fFqBlBr/SLLvQoYjURY3F9DWVAdvnA
	MXqS9fn00ajvX5v81f2L/lBDwcyz5hA/fZYs7RWfQYWLz71KV7b4gRFE+eCt7lS0QJdIePRaUTd/P
	ich9R0ZkXvqngO4U6RmZBPJ+4VqnTjAaZ6M/tGz8ACmSc0su7n4vRI7YEDu/Mmw1r7utVs3BdQzid
	tnMnqBBKyszejakNcOENmqOfr4XyNxA0qzCx3ILHBZP72rDrCB5FY5NhT7xlWH4gI4dWnGBoZd2Ek
	wvyjT7h9IqxIQ5eOhqIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK76o-0000000C1QL-43wj;
	Wed, 28 May 2025 03:05:38 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK76m-0000000C1Pu-1bmX;
	Wed, 28 May 2025 03:05:37 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-31149f0393dso2309200a91.1;
        Tue, 27 May 2025 20:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748401535; x=1749006335; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qYmnbtrMxduOKu9ITGTitlSbMtTKd5M645QiTbXrAaY=;
        b=ZHMAsfZc5YNpPZ/T7nY/qV1ZQVfyTt5LpEaiz4b66itgXfbnu8Lo8x+HmgMX6XcKSU
         0TE6ICAMAmSjPRHFezKJugQg2kPXseSDOxja38PDskpZ5mu6dybxGpTX4xIaw8ABpXsu
         7thDMW13rh+yGuC7HUVMrpE2lkGnxxildmVAOc3NSVJkbu3ALOAxrcny26EHTMwtr8vl
         6WkKfpFmvaJAJJKIjFLGYRpFd6Aj0hTF5agMrN1oVM3qozhURCj4Pi8M1z6sLf9DNrYL
         SnS+fPhpyRbgHj5S9RheNlU87l6QuMiRv0h9Jye6YH9q96G6yApgj2GOMZubDevUPDFK
         1qzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748401535; x=1749006335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qYmnbtrMxduOKu9ITGTitlSbMtTKd5M645QiTbXrAaY=;
        b=NTJncceniYRVW6QdJP13HJUCzVtmUAxcovZtCJ/xL4qAAZgkIOleHmPyxReorlPl+5
         0xmsfhqdtxLMrcOe/U1tO/2a0lQ951jCgCFc6f0KJnrJL/41cUmonzakL4soelOphA+I
         nT9P8VEEv7vz/9GwkdUyFHKjFvxTJSmi9yF5TasCroEEoYp7uq0CGK4sm5XMTiMrIyUk
         DpJLTJy7uHCBNWY8CuildeLigIPmNyDByvtNLlqI1UCB10a4rVdQkflPpcgU0B0AhGIR
         Gt0rH6dynecW5wEULKtGZ3eM+wKsbvcInGioCmbq0QJwagFuI7PGuhGG37crVfwxFjWO
         HXwg==
X-Forwarded-Encrypted: i=1; AJvYcCVDlnmZStMEkXrkh6PbIWus0fvM+fQ31d4+XrpYuQq4zdG2h+cKRjOwwP6Qa8JAYR2ZjI7P4njlLWqQT1rNOIXa@lists.infradead.org, AJvYcCXFr9jMfPFVaGqyPhfXLSrLk690PTnRNFsJ86KZiGiRGdQrhewskHQjAwZjyoxiRbVQAFSLgsGX4BNpa8QXxy8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxd5MgIOYnSGosJcl0ctJ2bfAO69dHig0jjYEV1rNYcnx9KKN0y
	3om4dFaP5iqo83FbnLYsflLo3lqpUN7doVks2WfeWE0qG0g+015Jv/d8yT2GTBen1O9yRvEHUzm
	SlZMEo1rLA1XuzWUWtW5w6MxBGo48r9Y=
X-Gm-Gg: ASbGncs07mOvHWpryUWMuJXq/oM/bwDFRyzhY1X+BGm4nl/NxrR7szmghqQRQ9O6j7J
	V5IyDZv53infbxw+SXIDsLxTd0ICWFXE47sfZPNe81q0fXQBwbepuN9Cd87c0Q8YER0afdRGXli
	a/i3CEAyfr4tNYp5eO4/eaazKFt9004L4wutCT6JqTMpQ=
X-Google-Smtp-Source: AGHT+IEZ6LkUmKwlZlKmCgrqaa17DjFrtDszVlcH7RcGvuUieg+Ee25K0BY70YK/3VI5vchDvPkcpByMtCn4N3Ku04o=
X-Received: by 2002:a17:90b:4b8b:b0:311:d670:a0e9 with SMTP id
 98e67ed59e1d1-311d670ad95mr2330419a91.21.1748401535339; Tue, 27 May 2025
 20:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
 <20250502150513.4169098-8-m.felsch@pengutronix.de> <CAHCN7x+Lu9momgX3Vwp+Yu+Tet5Q=k2vCL83SMLuad24SDchEg@mail.gmail.com>
 <20250502165535.aeb2osq2vnxsudmq@pengutronix.de>
In-Reply-To: <20250502165535.aeb2osq2vnxsudmq@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 27 May 2025 22:05:23 -0500
X-Gm-Features: AX0GCFu8yyPWk2ODj0OO3w1sV1GGZuj2FPHpU_Gczh74crcCq6_GDYUbvmDndvY
Message-ID: <CAHCN7xLecU12XtXFuwfNP+eee+9RLCSB9iErNmk7VFV+WrozJA@mail.gmail.com>
Subject: Re: [RFC PATCH 07/11] arm64: dts: imx8mp: fix VPU_BUS clock setting
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com, 
	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de, festevam@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, paulk@sys-base.io, 
	hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com, 
	sebastian.fricke@collabora.com, ming.qian@nxp.com, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_200536_429585_40F1B237 
X-CRM114-Status: GOOD (  25.68  )
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

T24gRnJpLCBNYXkgMiwgMjAyNSBhdCAxMTo1NeKAr0FNIE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hA
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gT24gMjUtMDUtMDIsIEFkYW0gRm9yZCB3cm90ZToK
PiA+IE9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgMTA6MTDigK9BTSBNYXJjbyBGZWxzY2ggPG0uZmVs
c2NoQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4KPiA+ID4gVGhlIFZQVV9QTEwgY2xvY2sg
bXVzdCBiZSBzZXQgYmVmb3JlIHRoZSBWUFVfQlVTIGNsb2NrIHdoaWNoIGlzIGRlcml2ZWQKPiA+
ID4gZnJvbSB0aGUgVlBVX1BMTCBjbG9jayBlbHNlIHRoZSBWUFVfQlVTIGNsb2NrIGlzIDMwME1I
eiBhbmQgbm90IDYwME1Iei4KCkkgZGlkIHZlcmlmeSB0aGUgY3VycmVudCBjbG9jayByYXRlIGVu
ZHMgdXAgYXQgMzAwTUh6IGluc3RlYWQgb2YgdGhlCmRlc2lyZWQgNjAwIG9yIDgwME1Ieiwgc28g
d2Ugc2hvdWxkIGRvIHNvbWV0aGluZy4KCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNv
IEZlbHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiA+IC0tLQo+ID4gPiAgYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgfCA0ICsrLS0KPiA+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpCj4gPiA+IGluZGV4IDk3YjA5
YjY0N2VjNy4uN2Y0YmRlZmIzNDgwIDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gPiBAQCAtMjI4OSw4ICsyMjg5LDggQEAgdnB1bWl4
X2Jsa19jdHJsOiBibGstY3RybEAzODMzMDAwMCB7Cj4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDwmY2xrIElNWDhNUF9DTEtfVlBVX0cyX1JPT1Q+LAo+ID4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVBfQ0xLX1ZQVV9WQzhLRV9ST09U
PjsKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiZzEiLCAiZzIi
LCAidmM4MDAwZSI7Cj4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2Nr
cyA9IDwmY2xrIElNWDhNUF9DTEtfVlBVX0JVUz4sIDwmY2xrIElNWDhNUF9WUFVfUExMPjsKPiA+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xr
IElNWDhNUF9WUFVfUExMX09VVD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGFzc2ln
bmVkLWNsb2NrcyA9IDwmY2xrIElNWDhNUF9WUFVfUExMPiwgPCZjbGsgSU1YOE1QX0NMS19WUFVf
QlVTPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2stcGFyZW50
cyA9IDwwPiwgPCZjbGsgSU1YOE1QX1ZQVV9QTExfT1VUPjsKPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8NjAwMDAwMDAwPiwgPDYwMDAwMDAwMD47
Cj4gPgo+ID4gSSB0aGluayB0aGVyZSB3YXMgYSBtb3ZlIHRvIG1ha2UgdGhlIGRlZmF1bHQgYmUg
b3ZlcmRyaXZlIFsxXSAgYW5kIFsyXQo+ID4gYW5kIHVzZSBhICdub21pbmFsJyBkZXZpY2UgdHJl
ZSBmb3IgdGhvc2Ugd2hvIGFyZSBub3QgaW4gb3ZlcmRyaXZlCj4gPiBtb2RlLiAgQWNjb3JkaW5n
IHRvIHRoZSBUUk0sIHRoZSBWUFVfQlVTX0NMS19ST09ULCB0aGUgbm9taW5hbCBpcwo+ID4gNjAw
TUh6IGFuZCB0aGUgb3ZlcmRyaXZlIGlzIDgwME1Iei4gIEJhc2VkIG9uIHRoYXQsIEkgd29uZGVy
IGlmIHRoZQo+ID4gdmFsdWVzIGhlcmUgc2hvdWxkIGJlIDgwME1IeiBhbmQgaWYgd2Ugc2hvdWxk
IGFkZCB0aGUgbm9taW5hbCB2YWx1ZXMKPiA+IG9mIDYwME1IeiB0byB0aGUgaW14OG0tbm9taW5h
bC5kdHNpIGZpbGUuCj4KPiBZb3UncmUgcmlnaHQsIEFoYW1kIGFuZCBMdWNhcyBkaWQgY2hhbmdl
IHRoaXMuIEkgd2lsbCBhZGFwdCBpdCBsYXRlciBvbi4KCkkgdXBkYXRlZCBteSBkZXZpY2UgdHJl
ZSB0byBydW4gaW4gb3ZlcmRyaXZlIG1vZGUgYW5kIHJhbiBmbHVzdGVyIGF0CnRoZSBoaWdoZXIg
cmF0ZXM6ClZQVV9HMSAtIDgwME1IeiwKVlBVLUcyIC0gNzAwTUh6ClZQVS1CdXMgLSA4MDBNSHoK
Ci4vZmx1c3Rlci5weSBydW4gLWQgR1N0cmVhbWVyLVZQOC1WNEwyU0wtR3N0MS4wClJhbiA1Ny82
MSB0ZXN0cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiA1LjkyMiBzZWNzCih2cyA3LjA1
OSBzZWNzIGF0IG5vbWluYWwgc3BlZWQpCgouL2ZsdXN0ZXIucHkgcnVuIC1kR1N0cmVhbWVyLUgu
MjY0LVY0TDJTTC1Hc3QxLjAKUmFuIDEyOS8xMzUgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAg
ICAgICAgaW4gNDAuMTA3IHNlY3MKKHZzIDQ1Ljc0MSBzZWNzIGF0IG5vbWluYWwgc3BlZWQpCgpJ
ZiB5b3Ugd2FudCwgSSBjYW4gc3VibWl0IHRoZSBjbG9jayB1cGRhdGVzIEkgaGF2ZSBmb3Igb3Zl
cmRyaXZlIG9yCnNlbmQgdGhlbSB0byB5b3UgdG8gc2F2ZSB5b3Ugc29tZSB0aW1lLgoKYWRhbQoK
Pgo+IFJlZ2FyZHMsCj4gICBNYXJjbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
