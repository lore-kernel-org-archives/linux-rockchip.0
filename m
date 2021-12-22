Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F11AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jCK6CSsguJaITPH1EQdNHvLfNO8uzAllZZM0eVhjU0=; b=mp/CD8p8aJDvkC
	Fsh6F1tZZSn9nvDRYp+/SCCL28v9pC+qXOSDv2WBKpV0/zMNl2XAZPKdJdVeJ4RzF8rtSs39flm/2
	A3YhH1CB1/JCUbOlooP5qaxE01b3gy/HCxyN+I+TvAg6ZEbrVGr+6o4w5+2mQILYD98lh4CadYH+C
	MjttTg8Cp7gptWOq8oY7tXNhTZ5LDvzPxRqSjNCpuGXPMEbucPGF6TklUdEV+KddN47DHijd9PY+r
	H0V3tqTsJrZ+rPhzVc5JWECXF0nkZcQpHypu3dD3YNi64crd4BKCC83Mg1f1xhOLzzZPY9i++sHbX
	9luC0u/sMzs+W1GBJDPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n01es-00AWUS-Id; Wed, 22 Dec 2021 13:27:54 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n01XO-00ATJp-Rn
 for linux-rockchip@lists.infradead.org; Wed, 22 Dec 2021 13:20:12 +0000
Received: by mail-yb1-xb32.google.com with SMTP id q74so6503083ybq.11
 for <linux-rockchip@lists.infradead.org>; Wed, 22 Dec 2021 05:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j1goV5aAlMyw5R8emZiAZx447+jdj41qItWe+35D124=;
 b=jrchVVYCdWsktlqGCWjwZ1v1nkvcmwuQpyp6dw1rbAOesVS48vJ/3AMJLHLTPt8+H3
 55oFx4O2+e1JzsWICdze5pWlgOPiPVuL4aB4vDNxhLU5kx1frOqUwmwg3lMJThOl7SZN
 sRjFXF4dVzb5qE2Ae4w3uykCcKE/AwLTGdDLbMF+X52pcWRFLFSATkJockrIXweHCThX
 BMm2bAbLSeHDuLwUBRO/I9JrnGQuyqAXA1nMdzVj4aYK9X3maVeziqeVAUGIG+D/cEDz
 SzLYPjtfM0EZhf0pfdIZQJTYzg2bN7RGS9dlkFPgDtovuWc2KLYklFnHa5+jK+jMHuK+
 50oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j1goV5aAlMyw5R8emZiAZx447+jdj41qItWe+35D124=;
 b=unXulKLatJAYe5+Z8qACBtEwbRm13ticdFeuuhcrA0OXqeCnILw5e0ujbzh7oLl0gk
 VLlfyzIZI07vqsZH/JjZ8Ts7kJHUpTCXVm6HVJDFzffOeuN1AFYrNqI9pV4OWWOZ3+In
 7aFCZjIxLfzW3J7c8Oy2K5t8jfXE/YaI1//+/aTRO3lak6N9o8ylT2hQW9t/mL7KHshU
 b6fb4bnR6S3tXoXzRpa0mchpHtjPUYnSrs93Yrs8b5K5R0SnTK9hT+zxoAIMBKAWS+0m
 XSRrXmf6mA4Ml4MBPh3EGKCaA7mfh2qeI8cUVvutCpkl9z7KlIpWaStKXn7Zr5NCzoh7
 JF9A==
X-Gm-Message-State: AOAM533AJOJGXiXiaEykE2+Il6eTjc84qTMFysxfpAlCuiwBe44ikcp/
 f+96oTBtbQB3ndYSDbWYiWcmQCImLdnhbtrS1po=
X-Google-Smtp-Source: ABdhPJzV7Q7oVy5TFBaPsvS9bSSY0IIXErDsF3neEXO3xKp5bdC9y9YZcL2gJ2ew0gMm7WD6kGv87ChvXAlwxxaOjr8=
X-Received: by 2002:a25:9a84:: with SMTP id s4mr4116211ybo.405.1640179209684; 
 Wed, 22 Dec 2021 05:20:09 -0800 (PST)
