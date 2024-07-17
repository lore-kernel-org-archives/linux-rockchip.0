Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A397C3DA4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 08:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8zme+CwTiSBGqiTdbXOzM2dxtyhr32LEb2vna3h+yI=; b=h0wDRg6EycHNu1
	bSU0p7f7LmzQNRZSE3LqUgIvp/a5EsbNvhY2w0IYp4LIOYidK5VMiTzB2LVhin9lvvjPRHy9Wl/Ni
	oGItOxcUv2TC0r8pAYnfElE5SqNTRQDCxF3iDVqf2BZ5k2dbkABgH3pVJUutOgStv2ZhCGVlzQeVu
	x92e+baxF7nZXYrFrGDsmwfs/eCCUSm2bYwbWKmW7/zVYIB3QkhbDA+/uPFMZK5Vrtm4zyvX5mkPf
	m+Vek/P9jGdsDdKT+jVTb0mLL72M/eXPg1qKfiTNw4swbRDjeZ0W7qn2O0Nzr2D67wFrxs6nkLsyu
	bEs1/Sn1scemrnZdBl9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU0CG-0000000DAlm-2ekA;
	Wed, 17 Jul 2024 08:39:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU0Bc-0000000DAUZ-1uaS;
	Wed, 17 Jul 2024 08:38:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D48356166E;
	Wed, 17 Jul 2024 08:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F0C0C4AF11;
	Wed, 17 Jul 2024 08:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721205535;
	bh=//VhoJmBRXereTEafCipN5TRxv7+uitmznbzZSgGUu0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=HJ4W7Pj2XMkvDazsjdRJl7yYjY2VPHC2gR5kKLwVIEkcahMuIENlnxkrjZJ0m195l
	 mx+MOrc1xPQB6cf6fzjj1t+TuUccwK/T/5BhBEZtV/TCbevxPrQZPxGwmuWZbb4pKK
	 xI9p1dFuCQEkRSrlpEnirHfIoCjrpnBK1XjhRTjYFx8/ySU7HSnvK4P9pWXglOMk80
	 reZ7hkw6gGTt1fBUMlqGUisKQx4WsJ83fg9EZQ0ZrQ5UI9npWmwmrpl4NDmQljnA96
	 fmKiFXNStmfmr8ayex0swnCfJJkoRWfrIXYM5HQq1RJiUNAgg0uqTQGLKtZ8kRa2Jk
	 YJkRRQ3+r9swA==
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ebed33cb65so84641411fa.2;
        Wed, 17 Jul 2024 01:38:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVxs9CKNcq7qPS6UBMCcE8NkLxBoWMkcAakLNQhrIysgWigfeIVnhBWvUF0ThmVUZGwiv3e23hAxTpyv5BulypmPWBNi3JObg6zZ3nmkTKwWV2eOpz5gb39fnuNYGpBZFjcRbG9nvtobqX+D37RW1c1oFtuP7xRaig=
X-Gm-Message-State: AOJu0YxbbjNyTcHXANTKZWP21AI9FIXQSZurpIRTvyJ83B9SK6JLvrsz
	i1U6q1KduANGHVpfKHGJ8mhG+4AG9zWpNOk3/kmKAYLWO0xlQUvlm7yuiAjrYrNRVPMngN1cSce
	zzIWzS/D7Wo1bgQOIkZKujdSpMPc=
X-Google-Smtp-Source: AGHT+IFyCom2uSVQC8OGjrwqFp3CJD+Hy+n9usyiPhTcFaUGFgcAkPR+nxjKE/oaopQzVIh5whJj6h5GPI+vuF8O6kQ=
X-Received: by 2002:a2e:6a09:0:b0:2ee:4a63:e927 with SMTP id
 38308e7fff4ca-2eefd14c9c0mr6925311fa.39.1721205533799; Wed, 17 Jul 2024
 01:38:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1720969799.git.daniel@makrotopia.org> <ZpcrdwZBNFu-YlZt@makrotopia.org>
 <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com> <2451882.5D0I8gZW9r@bagend>
