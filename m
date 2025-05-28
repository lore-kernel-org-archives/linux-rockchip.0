Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E9C3C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvXeHjpB3Ew6+/KZGksEKe5Eh/fjPXfDGKCCHe1Di0M=; b=40R0NI4Pa7fHY8
	Fyeiw1nrmsjDhP9v4M06e3hxBTfwRn+anW7yl/UuBybNYDz0HjIPFjHTeNNJjgAr9Q8F2UOlzFF6L
	rvDP7ebsLNi6wN7KnUo3H8+h4Vuyszq31oVAcqgla9f/GyhGkN5mWaWAviNeCBgT4c6u88xTEnrqV
	RAYxnE3sUS52Lgip+Mt+YFp+0+vVqo4m+ecYpk3GwacLVxXsBCSSB9kSc+4f6PgOptoebyBJfFOFh
	CxCtDkUEtY4hZq4W5aYmYyqorOp4PdPQxhnY76mcMJY/cPbAwLJYWFY53VJvwurMo9GyVQUhDc7dK
	jXcBD3BwPZKrfJL+XdDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIAZ-0000000DTtV-28C0;
	Wed, 28 May 2025 14:54:15 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKI40-0000000DScO-3kcK;
	Wed, 28 May 2025 14:47:30 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-31149f0393dso2798628a91.1;
        Wed, 28 May 2025 07:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748443648; x=1749048448; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jeSugzNf1/4gi32f7Z56MbpoGgBCaskHwFTFR4uqoEA=;
        b=TI/64BRdJhFZsddpZ6jFJEMUcAFI52xFV/nfQ6kY3rl2hBoJIoh7Uu16OXdjECgkIA
         x6GMLFW12OJXeb83XDJ7LMUBCIGii0kX1mWXMGjILdDLpHm585CZ/g59cPzSyg8tIM8S
         NhGiwd3TahVWBEQuvwfP1eHRppzT7v2oXAaC2r6lygCio62iNd1bHJqQ1kuo8/x2Pxxe
         gdlHUsvsyghLfmj5/S5k/U/OZqq2dZ8A5D0jDxeupId1KOAHQH6UXoZyPaQPrihH3u7j
         DoN3ZX3mTSMshiD68F7oTAGb2ouJ+d6nkjr4T/BMdaOcn27zNszWNxkSNCKxDhqE2usX
         XBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748443648; x=1749048448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jeSugzNf1/4gi32f7Z56MbpoGgBCaskHwFTFR4uqoEA=;
        b=PQjqF9pslNYNUomVil7LduxvK+BUjmFM+wLHrqOPub7jhM//zawMlkJzBZam/P2gb8
         MKaRcFUhZWxn8SapGmB8Nz5EdOS1jbBnSihgJQogE3lG85bFeHCLoVwNmB84rRKP/edz
         enKXwUZbZFZW8ulPZSsABvfXCglxNYpew3FOBKQmvUje+T9fnJ5yRt0nPZcfvW+mJVRA
         ZlDzkC3mFabE4kRxm9nlZbz31ovPUG8ievCPLy2MKGkK/Psrej7fz+nan46Lb9D62Yj/
         H3lW2U2xI5FaOdbnvHRU1RKwO8vwxmoz2aX0S+RV1soXSmak/MA8cfdXuZe4BjyB1yIo
         xmYg==
X-Forwarded-Encrypted: i=1; AJvYcCUQM0P+28dwH8b5orDY0vALVd7NH/1NZCOGaNlpkQzm8x0eVClDkZ/OarZKPEQXDurIk/Tj7Ues6p0j613s/zj4@lists.infradead.org, AJvYcCVXAQhUoKxtWrsjDld0D/mpkswYd5UrtJMbmxFzWVh1aC/eTEELCQqnwEiZjI/F//UaxjSDCJ4yEU0jkJxPazQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzyO/rWtCq86wzf/HtnCE3Bz2qELdVAlULPOhz1kldqXJEIQNVC
	IeePm0jRr6tJo6Wb10+j6WS3STYpsg9SyPvk5DSGRZcgvDrLspOU0wGhtTntcpa4kJ9WAVU60RD
	uR7yZ6dWUb9I6lHQfYAfiwiUoKnWyErI=
