Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E44A7C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 15:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z+Yi4NFZi1T6oRBd7tMRdSpgDriJ791Uq9lQx/2ynGI=; b=2jWKYr8WnRhrzF
	LCOkCY1xGp5Zk1Vwfep7hXt9zZSiBILTR5ERIOTX+RG5fs8MHtuzKIhXTMbAtHLN4e+Od8l9qj4uN
	+qgjm6zANc+ibmeWMgJ9hR9TlPTOfUvPzePYYfWjpHlxD1JO8NZUAXJ+903qya9Xu92Mf2aVSs8JP
	ZseJMfks9CqUc4l6ts1rAEn5X8ilIrUdekzFflDvuISUzfESaaAgSbx4R8MOlL/77L3gnN8pYEEKm
	3GIBiv4gFIu9r7ZCS263Rv3oBCXEWSIbmcItnwMKw0qhx1sA8KR0oj9tk/QF+VG5oT8cOYFwX//oC
	YCq97Ax0V0EGPyHU7sHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTjxg-0000000AtMn-2H0t;
	Tue, 16 Jul 2024 15:19:28 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTjxK-0000000AtFU-2Iiy;
	Tue, 16 Jul 2024 15:19:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6C975CE1368;
	Tue, 16 Jul 2024 15:19:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB60DC4AF10;
	Tue, 16 Jul 2024 15:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721143142;
	bh=ew0DUC6MaE6u+UzFSNobyhXBsg3O1+ceZPDokVRCnHg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=ZctcsBOpv9ofocppDrZbIZjm9QjwtfppEiQeQjnUxPVOxxlPdbAAxQUKbrgu1FegS
	 sF7+igEC7p2D+fg3+EVOSY6SiTGYlDN/44CazelzbxFsm2iULk74LTivVqKUDTjepX
	 87ulq96XX+LiBGaXb0pC1UE6RX9YuCtaH7Yd/Y9/YkkCiAUq9wME3O8GyvrQ9W2vMr
	 7DPoPxMQaIyKZL5Y8/j5ozndJfDJGSnV0N/AoA5sPmFoqf6BpNPniyIEx9M/ShFbKH
	 fOoMusfuDz2aRUiJF5VfhAIMQxcbNYjDxXLfGZaDE+d4AmS1ZYftuRFlQtYx3BMAOv
	 WMv9Xe5npAZZg==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2eea8ea8bb0so105505721fa.1;
        Tue, 16 Jul 2024 08:19:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWAEqPxnTGNESiWpSb3GHjFnDJLxo8evho3s8VwqqAKNYLIs0w64yazkwERudIj+xtX1KwDf4QOCWl+L9+4AlEF9xebXgYETboT2MnZzB0nG7lP7OlCWId1dPT7p565I5meNJE3tGpxcgy01OL/MugQOze8z9mJjS8=
X-Gm-Message-State: AOJu0YygoVMJGaOZS67bZmptqG6hbs2SUo/6peOhUMGiI5RXsvVqdVfr
	Peecke8pL3kBkPRMvAmsihv/LtmMJ71pfWURXwdYlIz9qZJVWVWCt88iarhedE+OPar7uEIi+br
	FL7dOmCM0B4loHC9qbVDu9P6znvM=
X-Google-Smtp-Source: AGHT+IGgTQNktVxwYAstssWzXF6vbd4odzQf/DxzVb3yYZx/iVdhb5gYCoqcMNPEIUfZAHP/M7KxAYXUu95sg+jO0hM=
X-Received: by 2002:a2e:b615:0:b0:2ec:6756:e3e7 with SMTP id
 38308e7fff4ca-2eef41e9ce5mr21397391fa.40.1721143140917; Tue, 16 Jul 2024
 08:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1720969799.git.daniel@makrotopia.org> <ZpZ1RSSYaLo45kUI@makrotopia.org>
 <1874451.yxlQQexqVa@bagend> <6779787.ZJYUc1KeCW@bagend>
In-Reply-To: <6779787.ZJYUc1KeCW@bagend>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 16 Jul 2024 23:18:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
Message-ID: <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Daniel Golle <daniel@makrotopia.org>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, 
	Sascha Hauer <s.hauer@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, 
	devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_081906_975572_B403B9FE 
