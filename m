Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17774C7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiK7B5rA2cPqD8pt67JIjk5l3VR1bJJiuob8OlNmGao=; b=j6oOdIOc/k7BKq
	UuKgbBrXE6/QkIGcae+q3mZG7R2hu9fNzEAhhp2rKSKCDGtDH0nzfyNEP4ilich+iOTjXcFTqcP6C
	bE3w1FV8W+oLBrCirdqMUSmUvL+ra+4VGR0knrTyfRo1NOy4t3adZnyfgZoBttOR/KnViNfZU5RNk
	Iu9XzHpvrbRvgXaYRm2qGIHJzMiLVPtNnS/FJqWH4A4iyEH1hta3/wi+BDzUqIrRSK3wRTsQrLICL
	f1L3wOUITPcAya0qD6pSsUYtaDsopU4G5Yz8Dy3pCXAuUKpcQk2prxeDghOrQY1RvXZEb2lzzq3hX
	Mhshb8TQiioD0eGF0klA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBXx-0000000Cbyd-1cJm;
	Thu, 19 Jun 2025 09:27:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAkw-0000000CRwa-38i1
	for linux-rockchip@bombadil.infradead.org;
	Thu, 19 Jun 2025 08:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=yzf9de8tjudMgAFImVxK60pD4txhktnI7YYgbi2dkYs=; b=KNaxZRj59Lz1oSVB7xmV27qghV
	czfFbkUosKWc+ftQeoXMZ7LvFpn4kZtNhblkjwWUNam4MI9BQWy8bk3Gp2Qy4U0Yfrj0B52tb+OPy
	PIsq3ikkhJrz0MtyRduZNvrnqVW8TmfH4GGpbFLsAERRsJtoGy1LBmoBeL9gcyG156MTuFcfF1Wez
	m/+3H1KG7W4oQIcoSK8BzfESaVLyJXV4T6Ne3ILoTG11VO0X0NZjt2HQPUE7BucU6I/kCrFy02maA
	1c75CsyinOHEjbJUn7LVYeyasdvJaMW6vVvH8cNj7s6MA4dm/peZ4znUHDOqqFDiewTM394Nr/NNY
	eOHOxm+A==;
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAkt-00000004Ny1-3v6x
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:36:21 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-30f30200b51so6074251fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322177; x=1750926977; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yzf9de8tjudMgAFImVxK60pD4txhktnI7YYgbi2dkYs=;
        b=HxHQCusp7F6fRltFh2XBSIYQibglBT+FSSey9HA2sx4kalCTkHAIC57dIgUHyPiwxb
         K/NUJzGsfBQE6/krH8KmgpY+lb0GtiqtE26vlCQt/mUvNNrmKNaMaGwXU4S1y/Ta+acQ
         TFPC1bBt1vAtODy6flb+37HRmxchEEswl65BL7XTfBz6ZM8uu8aH535mKzUs4Ib+zkPs
         9cR1lIQLEihVrihczOkMlivZsl6/8xkyzq7P+G2TPf5P66PGg2nbWMJrylrOOUvPksU8
         UeWKeT8CyiyURI7/6NsQDLHfCYeiJlxXYV4jjwYkjyiswY9pg/LhhjepDm9nKLEpCxzJ
         qUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322177; x=1750926977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yzf9de8tjudMgAFImVxK60pD4txhktnI7YYgbi2dkYs=;
        b=i1Jr/LP28wl1w5Y2GXHRtdbQAqLCwP0pskQZ1yVvP5iTwnfgsB8jpLLCZ7JhXaMe3p
         tg9DcyOp92HJ2aGYoTrXeumYthT9HtYy0+zJ1OEzdVwzT77dQWHyCDzbLfladBgLLA1+
         9Al1QAUTooT1NyROmd4qFhyMpVoynoWSkgipf7lRg8BLQor3jojNIkiBz7e0J9RPrZpZ
         WdYRm4Um631kw8oVC4w8YwNWCSDz7+yRrlI0maqLWdaCd/iA4aSkZg+33mUmnvPvCyZ8
         qeu2s5x4thVTgV9QDGiDsdHG6XmrS4ZqJQ3QIQzKInvdcJ/PuT5TXKtUEQG0AcOeKeF3
         Wzkw==
X-Forwarded-Encrypted: i=1; AJvYcCUQ4dKYMD+vfHu8gftJ/7Q48+iPGDN0SYy2iL/mP6b1Ec2x/OUyDKQsFRhl3BFlyZXO9q3T65KQzU1EwkDBOA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0OEWgrBzKIM0ziWE8nfX9VOZLEMdHkSgX+4WP1svfgN46Kgf7
	hmlHli8t1z3eLxx22WldIo2NXtW9qJgPAD4KZVdmcT8UCsCS614OST9VY0TB+PJpmdv3+GBE6Ra
	lrKq4gCMnawid7xK4cAeQMlf69Y+sMtEFSsZRZb9mzA==
X-Gm-Gg: ASbGncscuMK26YeRqjARxJvEgi6psxuRzIXjbJrZmOAr59YPtpr8vzrnBB1UU4dPte3
	MbJ+YGpdTNLtWMibfK/EBYqCjw814Z7icY/pCmMgPHURMYX8v0vYnLOFpaKrkhgXRIW7hkpuaLK
	qII/sKcliYvLC8kJH/aB6vUStqtLn2Y4r6CZMcPixPEBfjOVys3LaEclQ83w+ia7uGSNag8aDlI
	Hk=
X-Google-Smtp-Source: AGHT+IGROhB1BHEhVf7lp3K17L78LdhcTvHXtwk6/ks9ka8oVJATyogYr8tNLZyP1iVXGY7Rk+OL3YCyL3i+oERqtJI=
X-Received: by 2002:a05:6512:23a7:b0:540:2fd2:6c87 with SMTP id
 2adb3069b0e04-553b6e74f1bmr6127957e87.16.1750322177403; Thu, 19 Jun 2025
 01:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org> <20250619-gpiochip-set-rv-gpio-v2-5-74abf689fbd8@linaro.org>
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-5-74abf689fbd8@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:36:06 +0200
X-Gm-Features: AX0GCFte8Q5wHOGkWFWXjfIA30NLlYd4ISVYqo5eAKH8rrJ08AS71jryqV8KALU
Message-ID: <CAMRc=MdkDF_HjRvCvUdKueRgNYDxe=aeGeWAw9bBgnAZ=kxZAA@mail.gmail.com>
Subject: Re: [PATCH v2 05/12] gpio: pmic-eic-sprd: drop unneeded .set() callback
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_093620_090986_EE71B820 
X-CRM114-Status: UNSURE (   8.69  )
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
c3pld3NraUBsaW5hcm8ub3JnPgo+IC0tLQoKQmFvbGluIFdhbmcgPGJhb2xpbi53YW5nQGxpbnV4
LmFsaWJhYmEuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
