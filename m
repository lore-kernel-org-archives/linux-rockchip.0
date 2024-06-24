Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1978C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 18:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEYW74Z8HdBkuPiQQnf9JmAU6Tfpm8yUvK9CPYWJNys=; b=30JlErKR8n5tKu
	icYyMG+MB10XveZJgBm+9h6p7GhOZHzAkAbeF5HwLz+3D6xpaZIp1wlgOGmua0bfB6u+v+2/RLZ3B
	XH3ymM1oPUrVLriZlmoJlW9zg4lZkqG6FGh/J/5uExK830bzGrmOaCYXLP1za8USnu+u5XC7bAoxU
	TqRiLyJbxFDMzBSlmw7tsj5lztYqidbRDYHOb+9k9mY0EAt1YxiCs3XVrogPvtj+JioNyajlmK1VJ
	NuNcvVPNZ61VA9qtumMUIyjP8INwNaphRvyl/Hs+xoGPjqdrhg6XwFOBNrv92w2xzs0HUQevlVqw6
	4mArdqNHVa8jKjvrr8Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLo2K-00000000DXC-1cul;
	Mon, 24 Jun 2024 18:03:28 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLo2H-00000000DWH-3kIN;
	Mon, 24 Jun 2024 18:03:27 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4421cbba106so32618221cf.2;
        Mon, 24 Jun 2024 11:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719252204; x=1719857004; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pUaocMSsxJ5LjjEsnYP7jxj3QfqcMM8ZONVfrm8rtQ=;
        b=UjFi3yTYUVpMts79gCPhT93MJIK+iEvcTsA6PS2DF0hMdDbh5nYzAF7b+2vvx2NuBp
         qZhJgso4OokVQG0RTG3vWmB4icQqn4O0oCziGdznHV98LD6uYQuf9rVbrDliLtwZn4zp
         S12PZv+yOcrc/MmZm6OmecqQflPKba+/i66fD/pFxOEUZ6q7RymTJ2mh2ZBniEhRUU0g
         LSV0Fqpeq+tYScZVytv3RD+ccRhzL+9LEwg/cLXimOI5iqXZk+GgFtndXaxyj34gN3d6
         lQxiG6IJNTBr16ixcsvmpPG63OAiwf6Uea1KeTwhb5S5tSZt6mMFp57dDbwEkruJnLv7
         qEYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719252204; x=1719857004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2pUaocMSsxJ5LjjEsnYP7jxj3QfqcMM8ZONVfrm8rtQ=;
        b=GMV7w3cdt/lE7Te5B6k6qi6hACVUHNr+lT1gkEsDRJHSKmuB+zV5LsY3FQpqbJ38Tm
         pIRbqVVFYJKcnzOa/7PLSo0clHgwUoyN9nZ4JDlS5oi0hUHwgHGMdyOnxy0Qi0Fcg8LE
         rJCcYsmsBGyCM8sPcht7I8zCVcUb06bih5rYzJ4NRlXqOnrH4G+w+ZC6INBOWVFIr/DG
         O5M+rezP8qoGDvmtHxcDf81so1uFypIbq3sYrdy//WPhTAnLRbTzPHmASyEvZc7+H+2q
         imFGNDNbeeA9fWD07/KTRHAL3INBgX3HchUvfBQNeJNiUM92PQPP/qNtJkXKc/qTVZh2
         QBEg==
X-Forwarded-Encrypted: i=1; AJvYcCWm/8Rc+A6J8SyqGqVQygicuMDPSexTGspfgknDaLFpzo59PM+ZQJXI9WEx/mHr+quCOHZUH1QHKVb+f7/Sas9nnLw7fIzlNWVK5dq1FvGn19u8Ii4=
X-Gm-Message-State: AOJu0YxVMzWgwlSMXrdkRkeo+F1vx0jMCQDA+9CinTD/8kVl36hxR1A3
	+scKCJRK7TjxG+5039PMF2ljzm/SNNGvqGS3SGl1TaLhrvinAzP0fJAmLHOvsUvxVNN1YBxbLYj
	naaCLqLgnvWZN3v+nI5AUQ7jIvxo=
X-Google-Smtp-Source: AGHT+IFO8I58PN4h1470uYhz00UihsCRoEeapPW6BWGVinHzOdAIibcD2ehHGZtef6GQQE0Ko3zTuBjLkhxyvplJDvE=
X-Received: by 2002:a05:622a:553:b0:441:57ec:61e4 with SMTP id
 d75a77b69052e-444d9388193mr65550061cf.47.1719252203930; Mon, 24 Jun 2024
 11:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
 <ba9d41461f5d56947d7851473637722b@manjaro.org> <CABjd4YziNk1NJb6p+AxAVK0CR7igE3-6h-sN4MEWwyoW2qaKfw@mail.gmail.com>
In-Reply-To: <CABjd4YziNk1NJb6p+AxAVK0CR7igE3-6h-sN4MEWwyoW2qaKfw@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 24 Jun 2024 22:03:12 +0400
Message-ID: <CABjd4YzWc6GPkDAbVGLaBCHBX26m97Mf1YVKriMVJYX8iy0LYQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_110325_952740_F4763E30 
X-CRM114-Status: GOOD (  14.01  )
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

T24gTW9uLCBKdW4gMjQsIDIwMjQgYXQgOTo1OeKAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEp1biAyNCwgMjAyNCBhdCA5OjU14oCvUE0g
RHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4KPiA+IEhlbGxvIGFs
bCwKPiA+Cj4gPiBKdXN0IGNoZWNraW5nLCBhcmUgdGhlcmUgYW55IGNvbW1lbnRzIG9uIHRoaXMg
cGF0Y2g/ICBJcyB0aGVyZSBzb21ldGhpbmcKPiA+IG1vcmUgSSBjYW4gZG8gdG8gaGF2ZSBpdCBh
Y2NlcHRlZD8KPgo+IEhpIERyYWdhbiwKPgo+IEhlaWtvIGhhcyBhbHJlYWR5IGFwcGxpZWQgaXQg
cXVpZXRseSBhIGNvdXBsZSBvZiBkYXlzIGFnbyBbMV0sIGFuZAo+IGFsc28gbWVyZ2VkIHRoZSB2
NSB0aGVybWFsIGFuZCBPUFAgY29kZSB0aGF0IEkgcmViYXNlZCBvbiB0b3Agb2YgdGhpcwo+IHBh
dGNoIG9mIHlvdXJzLgoKT29wcywgdGhhdCB3YXMgYWJvdXQgYSBkaWZmZXJlbnQgcGF0Y2gsIHNv
cnJ5LiBCdXQgc3RpbGwgdGhhbmtzIGEgbG90CnRvIEhlaWtvIGFuZCBEcmFnYW4gOikKCkJlc3Qg
cmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
