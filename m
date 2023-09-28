Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C18A3E743C4
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mbcTfxijt/8YuyrT1XNvaIEzLlS3o5OVm90SDmrXiE=; b=B7Z8kQzs+vh17s
	pDctsT9xO+7N/iNOzymdZbczEtiMiaYX/0kDpKF6BsXUhC+JkXSb/QqLr3Xnv0xhvAOWvSi7w3vUx
	IQ37C7c8QM6wCLMm8B+WyOySMx7c6pkLqGXZWdPrV5W1G193YwkLCO2hqVlf9rPkddDf6HDVAmwUp
	ThyD7xZnVG9MIPRyUOnznp8UHXT1hi9vJ5WC1DmQAtSjBEkjtQT0Z2sxB4gOvlswjRW1VmTKAQ1rX
	1PIMDzzNfIa/VOLeDIhbULU1UycK5nnzT3vqEBEKvInd65+ghDndZ8eQYRPqE1bg82XYlqnkCX7hH
	tlNG0qDCB9PnyHddK9aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlyy7-006jrr-0z;
	Thu, 28 Sep 2023 21:54:47 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlyy2-006jr5-1c
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Sep 2023 21:54:44 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1dce0f9e222so5442131fac.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Sep 2023 14:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695938081; x=1696542881; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=naKczhcaLKU+Vpda4JS+O3EX4QsmtiJzh35tbmPshTc=;
        b=jeua0tAQKC5HAvwTajIfBXsttyHGLobVLWy6s0TwJ6Iy1wNjgKUS0hBapI9rqW2Ow0
         LnA/xxPbhakVYB6E/MremALupW/Mu/KfrGFS9Uj+tAkJWNBcuvxkD+AufppUX1CHjmd4
         N6bl5dEPWVtFieZKmj8gjj6vFSh3s/U0DoVF+ZcD+NoSbkXrswJNEANTwvkWuZHY7Wnt
         hlG+lMj2kpuIzANqfn2fY5OD5+nflxmacCJAnssS5hEWkYBQph2GaQOEtNffFUvmaLDr
         PgOUEkMHydt0/zQmPmiD8TgIHsWQ0cNB2z5AxN0vuYO2Pc6QyxXmD7EDomp/qpcBoCF3
         sqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695938081; x=1696542881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=naKczhcaLKU+Vpda4JS+O3EX4QsmtiJzh35tbmPshTc=;
        b=DJHJYQAPujBRW7vsWv4Lu3yJ0R6NGo8ufa13rxzlGCQbvHUtz0U9IsEE60cZzWaWmW
         0wn/mj3WEOWeCMAW7AJrUXDU+7gFLnbg3b3XBCY50F5XpKFNi8tkgHuQg49Tg7F6tSyR
         GMTYS6ppb/xyyLDwC9LyD6elJC9CTi1W2O042WIm0Tp/XwACEFn5UTCStbqMzhP+COjh
         yQChZlst8aPjSZfKIqrJexA3GaQwqLzDKSmBuFYjoTDD81K2LJR816JOPD5ZMyNNHDKB
         z7NY6hnNWKMUrMNXVXPjpuCsLqIkozVisZ/fLVwnjXVSgfVAjkyCDs4VTGE7I2oqv/oU
         MPjg==
X-Gm-Message-State: AOJu0Yymkh9D5UbK2QlkUNgpzd60j8IOJCHTWXx++YB/QUUwKk+2/1yR
	izVeaMBT0xlBTYSQcj0fhfB/GaVb4nyRWujSN1SVDw==
X-Google-Smtp-Source: AGHT+IHOIrvsxrbfrHlW6R9fXJru9yxOJf/0wGCueRWD8DQMMhA/aXBY0UgxF6eu93B+pnrmI0ogQ+ibXsr5AvEap8U=
X-Received: by 2002:a05:6870:e0c9:b0:1d5:ab82:c3b8 with SMTP id
 a9-20020a056870e0c900b001d5ab82c3b8mr2689976oab.53.1695938081084; Thu, 28 Sep
 2023 14:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230928070706.2290137-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20230928070706.2290137-1-u.kleine-koenig@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Sep 2023 23:54:30 +0200
Message-ID: <CACRpkdY+VgA773vbR_vAh7_YS47N1UBk_ae7ANZC5qim428Xpw@mail.gmail.com>
Subject: Re: [PATCH 00/23] gpio: Convert to platform remove callback returning void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Mun Yew Tham <mun.yew.tham@intel.com>, 
	Andy Shevchenko <andy@kernel.org>, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Doug Berger <opendmb@gmail.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	linux-arm-kernel@lists.infradead.org, Vladimir Zapolskiy <vz@mleia.com>, 
	Grygorii Strashko <grygorii.strashko@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, 
	Kevin Hilman <khilman@kernel.org>, linux-omap@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, Srinivas Neeli <srinivas.neeli@amd.com>, 
	Michal Simek <michal.simek@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_145442_594960_77F06633 
X-CRM114-Status: UNSURE (   9.79  )
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

T24gVGh1LCBTZXAgMjgsIDIwMjMgYXQgOTowN+KAr0FNIFV3ZSBLbGVpbmUtS8O2bmlnCjx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKPiB0aGlzIHNlcmllcyBjb252ZXJ0
cyBhbGwgcGxhdGZvcm0gZHJpdmVycyBiZWxvdyBkcml2ZXJzL2dwaW8gdG8gdXNlCj4gLnJlbW92
ZV9uZXcoKS4gVGhlIG1vdGl2YXRpb24gaXMgdG8gZ2V0IHJpZCBvZiBhbiBpbnRlZ2VyIHJldHVy
biBjb2RlCj4gdGhhdCBpcyAobW9zdGx5KSBpZ25vcmVkIGJ5IHRoZSBwbGF0Zm9ybSBkcml2ZXIg
Y29yZSBhbmQgZXJyb3IgcHJvbmUgb24KPiB0aGUgZHJpdmVyIHNpZGUuCgpUaGUgd2hvbGUgc2V0
IGxvb2tzIGdvb2QgdG8gbWU6ClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
