Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B305EB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 11:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptaX63F5Hlyf3T2t6+SOvGKYlYJDDChqwZoGfJ1qUCE=; b=lod8hEAmaEf6z0
	leWrslNVqJ+1vlvEQjeEjZpKd6NFeP4uS6kwjKXqdKzsFoj3sKLnHNJKXeRgzyE9yrmKygr0EJyDD
	s7s2ZVR2v5uIGpBzRb3kdt4sssQUpB5SZtirEFbSnxvEE7ahPgdlCwOtnXlLyllVfHVMuxxv4mYuk
	DOZ/v91K2dHJCIPFrRnS0XzAlKwKCC6yW/rONRW5OgtPzNimM41DxHf0MMiFk6/ycGBQUMqxVfnmH
	D8mDXHvXTEItYcDpXd1yv/El9O7BK+wdJ32ex5x+IraqFMFZBH80DYQM6rYwCNbqPW1hIZJD45rDK
	5669aZh2Niyp9/YPLmbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM5IZ-007A3r-1D;
	Wed, 19 Jul 2023 11:24:51 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM5IV-0079zH-1d
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jul 2023 11:24:49 +0000
Received: by mail-ua1-x930.google.com with SMTP id a1e0cc1a2514c-791b8525b59so2458146241.1
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Jul 2023 04:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1689765884; x=1690370684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OZSrWDc/cBveds+xSFFWhnQ/pzCd4lTeY64B0PPEGW0=;
        b=T1IMgiireLSvSXiTqLXmFjq9F8EsjIjVEm5sr6vcGRZMB9arVcgUqsKwzTbbVZ5B0d
         ajVxvut0epp7SNwmwKzEJMgdJvXYkYEb8jBPrsW0yDzJnFFxJoO/RQdh2N1yZJ5O9MRS
         Ev8Qg9vc4kY2/ME9SqOM+vCW3ViGaZsYa86Kxz9XR/ZPgndF9vzesGT0RksXS5eMc04h
         ell7+2PcrXlKisrXM96SjKXJ5kwoMY57qLfIyeplwiEJjo9Q4LxRnOriSbtInNjcqq+o
         I6RYEDjc39Gn0ddNJHe53OJEYZqvaM+hrQhZij6E4WH+TgsfMnxGoOOW7yjSfGQETgYn
         U63A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689765884; x=1690370684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZSrWDc/cBveds+xSFFWhnQ/pzCd4lTeY64B0PPEGW0=;
        b=bDKclUjpiYCZ5I7trL7PQglIN1lpU6zpR583QVEfh/16WEjvX5MAo55zwwqEiG9GlU
         4ce9pH9++MQijPqhPWvZ0PRabKj8Csb1zDWr1QuFAAspRyqm2yi1WX4d/q4XI2vja6A1
         kqRFk5GFa5FZx76rOpkU7iwXmht2+8nuNP3gx8Y7cm9rjHzgt9N8Fix4Iw33rp4jJijZ
         Zug93s79jLWJD7oe3d7RZv9MllqBXa58Wi7Q5T7QbFi0XO3dIS9jGb/wZLbscqou7Mns
         cioPnwJYUqcjaf1FJ/NJfMfzI3djHaOfMkxzwDyDam8wJ6657NHF4u6LsXrOVpFngsIp
         Batw==
X-Gm-Message-State: ABy/qLYwK//cBAw+2paIrftwCfnpUTT4I6K8HVrHqAUPfdjbqhwYBcjZ
	gELfRfkqe76u1u7ZtzQoAr+CvzHiHJf2EfGt0vDyRw==
X-Google-Smtp-Source: APBJJlETfEXohyULgSqD+dtrZrcCLBAUgDaqwYgYehWjp3RUYrt8J/1ty1q/3ivKhd5XQbecf0XzDYFagtzXJqIh+lM=
X-Received: by 2002:a67:fa85:0:b0:443:7503:a537 with SMTP id
 f5-20020a67fa85000000b004437503a537mr8935739vsq.28.1689765884686; Wed, 19 Jul
 2023 04:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230714174525.4055475-1-robh@kernel.org>
In-Reply-To: <20230714174525.4055475-1-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 19 Jul 2023 13:24:33 +0200
Message-ID: <CAMRc=MeR=uEufQ3p2cqN2ABL1w9V0QHRSYLv_WVZ97q8C4AgJQ@mail.gmail.com>
Subject: Re: [PATCH] gpio: Explicitly include correct DT includes
To: Rob Herring <robh@kernel.org>
Cc: Alban Bedel <albeu@free.fr>, Linus Walleij <linus.walleij@linaro.org>, 
	Andy Shevchenko <andy@kernel.org>, Doug Berger <opendmb@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Daniel Palmer <daniel@thingy.jp>, Romain Perier <romain.perier@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Grygorii Strashko <grygorii.strashko@ti.com>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Kevin Hilman <khilman@kernel.org>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, Srinivas Neeli <srinivas.neeli@amd.com>, 
	Michal Simek <michal.simek@amd.com>, Nandor Han <nandor.han@ge.com>, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_042447_753451_BDBB93CC 
X-CRM114-Status: GOOD (  10.62  )
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

T24gRnJpLCBKdWwgMTQsIDIwMjMgYXQgNzo0NeKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gVGhlIERUIG9mX2RldmljZS5oIGFuZCBvZl9wbGF0Zm9ybS5oIGRh
dGUgYmFjayB0byB0aGUgc2VwYXJhdGUKPiBvZl9wbGF0Zm9ybV9idXNfdHlwZSBiZWZvcmUgaXQg
YXMgbWVyZ2VkIGludG8gdGhlIHJlZ3VsYXIgcGxhdGZvcm0gYnVzLgo+IEFzIHBhcnQgb2YgdGhh
dCBtZXJnZSBwcmVwcGluZyBBcm0gRFQgc3VwcG9ydCAxMyB5ZWFycyBhZ28sIHRoZXkKPiAidGVt
cG9yYXJpbHkiIGluY2x1ZGUgZWFjaCBvdGhlci4gVGhleSBhbHNvIGluY2x1ZGUgcGxhdGZvcm1f
ZGV2aWNlLmgKPiBhbmQgb2YuaC4gQXMgYSByZXN1bHQsIHRoZXJlJ3MgYSBwcmV0dHkgbXVjaCBy
YW5kb20gbWl4IG9mIHRob3NlIGluY2x1ZGUKPiBmaWxlcyB1c2VkIHRocm91Z2hvdXQgdGhlIHRy
ZWUuIEluIG9yZGVyIHRvIGRldGFuZ2xlIHRoZXNlIGhlYWRlcnMgYW5kCj4gcmVwbGFjZSB0aGUg
aW1wbGljaXQgaW5jbHVkZXMgd2l0aCBzdHJ1Y3QgZGVjbGFyYXRpb25zLCB1c2VycyBuZWVkIHRv
Cj4gZXhwbGljaXRseSBpbmNsdWRlIHRoZSBjb3JyZWN0IGluY2x1ZGVzLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPiAtLS0KCkFwcGxpZWQsIHRoYW5r
cyEKCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
