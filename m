Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF53BC3DA49
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 02:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e++FY45jtisOJNELDly3MMVgs5ImcUYkH1jmfDuTo3U=; b=tv35YSDyNdrYEM
	dOoPwqdmi3WxgAvPb0SctAOMbX+k78jM9lC3NkJZM5J2luMM+U+G9WCRY6hidwcQ7yG3bkhY1V6FA
	6HmKbOrc/ACkvmFIvG+cdFnIte7P9FkJ+rDQlEkuQG486oNUPAsPv72ANKuo9IXYBDyfYQiuO2aEJ
	YvJrWfCTyOfRMkC/xcMK9mvQOIkx89VttN2vxCOozSlPkvjECHxm+QNX6+Do7pYkhd646M7AyGCD8
	AfKEVW/aUmJPLXXKI78ced08GsIyz5cuyleVPHriQkNPUj7/T7c0PYzLzV0cEgvLE76vMichqgyS2
	wCVxO4Tnxp1XvP4iduNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTut7-0000000COWV-3Puf;
	Wed, 17 Jul 2024 02:59:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTusm-0000000COSS-04wT;
	Wed, 17 Jul 2024 02:59:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 54F61CE136A;
	Wed, 17 Jul 2024 02:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FF0AC116B1;
	Wed, 17 Jul 2024 02:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721185145;
	bh=8Z6LvjYkqZAZA9BLj34dX7n7F3kA3n+JYTUXN498kb8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=J0WwzhUM3HG81W8gsWSqBs7fUp6LLj6x9oVS5QNgKl45YtbDuKJvcUDbbp+NOfe0P
	 I0LAD0sbBle5t7gaZeJhw6yjAPTs/WeaK0fzam/Tj4dLHgQrERRBj1su/InTta+3uD
	 rNxq29lh/fX5Fgyy4iTA7swGW7c9GU7hPSo9nP5mOWhQ4Lohc2R7cA3i1MoS+3OlFx
	 MYGfoOmDjhhYbPlH7A8h10Ulwx1YD12JgNIIWyeOeNYMEajP90BfZRI6It9/CotHjn
	 3IelFhmv6kuH8R8dIkcJ7zrYXvonDJStC4uu7G8hbMRcwwwr22/PJuthjo23QLwnxR
	 AK5F0OWo45+Zw==
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ee9b1b422fso3199471fa.0;
        Tue, 16 Jul 2024 19:59:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV/SuAr0try1XFxBAspWuuaHojYyQ8LZoeEmWoue9od/URG53nSQSJNPc3mJfmHQdTKUKrcxGszMbtArOLqazdNwicUYt34ztecTCmIWx7/8u7F7I8JNJrbz67NxEzwj/l37o8YDlplexG2e8NW+fN8gagkgjnh1+Q=
X-Gm-Message-State: AOJu0YwH0OqdapP4BZE7U0ZvJcD6UDliIFhNx1Af1NVEgNmKQ5LDcnYQ
	MO7HflK5GvvBgYoxIiBFU2xC3ySUTvfZnQC1Ekk3sHYTTQm7kb/F9NRRkCYh/HmOKNxKgQpqA0E
	dFK+VGZ8jPLiERwEn0EfYsxe+JRo=
X-Google-Smtp-Source: AGHT+IF6M1MvWpqcnBWFgGyee1wdmH6gSbGXcC2xjWzFrJ0UZ8VRlr+1bXmtyhMyH+amFOHlY61HXtCtAHL8VhmGjZQ=
X-Received: by 2002:a2e:2a82:0:b0:2ee:8561:f388 with SMTP id
 38308e7fff4ca-2eef55c7ddbmr10590921fa.0.1721185143826; Tue, 16 Jul 2024
 19:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1720969799.git.daniel@makrotopia.org> <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
 <3190961.CRkYR5qTbq@bagend> <3220752.Q7WYUMVHaa@bagend> <ZpcrdwZBNFu-YlZt@makrotopia.org>
In-Reply-To: <ZpcrdwZBNFu-YlZt@makrotopia.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 17 Jul 2024 10:58:51 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
Message-ID: <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
To: Daniel Golle <daniel@makrotopia.org>
Cc: Diederik de Haas <didi.debian@cknow.org>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, 
	Sascha Hauer <s.hauer@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, 
	devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>, 
	Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_195908_437766_8BA8C740 
X-CRM114-Status: GOOD (  20.47  )
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

