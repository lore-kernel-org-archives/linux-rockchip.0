Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 808AAD3517D
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 13:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDKzHuMaqT0HykAgH5hFzdrCHEiZu42u5gS1CgPb6gU=; b=YE11q9uaXh6SsL
	3D02IA6TldHh2nNQBk13eDLjXMtdbyre5T6pHbxTT6JFs5z58oNjrPMPbAWQ8InoaSF7Og1TPkfIy
	RkAnjs1Kj1txzbkuzqvNekCyoWI8Ud2cchSylYYHRRIVn/77l6xXeudPE1lyqSIguhUXAEiBCWD4W
	DugqDhJ6LNKaK8MUcPEUxJ0kULlbvg14Ig12ItNT0xLUzi1J9fU3qLyimbHh8lZNCJtn/FWhFb6RG
	Xec8NDuB0JOloxMZIBdZ3lJDaKYA1V7OKXQOmIa2pTe6wfPcg7rfCDBxTssXPcj0yXeg3hK33wxcK
	N1WqZw2NyfVC9UtuipDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vbp-0000000FJ6U-0xuB;
	Wed, 01 Apr 2026 13:27:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vbo-0000000FJ68-03cN
	for linux-rockchip@bombadil.infradead.org;
	Wed, 01 Apr 2026 13:27:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=WcIm7yXA7KDT7CpVTwgIEnk1FCyvBlEw6vFDxeCbDSc=; b=mySZug0+hy0Y+ZAl2astfuZ0W7
	XjcSXUhNqoK++aK/Psq01Lidtm45/YbzLZVSKK1ucrNP/ixQWktm7zVng4WAM7yrG20X9ekTp1X/p
	GV5BgMRxCbZNNucl4GbhQ6NYOnAm86vtdO/1Wkz8qc6Adf8b9YNG5LgmDSuU26pYs8tUko03IxOxs
	NRh+zcQ3vn2hoai6w0PA9mP1INoJOwhdXfz2rE44SzKeNYgFL8pB8LNQXiWeRwJtHSX8qZv/rPkCX
	hrYLAVENX+NaWhs22j9tJ5aBhJCO4Lsxg8++I0pucrjOH4sspMb3CyWIWgeC+u5ATg3+toMS9nAse
	y23Hqe+A==;
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7vbk-00000000SaE-3fLt
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Apr 2026 13:27:46 +0000
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-8cb3bae8d3eso703064785a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Apr 2026 06:27:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775050062; cv=none;
        d=google.com; s=arc-20240605;
        b=WTH7GXs2OV+D+hnke6htxirpOdOPsDzNCmkO7QjBnLzLgDvtJ63r+eL49Rr+Ck1u9/
         s8M8ClSngPhqIyYmhOVdTBynJdUPfVD2C6d3Ch7fGUJd2GxM9oVukUuHIuv0LCBLM97z
         CiqhwmK7un8whTvj0G5M8Vh3D0gfBZD3oKMWmdCyY2N6fggVESdky1llpGe/E/yWi2FR
         Q0Jz3yejhTJ5V5XKaX1b/gBzmImmSILyY3+aps6tpXJB+7lEvtpwYUcPyxiddj5giy9m
         Kwde04rNuoMg6c5g5p4G5/oobC9NyppM7QbZA9rjBDKQh/0qIaF14kH1H4anWLYqTZXM
         CKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WcIm7yXA7KDT7CpVTwgIEnk1FCyvBlEw6vFDxeCbDSc=;
        fh=UChW/uFNHU/dW9PkoBJ9GxwbaTN1W6saidk2RRxw0HM=;
        b=DMV3gZVYAjGVWu+zErrVVw6xG8HjrQPRSKS8XXmfONJ8SMvbd9W8ZTjSHbBG1DFiAz
         QbTCDOfSZbK9mayGrzeclxI758F3NsQ86wOseJx7mhC9ZndWCFfKakuFO8KycvQ9UsUj
         gyp/oujCEhuL47G6lgYSS202ef1zuViDCz8Bv92U8sIzreSxtYFBcmt8E+ptD/BcZaXX
         KO1BKFdzQB0cBnjVA787m8skXQpvtg3elXCEullGYqHPyjvcEzaTlM4TGMBebaTjpuNR
         qX8uV/BBRm4kIuU1zlzTK3UuJNz5FN+hYYz3L+WE/auIFvm52mIKyoaHfdR0ah7di9+y
         xtlg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1775050062; x=1775654862; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WcIm7yXA7KDT7CpVTwgIEnk1FCyvBlEw6vFDxeCbDSc=;
        b=Pge71w4FOiiX4ohyrDuf+R2TFVf/Vuu9oWuO68xK4ezHVilbLOTN5MroP+ZFBG6Z9k
         /Ui4HHkDc4uehBr8c26X/LaUfVG2WL8UMD1jdcwN0odjPd13P4cJFF1HjruZuE0wdFSt
         C+MXwJGz9t8lWAlVF0PIRGg7O7+As+yaybrzuI+tfuwwMmKVeXeYxHPSEE72jQG+rvYC
         mQCL3r3BIehDd5+D4Gigw3JRZ5oWxL8iOTghZhl4MSrIjBwnJit/b9qSgS5hFg74VSqd
         sEZBPpFVM+y2KILrpw8SfN8gu35VDsdJcgO2+8R2EPPPOjxP/ESJdnR+ijAEpM1Xc/hb
         Dhog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775050062; x=1775654862;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WcIm7yXA7KDT7CpVTwgIEnk1FCyvBlEw6vFDxeCbDSc=;
        b=izZ5hu5Ns92/moPkPoSt4D3Cq32n24Va7rxdssZrnwDvwEYjxNndCpQTTaw+sby02N
         GJMkGPprfNInk5HoXGCcViuMtAEM96sU10gZ1TMl5lGUqGMev2oB8n5pmzgdXzljDfm5
         kIO+fEXSW955sBNDwXMZL+80bkmI07As2zh5fGF5TN/bVL6foh09Yh3oj/CjyMic3zDP
         5OmiGyLi86He037oy/RCWyPZhm+EjG5VjDztmMpcHhqpue5KF7B9x7jQ490dC0Zt8dlW
         xkpaa8kGwNKshVHtgfTjgRGUyK+851t7jjJckMuJHKo2DoMHBLPft8iz6+SSrvksbCky
         GMCA==
