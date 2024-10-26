Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4029CD10C03
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 20:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEmKzN0AZNqmcg7wQCivoUwQclDcVsVe79MGYERG/ig=; b=SMhcThj+MRFuLg
	OtMF6P18oG1IfTOf51tXj1xr4ed+gO96NyIvqwnY3UCD1/EDf5GrH/f4f+L1DioPMeKI/F50/zaVT
	VqRsNlfO5CEYp53P8gVigyWcVF2AJzmtMLBkTSkehdDVHHNFd0pqN8WoyBVVij07q8ijTd8Q/hrYa
	aYoS76jHhkuRHgDDs/JP5N6pNaTMMjmOJUBU/yQAd+RVtLOZ7x/dzcXR2UDBl/cJn2HWBeM7X/TwZ
	4GVjet9XAL9HGI0FhCmtX424m4linFdxhlTdDXgBP0BSdBzNChXGJnae6J8AeBGZ4jFvRjEecGcah
	AFbctMU2nV+foMheBgaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4nEN-00000007Azp-2pav;
	Sat, 26 Oct 2024 20:17:51 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4nEL-00000007AzS-0y3o
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 20:17:50 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4315eeb2601so40548775e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 13:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729973867; x=1730578667; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zaQKX9JIU0AqnBhw8vgOYiReBzb2A0Cv8wnfx08UjUs=;
        b=f9EbbNiTPCdMkn7BGZz/9ddJxKDQBvWPRk24C9POi3xqRSNBm+E7/xfmjDRiIJFMUK
         mim6bOxq9esJ1nZRbVpvZwOgPBSHVLx5IHW6O+HYIRxH+yNXLmjJQOwF4P2DRQGP/EuD
         k9RGHvs8L3b1CWkLgscgOgK/XHNqxW4pBKRSMR1ibjXlJmnonEqX1oYvFAr47pJ2Z76E
         Nz+oSl3vpvmP0zH7z/23jGXGoT23HGoGrAVGt+1yfu0qP6jS3zFUh0KOJrmRRz+pv5Bs
         i53jZeiHwEajDA6WIS0wgyyguZa5USPqzPYQpfvg3i57jBWXLeY8g0ciNmMRBpoyoXOk
         f3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729973867; x=1730578667;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zaQKX9JIU0AqnBhw8vgOYiReBzb2A0Cv8wnfx08UjUs=;
        b=DzEeDInJOZ1xUIJYdc+A2KSZrcoXM6yKmCHj//CyBVsK0yhZdUER847nk2YXGLl/7p
         P+apjM4XZgy25yiVvdsaXeYiHe5bAhq/atTiaMmMllXiR/T99J5/GEoRf8/HP4m98hxn
         FPIfw3Q2UE6Q+11SDxe6XJFHoeiNaetrsnpxSzy8RKMl6hOHwC/+cIaKPJ9vG+Ka48QT
         xqhbDU25+9HcM39DMgTOeA4CSork3mxSeiZ00uM5PXRKsLIX+edFm4glJkgCczIBspjE
         ZUhFGczJSG1ONFjGuitylBhcRZelkwfeNe/ghxF+auIzou5/wB0zBySdNNZV4ATOI8Vk
         2Hfg==
X-Forwarded-Encrypted: i=1; AJvYcCWtn9rqTl4x424WkSQEE1g8K2YlJ91clXvfsj2UuFJ1oyL1u40sVk1XDvzEA01b9meS6lgmYgr2swaQFakN5w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7oHUj/B9RsCnVFw2eh+G95Di3XZJ8287Fw6uy4BUbqmvo8F2W
	bHHpcbvEPj5Vxyc3EpS8x+9/95tbECfm7pxVqwQYZy97ehyNfaEZd9R5skmLgrRFxUI4hIOM04H
	UwqgTE3PIeLyHFDVu5Z+bqqYFzVc=
X-Google-Smtp-Source: AGHT+IGLbAUCeiLYSvVGkG//nee8J89q5FsGfCO24P0d4Oav7+ElVu+uUIVN6eSBptXniRDp3UsqKd6L4GZvvDGVGb4=
X-Received: by 2002:a05:600c:5249:b0:426:6e9a:7a1e with SMTP id
 5b1f17b1804b1-4319ad293bfmr28801835e9.35.1729973867031; Sat, 26 Oct 2024
 13:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <20241026100310.52679-1-honyuenkwun@gmail.com> <20241026100310.52679-4-honyuenkwun@gmail.com>
 <eb6956d3-27f5-416d-a3d2-26a4b2d940fc@kernel.org>