T24gV2VkLCBKdWwgMTcsIDIwMjQgYXQgMTA6MjXigK9BTSBEYW5pZWwgR29sbGUgPGRhbmllbEBt
YWtyb3RvcGlhLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1bCAxNiwgMjAyNCBhdCAwNzoxOToz
NVBNICswMjAwLCBEaWVkZXJpayBkZSBIYWFzIHdyb3RlOgo+ID4gT24gVHVlc2RheSwgMTYgSnVs
eSAyMDI0IDE4OjUzOjQzIENFU1QgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPiA+ID4gcm5ndGVz
dDogRklQUyAxNDAtMigyMDAxLTEwLTEwKSBMb25nIHJ1bjogMAo+ID4KPiA+IEkgZG9uJ3Qga25v
dyBpZiBpdCBtZWFucyBzb21ldGhpbmcsIGJ1dCBJIG5vdGljZWQgdGhhdCBJIGhhdmUKPiA+IGBg
TG9uZyBydW46IDBgYCB3aXRoIGFsbCBteSBwb29yIHJlc3VsdHMsCj4gPiB3aGlsZSBDaGVuLVl1
IGhhZCBgYExvbmcgcnVuOiAxYGAuCj4gPgo+ID4gRGlmZmVyZW50IFNvQyAoUkszMzk5KSwgYnV0
IEFuYW5kIGhhZCBgYExvbmcgcnVuOiAwYGAgdG9vIG9uIHRoZWlyCj4gPiB2ZXJ5IHBvb3IgcmVz
dWx0ICgxMDAlIGZhaWx1cmUpOgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9j
a2NoaXAvQ0FOQXdTZ1RUelpPd0JhUjl6ako1Vk1weG01QnlkdFc2ckIyUzdqZytkbm9YOGhBb1dn
QG1haWwuZ21haWwuY29tLwo+Cj4gVGhlIGNvbmNsdXNpb25zIEkgZHJhdyBmcm9tIHRoYXQgcmF0
aGVyIHVnbHkgc2l0dWF0aW9uIGFyZToKPiAgLSBUaGUgaHdybmcgc2hvdWxkIG5vdCBiZSBlbmFi
bGVkIGJ5IGRlZmF1bHQsIGJ1dCBpdCBzaG91bGQgYnkgZG9uZQo+ICAgIGZvciBlYWNoIGJvYXJk
IG9uIHdoaWNoIGl0IGlzIGtub3duIHRvIHdvcmsgd2VsbC4KPiAgLSBSS19STkdfU0FNUExFX0NO
VCBhcyB3ZWxsIGFzIHRoZSBhc3N1bWVkIHJuZyBxdWFsaXR5IHNob3VsZCBiZQo+ICAgIGRlZmlu
ZWQgaW4gRFQgZm9yIGVhY2ggYm9hcmQ6Cj4gICAgKiBpbnRyb2R1Y2UgbmV3ICdyb2NoY2hpcCxy
bmctc2FtcGxlLWNvdW50JyBwcm9wZXJ0eQo+ICAgICogcmVhZCAncXVhbGl0eScgcHJvcGVydHkg
YWxyZWFkeSB1c2VkIGZvciB0aW1lcmlvbWVtX3JuZwo+Cj4gSSB3aWxsIHByZXBhcmUgYSBmb2xs
b3ctdXAgcGF0Y2ggdGFraW5nIHRob3NlIGNvbmNsdXNpb25zIGludG8gYWNjb3VudC4KPgo+IEp1
c3QgZm9yIGNvbXBsZXRlbmVzcywgaGVyZSBteSB0ZXN0IHJlc3VsdCBvbiB0aGUgTmFub1BpIFI1
QzoKPiByb290QE9wZW5XcnQ6fiMgY2F0IC9kZXYvaHdybmcgfCBybmd0ZXN0IC1jIDEwMDAKPiBy
bmd0ZXN0IDYuMTUKPiBDb3B5cmlnaHQgKGMpIDIwMDQgYnkgSGVucmlxdWUgZGUgTW9yYWVzIEhv
bHNjaHVoCj4gVGhpcyBpcyBmcmVlIHNvZnR3YXJlOyBzZWUgdGhlIHNvdXJjZSBmb3IgY29weWlu
ZyBjb25kaXRpb25zLiAgVGhlcmUgaXMgTk8gd2FycmFudHk7IG5vdCBldmVuIGZvciBNRVJDSEFO
VEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UuCj4KPiBybmd0ZXN0
OiBzdGFydGluZyBGSVBTIHRlc3RzLi4uCj4gcm5ndGVzdDogYml0cyByZWNlaXZlZCBmcm9tIGlu
cHV0OiAyMDAwMDAzMgo+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIgc3VjY2Vzc2VzOiA4NzUKPiBybmd0
ZXN0OiBGSVBTIDE0MC0yIGZhaWx1cmVzOiAxMjUKPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEt
MTAtMTApIE1vbm9iaXQ6IDEyMwo+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgUG9r
ZXI6IDUKPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIFJ1bnM6IDQKPiBybmd0ZXN0
OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIExvbmcgcnVuOiAwCj4gcm5ndGVzdDogRklQUyAxNDAt
MigyMDAxLTEwLTEwKSBDb250aW51b3VzIHJ1bjogMAo+IHJuZ3Rlc3Q6IGlucHV0IGNoYW5uZWwg
c3BlZWQ6IChtaW49ODUuMTcxOyBhdmc9MTQxLjEwMjsgbWF4PTQ4ODI4MTIuNTAwKUtpYml0cy9z
Cj4gcm5ndGVzdDogRklQUyB0ZXN0cyBzcGVlZDogKG1pbj0xNy44MDk7IGF2Zz0xOS40OTQ7IG1h
eD02MC4xNjkpTWliaXRzL3MKPiBybmd0ZXN0OiBQcm9ncmFtIHJ1biB0aW1lOiAxMzk2Mjg2MDUg
bWljcm9zZWNvbmRzCgpJIGRvdWJ0IHRoaXMgaXMgcGVyLWJvYXJkLiBUaGUgUk5HIGlzIGluc2lk
ZSB0aGUgU29DLCBzbyBpdCBjb3VsZCBiZSBhIGNoaXAKcXVhbGl0eSB0aGluZy4gT24gdGhlIFJL
MzM5OSB3ZSBhbHNvIHNhdyB3aWxkbHkgdmFyeWluZyByZXN1bHRzLgoKQ2hlbll1CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
