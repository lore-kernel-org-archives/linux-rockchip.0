Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FA04C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 05:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pHEIRFakBMKm+gQSsXs9kS/ghBAsKlD5oQHsfOcP+9M=; b=TS/l3zFz6y1zTY
	wwOPpBbt2fnslAavh4qSRmar/F6oV1D+VRNXKBMvTUzAFBtrTigULvgQr3ffi+U/bS22QfVh7OgZq
	8d9ZOm2hO15TpknOQk87xJouPp6mVfaCAFMFsmFlKdxVoC0lCeNdG99R7ukO3fQ3DI7nC8U5Y2cnT
	0nEuXIaLfXDLUCCvX8DJSsBKIzPWoJlyHCC4YLrwqZxPJvvpYF0qOr6NzZGfV3naaSxN6fCXNfjnQ
	FocItjTnnUPhhOBF/+DmfmfFjgjvq9UDMe2Y5/Bdpu4s1pXd9ZCMZ5pWPK8J0vge1Eb2DxTNGGgsq
	gb13Wlwd7zJf/NkjA7Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTws5-0000000Cf4k-13L0;
	Wed, 17 Jul 2024 05:06:33 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTws2-0000000Cf3n-1jHR;
	Wed, 17 Jul 2024 05:06:32 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-5d437791affso90981eaf.0;
        Tue, 16 Jul 2024 22:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721192788; x=1721797588; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mySpAEp/UqJ28m/AyDd/FGgPzMIYTnGpdOicI1nuZ1I=;
        b=E7ZSb50Zgnbd4Z/Us9FMZ/V1U5rdpSJI780I2o7aqIfohx+nQ5MXeBFPwR0/kFO6dF
         NBgJhm04FZR1uCeqbcTLHEhWGUmidoY4M6OPHgNblbSMWQ/Z+1JkP7cjlEltR981XmeK
         GJfzgvbpR7IfwZge3C9b+0jDwVwObKC8RypfOn+VxORLiPDzZ3/PhEI9eY+oPqEVQq+Q
         XLXVB3BoLTHbEcJonhLUPNXJX8wC98aTVLU74ApyiT4liY1eJGnAam7CbO6elGX2yiHb
         PTUhjeseQwbyLX53Ez+nqj+Vq+/k2xa1xhCYG/8pUjyWCqXjSKz+aNroD8umIp3tQrXM
         UNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721192788; x=1721797588;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mySpAEp/UqJ28m/AyDd/FGgPzMIYTnGpdOicI1nuZ1I=;
        b=A8rAODWiFw2QiNIRyHoqhV2P3DqOhI4YDr6ragTfFdWkTEv3qNkCg4RIF4UUSa5KZq
         91Kvcs+8JaoVEdeFUH4KBgDAlmtFR1BQGhD+OhDPkKdh/+CNgbqkiD5UC8OwuNnu3FUx
         5HrybF/fzZnwBpnu5zqMldCBVsYYpg8A/D011FSos4uDLQPlw8u/Bp9xK2rH5snvtDqA
         tnpvyyiAAjzuQE7scRLXRmkpg0jJP7UAPLd4561lh2xMoNXbCtyhrhouPl13uzGyxXqF
         G0YI3LBWmCLpm3twgB92UaSRTIr7dqxKl/5nL+I86vKT9O3lmUoWaNdpqTzusHA1JMit
         1XFg==
X-Forwarded-Encrypted: i=1; AJvYcCWfsyKuUC8AWbyRtGFK/Dr+kSvjdnZpKgHTjPh1PCWd+0tBQJ46+iU7R8jcGBd4c22qVsfoF3XxMbZsdxd9NDyClNGadu5ayLWT3S9RekDDVluFOqr0mK9V9XxXJNPPyxtEgNGEYqfzVsQQSIZE0Vjn9zqTFzpy4KQ=
X-Gm-Message-State: AOJu0YxAWXFKFiitETHyAv1axj0EeOh5QSiJQ7Zt+OyLSY3VazgHtGqE
	Dq0we2X9qBFib/icOUsFNJtbg2Q0/z637O+69L7Oa/bBjUCreQZSsrT2KOx19oDV0rj81F8pf/W
	XAwe7GjSrg5gm10Ay234BwJPh73s=
X-Google-Smtp-Source: AGHT+IG0x7r2SO5JuYCgDDmNjlCcdKICzLNJNWdqyf5y6Pt0K3ICDXDlTHRr0lhRn45awdtmHoObwkJXboJUTte0dRA=
X-Received: by 2002:a05:6820:210:b0:5ce:f75b:1755 with SMTP id
 006d021491bc7-5d41c7ee5fcmr724545eaf.4.1721192788465; Tue, 16 Jul 2024
 22:06:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1720969799.git.daniel@makrotopia.org> <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
 <3190961.CRkYR5qTbq@bagend> <3220752.Q7WYUMVHaa@bagend> <ZpcrdwZBNFu-YlZt@makrotopia.org>
 <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
