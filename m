Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F023CCA1012
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kH3O7BnKNVjbpgSlZJZ+JT8GK6c3Tt7Ql0jlC2ctIBA=; b=pul/jWZf6TXHR+
	mfALrUf52CNcbxZSnIo1GDt6WVaIjoQY5dh+9DIM/RP0/QbKu3iacjCnd07DIi3POZVg6KqPibeFd
	gi1J+LXEtiUIaQe1ps4CCOIQzpRJFpRta8t9nktpYx+/zSd6TezHm6GIllUeQOVSyF2X0nZoi85Fm
	Ebb3TwrWQDuh5HeZ+IFldpQGkQzFEJpVZvAu6MidCxXGVGZCda+2QlBBmfYDWC/3MRJi8DZqlZyH7
	8BzlrklkpalK8OUPXPJ0aPvt1WDjX/fk5/gOwKQSN+8HazWrR1YE553/qobVpVRG0bO7r9dcXttHc
	Qg19aeZE+jr8u6Zn5Ffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utr2b-000000079QI-1eqq;
	Wed, 03 Sep 2025 17:13:01 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utnS5-00000006Zu7-0Zwv;
	Wed, 03 Sep 2025 13:23:07 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-61e425434bbso5631250a12.2;
        Wed, 03 Sep 2025 06:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756905783; x=1757510583; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nHcgIku0KtaFMYNLh4blYq4QiR038mlXkofwptYR7Fs=;
        b=D/dfDVEUzZsLO+g0unMARmbUd0ab09R9s/3t83oHDKhlL0cgm/ZmRRDOUmFzwNzRWk
         2W633ul7Xyaafv8Eh2GEFeXL2Ya0/7Fhz+Z+AD9LXZeUalmkGUEJwCfFxWjqmhy4eY7C
         XfTL70vNidrI3LmsI6hzJhW3ypg+Yyg/8EZsGiN0zAOr+cpLfAX1BYaqzhKm/T2NBmd9
         cyueb6HSY8FQlSLtOPpT432dSdt1SNDRjzrhboPGFm2TM7SAZqhePE+w7jXNtDro1iI4
         apohD3KKneVqSF8WGZnQcdYIu4m6qJDX8PRhuB97iAgB3RTKKGKdJnrNe7zaKelg7ao0
         DzTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756905783; x=1757510583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nHcgIku0KtaFMYNLh4blYq4QiR038mlXkofwptYR7Fs=;
        b=MJlu6R0l0GW8iGyRZVKwsV+yljI/xLixQoawRmIygwVNsQcHkQCqghslfioHmwABuL
         1crMgSqX6nXlxi2DoLDfLKe5mWoHOcA5kjBZEMYEF+c+bQB2dUF6iijx6a9gr7zSGYlM
         jQ/NemZpEil5IBV7m2QsunPNkxTSghDyFomZllYtPy4fJD2Axqe7QbfGUNgjhUs1D9Pg
         rUvKcnqk64jjhGwT4RK2p/9HYzSSUjxGvq02aX5zLbRtvZxJ33pLeFAvwQNX9kE0Yj8f
         qqYy0XKQjluKlxNrOos6hzpcnfQMIjFV77FWVi+a6ReFIAOPYu9ocFusEQtMkhqUjz47
         c8Ug==
X-Forwarded-Encrypted: i=1; AJvYcCX/qleXZGdFj6h9fgL35a9870F1D/fe5C1VwYyVgSPmra90s4Xf8RbW4uWIt0U0CLMhPRljAg9imz8rS7VZgM3D@lists.infradead.org, AJvYcCXv/rQAjMI3FdpPodYQdXCkWpqbbtZuELuw18UgcAYekP70iCZbsukXNQuz8kvcTieDGxMTm3GQ0snydz9Mn3w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYPlrgKylX7AyyPISNUOxacwVuGK2GDBLPYsuCqbU7gabEAb4j
	/palT8VZpW14uK1XwbAYFlw7TAh50i7loGgXGiTDwZQ7V7Ck9Pt6FUNCWUNvh0v47QkCM0x2aZo
	U1yIm7ZDraDdAnEz9Dem6LwIqxqwRc4TIF/CxtN9xHlHD