X-Gm-Gg: ASbGncurqGo/oPMeDKUrjelEhEambcfpMQdhtXwLuBmNIgdiHWCCrZ/cM9rIH3CwkXn
	64ysPu4wx6DdJ7U98lCRFQGFkxSIZK/OYK4a3QgKDAMbjt23XsR+OgOOxh2MCHHMoWfdqkDIype
	mnW/KvxA344tE4AYPApyDG5SWwta+HkDVt
X-Google-Smtp-Source: AGHT+IHQJXU3p+rSsWqzxaLHSULaSjkoRZugP1vvKeH7LmxHkr7nUsvjweRVqC9eZYhDskDFMsLev7oBi7HQV+tKXmM=
X-Received: by 2002:a17:90b:4b8b:b0:311:d670:a0e9 with SMTP id
 98e67ed59e1d1-311d670ad95mr4555012a91.21.1748443647809; Wed, 28 May 2025
 07:47:27 -0700 (PDT)
MIME-Version: 1.0
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
 <20250502150513.4169098-8-m.felsch@pengutronix.de> <CAHCN7x+Lu9momgX3Vwp+Yu+Tet5Q=k2vCL83SMLuad24SDchEg@mail.gmail.com>
 <20250502165535.aeb2osq2vnxsudmq@pengutronix.de> <CAHCN7xLecU12XtXFuwfNP+eee+9RLCSB9iErNmk7VFV+WrozJA@mail.gmail.com>
 <7cf3e219758a67d08137ebea5e52a1abad835e65.camel@collabora.com>
In-Reply-To: <7cf3e219758a67d08137ebea5e52a1abad835e65.camel@collabora.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 28 May 2025 09:47:14 -0500
X-Gm-Features: AX0GCFs7evzjkWRmfqngQQTZHj2yQaZWL0ja3DzZVNAah62H09qmX0qG_o41Jko
Message-ID: <CAHCN7xJJz2cOHBbyT0mr3QTndiB4Z6_Gtgy4k2giJt5qg4fH6A@mail.gmail.com>
Subject: Re: [RFC PATCH 07/11] arm64: dts: imx8mp: fix VPU_BUS clock setting
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>, benjamin.gaignard@collabora.com, 
	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de, festevam@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, paulk@sys-base.io, 
	hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com, 
	sebastian.fricke@collabora.com, ming.qian@nxp.com, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_074728_938202_C15F47C4 
X-CRM114-Status: GOOD (  35.87  )
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