In-Reply-To: <eb6956d3-27f5-416d-a3d2-26a4b2d940fc@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sat, 26 Oct 2024 15:17:35 -0500
Message-ID: <CALWfF7JhoZAkMBjC=4BUyQevvKD-9oTeRO3VftqjHskXJEkQGA@mail.gmail.com>
Subject: Re: [PATCH 03/15] arm64: dts: rockchip: add status LED to opi5max
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, Ondrej Jirman <megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_131749_316916_9B47FE60 
X-CRM114-Status: GOOD (  27.15  )
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

T24gU2F0LCBPY3QgMjYsIDIwMjQgYXQgMTI6NTnigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gMjYvMTAvMjAyNCAxMTo0OCwgSmltbXkgSG9u
IHdyb3RlOgo+ID4gRGVzY3JpYmUgdGhlIE9yYW5nZSBQaSA1IE1heCAyIHN0YXR1cyBMRURzIGlu
IGl0cyBkZXZpY2UgdHJlZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKaW1teSBIb24gPGhvbnl1
ZW5rd3VuQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9kdHMvcm9ja2NoaXAvcmszNTg4LW9y
YW5nZXBpLTUtbWF4LmR0cyAgICB8IDM1ICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LW1heC5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LW1heC5kdHMKPiA+IGluZGV4IDUz
YTM0Y2IzNzQ4Ny4uODNhMTE4ZTUyYmIwIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1tYXguZHRzCj4gPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LW1heC5kdHMKPgo+IFRoaXMg
aXMgYSBuZXcgYm9hcmQuIFdoeSBkbyB5b3UgYWRkIGluY29tcGxldGUgYm9hcmQgaW4gZmlyc3Qg
cGF0Y2g/ClRoYXQncyBhbiBhcnRpZmFjdCBvZiB0aGUgZGV2ZWxvcG1lbnQgcHJvY2Vzcy4gSXQn
cyBlYXNpZXIgZm9yIGdpdCB0bwprZWVwIHRyYWNrIG9mIHdoaWNoIG5vZGVzIGluIHRoZSBEVFMg
Z29lcyB3aXRoIHdoaWNoIGZ1bmN0aW9uLgoKSSBvcmlnaW5hbGx5IHN0YXJ0ZWQgdGhpcyA2LXdl
ZWtzIGFnby4gQnV0IHRoZSBzY2hlbWF0aWMgd2FzIG9ubHkKcHVibGlzaGVkIHRoaXMgd2Vlay4g
U28gSSB3YXMgaG9waW5nIHRoZSBPcmFuZ2UgUGkgNSBNYXggd2FzIGEgc3Vic2V0Cm9mIHRoZSBP
cmFuZ2UgUGkgNSBQbHVzICh3aGljaCBib3RoIHVzZSBmdWxsIFJLMzU4OCkuIEhvd2V2ZXIsIEkg
d2FzCndyb25nLCBhIGxvdCBvZiBwaW5zIGFyZSBkaWZmZXJlbnQuIEkgY29tcGFyZWQgdGhlIGRp
ZmZlcmVuY2VzIGluIHRoZQp2ZW5kb3Iga2VybmVsIGJldHdlZW4gdGhlIHR3byBib2FyZHMgWzFd
WzJdLCBhbmQgYXBwbGllZCBpdCB0byB0aGUKbWFpbmxpbmUgT3JhbmdlIFBpIDUgUGx1cyBkdHMg
WzNdCgpTbyBpbiB0aGUgcHJvY2VzcyBvZiB0cmltbWluZyB0aGUgbm9kZXMgZG93biB0byB0aGUg
b25lcyBhY3R1YWxseSB1c2VkCmJ5IHRoZSBPUEk1TWF4LEkgZ290IGl0IGRvd24gdG8gdGhlIGZp
cnN0IHBhdGNoIGFuZCBoYWQgYSB3b3JraW5nCmJvYXJkIHVzaW5nIG1pY3JvU0QuCgpGb3IgdGhl
IExFRCBmdW5jdGlvbmFsaXR5IGluIHBhcnRpY3VsYXIuIEkgb3JpZ2luYWxseSBqdXN0IHVzZWQK
bGVkcy1ncGlvIGxpa2UgdGhlIHZlbmRvciBrZXJuZWwgWzJdLiBIb3dldmVyLCB3aGVuIHRoZSBz
Y2hlbWF0aWMgY2FtZQpvdXQgWzRdIHBhZ2UgMjYsIEkgbm90aWNlZCB0aGUgcGlucyB3ZXJlIGNh
bGxlZCBQV01fTEVEMSBhbmQgUFdNX0xFRDIsCnNvIEkgZGlkIHRoZSBzYW1lIHRoaW5nIGFzIHRo
ZSBtYWlubGluZSBPUEk1UGx1cywgYW5kIHVzZWQgbGVkcy1wd20uCkx1Y2tpbHksIFBXTTQgYW5k
IFBXTTUgYXJlIG5vdCBhdmFpbGFibGUgZnJvbSB0aGUgNDAtcGluIEdQSU8gaGVhZGVyLgpbNV0g
U28gdGhlcmUncyBub3QgbXVjaCBkb3duc2lkZS4gT24gb3RoZXIgYm9hcmRzLCB0aGUgUFdNIHVz
ZWQgdG8KZHJpdmUgdGhlIExFRCBjb3VsZCBoYXZlIGJlZW4gdXNlZCB0byBkcml2ZSBhIHBpbiBv
biB0aGUgR1BJTyBoZWFkZXIuCkJ1dCBiYXNpY2FsbHksIGlmIEkgd2FzIHRvbGQgaXQgd291bGQg
YmUgYmV0dGVyIHRvIHJldmVydCBiYWNrIHRvCnVzaW5nIGdwaW8tbGVkcyBsaWtlIHRoZSB2ZW5k
b3Iga2VybmVsLCBpdCB3YXMgc2ltcGxlciB0byBrZWVwIHRyYWNrCm9mIHRoZSBub2RlcyBpbiB0
aGUgc2FtZSBjb21taXQuCgpTaWRlIE5vdGU6IHNpbmNlIGl0J3MgYWN0dWFsbHkgYW4gUkdCIGxl
ZCwgYW5kIG5vdCB0aHJlZSBpbmRpdmlkdWFsCmxlZHMsIGl0J3MgdGVtcHRpbmcgdG8gdXNlIHRo
ZSBsZWRzLXB3bS1tdWx0aWNvbG9yLiBIb3dldmVyLCB0aGUgUkVECnBvcnRpb24gaXMgaGFyZHdp
cmVkIG9uIHdoZW4gdGhlIHBvd2VyIGlzIG9uIGFuZCBub3QgY29ubmVjdGVkIHRvIFBXTS4KCkkg
c3RpbGwgaGF2ZSBzb21lIG1vcmUgZnVuY3Rpb25zIHRoYXQgSSdtIHdvcmtpbmcgb24gKGkuZS4g
V0lGaSksIHNvCnRob3NlIGNvbW1pdHMgYXJlIG5vdCByZWFkeS4gSSdtIGFmcmFpZCB0aGF0IHRo
ZSBBbmRyb2lkIEJDTURIRCBkcml2ZXIKbWF5IG5lZWQgRFRTIG5vZGVzIHRoYXQgYXJlIGRpZmZl
cmVudCBmcm9tIHRoZSBEVFMgbm9kZXMgdGhlIGJjcm1mbWFjCmRyaXZlciB3b3VsZCB1c2UuCgpB
bnl3YXlzLCBzaG91bGQgSSBzcXVhc2ggdGhlIGNvbW1pdHMgdG9nZXRoZXIgaW4gdGhlIG5ldyBy
ZXZpc2lvbj8gSQp3YXMgYWJsZSB0byB0ZXN0IHRoZSBtYWpvcml0eSBvZiB0aGUgZnVuY3Rpb25h
bGl0eSwgSSBkb24ndCBoYXZlIHRoZQphZGRpdGlvbmFsIGhhcmR3YXJlIHRvIHRlc3QgZmFuLCBy
dGMsIGFuZCBlTU1DLgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9vcmFuZ2VwaS14dW5sb25nL2xp
bnV4LW9yYW5nZXBpL2Jsb2Ivb3JhbmdlLXBpLTYuMS1yazM1eHgvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyNMMTgtTDM3ClsyXSBodHRwczov
L2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9saW51eC1vcmFuZ2VwaS9ibG9iL29yYW5nZS1w
aS02LjEtcmszNXh4L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBp
LTUtbWF4LmR0cyNMMzk0LUw0MTMKWzNdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMjbjk2Cls0XSBodHRwOi8vd3d3
Lm9yYW5nZXBpLm9yZy9odG1sL2hhcmRXYXJlL2NvbXB1dGVyQW5kTWljcm9jb250cm9sbGVycy9z
ZXJ2aWNlLWFuZC1zdXBwb3J0L09yYW5nZS1QaS01LU1heC5odG1sCls1XSBodHRwOi8vd3d3Lm9y
YW5nZXBpLm9yZy9pbWcvcGk1LW1heC9tYXgtMTUucG5nCgo+Cj4gQmVzdCByZWdhcmRzLAo+IEty
enlzenRvZgo+CgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
