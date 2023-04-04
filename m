Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4E4C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEasz/pbBlJrWo4YugEJjlnrY0goUvuMMPkiBRvfJLk=; b=LOVCuQUo7ovs7l
	xhRPODnB7b1Zn8yGr3QrI1nbQxvCm84QDO0bzVezz2vuqcxYF2sjnlFe0qf4cCZ6xrYFeOwmeYqC5
	03r8yYtKCE4TZYytSIkcViag02p5/O8jpZZsohUtnRwjXotV3ezEMvzPL0T+vHRwLnU4dgtVcy/Sy
	DichuNgf64h+K29uOZYZWweyal52P3fVsfUn46OSZbooy+5/pvlLYaIDj5R8eHBCwYpPh5qy8P188
	LNdWkCrqjSVmBv8qA1+7NbjdtDXrayZA3xETkKjE14843TSuaP0CxyWiSmk9zLMvxfrSWZguPrttY
	63o0LSuNfyl43OuHpolw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbtX-000RNm-1M;
	Tue, 04 Apr 2023 08:19:59 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbsC-000R4u-30;
	Tue, 04 Apr 2023 08:18:56 +0000
Received: by mail-lf1-x131.google.com with SMTP id h11so34351985lfu.8;
        Tue, 04 Apr 2023 01:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/QeljmY9ct+nUTJxfQkxtnhru1EvuO2W6K2JXJBd5M=;
        b=begmmzpBpxM+H+/TfWsPuz1pxN6UU6cPTsULjtlIvyIcFJF6QmO3Bx3X6DLH8TIQic
         pPyJbKxrMkNJBovjO1tDri2hHyY6pXJOs/rZPCwgGZ+y6fSha/lGleBEVWMq6rIu5tnI
         zZz5j5ri4bJbHOtmkA+hoiBgOccf1kWK3Hv37eg3JbWg5ASbHZsS4i1CyfuaRiWHlyrI
         ddoxR1DWML4ZXQJ1lfiRpUkbvwiUrlGbu/y5N0NlkHJ3USrKDM3nX8uZw/ZBFKLsf7WX
         IbzzjCgLFlgBLqyhgMLFGgk4t0l1rjEetchT20nDlcSaxHgJgB4E55HDfk80tKl8MRP4
         ygIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p/QeljmY9ct+nUTJxfQkxtnhru1EvuO2W6K2JXJBd5M=;
        b=THwmL8K3GI2K1NswsLMLNSkfFkzYoBRVxDg4v3Uxzim03z+g3MPuQLIZ+cPzJUSj8u
         p5/iUd8mcDUAMrEmhkpH+xL5yLvzf9rBdwkhxcExL7NE8QArlQMWvOomCiuzWSy+FT6x
         3iLEUvhXZDcrRN6KGHlEspFE+zEiznjikHuUti4ywNHjdBpAn4ioIM+xU3ay9fmRNSqF
         tn1GG4HAj8Lqw+rGUp8Ls7PaByE8LfF0TSbNWiHikw1BB0lMNY86Pf8CBU6wYbVChY/j
         m0UkSAVQpr+d7Ko/5TMmLOL64ZF4cdeney3oEecxNMLEctQRn8GBqMef3P9Kuytrsy0K
         YV0Q==
X-Gm-Message-State: AAQBX9fHWb+98CwJU2hUrUsGqG1V/kxvkgN1h/Zk3LBRdizCMhbCzQfV
	eM/7nXxq42zclmH2W9Y8MZn2Uk8Zk1qnctAu/fg=
X-Google-Smtp-Source: AKy350bbM5GMuM9I8+CJRhYYmrG98DJyI9xbsiBVqND+hXASyGkI2G6jgOoZflvixZBnnQGtJDOvOCVhTjRlosv1MPQ=
X-Received: by 2002:ac2:4c85:0:b0:4d5:ca32:6fa1 with SMTP id
 d5-20020ac24c85000000b004d5ca326fa1mr478151lfl.0.1680596313053; Tue, 04 Apr
 2023 01:18:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230403175937.2842085-1-javierm@redhat.com> <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
