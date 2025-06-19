Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64663C77B7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 17:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCtsWyE6BtKHXmXZCMg+nB37KAklwxbtJBBzWeaTaaU=; b=gMNRgTz2xiCQ5P
	9BmSl3glitbqcvILK87pQSoleOzR+kf9myyo84Qxz7fkE1ERs519vXT/m6qxc/nJ4cBWSrpzoL6TN
	pHu/5hR0D/aPjus3zdGW69ShLehPNyq2a1O/OwCs8gDZa7zIkozwwu5iRVZHbnaGG71GSkGzrEY6f
	S4TmaGrLBRfqbI/sSLaZlVxFLCHQO0Mc6x6i2lTlAicqRz75ppVe4WaHeCrlGbcUBZpMOv2OeYSL5
	cVlVLDDbLbtQGfvclMg9ZHvvqVLejGjfOQv0iQiEY0gB0faMf6KnisgRCB9MwZmWzFEywsU2xjY9C
	huMXyygMpBefSXvtRE7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSIfK-0000000DfqA-2EBh;
	Thu, 19 Jun 2025 17:03:06 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSGLb-0000000DI6H-0W2H
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 14:34:37 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-553d52cb80dso942692e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 07:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750343671; x=1750948471; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=npDsCsbC8yB4lDdI+t7kw9s48Aia79Vp0ui0m6EisQ0=;
        b=vzWmuBhYKACmRuCRNM97Na0A9jWfGpATeSdWR9LH+haZNkUWK2cvQQ6A+u2fVqil1F
         ao5CG8dVltf1CGdEvPIaEsuPNpJD20LNslqfp8Lh9LMkzAHDTdPMTm9BDHDjWnlBEFEm
         Z5+xhqWbO72/1j6u7eBGBKKxN4HBj4c3zxaj/NwI6NuObs/K+aTa8gRWYG34sU85Kxw1
         lhGgkiZt1a4A5rYbuuwx3MmmNKwjOuYs4YHnkIX7sFSDpihX+WE4HJdf/RER/0NwLcR5
         NUStiBP6Wm2iTdewvitxQeB2QJ8zQER4zkrS6tC8CWdIxlwrITfBwA8xUuYCCcQPht1q
         Exsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750343671; x=1750948471;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=npDsCsbC8yB4lDdI+t7kw9s48Aia79Vp0ui0m6EisQ0=;
        b=fB7g5gBK153F8Ed66XyGrQxx9Gzi3K0wywfpW7JzV6v6tyLGU/WBYH9h7mS/rHSIp/
         Vylpvm/nZNBDJgYjfIcq4GaoYCg8pcjYDO0sOyfG5akS6kALCCqGOJYkTJGcMTJ7lPzx
         KmMB64lJ0INA0H5a/ecBfUucjjPLWio7LpCLMznBgqLkKaWC47aR59pSS/YIeE6EwtOX
         Ex9ovyqc+jXqtmqxK+s1C9Fai6Dj5HAEeqDlZp3mYfN39MnRz1Eec/L5ey+0ZGZ4D32f
         EolUkH7phqz781wJMXrMp3UeARkOeaUjFKBn0yjJXL1PX4nQD+OBrSZ7I+2ed09uPrBp
         FNlQ==
X-Forwarded-Encrypted: i=1; AJvYcCV06l3dNgeF6rANY139aTe14LMxE+hnxcSTLQqoMAM9yfuOIpM6gZs9CmYvnwDGi+OQxIybVAz04OgaUGxOVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxH7Zy2yFd5xzYn2kkBj1m4vN6NO04Vm/tWtNHRgwZWoaIT2IHK
	HLeSM7t328FRLdEa1F9vs8dJz2wHLiGpA2C/i19px8SJb5WkKl1U2nJxpj4yNzIC1o4QleyK8FL
	fN+9zV9Ougeqp652E9kY/YhHwLZqdi5R2454zC0gx6g==
X-Gm-Gg: ASbGncvxoJNeTNIOawCAHLSvPYFDj8AdiIbjoStO7csQMseO7+pqtdAjIgdqUrp09M+
	StKYN3iikiF0ozLttBT3izyG/WoHVN1WiqUfBzb7+K7r7Lcro7t6Yi8SIEaZ1B6o19KjY9+HBzB
	qHYdzX1OfNVjmUoI0SvDmZ6BcHaamVCWgqmKeD7FKYaJ1C2Dc06lKXvLshtL88WNxmSF8QOaPlI
	rI=
X-Google-Smtp-Source: AGHT+IGTg4fC3jUJFCbywRZz/VrLdnK1jrWH+Rcuacnc6SmvAw8kjD4XHlxnLFwvrsW49l4uIWj+tyHjhyD2bODyADw=
X-Received: by 2002:a05:6512:3090:b0:553:cc61:170d with SMTP id
 2adb3069b0e04-553d97f06f4mr1085732e87.21.1750343670809; Thu, 19 Jun 2025
 07:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org> <20250619-gpiochip-set-rv-gpio-v2-9-74abf689fbd8@linaro.org>
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-9-74abf689fbd8@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 16:34:19 +0200
X-Gm-Features: AX0GCFubK_DwyskV-8MDyKBHZbV9NQDViI1V1zsdGePHy5OXUt193JhwAEyCNeE
Message-ID: <CAMRc=MembHffEuLYhg6-GN9fRA2Sk5WUCsZdLOTKNtdJYqPkRw@mail.gmail.com>
Subject: Re: [PATCH v2 09/12] gpio: reg: use new GPIO line value setter callbacks
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_073435_261872_3F569026 
X-CRM114-Status: UNSURE (   9.69  )
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

T24gVGh1LCBKdW4gMTksIDIwMjUgYXQgMTA6MzPigK9BTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiB3cm90ZToKPgo+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRv
c3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPgo+IHN0cnVjdCBncGlvX2NoaXAgbm93IGhhcyBj
YWxsYmFja3MgZm9yIHNldHRpbmcgbGluZSB2YWx1ZXMgdGhhdCByZXR1cm4KPiBhbiBpbnRlZ2Vy
LCBhbGxvd2luZyB0byBpbmRpY2F0ZSBmYWlsdXJlcy4gQ29udmVydCB0aGUgZHJpdmVyIHRvIHVz
aW5nCj4gdGhlbS4KPgo+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRv
c3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiAtLS0KCkFoIGRhbmcgaXQsIHRoaXMgaXMgc3Rp
bGwgbm90IGVub3VnaCBhcyB0aGVyZSBhcmUgdXNlcnMgdW5kZXIKYXJjaC9hcm0vIHRoYXQgc2Nv
b3Agb3V0IHRoZSBncGlvX2NoaXAgYW5kIGNhbGwgaXRzIHNldF9tdWx0aXBsZSgpCmNhbGxiYWNr
IGRpcmVjdGx5LiBOZXh0IHdlZWssIEknbGwganVzdCBhcHBseSBvdGhlciBwYXRjaGVzIGZyb20g
dGhhdApzZXJpZXMgYW5kIHJlc2VuZCB0aGlzIG9uZSBjb3JyZWN0ZWQgc2VwYXJhdGVseS4KCkJh
cnRvc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