In-Reply-To: <2451882.5D0I8gZW9r@bagend>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 17 Jul 2024 16:38:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v65BaN3rDGA+9D4mAoz4+7C4CfSqhEhd81ev-BViy0tEbw@mail.gmail.com>
Message-ID: <CAGb2v65BaN3rDGA+9D4mAoz4+7C4CfSqhEhd81ev-BViy0tEbw@mail.gmail.com>
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
	Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>, 
	Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_013856_608502_5774E0E4 
X-CRM114-Status: GOOD (  32.81  )
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

T24gV2VkLCBKdWwgMTcsIDIwMjQgYXQgNDoyMuKAr1BNIERpZWRlcmlrIGRlIEhhYXMgPGRpZGku
ZGViaWFuQGNrbm93Lm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWRuZXNkYXksIDE3IEp1bHkgMjAyNCAw
NDo1ODo1MSBDRVNUIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+IE9uIFdlZCwgSnVsIDE3LCAyMDI0
IGF0IDEwOjI14oCvQU0gRGFuaWVsIEdvbGxlIDxkYW5pZWxAbWFrcm90b3BpYS5vcmc+IHdyb3Rl
Ogo+ID4gPiBPbiBUdWUsIEp1bCAxNiwgMjAyNCBhdCAwNzoxOTozNVBNICswMjAwLCBEaWVkZXJp
ayBkZSBIYWFzIHdyb3RlOgo+ID4gPiA+IE9uIFR1ZXNkYXksIDE2IEp1bHkgMjAyNCAxODo1Mzo0
MyBDRVNUIERpZWRlcmlrIGRlIEhhYXMgd3JvdGU6Cj4gPiA+ID4gPiBybmd0ZXN0OiBGSVBTIDE0
MC0yKDIwMDEtMTAtMTApIExvbmcgcnVuOiAwCj4gPiA+ID4KPiA+ID4gPiBJIGRvbid0IGtub3cg
aWYgaXQgbWVhbnMgc29tZXRoaW5nLCBidXQgSSBub3RpY2VkIHRoYXQgSSBoYXZlCj4gPiA+ID4g
YGBMb25nIHJ1bjogMGBgIHdpdGggYWxsIG15IHBvb3IgcmVzdWx0cywKPiA+ID4gPiB3aGlsZSBD
aGVuLVl1IGhhZCBgYExvbmcgcnVuOiAxYGAuCj4gPiA+ID4KPiA+ID4gPiBEaWZmZXJlbnQgU29D
IChSSzMzOTkpLCBidXQgQW5hbmQgaGFkIGBgTG9uZyBydW46IDBgYCB0b28gb24gdGhlaXIKPiA+
ID4gPiB2ZXJ5IHBvb3IgcmVzdWx0ICgxMDAlIGZhaWx1cmUpOgo+ID4gPiA+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL0NBTkF3U2dUVHpaT3dCYVI5empKNVZNcHhtNUJ5
ZHRXNgo+ID4gPiA+IHJCMlM3amcrZG5vWDhoQW9XZ0BtYWlsLmdtYWlsLmNvbS8+Cj4gPiA+IFRo
ZSBjb25jbHVzaW9ucyBJIGRyYXcgZnJvbSB0aGF0IHJhdGhlciB1Z2x5IHNpdHVhdGlvbiBhcmU6
Cj4gPiA+ICAtIFRoZSBod3JuZyBzaG91bGQgbm90IGJlIGVuYWJsZWQgYnkgZGVmYXVsdCwgYnV0
IGl0IHNob3VsZCBieSBkb25lCj4gPiA+Cj4gPiA+ICAgIGZvciBlYWNoIGJvYXJkIG9uIHdoaWNo
IGl0IGlzIGtub3duIHRvIHdvcmsgd2VsbC4KPiA+ID4KPiA+ID4gIC0gUktfUk5HX1NBTVBMRV9D
TlQgYXMgd2VsbCBhcyB0aGUgYXNzdW1lZCBybmcgcXVhbGl0eSBzaG91bGQgYmUKPiA+ID4KPiA+
ID4gICAgZGVmaW5lZCBpbiBEVCBmb3IgZWFjaCBib2FyZDoKPiA+ID4gICAgKiBpbnRyb2R1Y2Ug
bmV3ICdyb2NoY2hpcCxybmctc2FtcGxlLWNvdW50JyBwcm9wZXJ0eQo+ID4gPiAgICAqIHJlYWQg
J3F1YWxpdHknIHByb3BlcnR5IGFscmVhZHkgdXNlZCBmb3IgdGltZXJpb21lbV9ybmcKPiA+ID4K
PiA+ID4gSSB3aWxsIHByZXBhcmUgYSBmb2xsb3ctdXAgcGF0Y2ggdGFraW5nIHRob3NlIGNvbmNs
dXNpb25zIGludG8gYWNjb3VudC4KPiA+ID4KPiA+ID4gSnVzdCBmb3IgY29tcGxldGVuZXNzLCBo
ZXJlIG15IHRlc3QgcmVzdWx0IG9uIHRoZSBOYW5vUGkgUjVDOgo+ID4gPiByb290QE9wZW5XcnQ6
fiMgY2F0IC9kZXYvaHdybmcgfCBybmd0ZXN0IC1jIDEwMDAKPiA+ID4gcm5ndGVzdCA2LjE1Cj4g
PiA+IENvcHlyaWdodCAoYykgMjAwNCBieSBIZW5yaXF1ZSBkZSBNb3JhZXMgSG9sc2NodWgKPiA+
ID4gVGhpcyBpcyBmcmVlIHNvZnR3YXJlOyBzZWUgdGhlIHNvdXJjZSBmb3IgY29weWluZyBjb25k
aXRpb25zLiAgVGhlcmUgaXMgTk8KPiA+ID4gd2FycmFudHk7IG5vdCBldmVuIGZvciBNRVJDSEFO
VEFCSUxJVFkgb3IgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSCj4gPiA+IFBVUlBPU0UuCj4gPiA+
Cj4gPiA+IHJuZ3Rlc3Q6IHN0YXJ0aW5nIEZJUFMgdGVzdHMuLi4KPiA+ID4gcm5ndGVzdDogYml0
cyByZWNlaXZlZCBmcm9tIGlucHV0OiAyMDAwMDAzMgo+ID4gPiBybmd0ZXN0OiBGSVBTIDE0MC0y
IHN1Y2Nlc3NlczogODc1Cj4gPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIgZmFpbHVyZXM6IDEyNQo+
ID4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIE1vbm9iaXQ6IDEyMwo+ID4gPiBy
bmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIFBva2VyOiA1Cj4gPiA+IHJuZ3Rlc3Q6IEZJ
UFMgMTQwLTIoMjAwMS0xMC0xMCkgUnVuczogNAo+ID4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIw
MDEtMTAtMTApIExvbmcgcnVuOiAwCj4gPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0x
MCkgQ29udGludW91cyBydW46IDAKPiA+ID4gcm5ndGVzdDogaW5wdXQgY2hhbm5lbCBzcGVlZDog
KG1pbj04NS4xNzE7IGF2Zz0xNDEuMTAyOwo+ID4gPiBtYXg9NDg4MjgxMi41MDApS2liaXRzL3Mg
cm5ndGVzdDogRklQUyB0ZXN0cyBzcGVlZDogKG1pbj0xNy44MDk7Cj4gPiA+IGF2Zz0xOS40OTQ7
IG1heD02MC4xNjkpTWliaXRzL3Mgcm5ndGVzdDogUHJvZ3JhbSBydW4gdGltZTogMTM5NjI4NjA1
Cj4gPiA+IG1pY3Jvc2Vjb25kcwo+ID4KPiA+IEkgZG91YnQgdGhpcyBpcyBwZXItYm9hcmQuIFRo
ZSBSTkcgaXMgaW5zaWRlIHRoZSBTb0MsIHNvIGl0IGNvdWxkIGJlIGEgY2hpcAo+ID4gcXVhbGl0
eSB0aGluZy4KPgo+IEkgYWdyZWUgd2l0aCBDaGVuWXUgKGFuZCBvdGhlcnMpIHRoYXQgdGhpcyBp
cyBpc24ndCBhIHBlci1ib2FyZCBsZXZlbCB0aGluZy4KPiBJJ2QgZXZlbiBnbyBmdXJ0aGVyOiAn
cy9JIGRvdWJ0L0l0IGNhbid0IGJlIHRoYXQvJyAoZm9yIHRoZSBzYW1lIHJlYXNvbgo+IHRob3Vn
aDsgdGhpcyBpcyBpbnNpZGUgdGhlIFNvQykuCj4KPiBCZWZvcmUgSSBzYXcgdGhlc2UgbGF0ZXN0
IGVtYWlscywgSSB3YXMgZ29pbmcgdG8gc3VnZ2VzdDoKPiAxLiBFbmFibGUgaXQgb25seSBvbiBS
SzM1NjggZm9yIG5vdy4gSSB3b3VsZCBiZSBmaW5lIGlmIHRoaXMgd291bGQgYmUgYWNjZXB0ZWQK
PiBieSB0aGUgbWFpbnRhaW5lcgo+Cj4gMi4gQXNrIHRoYXQgeW91IG1ha2UgYSBzcGVjaWFsIHZl
cnNpb24gKGZvciBtZSkgd2hlcmUgSSBjb3VsZCBwbGF5IHdpdGggdGhlCj4gcGFyYW1zIHdpdGhv
dXQgaGF2aW5nIHRvIGNvbXBpbGUgYSBuZXcga2VybmVsIGZvciBlYWNoIHZhcmlhbnQgKGl0IGdl
bmVyYWxseQo+IHRha2VzIG1lIG1vcmUgdGhlbiAyNGggb24gbXkgUTY0LUEpLiBFaXRoZXIgdGhy
b3VnaCBrZXJuZWwgbW9kdWxlIHByb3BlcnRpZXMKPiBvciBwcm9wZXJ0aWVzIGRlZmluZWQgaW4g
dGhlIERldmljZVRyZWUgaXMgZmluZSB3aXRoIG1lLgo+Cj4gMy4gQmFzZWQgb24gdGhlIHJlc3Vs
dHMgbWFrZSAgYSBjaG9pY2UgdG8gbm90IGVuYWJsZSBpdCBvbiByazM1NjYgYXQgYWxsIG9yCj4g
KGluZGVlZCkgaW50cm9kdWNlIERUIHByb3BlcnRpZXMgdG8gY29uZmlndXJlIGl0IGRpZmZlcmVu
dGx5IHBlciBTb0MuCj4KPiA0LiBIb3BlL0FzayBmb3IgbW9yZSB0ZXN0IHJlc3VsdHMKPgo+ID4g
T24gdGhlIFJLMzM5OSB3ZSBhbHNvIHNhdyB3aWxkbHkgdmFyeWluZyByZXN1bHRzLgo+Cj4gT24g
bXkgUm9jazY0KCdzKSAoUkszMzI4KSBpdCBkb2Vzbid0IHdvcmsgYXQgYWxsOgo+Cj4gYGBgCj4g
cm9vdEBjczIxOn4jIGNhdCAvZGV2L2h3cm5nIHwgcm5ndGVzdCAtYyAxMDAwCj4gcm5ndGVzdCA1
Cj4gLi4uCj4gcm5ndGVzdDogc3RhcnRpbmcgRklQUyB0ZXN0cy4uLgo+IGNhdDogL2Rldi9od3Ju
ZzogTm8gc3VjaCBkZXZpY2UKPiBybmd0ZXN0OiBlbnRyb3B5IHNvdXJjZSBkcmFpbmVkCj4gYGBg
CgpSSzMzOTkgYW5kIFJLMzMyOCBhcmUgY292ZXJlZCBieSBhIGRpZmZlcmVudCBkcml2ZXI6Cgpo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA3MDcxMTUyNDIuMzQxMTI1OS0xLWNsYWJi
ZUBiYXlsaWJyZS5jb20vCgpBbmQgdGhhdCBwYXRjaCBzYXlzIHRoZSBUUk5HIG9uIHRoZSBSSzMz
MjggaXMgdXR0ZXJseSBicm9rZW4uCgoKQ2hlbll1CgoKPiBDaGVlcnMsCj4gICBEaWVkZXJpawoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