In-Reply-To: <CAGb2v65Mm5s96asU7iaAC_sJnUk=Yuh+zMJJBbmSgETWrPLoFA@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 17 Jul 2024 10:36:12 +0530
Message-ID: <CANAwSgSYMkUKeAR7=zcDLDVo7vJMwemRxP-iba-ByDtRq75yyw@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
To: wens@kernel.org
Cc: Daniel Golle <daniel@makrotopia.org>, Diederik de Haas <didi.debian@cknow.org>, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, 
	Sascha Hauer <s.hauer@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, 
	devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_220630_515023_CD6A74B8 
X-CRM114-Status: GOOD (  26.12  )
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

SGkgQWxsLAoKT24gV2VkLCAxNyBKdWwgMjAyNCBhdCAwODoyOSwgQ2hlbi1ZdSBUc2FpIDx3ZW5z
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBKdWwgMTcsIDIwMjQgYXQgMTA6MjXigK9B
TSBEYW5pZWwgR29sbGUgPGRhbmllbEBtYWtyb3RvcGlhLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24g
VHVlLCBKdWwgMTYsIDIwMjQgYXQgMDc6MTk6MzVQTSArMDIwMCwgRGllZGVyaWsgZGUgSGFhcyB3
cm90ZToKPiA+ID4gT24gVHVlc2RheSwgMTYgSnVseSAyMDI0IDE4OjUzOjQzIENFU1QgRGllZGVy
aWsgZGUgSGFhcyB3cm90ZToKPiA+ID4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTAp
IExvbmcgcnVuOiAwCj4gPiA+Cj4gPiA+IEkgZG9uJ3Qga25vdyBpZiBpdCBtZWFucyBzb21ldGhp
bmcsIGJ1dCBJIG5vdGljZWQgdGhhdCBJIGhhdmUKPiA+ID4gYGBMb25nIHJ1bjogMGBgIHdpdGgg
YWxsIG15IHBvb3IgcmVzdWx0cywKPiA+ID4gd2hpbGUgQ2hlbi1ZdSBoYWQgYGBMb25nIHJ1bjog
MWBgLgo+ID4gPgo+ID4gPiBEaWZmZXJlbnQgU29DIChSSzMzOTkpLCBidXQgQW5hbmQgaGFkIGBg
TG9uZyBydW46IDBgYCB0b28gb24gdGhlaXIKPiA+ID4gdmVyeSBwb29yIHJlc3VsdCAoMTAwJSBm
YWlsdXJlKToKPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvQ0FO
QXdTZ1RUelpPd0JhUjl6ako1Vk1weG01QnlkdFc2ckIyUzdqZytkbm9YOGhBb1dnQG1haWwuZ21h
aWwuY29tLwo+ID4KPiA+IFRoZSBjb25jbHVzaW9ucyBJIGRyYXcgZnJvbSB0aGF0IHJhdGhlciB1
Z2x5IHNpdHVhdGlvbiBhcmU6Cj4gPiAgLSBUaGUgaHdybmcgc2hvdWxkIG5vdCBiZSBlbmFibGVk
IGJ5IGRlZmF1bHQsIGJ1dCBpdCBzaG91bGQgYnkgZG9uZQo+ID4gICAgZm9yIGVhY2ggYm9hcmQg
b24gd2hpY2ggaXQgaXMga25vd24gdG8gd29yayB3ZWxsLgo+ID4gIC0gUktfUk5HX1NBTVBMRV9D
TlQgYXMgd2VsbCBhcyB0aGUgYXNzdW1lZCBybmcgcXVhbGl0eSBzaG91bGQgYmUKPiA+ICAgIGRl
ZmluZWQgaW4gRFQgZm9yIGVhY2ggYm9hcmQ6Cj4gPiAgICAqIGludHJvZHVjZSBuZXcgJ3JvY2hj
aGlwLHJuZy1zYW1wbGUtY291bnQnIHByb3BlcnR5Cj4gPiAgICAqIHJlYWQgJ3F1YWxpdHknIHBy
b3BlcnR5IGFscmVhZHkgdXNlZCBmb3IgdGltZXJpb21lbV9ybmcKPiA+Cj4gPiBJIHdpbGwgcHJl
cGFyZSBhIGZvbGxvdy11cCBwYXRjaCB0YWtpbmcgdGhvc2UgY29uY2x1c2lvbnMgaW50byBhY2Nv
dW50Lgo+ID4KPiA+IEp1c3QgZm9yIGNvbXBsZXRlbmVzcywgaGVyZSBteSB0ZXN0IHJlc3VsdCBv
biB0aGUgTmFub1BpIFI1QzoKPiA+IHJvb3RAT3BlbldydDp+IyBjYXQgL2Rldi9od3JuZyB8IHJu
Z3Rlc3QgLWMgMTAwMAo+ID4gcm5ndGVzdCA2LjE1Cj4gPiBDb3B5cmlnaHQgKGMpIDIwMDQgYnkg
SGVucmlxdWUgZGUgTW9yYWVzIEhvbHNjaHVoCj4gPiBUaGlzIGlzIGZyZWUgc29mdHdhcmU7IHNl
ZSB0aGUgc291cmNlIGZvciBjb3B5aW5nIGNvbmRpdGlvbnMuICBUaGVyZSBpcyBOTyB3YXJyYW50
eTsgbm90IGV2ZW4gZm9yIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VM
QVIgUFVSUE9TRS4KPiA+Cj4gPiBybmd0ZXN0OiBzdGFydGluZyBGSVBTIHRlc3RzLi4uCj4gPiBy
bmd0ZXN0OiBiaXRzIHJlY2VpdmVkIGZyb20gaW5wdXQ6IDIwMDAwMDMyCj4gPiBybmd0ZXN0OiBG
SVBTIDE0MC0yIHN1Y2Nlc3NlczogODc1Cj4gPiBybmd0ZXN0OiBGSVBTIDE0MC0yIGZhaWx1cmVz
OiAxMjUKPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkgTW9ub2JpdDogMTIzCj4g
PiBybmd0ZXN0OiBGSVBTIDE0MC0yKDIwMDEtMTAtMTApIFBva2VyOiA1Cj4gPiBybmd0ZXN0OiBG
SVBTIDE0MC0yKDIwMDEtMTAtMTApIFJ1bnM6IDQKPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAw
MS0xMC0xMCkgTG9uZyBydW46IDAKPiA+IHJuZ3Rlc3Q6IEZJUFMgMTQwLTIoMjAwMS0xMC0xMCkg
Q29udGludW91cyBydW46IDAKPiA+IHJuZ3Rlc3Q6IGlucHV0IGNoYW5uZWwgc3BlZWQ6IChtaW49
ODUuMTcxOyBhdmc9MTQxLjEwMjsgbWF4PTQ4ODI4MTIuNTAwKUtpYml0cy9zCj4gPiBybmd0ZXN0
OiBGSVBTIHRlc3RzIHNwZWVkOiAobWluPTE3LjgwOTsgYXZnPTE5LjQ5NDsgbWF4PTYwLjE2OSlN
aWJpdHMvcwo+ID4gcm5ndGVzdDogUHJvZ3JhbSBydW4gdGltZTogMTM5NjI4NjA1IG1pY3Jvc2Vj
b25kcwo+Cj4gSSBkb3VidCB0aGlzIGlzIHBlci1ib2FyZC4gVGhlIFJORyBpcyBpbnNpZGUgdGhl
IFNvQywgc28gaXQgY291bGQgYmUgYSBjaGlwCj4gcXVhbGl0eSB0aGluZy4gT24gdGhlIFJLMzM5
OSB3ZSBhbHNvIHNhdyB3aWxkbHkgdmFyeWluZyByZXN1bHRzLgo+CkkgZmVlbCB0aGUgbGF0ZXN0
IHJuZy10b29sIG9ubHkgc3VwcG9ydHMgSW50ZWwgcGxhdGZvcm0geDg2XzY0IGFuZCBpMzg2LgpJ
dCBoYXMgbm8gcHJvcGVyIHN1cHBvcnQgZm9yIEFybTY0IGFuZCBBcm12NwpJdCBpcyBoZWF2aWx5
IG1vZGlmaWVkIGZvciB0aGUgWDg2IHBsYXRmb3JtCnNvIGl0J3Mgbm90IHN1aXRhYmxlIGZvciB0
ZXN0aW5nIG9uIG90aGVyIHBsYXRmb3Jtcy4KCklmIHdlIGVuYWJsZSBIV1JORyBvbiBhbGwgdGhl
IFJvY2tjaGlwIHBsYXRmb3JtcyBpdCB3aWxsIGJlIGJldHRlci4KClsxXSBodHRwczovL2dpdGh1
Yi5jb20vbmhvcm1hbi9ybmctdG9vbHMKCj4gQ2hlbll1CgpUaGFua3MKCgotQW5hbmQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
