Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF90C3ABAA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 17:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hgrv2vFq7b54IbTsxG9QohUhxMUBTd1T50dtyg6g7cU=; b=2cdSWZBS+ByZik
	7rlmLKgVwiUXbspzqhLuKc4zEvZTYrYaluqv9bCW+GixlH1a5Hdm+w8a7NkGPVif8P882+0D9G0dl
	ghMo49lVLwUkrtMMDtOO1OUkYZasMIYmfg/wd9aOjWkRmybM08p92PBPXi890pkfBhlJjGrps6dDh
	ZZDhA9dGUYdM791mvRR8DjXtPon6kTOXOwelHBFE6lw1j8HMmxcYc2022r1n/vsWZ9C0u9PW/r3BU
	dXvx3+yMctUpKzhMv7u+hXcOToyiytEyDWcRSrvFCvpXUTD4/OE85gJ7vP4XEz6gYdZv2p6STFhSU
	2t+HC709pCKYnvgh+PQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAu6T-00000002e8E-3uFw;
	Fri, 02 May 2025 17:23:13 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAtdM-00000002a5i-0Lqq;
	Fri, 02 May 2025 16:53:09 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-30863b48553so3404345a91.0;
        Fri, 02 May 2025 09:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746204787; x=1746809587; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n7UI2Y6MBJpdKB31fdutcaWyVKKdFp08Cn0ReKUGIo8=;
        b=W2q6WtobNcKe7YmZ1q0frr4lIOQB08awLMCJX2n8+Jb+odXXgz7oxrdvPaqDvrLIV8
         rvo8flqCUSFtQOiC5KF94MdHlWNXs8vX0su9TP+mWsBrU4Pp54ojb6g5ti7S0oNrebfB
         cMWUhWXglRFBgjXUWTLyYEREmo8Xn5zL9nnuUEuHRouviM0MiEuEmKAEkHB/x0E0kKJE
         GZlZfVedxzaxM8/OTv1KGkqyglqH1lzdPdQsupm1FaA+RiCZrBj7r0E6cFRXr78X8/Ln
         hF0y7pllMN+HX8i/rD0jlQ+gqh8MZPQsHR/KuuqHISQRQh9K9XZEWmQNaSMRinvXSHGf
         v4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746204787; x=1746809587;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n7UI2Y6MBJpdKB31fdutcaWyVKKdFp08Cn0ReKUGIo8=;
        b=k9DZGtg1YeEsXc4JS7y2ogjGyfTmxVbUMPUBdKhuJW/RBTd582WB+yEsLXOOPEsaVz
         gYRuZcRsKPel6Vmlsq4zzmqrDGFuuTGxPYB+PDmBoRnoR2rn376eIlY8s1rRjh4isJTQ
         vUFqNVKxf8FOxzUzb1duz99c+SLkPTZM8YS4UXKVSq3u0bt3q5WQdorRZhGuWQ3ttijF
         kxsB1GrsD5yH13xCZtShnzqokN94z27AUFDUh4vSsm1i2GGF9bfeMarTgSPuGF00KhGJ
         JvVwhjugwuN5UjW40i+z5MD8Pj5+5AWTyQjdMMcxzYl16r+QPxU34msUazzIyZ8KPOkf
         P0jw==
X-Forwarded-Encrypted: i=1; AJvYcCWVVjbNA1lbVciQoqelBk7JAB3C4a8RYe86JywSyXUmUOHyYWT+yZrpBesZQR4k9DdwFZxiPfUtATZNILbgtxQ=@lists.infradead.org, AJvYcCXEJEnIQ8LvpD6sh112eq63Db/DU4HA52HCr2BORBKVeX5LFoIm55nXKflAedG9rcFInjsb84QWG8I2Ls6rqgJ7@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/4iw2pD7LLqjR4yqDimq1R06G3UJ9EnXSmYbegYmXN7olOrIg
	kGbHQ3s3SqoPJGm3/LJ5fbcxPiF49hfEsYAGBT+wvgNU9QvGj/IAEjChjvNlNE8rDuzEpLiDg0S
	i+scrjQsvxzA9KzDTQiswjKB2QN0=
X-Gm-Gg: ASbGncswpK5W5H3UNhmRXsyMlJ5BspqwdlRyGSHrYnfAbM7mLUBbgjs4DB+kpQOHH+Z
	qtB8f1vUsR26jFYbbNXgZJW+LQ1Y4yEuZ7RUoWP3aZYnSX0iELL7ce+Xq6p6t/8qGM7QJGWJ16B
	BdT1Wd3la+3rk2t3uFtwRUQw==
X-Google-Smtp-Source: AGHT+IHGTYOtyWFxjXS9Ul06M6JVtewP0QqLDSWygChMn5nReUMS9WxVTU7k4hPxbBaUObqwnTWe5V/cpuVhKJnX2Y4=
X-Received: by 2002:a17:90b:254d:b0:302:fc48:4f0a with SMTP id
 98e67ed59e1d1-30a4e04c98dmr5766332a91.0.1746204787157; Fri, 02 May 2025
 09:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250502150513.4169098-1-m.felsch@pengutronix.de> <20250502150513.4169098-8-m.felsch@pengutronix.de>