T24gV2VkLCBNYXkgMjgsIDIwMjUgYXQgOToxNOKAr0FNIE5pY29sYXMgRHVmcmVzbmUKPG5pY29s
YXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IExlIG1hcmRpIDI3
IG1haSAyMDI1IMOgIDIyOjA1IC0wNTAwLCBBZGFtIEZvcmQgYSDDqWNyaXQgOgo+ID4gT24gRnJp
LCBNYXkgMiwgMjAyNSBhdCAxMTo1NeKAr0FNIE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hAcGVuZ3V0
cm9uaXguZGU+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiAyNS0wNS0wMiwgQWRhbSBGb3JkIHdyb3Rl
Ogo+ID4gPiA+IE9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgMTA6MTDigK9BTSBNYXJjbyBGZWxzY2gg
PG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGUg
VlBVX1BMTCBjbG9jayBtdXN0IGJlIHNldCBiZWZvcmUgdGhlIFZQVV9CVVMgY2xvY2sgd2hpY2gg
aXMgZGVyaXZlZAo+ID4gPiA+ID4gZnJvbSB0aGUgVlBVX1BMTCBjbG9jayBlbHNlIHRoZSBWUFVf
QlVTIGNsb2NrIGlzIDMwME1IeiBhbmQgbm90IDYwME1Iei4KPiA+Cj4gPiBJIGRpZCB2ZXJpZnkg
dGhlIGN1cnJlbnQgY2xvY2sgcmF0ZSBlbmRzIHVwIGF0IDMwME1IeiBpbnN0ZWFkIG9mIHRoZQo+
ID4gZGVzaXJlZCA2MDAgb3IgODAwTUh6LCBzbyB3ZSBzaG91bGQgZG8gc29tZXRoaW5nLgo+ID4K
Pgo+IFRoaXMgcmVtaW5kZWQgbWUgb2Y6Cj4KPiBodHRwczovL3BhdGNod29yay5saW51eHR2Lm9y
Zy9wcm9qZWN0L2xpbnV4LW1lZGlhL3BhdGNoLzIwMjUwMjE3LWI0LWhhbnRyby1hdjEtY2xvY2st
cmF0ZS12Mi0xLWUxNzlmYWQ1MjY0MUBjb2xsYWJvcmEuY29tLwo+Cj4gV2hpY2ggYWxzbyBtYWRl
IG1lIGRpc2NvdmVyIHRoYXQgdGhpcyBwYXRjaCB3YXNuJ3QgcGlja2VkIGRlc3BpdGUgYmVpbmcg
bWFyayBhY2NlcHRlZC4gV2UKPiB3aWxsIGZhdm91ciBEVCBjbG9jayBzZXR0aW5ncyBmcm9tIGhl
cmUsIHNpbmNlIGl0cyBub3QgcmVhbGx5IG1hbmFnYWJsZSBvdGhlcndpc2UsIG9sZCBib2FyZAo+
IHdpbGwgc3RheSBsaWtlIHRoaXMsIG90aGVyd2lzZSB3ZSBmYWNlIGJhY2t3YXJkIGNvbXBhdGli
aWxpdHkgaXNzdWVzLgo+Cj4gTm90ZSB0aGF0IEcyIGFuZCBWQzhLIGNhbiBiZSBydW4gYXQgaGln
aGVyIHJhdGUsIGJ1dCB0byBiZSBzdGFibGUsIHlvdSBuZWVkCj4gdG8gYWxzbyBjb250cm9sIHZv
bHRhZ2UgYW5kIHByb3BlciBjb29saW5nLCBub3Qgc29tZXRoaW5nIHdlIHdhbnQgImJ5IGRlZmF1
bHQiLgoKRnJvbSB3aGF0IEkgY2FuIHRlbGwsIGlteDhtX3ZwdV9ody5jIGRvZXNuJ3QgYWN0dWFs
bHkgc2V0IHRoZSBjbG9jawpyYXRlcy4gIEl0IGxvb2tzIGxpa2UgaXQganVzdCBlbmFibGVzIGFu
ZCBkaXNhYmxlcyB0aGVtLiAgSSB0aGluayB0aGUKY2xvY2tzIGFyZSBhbGwgc2V0IHZpYSB0aGUg
ZGV2aWNlIHRyZWUuICBUaGUgOE1QIGRhdGFzaGVldHMgbGlzdCB0aGUKY2xvY2sgcmF0ZXMgYmFz
ZWQgb24gd2hhdCB0aGV5IGNhbGwgJ25vbWluYWwnIGFuZCAnb3ZlcmRyaXZlJyB3aGljaApkZXRl
cm1pbmVkIGJ5IHNvbWUgU29DIHZvbHRhZ2VzLiAgNjAwTUh6IHNlZW1zIHJlYXNvbmFibGUgZm9y
IHdoYXQgTlhQCnN0YXRlcyBhcyBOb21pbmFsLiAgSSBkaWRuJ3Qgc2VlIGFueSBOWFAgZG93bnN0
cmVhbSB2b2x0YWdlIG9yIGNvb2xpbmcKb3B0aW9ucy4KCmFkYW0KCj4KPiBOaWNvbGFzCj4KPiA+
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNj
aEBwZW5ndXRyb25peC5kZT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpIHwgNCArKy0tCj4gPiA+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+Cj4gPiA+ID4g
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gPiA+ID4gaW5k
ZXggOTdiMDliNjQ3ZWM3Li43ZjRiZGVmYjM0ODAgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gPiA+ID4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kKPiA+ID4gPiA+IEBAIC0yMjg5
LDggKzIyODksOCBAQCB2cHVtaXhfYmxrX2N0cmw6IGJsay1jdHJsQDM4MzMwMDAwIHsKPiA+ID4g
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUF9DTEtfVlBV
X0cyX1JPT1Q+LAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZj
bGsgSU1YOE1QX0NMS19WUFVfVkM4S0VfUk9PVD47Cj4gPiA+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICBjbG9jay1uYW1lcyA9ICJnMSIsICJnMiIsICJ2YzgwMDBlIjsKPiA+ID4gPiA+IC0g
ICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtf
VlBVX0JVUz4sIDwmY2xrIElNWDhNUF9WUFVfUExMPjsKPiA+ID4gPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsayBJTVg4TVBfVlBVX1BMTF9P
VVQ+Owo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2tzID0g
PCZjbGsgSU1YOE1QX1ZQVV9QTEw+LCA8JmNsayBJTVg4TVBfQ0xLX1ZQVV9CVVM+Owo+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwwPiwg
PCZjbGsgSU1YOE1QX1ZQVV9QTExfT1VUPjsKPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDYwMDAwMDAwMD4sIDw2MDAwMDAwMDA+Owo+ID4g
PiA+Cj4gPiA+ID4gSSB0aGluayB0aGVyZSB3YXMgYSBtb3ZlIHRvIG1ha2UgdGhlIGRlZmF1bHQg
YmUgb3ZlcmRyaXZlIFsxXSAgYW5kIFsyXQo+ID4gPiA+IGFuZCB1c2UgYSAnbm9taW5hbCcgZGV2
aWNlIHRyZWUgZm9yIHRob3NlIHdobyBhcmUgbm90IGluIG92ZXJkcml2ZQo+ID4gPiA+IG1vZGUu
ICBBY2NvcmRpbmcgdG8gdGhlIFRSTSwgdGhlIFZQVV9CVVNfQ0xLX1JPT1QsIHRoZSBub21pbmFs
IGlzCj4gPiA+ID4gNjAwTUh6IGFuZCB0aGUgb3ZlcmRyaXZlIGlzIDgwME1Iei4gIEJhc2VkIG9u
IHRoYXQsIEkgd29uZGVyIGlmIHRoZQo+ID4gPiA+IHZhbHVlcyBoZXJlIHNob3VsZCBiZSA4MDBN
SHogYW5kIGlmIHdlIHNob3VsZCBhZGQgdGhlIG5vbWluYWwgdmFsdWVzCj4gPiA+ID4gb2YgNjAw
TUh6IHRvIHRoZSBpbXg4bS1ub21pbmFsLmR0c2kgZmlsZS4KPiA+ID4KPiA+ID4gWW91J3JlIHJp
Z2h0LCBBaGFtZCBhbmQgTHVjYXMgZGlkIGNoYW5nZSB0aGlzLiBJIHdpbGwgYWRhcHQgaXQgbGF0
ZXIgb24uCj4gPgo+ID4gSSB1cGRhdGVkIG15IGRldmljZSB0cmVlIHRvIHJ1biBpbiBvdmVyZHJp
dmUgbW9kZSBhbmQgcmFuIGZsdXN0ZXIgYXQKPiA+IHRoZSBoaWdoZXIgcmF0ZXM6Cj4gPiBWUFVf
RzEgLSA4MDBNSHosCj4gPiBWUFUtRzIgLSA3MDBNSHoKPiA+IFZQVS1CdXMgLSA4MDBNSHoKPiA+
Cj4gPiAuL2ZsdXN0ZXIucHkgcnVuIC1kIEdTdHJlYW1lci1WUDgtVjRMMlNMLUdzdDEuMAo+ID4g
UmFuIDU3LzYxIHRlc3RzIHN1Y2Nlc3NmdWxseSAgICAgICAgICAgICAgIGluIDUuOTIyIHNlY3MK
PiA+ICh2cyA3LjA1OSBzZWNzIGF0IG5vbWluYWwgc3BlZWQpCj4gPgo+ID4gLi9mbHVzdGVyLnB5
IHJ1biAtZEdTdHJlYW1lci1ILjI2NC1WNEwyU0wtR3N0MS4wCj4gPiBSYW4gMTI5LzEzNSB0ZXN0
cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiA0MC4xMDcgc2Vjcwo+ID4gKHZzIDQ1Ljc0
MSBzZWNzIGF0IG5vbWluYWwgc3BlZWQpCj4gPgo+ID4gSWYgeW91IHdhbnQsIEkgY2FuIHN1Ym1p
dCB0aGUgY2xvY2sgdXBkYXRlcyBJIGhhdmUgZm9yIG92ZXJkcml2ZSBvcgo+ID4gc2VuZCB0aGVt
IHRvIHlvdSB0byBzYXZlIHlvdSBzb21lIHRpbWUuCj4gPgo+ID4gYWRhbQo+ID4KPiA+ID4KPiA+
ID4gUmVnYXJkcywKPiA+ID4gICBNYXJjbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