In-Reply-To: <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Tue, 4 Apr 2023 09:18:21 +0100
Message-ID: <CALeDE9OVq8ys9Ymx6Na+a0oK6R8CpfD=fbM6FTtWGnJQn_SR5Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
To: Jarrah <kernel@undef.tools>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-kernel@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>, 
	Caleb Connolly <kc@postmarketos.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam <martijn@brixit.nl>, 
	Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, 
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_011854_555206_B4E349F2 
X-CRM114-Status: GOOD (  18.16  )
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

T24gVHVlLCBBcHIgNCwgMjAyMyBhdCA5OjEz4oCvQU0gSmFycmFoIDxrZXJuZWxAdW5kZWYudG9v
bHM+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiA0LzQvMjMgMTc6NTEsIEhlaWtvIFN0w7xibmVyIHdy
b3RlOgo+ID4gVGhlIGludGVyZXN0aW5nIHF1ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwg
YnJlYWsgc29tZW9uZSBlbHNlJ3Mgc2V0dXAuCj4gPiBJJ3ZlIG5ldmVyIHJlYWxseSB1bmRlcnN0
b29kIHRoZSBzdHJhbmdlIHNldHRpbmcgb2YgMS41TUJwcywgYnV0IG9uIHRoZQo+ID4gb3RoZXIg
aGFuZCBpdCBfaXNfIGEgcmVhbGl0eSBvbiBtb3N0IGJvYXJkcy4KPiA+Cj4gPiBQZXJzb25hbGx5
IEkgZG9uJ3QgY2FyZSB0aGF0IG11Y2ggZWl0aGVyIHdheSwgYnV0IHdvdWxkIGxpa2UgYSBjb21t
ZW50Cj4gPiBmcm9tIHRoZSBvdGhlciBwZW9wbGUgd29ya2luZyBvbiB0aGF0IGRldmljZSAtIGlm
IHBvc3NpYmxlLgo+Cj4KPiBJIGRvbid0IGhhdmUgYSBzdHJvbmcgb3BpbmlvbiBlaXRoZXIgd2F5
LCBidXQgSSB3b3VsZCBub3RlIHRoYXQKPiBUb3ctQm9vdFswXSB3aGljaCBsYXRlciBtb2RlbHMg
b2YgdGhpcyBkZXZpY2Ugc2hpcCB3aXRoIHVzZXMgMTE1MjAwLAo+IG1lYW5pbmcgdGhhdCB0aGlz
IHdvdWxkIHB1dCB0aGUgZGV2aWNlIG91dCBvZiBzeW5jIHdpdGggdGhlIGRlZmF1bHQKPiB1LWJv
b3QgaW1wbGVtZW50YXRpb24gZnJvbSB0aGUgZmFjdG9yeS4KClVwc3RyZWFtIFUtQm9vdCBzdXBw
b3J0IHVzZXMgdGhlIDEuNW0gdGhhdCBhbGwgdGhlIG90aGVyIHJvY2tjaGlwIGRldmljZXMgdXNl
LgoKPiBBdCBsZWFzdCBmb3IgbWUgaXQncyBiZWVuIGNvbnZlbmllbnQgdG8gaGF2ZSBib3RoIHRo
ZSBQUCBhbmQgUFBQIHVzZSB0aGUKPiBzYW1lIHNldHRpbmdzIHdoaWxlIGRlYnVnZ2luZy4KClBp
bmVib29rIFBybyBhbmQgbnVtZXJvdXMgb3RoZXIgZGV2aWNlcyB1c2UgMS41bSBzbyBJIGRvbid0
IHRoaW5rIHdoYXQKb3RoZXIgZGV2aWNlcyB1c2UgbWFrZSBhcmUgdWx0aW1hdGVseSBwYXJ0aWN1
bGFybHkgcmVsZXZhbnQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
