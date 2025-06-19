Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FB88C7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 10:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omcRYoLIn5nOogXbxKlTXsoamdSBQ16wx84OtbgDBHY=; b=D+iFAGKTwcQFlA
	cfE8yU80A2lcHgIVECpgZp/d2KBryI9Z7Cz+fJ5aPYzNyiiOL1tasYVJw/I5L6mwkaWL5lpWx7pRb
	yDZMGJa8oA068HOEMvuQlCtMLMf6vrqJMz/FxDMi3XA1tPVtfOEvAO2o8Gd849ruKfqLwSuPg0ip8
	lY1Qzqr8Saf44GFMCzz9/H5FsMFoezZxgK5tf9gxf633MDJJ9/yAe0VbCsEzKV/9zIW3T5o2g50OU
	qLH/V+VleWcqqPsx5xAQa82gMrjahs8ccH4AQfK4v78RuI3Q0MjF/mNVJW0CrOCqy8gxfvM83NHdQ
	6nW4ebS+9ilpxFZnfiYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSC5X-0000000ChC0-2MT2;
	Thu, 19 Jun 2025 10:01:43 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB6P-0000000CWCC-3Jd4
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:58:34 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-551fc6d4a76so498710e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750323512; x=1750928312; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQQ3Ad8xd/gXzhSgWbJo7HjFzyCo0MZmJJg+rjfMpiA=;
        b=RaOudLYHIkzXqGaBiCOsZ6781kchQIMAGYQXlu36fVycGVFR+hq9iYUgqM9C9+3JKL
         9RAPR1Yn2b2RBy0vgTCRNWyx9Uh9VOIZn+Ym9W87/MBtP1Y7E4bYv09OOAGTOSllWidF
         1Icw5i0ENhqw4hds+uQ0Gx7FlcGxD77pvTmW5IdU1MBBI4NJmGOus1hDIVSD5bHs/uSe
         gQig30HbGIXvMThlvIhDuco1ZkQtWWUCr97zsc31RY8KF1oRNAGjrP39myQDCGrVqGbi
         7JyYKwtD9tiPikCMi5Tpf6L8jd8qGHZ4o1Pd63SWGGPH+s9paNu6FQC82DFd7OvB2JFO
         iCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750323512; x=1750928312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YQQ3Ad8xd/gXzhSgWbJo7HjFzyCo0MZmJJg+rjfMpiA=;
        b=pC2dHRKDJ8bBbOScVDYL37fRpouvToIlmEc3fajd8nfFKC6TBHPBRpvbT0YDfVdOCf
         yv362AwXL8Hn5nPf7W9CuuPborFnrCjPimr397dPu7213ZzrrTngx9iZhkU3vvzVpWJg
         1yWE0X9O2kuOV1JSbl4Xc6bFIP7OKC3IlXj5fzY9y0L4lRm/O156Vegvzz1R2UXhT5Gd
         Tkz72E89gmPpwxs3AozWGrJLfopTCqerq2gedxBd9pBsllzdgWNQkbk9Xmueo0zoWx/0
         Rvo4oufAMMd8kL1zygVswglW+O9AH8CCsAs2zorMDi2TOHsQTlySZpqBomeK4wpoh+Od
         5sRg==
X-Forwarded-Encrypted: i=1; AJvYcCWnJxVjOZPJEdIEc/Nrg3/xXqB6e+DHEQiGTZi2+LhnBnODoFyGGZnrAYUpEtCg+wLCYp1HQmITD8pr65VbXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLSIO0iCLHIgo9BN+hk9woIhTk962py1mL7Ca6zYZQTNp1UTMw
	xBNxn8HzHoFXlbrPYCsLOgRBJ+gid41agBTOrB6MCxEFv2MIifeFeToIcI4j9a/5DmMjw+GrTYY
	AJjFVN5w8p2w4IH5bIGQTQ7U46gA6UExmkHY8xH6/Wg==
X-Gm-Gg: ASbGncvEd90QBRz+LbJSDX4wFr5E/OSDYz/54N/eMN0FdZV5tYRA97WRqDVy12AOyIG
	8pW3M6yL0P1afg6ExavCFndqdJbwyHuE3nIHxH7er1ObXSjR93F8tNzzSfGUiYA2pUCvAe4T2OT
	Geb1+wuPg+UNsdUz/75AI00dc3frqHT6yu2vG35IRnuo3TcNQmI29sWpeZijaZ+SCvHpCfBweZR
	j8=
X-Google-Smtp-Source: AGHT+IFdD/1jTvO6x1IgzidwZt2XK0VP7pgS282orlNSuUnNeGDtt9tznwgJaV6i/23DDXdw4QcbDmhWF5puBYWdpsw=
X-Received: by 2002:a05:6512:638b:10b0:553:cede:6a9 with SMTP id
 2adb3069b0e04-553cede087cmr2038325e87.55.1750323512059; Thu, 19 Jun 2025
 01:58:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org> <20250619-gpiochip-set-rv-gpio-v2-5-74abf689fbd8@linaro.org>
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-5-74abf689fbd8@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:58:19 +0200
X-Gm-Features: AX0GCFvFwqdMku6Ga1EUw2bxcWk7yA8B4y-QiGMepH4vtYQKsxYzuxQuOLrii5k
Message-ID: <CAMRc=Mdrg+0xUcWnvk6Z8bDP9JuU0ZoVfD3kfaMv+a+dO4AzQQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/12] gpio: pmic-eic-sprd: drop unneeded .set() callback
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_015833_835937_7FEE24AA 
X-CRM114-Status: UNSURE (   8.84  )
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
c3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPgo+IFRoZSBsaW5lcyBvbiB0aGlzIGNoaXAgYXJl
IGlucHV0LW9ubHkuIEdQSU8gY29yZSBjYW4gaGFuZGxlIHRoZSBtaXNzaW5nCj4gLnNldCgpIGNh
bGxiYWNrIHNvIHRoZXJlJ3Mgbm8gbmVlZCB0byBpbXBsZW1lbnQgYSBkdW1teSBoZXJlLiBEcm9w
IGl0Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xh
c3pld3NraUBsaW5hcm8ub3JnPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IEJhb2xpbiBXYW5nIDxiYW9s
aW4ud2FuZ0BsaW51eC5hbGliYWJhLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