X-CRM114-Status: GOOD (  20.50  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdWwgMTYsIDIwMjQgYXQgMTA6MTPigK9QTSBEaWVkZXJpayBkZSBIYWFzIDxkaWRp
LmRlYmlhbkBja25vdy5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlc2RheSwgMTYgSnVseSAyMDI0IDE1
OjU5OjQwIENFU1QgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPiA+IEZvciBzaGl0cyBhbmQgZ2ln
Z2xlcywgSSB0cmllZCBpdCBvbiBteSBQaW5lVGFiMiB0b28gKGFsc28gcmszNTY2KToKPiA+Cj4g
PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQo+ID4gcm9vdEBwaW5ldGFiMjp+IyB1bmFtZSAtYQo+ID4gTGludXggcGluZXRhYjIgNi4x
MCt1bnJlbGVhc2VkLWFybTY0ICMxIFNNUCBEZWJpYW4gNi4xMC0xfmNrbm93ICgyMDI0LTA0LTI0
KQo+ID4gYWFyY2g2NCBHTlUvTGludXgKPiA+Cj4gPiByb290QHBpbmV0YWIyOn4jIGRkIGlmPS9k
ZXYvaHdybmcgYnM9MTAwMDAwIGNvdW50PTEgPiAvZGV2L251bGwKPiA+IDErMCByZWNvcmRzIGlu
Cj4gPiAxKzAgcmVjb3JkcyBvdXQKPiA+IDEwMDAwMCBieXRlcyAoMTAwIGtCLCA5OCBLaUIpIGNv
cGllZCwgNSw2OTUzMyBzLCAxNyw2IGtCL3MKPiA+Cj4gPiByb290QHBsZWJpYW4tcGluZXRhYjI6
fiMgY2F0IC9kZXYvaHdybmcgfCBybmd0ZXN0IC1jIDEwMDAKPiA+IHJuZ3Rlc3QgNQo+ID4gQ29w
eXJpZ2h0IChjKSAyMDA0IGJ5IEhlbnJpcXVlIGRlIE1vcmFlcyBIb2xzY2h1aAo+ID4gVGhpcyBp
cyBmcmVlIHNvZnR3YXJlOyBzZWUgdGhlIHNvdXJjZSBmb3IgY29weWluZyBjb25kaXRpb25zLgo+
ID4gVGhlcmUgaXMgTk8gd2FycmFudHk7IG5vdCBldmVuIGZvciBNRVJDSEFOVEFCSUxJVFkgb3IK
PiA+IEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLgo+ID4KPiA+IHJuZ3Rlc3Q6IHN0
YXJ0aW5nIEZJUFMgdGVzdHMuLi4KPiA+IHJuZ3Rlc3Q6IGJpdHMgcmVjZWl2ZWQgZnJvbSBpbnB1
dDogMjAwMDAwMzIKPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIgc3VjY2Vzc2VzOiA3MzAKPiA+IHJu
Z3Rlc3Q6IEZJUFMgMTQwLTIgZmFpbHVyZXM6IDI3MAo+ID4gcm5ndGVzdDogRklQUyAxNDAtMigy
MDAxLTEwLTEwKSBNb25vYml0OiAyNjYKPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0x
MCkgUG9rZXI6IDIzCj4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIFJ1bnM6IDkK
PiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTG9uZyBydW46IDAKPiA+IHJuZ3Rl
c3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgQ29udGludW91cyBydW46IDAKPiA+IHJuZ3Rlc3Q6
IGlucHV0IGNoYW5uZWwgc3BlZWQ6IChtaW49Mi42MTU7IGF2Zz0xMzcuODg5Owo+ID4gbWF4PTk3
NjU2MjUuMDAwKUtpYml0cy9zIHJuZ3Rlc3Q6IEZJUFMgdGVzdHMgc3BlZWQ6IChtaW49MjQuNjQz
Owo+ID4gYXZnPTM0LjUxODsgbWF4PTY4LjM2NClNaWJpdHMvcyBybmd0ZXN0OiBQcm9ncmFtIHJ1
biB0aW1lOiAxNDk2NzQzMzYKPiA+IG1pY3Jvc2Vjb25kcwo+ID4gPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+Cj4gPiBUaGF0J3Mg
bG9va2luZyBxdWl0ZSBhIGxvdCBiZXR0ZXIgLi4uIGFuZCBJIGhhdmUgbm8gaWRlYSB3aHkuCj4g
Pgo+ID4gVGhlIFE2NC1BIGlzIHVzZWQgYXMgaGVhZGxlc3Mgc2VydmVyIGFuZCB0aGUgUGluZVRh
YjIgaXMgbm90LAo+ID4gYnV0IEkgY29ubmVjdGVkIHRvIGJvdGggb3ZlciBTU0ggYW5kIHRoZXkg
d2VyZSBmcmVzaGx5IGJvb3RlZAo+ID4gaW50bywgdGh1cyBJIGhhdmVuJ3QgYWN0dWFsbHkvbm9y
bWFsbHkgdXNlZCB0aGUgUFQyIHNpbmNlIGJvb3QuCj4KPiBJIGRpZCBmcmVzaGx5IGluc3RhbGwg
cm5nLXRvb2xzNSBwYWNrYWdlIGJlZm9yZSBydW5uaW5nIHRoZSB0ZXN0LCBzbwo+IEkgcmVib290
ZWQgYWdhaW4gdG8gbWFrZSBzdXJlIHRoYXQgd2Fzbid0IGEgZmFjdG9yOgo+Cj4gPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiByb290
QHBpbmV0YWIyOn4jIGNhdCAvZGV2L2h3cm5nIHwgcm5ndGVzdCAtYyAxMDAwCj4gcm5ndGVzdCA1
Cj4gLi4uCj4KPiBybmd0ZXN0OiBzdGFydGluZyBGSVBTIHRlc3RzLi4uCj4gcm5ndGVzdDogYml0
cyByZWNlaXZlZCBmcm9tIGlucHV0OiAyMDAwMDAzMgo+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIgc3Vj
Y2Vzc2VzOiA3MDQKPiBybmd0ZXN0OiBGSVBTIDE0MC0yIGZhaWx1cmVzOiAyOTYKPiBybmd0ZXN0
OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIE1vbm9iaXQ6IDI5Mwo+IHJuZ3Rlc3Q6IEZJUFMgMTQw
LTIoMjAwMS0xMC0xMCkgUG9rZXI6IDMyCj4gcm5ndGVzdDogRklQUyAxNDAtMigyMDAxLTEwLTEw
KSBSdW5zOiAxMAo+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTG9uZyBydW46IDAK
PiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIENvbnRpbnVvdXMgcnVuOiAwCj4gcm5n
dGVzdDogaW5wdXQgY2hhbm5lbCBzcGVlZDogKG1pbj0yLjYxMjsgYXZnPTEzNy44MzM7IG1heD05
NzY1NjI1LjAwMClLaWJpdHMvcwo+IHJuZ3Rlc3Q6IEZJUFMgdGVzdHMgc3BlZWQ6IChtaW49MjQu
MzkxOyBhdmc9MzQuNDE2OyBtYXg9NjguMzY0KU1pYml0cy9zCj4gcm5ndGVzdDogUHJvZ3JhbSBy
dW4gdGltZTogMTQ5NzM2MjA1IG1pY3Jvc2Vjb25kcwo+ID09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4KPiBTbyB0aGF0IDcwNC8yOTYg
dnMgNzMwLzI3MCBpbiB0aGUgcHJldmlvdXMgcnVuIG9uIHRoZSBQVDIuCj4KPiBJbiBjYXNlIGl0
IGhlbHBzOgo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09Cj4gcm9vdEBxdWFydHo2NGE6fiMgZ3JlcCAuIC9zeXMvZGV2aWNlcy92aXJ0
dWFsL21pc2MvaHdfcmFuZG9tL3JuZ18qCj4gL3N5cy9kZXZpY2VzL3ZpcnR1YWwvbWlzYy9od19y
YW5kb20vcm5nX2F2YWlsYWJsZTpyb2NrY2hpcC1ybmcKPiAvc3lzL2RldmljZXMvdmlydHVhbC9t
aXNjL2h3X3JhbmRvbS9ybmdfY3VycmVudDpyb2NrY2hpcC1ybmcKPiAvc3lzL2RldmljZXMvdmly
dHVhbC9taXNjL2h3X3JhbmRvbS9ybmdfcXVhbGl0eTo5MDAKPiAvc3lzL2RldmljZXMvdmlydHVh
bC9taXNjL2h3X3JhbmRvbS9ybmdfc2VsZWN0ZWQ6MAo+Cj4gcm9vdEBwaW5ldGFiMjp+IyBncmVw
IC4gL3N5cy9kZXZpY2VzL3ZpcnR1YWwvbWlzYy9od19yYW5kb20vcm5nXyoKPiAvc3lzL2Rldmlj
ZXMvdmlydHVhbC9taXNjL2h3X3JhbmRvbS9ybmdfYXZhaWxhYmxlOnJvY2tjaGlwLXJuZwo+IC9z
eXMvZGV2aWNlcy92aXJ0dWFsL21pc2MvaHdfcmFuZG9tL3JuZ19jdXJyZW50OnJvY2tjaGlwLXJu
Zwo+IC9zeXMvZGV2aWNlcy92aXJ0dWFsL21pc2MvaHdfcmFuZG9tL3JuZ19xdWFsaXR5OjkwMAo+
IC9zeXMvZGV2aWNlcy92aXJ0dWFsL21pc2MvaHdfcmFuZG9tL3JuZ19zZWxlY3RlZDowCj4gPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
Ck9uIG15IFJvY2sgM0E6Cgp3ZW5zQHJvY2stM2E6fiQgc3VkbyBjYXQgL2Rldi9od3JuZyB8IHJu
Z3Rlc3QgLWMgMTAwMApybmd0ZXN0IDUKQ29weXJpZ2h0IChjKSAyMDA0IGJ5IEhlbnJpcXVlIGRl
IE1vcmFlcyBIb2xzY2h1aApUaGlzIGlzIGZyZWUgc29mdHdhcmU7IHNlZSB0aGUgc291cmNlIGZv
ciBjb3B5aW5nIGNvbmRpdGlvbnMuICBUaGVyZQppcyBOTyB3YXJyYW50eTsgbm90IGV2ZW4gZm9y
IE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBClBBUlRJQ1VMQVIgUFVSUE9TRS4KCnJu
Z3Rlc3Q6IHN0YXJ0aW5nIEZJUFMgdGVzdHMuLi4Kcm5ndGVzdDogYml0cyByZWNlaXZlZCBmcm9t
IGlucHV0OiAyMDAwMDAzMgpybmd0ZXN0OiBGSVBTIDE0MC0yIHN1Y2Nlc3NlczogOTkyCnJuZ3Rl
c3Q6IEZJUFMgMTQwLTIgZmFpbHVyZXM6IDgKcm5ndGVzdDogRklQUyAxNDAtMigyMDAxLTEwLTEw
KSBNb25vYml0OiA3CnJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgUG9rZXI6IDAKcm5n
dGVzdDogRklQUyAxNDAtMigyMDAxLTEwLTEwKSBSdW5zOiAwCnJuZ3Rlc3Q6IEZJUFMgMTQwLTIo
MjAwMS0xMC0xMCkgTG9uZyBydW46IDEKcm5ndGVzdDogRklQUyAxNDAtMigyMDAxLTEwLTEwKSBD
b250aW51b3VzIHJ1bjogMApybmd0ZXN0OiBpbnB1dCBjaGFubmVsIHNwZWVkOiAobWluPTIuNjU4
OyBhdmc9MTQwLjA2NzsgbWF4PTk3NjU2MjUuMDAwKUtpYml0cy9zCnJuZ3Rlc3Q6IEZJUFMgdGVz
dHMgc3BlZWQ6IChtaW49MjYuNzUxOyBhdmc9MzQuOTAxOyBtYXg9NjUuMzIwKU1pYml0cy9zCnJu
Z3Rlc3Q6IFByb2dyYW0gcnVuIHRpbWU6IDE0NzM2NzU5NCBtaWNyb3NlY29uZHMKCndlbnNAcm9j
ay0zYTp+JCB1bmFtZSAtYQpMaW51eCByb2NrLTNhIDYuMTAuMC1yYzctbmV4dC0yMDI0MDcxMi0x
Mjg5OS1nN2RmNjAyZmU3YzhiICM5IFNNUCBNb24KSnVsIDE1IDAwOjM5OjMyIENTVCAyMDI0IGFh
cmNoNjQgR05VL0xpbnV4CgoKQ2hlbll1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