X-Gm-Gg: ASbGncsbEyK/VAvLZVYeTaNTBxEOdIR4rI+pwl1ZK5hfoo6JBGpJoiqEpvLUpyUcK+a
	hzWTFqyUhXjfZI1ILlGxCuK/iahecLPYatTu9GK4njlU5Jaz/TH8nQbuQSKVz3Ru47JNGw5U3rS
	jwGGQJjBVip3GhQpDn61ZF4M9MCBtJ8DeTECm4Xb0SvtGis56+AtvUeUAmj3OIoR9T+WJQ4I6Q4
	h01VD7gXaxJ71yJdiI=
X-Google-Smtp-Source: AGHT+IFx4TgsjIdX7221cyH/VERuTiLtGl1nmyNXlK5sfPZGceWTVv6FHkr75y9dprEOFMQNGBF7y7RaQWiL9wKyXig=
X-Received: by 2002:a05:6402:4407:b0:61e:ae59:5f07 with SMTP id
 4fb4d7f45d1cf-61eae5973f6mr7216065a12.20.1756905782989; Wed, 03 Sep 2025
 06:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250831104855.45883-1-cn.liweihao@gmail.com> <2235041.irdbgypaU6@diego>
 <CAPEOAkQYA+XSx9QJSmNFLypH0ifE1jvui=MHiEHZ+5a3SR7=uA@mail.gmail.com> <5052759.PIDvDuAF1L@phil>
In-Reply-To: <5052759.PIDvDuAF1L@phil>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Wed, 3 Sep 2025 21:22:52 +0800
X-Gm-Features: Ac12FXxMbXuoikWFpJo4sV8u7OeNSlNP3JsxtdSLpPCiAhy0OcRlc2pHpLo5RYM
Message-ID: <CAPEOAkQ1haNBYsY_AG9onC7Mu3-52PvqtXD4fNvJErqNV7qn9w@mail.gmail.com>
Subject: Re: [PATCH v1 3/7] dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_062305_172894_AF3193B0 
X-CRM114-Status: GOOD (  10.37  )
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

SGksCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiDkuo4yMDI15bm0OeaciDLml6Xl
kajkuowgMTQ6NDnlhpnpgZPvvJoKPgo+IFdvcmtmbG93cyBkaWZmZXIsIHNvIHdoZW4gc3VibWl0
dGluZyBhIHBhdGNoIHlvdSBjYW4ndCBrbm93IGlmIG1haW50YWluZXJzCj4gd29yayBmcm9tIHBh
dGNod29yayBvciBkaXJlY3RseSBmcm9tIHRoZWlyIGluYm94Lgo+Cj4gU28gaXQncyBzYWZlciB0
byBpbmNsdWRlIG1vcmUgcGVvcGxlIHRoYW4gbm90IGVub3VnaCA6LSkKPgo+IFNvbWUgdHJpbW1p
bmcgb2YgdGhlIGxpc3QgY2FuIGJlIGRvbmUgdGhvdWdoLCBmb3IgZXhhbXBsZSB5b3VyIGRybSBw
YXRjaGVzCj4gd291bGQgbGlzdCB0aGUgY29yZSBkcm0gbWFpbnRhaW5lcnMgd2hvIG1vc3QgbGlr
ZWx5IGRvIG5vdCByZWFsbHkgY2FyZQo+IGFib3V0IGluZGl2aWR1YWwgZHJpdmVyIHBhdGNoZXMg
Oy0pIC4KPgo+IGdldF9tYWludGFpbmVycy5wbCB0aGFua2Z1bGx5IGRvZXMgbGlzdCB0aGUgcm9s
ZSwgc28geW91IGNhbiBkZWNpZGUgYmFzZWQKPiBvbiB0aGF0Lgo+CgpUaGFuayB5b3UgZm9yIHlv
dXIgcGF0aWVudCByZXBseS4gSSB1bmRlcnN0YW5kIG5vdywgYW5kIEknbGwgdHJ5IHRvIGRvCmJl
dHRlciBuZXh0IHRpbWUuCgp5b3VycywKV2VpSGFvCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