X-Forwarded-Encrypted: i=1; AJvYcCWLlgxaW3Qy/6IPclo7ZV13FZmv0q/pRWQdc+XIkrltcRVYNz5KLvuXpF64a69i1lHtljltgzLOx/GjfYq6eQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVOqtDKGC+jSsDXDFewfGe4gmJxQvcy1ip2lrUhFxN1ItmZ4w6
	7XdvC9OgVAMEx2PwSRTah9ip7+VRYQuMpd/MAtIASuyvbJE4wY8c4MZKiZ2asRaORJNKLJoJOBT
	yXxAmWmCFQbFGoqaVU+H3NnSpBDARrKHyMxNJJ0Ct2w==
X-Gm-Gg: ATEYQzx3Y6TgF2mHasohMnklS15ROUqZM8VB8bD+hdt+R3xpa48ZBHAF2ssZ3rqv9VB
	ZawupXKk+oulvdmvUXFFshANSMURFuHV51yElHOcJr1zXZX9N4y4BfXWTeIq7Hpv6CbBqChAIoj
	dWzoFMFe6hmApBBJ28ZZ6Cx1MBbxwah7iAwPyphwtEpjzowB45O2Nau5DByYyxdn7EJJNcAFQJQ
	gNv09A6YeuJYtUajA1DOz0EIgnT5S21Un/VtfWLu3XTdCDvK/h2wSP045kkNqFO44FtVuhgpGtL
	MJNCWarFqOup6Qwb7xISZM/FD/M3+GtAhS2qVLmZbImoqwWs11IdOn1seOX27kgfOK+AqUU=
