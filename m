Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37771C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 20:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqLQKPMpeE3wDo8od30lTfr+LcDDrTBwb2bDBhKFheM=; b=nB/BNitjLWlhmr
	SqD/1PfoSv1mlwDNlLiSQXDYNCYLoa8i5YMQuiA0BB+c4slMjkAoFJ/iT+DzTfCA0+L5x0+BijLjp
	REGUpAZfoaKEOspe8pUb5rUoCMmTz/OH6W3OBrnYoe1l36KHQA9+IlZlos6Q/58Mu+FV1E1+q0tVb
	l2TxdLQOp2H+4pwMeyLaZJHMnI1c/+ilvJ3/cpjKQUG43tiBicedkpEYaF+3gemdTAef/cZVe3x37
	gmx+jFpwPJaBuKgTKhz+MzLvpnuu9CaI5dzPjApjm9MTuIlfZe7AMyJmXDYqKnCTybR6yeXk1NRnW
	Wx54B89k/ZpZ+TWp+ysQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRcpn-00000008LMU-0XML;
	Tue, 17 Jun 2025 20:23:07 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRcna-00000008L8M-1Ot9;
	Tue, 17 Jun 2025 20:20:52 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-607ea238c37so12977612a12.2;
        Tue, 17 Jun 2025 13:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750191648; x=1750796448; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PoWkML0br1CB5IKrik82J2Iqxt05XtbYr/y6VLetGDo=;
        b=hHvhoB1V+FRVHwwRzYZQbciHPbvn7FxP+JsEMu/7YShLr0AoVriSTvD1UX/GCIotqU
         SfzdJIKm+5Eqm428ZIasUL3fnu3CZgBbDRbmTMYepRLsojBTVr02bvvXhHyui8fltW0C
         OwydtExJ7aM4X1O+wsgV+W0gDZ8poQsDABAdGdLS/sFaivsdRxkVFEykPlGVu3pFSuP0
         jcUsK4lvYO7o4Rjhqhu2YV06LsbpjQwTctfzm2Pjl1tSnrGuZwN7lVP3132W3L5Y7Qe0
         w06h6w0x3HpLUh+cj9468n9mbycXCZq0wj+1sJcFB2PXOMeh2LD/bwvadCxnUY+FLy6I
         pYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750191648; x=1750796448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PoWkML0br1CB5IKrik82J2Iqxt05XtbYr/y6VLetGDo=;
        b=WaZZPeLIAkfvOtlV/Rw+bFklEK0CAboWa273As67aijE/fGSSstm+MSRnwF3/3rlBk
         Xm0gz8GX8rib0wggYWAgOl7zxOwzx2ba4tG2bnxIHVr+PUOwh76XpmbrTe8hfBSQ6jE3
         DZOrbPChc/v/VwegxRlEL8IBnS0oEG36TdWh+xwA3aPbn40e7ZPeLBGcqoTnjSOKDnlK
         hbUXwlMQxQYJ88cTeVms53qjKLkXorPINDn6FGoLwnJfoT/eIdZ6YED0uEX+Q68nayRp
         r06yIM9NJ2YEUT4zIW0JN7+tqxJnGybpBEDK50pkEehEK5YcsSR5r9Dd4cEG28mGh7vY
         zjpA==
X-Forwarded-Encrypted: i=1; AJvYcCU1dZh9375XZN+4rw3UHZnsQ1HD2cqXaXytnxeIdjTLalIew7qcXcddPglSP/xR8LNpzHOW/OOCbueH/rOCS7uV@lists.infradead.org, AJvYcCVtb0to/BG/SXHTHlutVfr78M7XNW5zdsdGdsovbgOjQl1bNer4RR+qNyesom0XE5IBG5Ebtwwp+C+OALo4qto=@lists.infradead.org
X-Gm-Message-State: AOJu0YxjF4zAh2kYVvlKfOVLa2ax9pBIIBfUWgnNo1UyFT+Wn/X1dBp1
	kVSidfqM1HyYDc9Z8yx4DFM4vv06PNj3PD7l+xkxnqmqd7w4gU9Puvu2P1ZIE9I+rMBKU/u0bau
	KIJuDr5fXw2uzD2vV6sFo2Jgyi6U0/3M=
X-Gm-Gg: ASbGncuGdQYRi6pAh3v/Yf3cl4gD0jDMb3MvsN5lVYU+kIY9MywGL0u3Xag4axSzJg6
	tRjbuRe5R5NTLsVBp1JK+FkMI0dJ2B8mAS25YRguPT9q5xfRYhm9nQBfuF4/S9iIZ5E2TEO7rSG
	eaHRH7fE/KQQHSf2iOUUz/Lg3FywFQUnDCBJcFN+PybLo=
X-Google-Smtp-Source: AGHT+IH55q2E7WN90zlOR6v7MpoEZG1ZkgzQBcnVbtaOcZW1nXjzThJdLm8vxQ3uGqz1hgnih3z7TEc6CNrqy3XXCpk=
X-Received: by 2002:a17:907:6088:b0:ad5:5302:4023 with SMTP id
 a640c23a62f3a-adfad5a09f1mr1412781866b.44.1750191648049; Tue, 17 Jun 2025
 13:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org> <20250617-gpiochip-set-rv-gpio-v1-3-903703881fa2@linaro.org>
In-Reply-To: <20250617-gpiochip-set-rv-gpio-v1-3-903703881fa2@linaro.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 17 Jun 2025 23:20:11 +0300
X-Gm-Features: AX0GCFv4-ZOYtBYGK94NP7YGG7FmZo--RTOkdcfKWd4WwJAEnvHM4GXHaVOeSrs
Message-ID: <CAHp75Vf5DhkNL3pb=KW9CsKr=9Cxr6d3Kwi4R+raF0T0h20x4Q@mail.gmail.com>
Subject: Re: [PATCH 03/12] gpio: pch: use new GPIO line value setter callbacks
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>, Andy Shevchenko <andy@kernel.org>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_132050_375231_5E22CA00 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCBKdW4gMTcsIDIwMjUgYXQgMzoyNOKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9z
ei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+Cj4gc3RydWN0IGdwaW9fY2hpcCBub3cgaGFzIGNh
bGxiYWNrcyBmb3Igc2V0dGluZyBsaW5lIHZhbHVlcyB0aGF0IHJldHVybgo+IGFuIGludGVnZXIs
IGFsbG93aW5nIHRvIGluZGljYXRlIGZhaWx1cmVzLiBDb252ZXJ0IHRoZSBkcml2ZXIgdG8gdXNp
bmcKPiB0aGVtLgoKUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5keUBrZXJuZWwub3Jn
PgpJIGRvbid0IGV4cGVjdCBhbnkgY29uZmxpY3RzIGluIHRoaXMgZHJpdmVyIGluIHRoaXMgY3lj
bGUsIGZlZWwgZnJlZQp0byB0YWtlIHZpYSB5b3VyIHRyZWUgZGlyZWN0bHkuCgotLSAKV2l0aCBC
ZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
