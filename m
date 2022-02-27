Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADAA0C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66sFoYaZiBj329VSNtkWXEUmHgtQJ60Zkvo9WmycBTw=; b=J/ZP1P2gx9JS2e
	KCMJlZqNLOwQrWdiI6cX0VXswF+gttRumPKOw4H8SMvImw/rsft+U73eqxnkF6Zk/Zp2rfxbPL0zN
	xN8cVgVid5tqZ0Sunisd56ukuWLQ31h4b45yxr+5BozTwwf3PYI/f9SgvkbqAsJ8aqlFtbd+KoryR
	jeWYTSRqpxIEoJJisSuzrXAuRaqfumi2XXx+D7paHBbWtjQI3d4xXVj+5dCdfpgJGmt2ogsuYb63H
	DsbQl/KHrFThgbnNneRwKmHOnWUYga8WAsn8DIVdd5/36LCT/D+4haX+3YcL+SJnFWSsfS64Z7Af0
	Kl2b7ki75O3uZgvHzJYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOEh5-008xIX-TB; Sun, 27 Feb 2022 08:14:15 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOEgs-008xHl-VR; Sun, 27 Feb 2022 08:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1645949622;
 bh=CBoV8ODIiZ4otV26RH+UDOxaWaSm2+1iqQDPLbFEFwU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=V70pDzMIgOU0tK2UIyi2eQaG0NTXNjLjJCacIzwGD+7rUDKzcf76Zk8CCPRpWPJ64
 ALB5yi6A0ZC3o/8dxOOT8ICH/lsCG1lCeXW0k+2koAlrgXKNm2SbGqksyIaezWc1Ii
 IqbXVLXmzMUrHGpGahcGY7KGbt4TqWp9/JJ1Tt/E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.76.205] ([80.245.76.205]) by web-mail.gmx.net
 (3c-app-gmx-bs39.server.lan [172.19.170.91]) (via HTTP); Sun, 27 Feb 2022
 09:13:42 +0100
MIME-Version: 1.0
Message-ID: <trinity-005e10e1-b6fd-4573-956d-3f474c3c9ae2-1645949622469@3c-app-gmx-bs39>
From: Frank Wunderlich <frank-w@public-files.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Frank
 Wunderlich <linux@fw-web.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski@canonical.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>
Subject: Aw: Re: [PATCH v1] arm64: dts: rockchip: Add sata2 node to rk356x
Date: Sun, 27 Feb 2022 09:13:42 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMdYzYro7r2nELu2O4TuxxtZLxNSv1e3iU5yBzjd7AQgHP+FPw@mail.gmail.com>
References: <20220226135724.61516-1-linux@fw-web.de> <2815432.3mA4caTK8C@diego>
 <CAMdYzYro7r2nELu2O4TuxxtZLxNSv1e3iU5yBzjd7AQgHP+FPw@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:yI6VQbuHD0V179iz/NvKAtzuqEHuGyBQnL6Qz25j679nLrC9g2CpYQDahzgWxkjkPIYVj
 MKgMgUXtXEgDEC7zjdjU+TcoX51Wdts+fwXqSSyJFipNXYh1COeCAwKMRlAP69AAUkAOOKp8/R/A
 kAwgLCLKzhmU9b+HaXhebNSUJs2RbnZx2DEULv9FoXrdHxtiMm1IGybCPbqnV5fWiJwllcCgXxoI
 t8al0OGjjsQgozRNZz46gGV79LGQ1zaf22vCwDi0PYX43i8a+bCiaolOkn/TtpScELlvnf75lsoj
 9o=
X-UI-Out-Filterresults: notjunk:1;V03:K0:UygpNT5sHHc=:T3eRL5nuQIRyis4orHoxYZ
 aexhmE3dB2/0TZmn7PJMRroLvkI7tfXFVAXhhlBiQ0XKI8YH74WtSTp5JmzoaE3s8i6jXIEdQ
 TdAoejdPSsGqFCkiTAXoHsQhyeFL7DTAfKpmaiUqYaw62KNxuTDvbnvoxk+EKz8ZTHz34L76W
 XHSzjFwPtUI3+0nfFwmlSe73WN6isS+tSRNFNDfwDmWdakIHlfcduVNE2sciCRzTtXYrop4BL
 MCBTvryA2sqUS1NAxiGitFsXs3qQWHAymjkAfERUcHSJ0fxg5OrUn7WHIJRchhyEMKpVdSy45
 etyc98YIKVasiY1CFzDgDXKIl3CVTppwh4y/Bq7We4UnBmR5agOBcWOLXj5YGyia0QHHd54Ol
 YsOpgxlYDTZaGomP02wlgvLitnS4aQbb/foNgwhkRGPdlgaGuRrDBzUzePGbHfT5DC7max75p
 ODfdmhMe6V/Ea+pVhu2X6349eFBm5nYpenaDIkDFkCowqoxFLqA2Fcll3FbyB8wpDOTOU2IEX
 6PFqMVvZa2nPhwkKRcke7wkaXB2csvlRVO2nckd0yCUz56qkxR8GfzFfKQT4AqNZLIz8RxrjR
 IQHMzCWnsdoWnXwfkwA8zFGBqtAi60gRV7ErxvydDFWPGW2Wl/2SrSujNYA0JHNn9TaaMgpQs
 uJ53rlosnLwc0GXoafHBqY51I6iOLvB4+FfUJ4FXCQR8Nk2WgKq2ZM6cPSKxzzcBYZBDNVAfJ
 b5giOUrfaUDruoXvVTISrF+X9Qfj+U5tiut/eKVYkh+AGElEuUL+Tjek2UOgwYUeHok4sfrM0
 lm7SPqp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_001403_397506_1A9E03C3 