MIME-Version: 1.0
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
 <YcGU6pQqfEPBqjrO@google.com>
 <4963E4A2-63B4-48A1-BDDD-5F9D07D71598@public-files.de>
 <YcMHhJTsQMLDRRsN@google.com>
 <trinity-4d94e8dd-1499-4d5f-84c3-85075a4085dd-1640172673779@3c-app-gmx-bs44>
 <YcMf56MvFv0ym7E5@google.com>
In-Reply-To: <YcMf56MvFv0ym7E5@google.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 22 Dec 2021 08:19:57 -0500
Message-ID: <CAMdYzYpYumXLEZYNadfHHGZN16ismT2JOMO8bGEegXP69sT3sw@mail.gmail.com>
Subject: Re: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
To: Lee Jones <lee.jones@linaro.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_052010_948034_E26EE709 
X-CRM114-Status: GOOD (  16.01  )
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

T24gV2VkLCBEZWMgMjIsIDIwMjEgYXQgNzo1NCBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IE9uIFdlZCwgMjIgRGVjIDIwMjEsIEZyYW5rIFd1bmRlcmxpY2gg
d3JvdGU6Cj4KPiA+ID4gR2VzZW5kZXQ6IE1pdHR3b2NoLCAyMi4gRGV6ZW1iZXIgMjAyMSB1bSAx
MjowOSBVaHIKPiA+ID4gVm9uOiAiTGVlIEpvbmVzIiA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4g
PiA+IEFuOiAiRnJhbmsgV3VuZGVybGljaCIgPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+ID4g
PiA+IEhlcmUgaSBoYXZlIHNxdWFzaGVkIHRoZSBjaGFuZ2UgaW46Cj4gPiA+ID4KPiA+ID4gPiBo
dHRwczovL2dpdGh1Yi5jb20vZnJhbmstdy9CUEktUjItNC4xNC9jb21taXQvMDY0MzBmZmNiNmQ1
OGQzMzAxNGZiOTQwMjU2ZGU3NzgwN2VkNjIwZgo+ID4gPiA+Cj4gPiA+ID4gV2l0aCB0aGUgY2hh
bmdlIGkgY2FuIGNvbXBpbGUgaXQuLi4KPiA+ID4KPiA+ID4gTm90IHN1cmUgSSB1bmRlcnN0YW5k
Lgo+ID4gPgo+ID4gPiBQbGVhc2UgbWFrZSBzdXJlIGFsbCBwYXRjaGVzIHlvdSBzZW5kIGZvciBp
bmNsdXNpb24gaW50byB0aGUgTGludXgKPiA+ID4ga2VybmVsIGFyZSBmdWxseSB0ZXN0ZWQuICBU
aGV5IHNob3VsZCBhbHNvIGJlIGJpc2VjdGFibGUgaS5lLiBub3QKPiA+ID4gZGVwZW5kIG9uIHBh
dGNoZXMgYXBwbGllZCAqb24gdG9wKi4KPiA+ID4KPiA+ID4gPiBCdXQgaW4gdjQgKHBhdGNoIGlz
IHRhZ2dlZCBhcyB2MyB0b28pIHRoZSBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wgd2FzIGRyb3BwZWQg
Y29tcGxldGVseS4KPiA+ID4gPiByZWdhcmRzIEZyYW5rCj4gPgo+ID4gb25seSB2MSB3YXMgc2Vu
dCBieSBtZSA6KQo+ID4KPiA+IHY0IGlzIGNvbXBpbGFibGUgYW5kIHdvcmtzIG9uIHJrODA5IChC
YW5hbmFwaSByMiBwcm8pCj4KPiBNeSBjb21tZW50cyBhcmUgZGlyZWN0ZWQgYXQgd2hvZXZlciBz
ZW50IHBhdGNoZXMgd2l0aG91dCB0ZXN0aW5nLgoKQXBvbG9naWVzLCBkdWUgdG8gYW4gdW5mb3J0
dW5hdGUgc2V0IG9mIGNpcmN1bXN0YW5jZXMgSSBtaXNzZWQgdGhlCmJ1aWxkIGZhaWxlZCBhbmQg
SSB3YXMgdXNpbmcgYSBzdGFsZSBrZXJuZWwuCgo+Cj4gLS0KPiBMZWUgSm9uZXMgW+adjueQvOaW
r10KPiBTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKPiBMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKPiBGb2xsb3cgTGluYXJv
OiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