X-Received: by 2002:a05:6214:2dc7:b0:89c:505e:a96d with SMTP id
 6a1803df08f44-8a436c12006mr53463596d6.3.1775050061865; Wed, 01 Apr 2026
 06:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260401010707.2584962-1-dennis@ausil.us> <20260401010707.2584962-3-dennis@ausil.us>
 <b733883d-e515-4946-a81f-d1a595985e01@lunn.ch>
In-Reply-To: <b733883d-e515-4946-a81f-d1a595985e01@lunn.ch>
From: Dennis Gilmore <dennis@ausil.us>
Date: Wed, 1 Apr 2026 08:27:30 -0500
X-Gm-Features: AQROBzCAzbfR_j_LOy-RUvYwgZyU2IUXkEObV_iLNc2MeYTFQXYM4pLFScKB5fA
Message-ID: <CAABkxwvnv7i=xg53qu4JDapBs6ATaMGh9iXZfi+od=CCxRxQUA@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] arm64: dts: rockchip: refactor items from Orange
 Pi 5/b to prep for Pro
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Chukun Pan <amadeus@jmu.edu.cn>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Mykola Kvach <xakep.amatop@gmail.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_142745_034088_1EFFF8FD 
X-CRM114-Status: GOOD (  11.79  )
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

SGkgQW5kcmV3LAoKT24gV2VkLCBBcHIgMSwgMjAyNiBhdCA2OjUy4oCvQU0gQW5kcmV3IEx1bm4g
PGFuZHJld0BsdW5uLmNoPiB3cm90ZToKPgo+ID4gKyZnbWFjMSB7Cj4gPiArICAgICBjbG9ja19p
bl9vdXQgPSAib3V0cHV0IjsKPiA+ICsgICAgIHBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeTE+Owo+
ID4gKyAgICAgcGh5LW1vZGUgPSAicmdtaWktcnhpZCI7Cj4gPiArICAgICBwaW5jdHJsLTAgPSA8
JmdtYWMxX21paW0KPiA+ICsgICAgICAgICAgICAgICAgICAmZ21hYzFfdHhfYnVzMgo+ID4gKyAg
ICAgICAgICAgICAgICAgICZnbWFjMV9yeF9idXMyCj4gPiArICAgICAgICAgICAgICAgICAgJmdt
YWMxX3JnbWlpX2Nsawo+ID4gKyAgICAgICAgICAgICAgICAgICZnbWFjMV9yZ21paV9idXM+Owo+
ID4gKyAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsgICAgIHR4X2RlbGF5ID0g
PDB4NDI+Owo+Cj4gcGh5LW1vZGUgPSAicmdtaWktcnhpZCIgbWVhbnMgdGhlIFBDQiBwcm92aWRl
cyB0aGUgMm5zIGRlbGF5IGZvcgo+IFRYLiBUaGlzIGlzIHVubGlrZWx5IHRvIGJlIGNvcnJlY3Qu
IFBsZWFzZSB0cnkgInJnbWlpLWlkIiBhbmQgZGVsZXRlCj4gdGhlIHR4X2RlbGF5LgoKQXMgSSBt
ZW50aW9uZWQgdG8geW91IGluIHYyIEkgZG8gbm90IGhhdmUgdGhlIGFmZmVjdGVkIGhhcmR3YXJl
IHRvCnRlc3QgYW55IGNoYW5nZXMuIFRoaXMgcGF0Y2ggaXMganVzdCBtb3ZpbmcgdGhlIGV4aXN0
aW5nIGRlZmluaXRpb24KZnJvbSB0aGUgY29tbW9uIGR0c2kgdG8gdGhlIHR3byBkZXZpY2VzIHRo
YXQgIGhhdmUgZ21hYzEgd2lyZWQgdXAuIEkKYW0gbm90IGNvbWZvcnRhYmxlIG1ha2luZyBjaGFu
Z2VzIGhlcmUgdGhhdCBJIGNhbiBub3QgdmVyaWZ5IGlmIHRoZXkKd29yayBvciBub3QuCgpEZW5u
aXMKCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTUvc291cmNlL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQtY29udHJvbGxlci55YW1s
I0wyODcKPgo+ICAgICBBbmRyZXcKPgo+IC0tLQo+IHB3LWJvdDogY3IKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