X-CRM114-Status: GOOD (  18.82  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkKCj4gR2VzZW5kZXQ6IFNhbXN0YWcsIDI2LiBGZWJydWFyIDIwMjIgdW0gMTk6MTUgVWhyCj4g
Vm9uOiAiUGV0ZXIgR2VpcyIgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gT24gU2F0LCBGZWIgMjYs
IDIwMjIgYXQgMTowOCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToK
PiA+Cj4gPiBIaSBGcmFuaywKPiA+Cj4gPiBBbSBTYW1zdGFnLCAyNi4gRmVicnVhciAyMDIyLCAx
NDo1NzoyNCBDRVQgc2NocmllYiBGcmFuayBXdW5kZXJsaWNoOgo+ID4gPiBGcm9tOiBGcmFuayBX
dW5kZXJsaWNoIDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiA+ID4KPiA+ID4gUkszNTZ4IHN1
cHBvcnRzIHVwIHRvIDMgc2F0YSBjb250cm9sbGVycyB3aGljaCB3ZXJlIGNvbXBhdGlibGUgd2l0
aCB0aGUKPiA+ID4gZXhpc3Rpbmcgc25wcyxkd2MtYWhjaSBiaW5kaW5nLgo+ID4gPgo+ID4gPiBN
eSBib2FyZCBoYXMgb25seSBzYXRhMiBjb25uZWN0ZWQgdG8gY29tYnBoeTIgc28gb25seSBhZGQg
dGhpcyBvbmUuCj4gPgo+ID4gaG93IGZhciBkb2VzIHRoZSBhZGRlZCBub2RlIGRpdmVyZ2UgZnJv
bSB0aGUgdmVuZG9yIGtlcm5lbD8KPiA+Cj4gPiBJZiBpdCdzIHByZXR0eSBtdWNoIHNpbWlsYXIg
YmV0d2VlbiBib3RoLCB3ZSBjYW4gYXNzdW1lIHRoZSBvdGhlciBub2Rlcwo+ID4gc2hvdWxkIHdv
cmsgcHJldHR5IHdlbGwgYXMgd2VsbCBhbmQgdGhlcmVmb3JlIHNob3VsZCBhbGwgb2YgdGhlbSBh
dCBvbmNlCj4gPiBhbmQgaG9wZSBmb3IgdGhlIGJlc3Q/Cj4gCj4gVGhlcmUncyBlc3NlbnRpYWxs
eSB6ZXJvIGRpdmVyZ2VuY2UgKG1pbnVzIHRoZSBjaGFuZ2UgZHVlIHRvIGNvbWJvcGh5Cj4gY2hh
bmdpbmcpLCBhbmQgbGlrZWx5IHdvbid0IGJlIHVudGlsIHRoZSBhaGNpLXBsYXRmb3JtLnR4dCBp
cwo+IGNvbnZlcnRlZCB0byB5YW1sLgo+IAo+IEkgaGF2ZSB0ZXN0ZWQgYm90aCBTQVRBMSBhbmQg
U0FUQTIgc3VjY2Vzc2Z1bGx5IG9uIHRoZSByazM1NjYuCj4gSSBkb24ndCBoYXZlIGFueSByazM1
NjggYm9hcmRzIHRoYXQgYXJlIG9wZXJhdGlvbmFsIHlldCB0byB0ZXN0IFNBVEEwLgoKTGlrZSBQ
ZXRlciBzYXlzLCB0aGUgc2F0YS1ub2RlKHMpIGlzIGJhc2ljbHkgc2FtZSBhcyBkb3duc3RyZWFt
LCBvbmx5IGNvbWJwaHktbGFiZWwgaGFzIGNoYW5nZWQuClNhdGExIGZyb20gUGV0ZXJzIHRyZWUg
WzFdIHNlZW1zIHRvIGhhdmUgb25seSB0aGlzIGNoYW5nZS4KSSdsbCBzZW5kIGFuIGZvbGxvd3Vw
IGNvbnRhaW5pbmcgYWxsIDMsIGJ1dCBoYWQgb25seSB0ZXN0ZWQgc2F0YTIuCgphbHJlYWR5IHNl
bnQgYSBiaW5kaW5ncy1wYXRjaCBmb3IgdGhlIGFoY2ktcGxhdGZvcm0udHh0IFsyXQoKcmVnYXJk
cyBGcmFuawoKWzFdIGh0dHBzOi8vZ2l0bGFiLmNvbS9wZ3dpcGVvdXQvbGludXgtbmV4dC8tL2Js
b2IvbWFpbi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpI0wyMzgKWzJd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMjAyMjYyMDQ0MDQuMTA5ODY3LTEtbGlu
dXhAZnctd2ViLmRlL1QvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
