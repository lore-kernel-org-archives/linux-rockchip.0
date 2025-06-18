Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB5FAC7115E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 17:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+2fD6+c9rPEhiUHvT8AU8Ww1Ta/lKvuvCYNrekJbT0=; b=EK21nwhl0h3Vwx
	oQxu4QG9WBCUitrBkIC9KbBXhicx4K3W8XaROnY1sGRPOhN+GHA/0msjL/IfaqR7E82V0JBRx1kzk
	MCd56l+7LYCKplQKA8Ue+0fjxSMKvPtVpIoFgZKMiHQ+NOEaZlURtonAxsnntFPk/N7dIvfcmaRo2
	6N5FavmNXJNGtkRlWQnTQIvXIYPA0I+QR7dagxkuv+k7/loqA0HubMm8AxtUTFPVNnGG7BueOtHSt
	PGaoBqnVOTC4Doh+9nWfAw+H91elZD8MOYU/Xp/TQkiogV92KPMFYQ1mRjH4C3MY44Lt/yQbAYiqY
	vmmczM/2ub9sEdMw+8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRwP7-0000000ApBY-2sr9;
	Wed, 18 Jun 2025 17:16:53 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRsRw-0000000ADmQ-340g
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 13:03:33 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-551efd86048so6883434e87.3
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jun 2025 06:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750251811; x=1750856611; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tFx+nAgZ8AJsRRvfdecebhXbuJcNn8oWUIIvk2cM8dg=;
        b=RKc2rjoHyw7c6+WA0wyzboij8CzyTnuAx2S2wdxxSkzkBdv2op7N+KOSb2m1E+0c8X
         Ncl62V/trcoUgVuQXdFWropQKQU8LaiiQRzuDgddRSFtnbF7Jx9bsOmNlfziuQbnKX0v
         XKid14aroGL+V7J5R0TDMRKnaAHF1y6bvMQgUvrSOijU5gnNgc9x5WKeHGbOxRw+NjBq
         g7i7evgnyxyA5w0qXCenK3nTE0M7BxDJbNmGImdNxH6/dz3t2Gyx4suyG2/4J6tudoaD
         /cYVt32HtqcKncofJlhGQrd+bL7a0ub7vVyRL+1D3gVgazzpopQR6AkJmbkQr8gBGbZd
         F58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750251811; x=1750856611;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tFx+nAgZ8AJsRRvfdecebhXbuJcNn8oWUIIvk2cM8dg=;
        b=NMANfq2oQ/qdWjTmNYBzhI4mMEyGf26NatZP4cUpI6QMD0hudFdzyl0zpd22h984FB
         Fi/zzeK9w8ioiZbyGC+lrPkH99gFjVZR2Pyp4/VjujNXXwojn/QSMQQKxBLgIukWlUSY
         birMI/IPOn1S/VoPJqkSksWeatpjYBiOXVeasLPlmoTETCsTJM40MJDt5t0Mo3lpjyx6
         CCZZv9fj/1lAA1WJVNDTN7gWsQJml9CwWLj5jyyTdMLpvpkD6TB6rrQEG9W/hngn3fz7
         Cy84Oy1wO7aSfINDYBQG058I3LD0fJrPoTbzgNLGBVLxeqFm3GO0Cc5SLqEg7Eo5ftd1
         4XJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVTj+Nr74htTgK0K2WoOjq/87KRiD8v4gH3U9tcVrkFeloAgnYrNL32NCbLWy6lh/quDBwmufpmZn2Abavgrg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLRQyFMG5Q8Pmxhfm7gt1PR4RXJ9m4rcDJqKst5iCt2oWa3Vtt
	ccDKxX7H7a7qi20NexWPap5IkqTUvWMKvvQH+5fbAYLjIx8ixt01TpZC8Rfn6JTxooVi+FXFvTk
	LS8OhgAp6PSa/mf+FJg1/K0UB5V+GRlVI43lIbtN+uQ==
X-Gm-Gg: ASbGncsIs7DkO1w5ISZGotck8F5ydOLf+fI0F7iDhd9Zb7XuBwuWq4UXdDmRSrmeZOi
	5K3oOr3c5jXYLkZvMsh3/2RwxpzMK50LmDCY6Gp12x3pTwE5XMI7Rgn1bxe6WzwGqOm/Mftwa7A
	8M9andpJMT/wThs0eUSrdp5f/ghEWiltwG2CFc8yoNb9tk39ovo6gP4eHlSYHqjeC00GWfGV0BS
	LzWCEkvSfsv
X-Google-Smtp-Source: AGHT+IEq73Sz7VEMckQ6LcsKf9Ah9LwsuMzT2V+DGZ7xnubvjoAkc8Z7a8qWgDSaz5X2ovUTBOfo+akf/lut/OxE/YQ=
X-Received: by 2002:a05:6512:3e14:b0:553:d444:d4c4 with SMTP id
 2adb3069b0e04-553d444d84cmr738304e87.50.1750251808808; Wed, 18 Jun 2025
 06:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250617-gpiochip-set-rv-gpio-v1-0-903703881fa2@linaro.org> <20250617-gpiochip-set-rv-gpio-v1-9-903703881fa2@linaro.org>
In-Reply-To: <20250617-gpiochip-set-rv-gpio-v1-9-903703881fa2@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 18 Jun 2025 15:03:17 +0200
X-Gm-Features: AX0GCFt5YjdlIT0r2MYTgVPiMMrWQk90C3yKPcU3IZdAiNWl5mP9-Yr7Xyq2AcM
Message-ID: <CAMRc=Mf-SnaY8-Azv5p3nT9z5YK0-Rtr4Gs90c6B+3+eoJnTJA@mail.gmail.com>
Subject: Re: [PATCH 09/12] gpio: reg: use new GPIO line value setter callbacks
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_060332_760540_0D91CC9F 
X-CRM114-Status: UNSURE (   8.98  )
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

T24gVHVlLCBKdW4gMTcsIDIwMjUgYXQgMjoyNOKAr1BNIEJhcnRvc3ogR29sYXN6ZXdza2kgPGJy
Z2xAYmdkZXYucGw+IHdyb3RlOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9z
ei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+Cj4gc3RydWN0IGdwaW9fY2hpcCBub3cgaGFzIGNh
bGxiYWNrcyBmb3Igc2V0dGluZyBsaW5lIHZhbHVlcyB0aGF0IHJldHVybgo+IGFuIGludGVnZXIs
IGFsbG93aW5nIHRvIGluZGljYXRlIGZhaWx1cmVzLiBDb252ZXJ0IHRoZSBkcml2ZXIgdG8gdXNp
bmcKPiB0aGVtLgo+Cj4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9z
ei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgo+IC0tLQoKSSBtaXNzZWQgb25lIGluc3RhbmNlIHdo
ZXJlIHRoZSBzZXQoKSBjYWxsYmFjayBpcyBjYWxsZWQgZGlyZWN0bHkgdmlhCnRoZSBmdW5jdGlv
biBwb2ludGVyLiBXaWxsIGZpeCBpbiB2Mi4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