In-Reply-To: <20250502150513.4169098-8-m.felsch@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 2 May 2025 11:52:55 -0500
X-Gm-Features: ATxdqUE-GbFHdhVzbDY9mw-AkKfv1gk9sfEHekiKJv7IfKQ5yld-yg7UXiz-NTw
Message-ID: <CAHCN7x+Lu9momgX3Vwp+Yu+Tet5Q=k2vCL83SMLuad24SDchEg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20250502_095308_141186_AA044DFE 
X-CRM114-Status: GOOD (  16.78  )
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

T24gRnJpLCBNYXkgMiwgMjAyNSBhdCAxMDoxMOKAr0FNIE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hA
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGhlIFZQVV9QTEwgY2xvY2sgbXVzdCBiZSBzZXQg
YmVmb3JlIHRoZSBWUFVfQlVTIGNsb2NrIHdoaWNoIGlzIGRlcml2ZWQKPiBmcm9tIHRoZSBWUFVf
UExMIGNsb2NrIGVsc2UgdGhlIFZQVV9CVVMgY2xvY2sgaXMgMzAwTUh6IGFuZCBub3QgNjAwTUh6
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5k
ZT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgfCA0
ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpCj4gaW5kZXggOTdi
MDliNjQ3ZWM3Li43ZjRiZGVmYjM0ODAgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXAuZHRzaQo+IEBAIC0yMjg5LDggKzIyODksOCBAQCB2cHVtaXhfYmxrX2N0cmw6
IGJsay1jdHJsQDM4MzMwMDAwIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
JmNsayBJTVg4TVBfQ0xLX1ZQVV9HMl9ST09UPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmNsayBJTVg4TVBfQ0xLX1ZQVV9WQzhLRV9ST09UPjsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJnMSIsICJnMiIsICJ2YzgwMDBlIjsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICBhc3NpZ25lZC1jbG9ja3MgPSA8JmNsayBJTVg4TVBfQ0xLX1ZQVV9C
VVM+LCA8JmNsayBJTVg4TVBfVlBVX1BMTD47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgYXNz
aWduZWQtY2xvY2stcGFyZW50cyA9IDwmY2xrIElNWDhNUF9WUFVfUExMX09VVD47Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1QX1ZQVV9QTEw+
LCA8JmNsayBJTVg4TVBfQ0xLX1ZQVV9CVVM+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGFz
c2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8MD4sIDwmY2xrIElNWDhNUF9WUFVfUExMX09VVD47Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8NjAwMDAwMDAw
PiwgPDYwMDAwMDAwMD47CgpJIHRoaW5rIHRoZXJlIHdhcyBhIG1vdmUgdG8gbWFrZSB0aGUgZGVm
YXVsdCBiZSBvdmVyZHJpdmUgWzFdICBhbmQgWzJdCmFuZCB1c2UgYSAnbm9taW5hbCcgZGV2aWNl
IHRyZWUgZm9yIHRob3NlIHdobyBhcmUgbm90IGluIG92ZXJkcml2ZQptb2RlLiAgQWNjb3JkaW5n
IHRvIHRoZSBUUk0sIHRoZSBWUFVfQlVTX0NMS19ST09ULCB0aGUgbm9taW5hbCBpcwo2MDBNSHog
YW5kIHRoZSBvdmVyZHJpdmUgaXMgODAwTUh6LiAgQmFzZWQgb24gdGhhdCwgSSB3b25kZXIgaWYg
dGhlCnZhbHVlcyBoZXJlIHNob3VsZCBiZSA4MDBNSHogYW5kIGlmIHdlIHNob3VsZCBhZGQgdGhl
IG5vbWluYWwgdmFsdWVzCm9mIDYwME1IeiB0byB0aGUgaW14OG0tbm9taW5hbC5kdHNpIGZpbGUu
CgphZGFtCgo+ICAgICAgICAgICAgICAgICAgICAgICAgIGludGVyY29ubmVjdHMgPSA8Jm5vYyBJ
TVg4TVBfSUNNX1ZQVV9HMSAmbm9jIElNWDhNUF9JQ05fVklERU8+LAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA8Jm5vYyBJTVg4TVBfSUNNX1ZQVV9HMiAmbm9jIElN
WDhNUF9JQ05fVklERU8+LAoKClsxXSAtIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvY29tbWl0L2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpP2g9bmV4dC0yMDI1MDUwMiZpZD05Zjc1OTViM2U1
YWUwZWFkMjBhNzRhNWYyYThmMDQzNGIzMjU0YWM1CgpbMl0gLSBodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L2NvbW1pdC9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtbm9taW5hbC5kdHNpP2g9bmV4dC0y
MDI1MDUwMiZpZD00Yjk4YmYzYmZmNzM1M2Q5NDgyNGM0ZDg3NGZmMmQ3ZjM4YWNjNDlhCgo+IC0t
Cj4gMi4zOS41Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
