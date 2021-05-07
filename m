Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 488DEC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:26:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A989D613ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:26:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A989D613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PoK2lbbQ+nFfEr0vBfhw7X78ENdfQN4WjZf6m1rwNyI=; b=br3NZKF5WS3lTJu2LEcR5cOW5
	MUVmpmmhgaArzSA4EZksHj4IrlCJFGsNgkmZIIN4R36MSdWlStMAE88HTSx6aSlJ6T29Gf56lWIkZ
	gNhkgd5VrMbt5BKx9QNJJxgqOjfa9F3LXk0Or98MZg/EH5mFsFzBVraMPT+7z2sIoP084FmeiAmXm
	ZlTsxUT5VB5XWeykGtWe3UpTfLGaAU13NL44BOBe/EGo5AhEDV40cpweRGg0xAT3+4eLnJi4s8UkP
	PjV5eqfkx2RAFJoM4bds82dAROarcxE5amPgtT4eZ3cU5M9DDjCxqiYQfwbCDBkDoGXV5lMw1scgy
	w1xgQIMpA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf7zP-0085p0-Dc; Fri, 07 May 2021 21:26:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7zN-0085ol-RO
 for linux-rockchip@desiato.infradead.org; Fri, 07 May 2021 21:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XG0TLyszi1cmh23fmH0mhN2WgCliBgRLG2x6Fui/g3w=; b=hQo8h/1Yowzxaojhj+FPZeYfDW
 kdr4IsS65qw42CPGJosL9wrzFzb49Q7gZgHsD9O00z5NnbPIIosKPSYvGCHBSZ0Ogb19P7oUyQ/9M
 XsbreE8N7mCOknIYSLqvBIs2zhA0135I/4mQl2pIpkCdkkvL1cOpr4yU9ZecBCChDXRw7d7IVCxNS
 ZmzMBEk2fHb/1LQRIS1Rus0Ku3YAMUlWKzQYm7wqYe02e2LrXjvmKs8CGpe1A6ECoa72J3D5IfPG9
 MSoh8uWsOoNsd2E03z206WaigLQPvL7e9b+J/sLXTVtRA+1TWTWU5JTWHOExQtbmj/xv54eonSq7q
 9iMnasGQ==;
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7zL-007CCk-2B
 for linux-rockchip@lists.infradead.org; Fri, 07 May 2021 21:26:24 +0000
Received: by mail-lj1-x235.google.com with SMTP id p12so13338249ljg.1
 for <linux-rockchip@lists.infradead.org>; Fri, 07 May 2021 14:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XG0TLyszi1cmh23fmH0mhN2WgCliBgRLG2x6Fui/g3w=;
 b=hodjiOCfhaug0X3p4IQrL+WcbBvdiThSPchin6eJxMJ2dt0+Me5jQvoBuO67weHHYO
 fBwbLAHWSc9YUyFTQBloGw9B711VjCdTmpXZuh+/yia7xVM6xvl3x2mDefdrS3xYtcO1
 oIetrSG0llXe8YfcymcicYd6DR4droaELRHIVQbG6772pm9JUeoevm+ZO0H1yUzrt5HW
 rnOFfBTK72QJF83XqkEEv2/X8bCQzubEAFkLHQwwbVWpETkA3QYN3MmHGCN2KEYdhjBT
 AfAbjC9daNgoeNwLXGtKfJOeza28WvCd2mk4UQ+0d2i6U3BNsJ7zrcX5TmU3Tl+hAWUi
 nyRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XG0TLyszi1cmh23fmH0mhN2WgCliBgRLG2x6Fui/g3w=;
 b=cjNlEnZ4EJFwy31uNWkoc1HJ09QpJkhVA03Wu9S6v2tmv3Z7fXPk/iz2mgzk6nUSlo
 DdASa90uXTESyPuMPovstCReMNOBtz175MdD/Va0Apmzd0enDFOBIHvRQ9z+PjAxbcW5
 /PdD8Ph+jrEPZuYxkWOneZxdDhENhnt4ZW4qLbp9PyVNvwVk2DMq0O+Lk9pYe6HOq7Dk
 uv6ZC9RGJZFd1TWAYDkLa16pJ0owXcmQipK54T8TWw0EgxufCJA0VhbgXRDGltiVepBT
 WrBpuUNGnUwmLkNzyYUkSJDWsGxBGBCyWVQqROOpOjl6lx7BAZ+3iQFi4rx8l2WPGxhc
 D8lg==
X-Gm-Message-State: AOAM530EFX3y8utwRcZ0CSBAIKE7xp4bTa9JoDgOPnXfIRpKZPKcW26x
 yz7hIoVjlxjG9DvAZ+NZMuuuhpmrem9t2DTHn3zCrQ==
X-Google-Smtp-Source: ABdhPJy3z0qWS5Sneh44i6pk2oO3OOciepj+d38iIgI70000KRkNiArXJwFb6hKxgj5G3aVCUF/o8itqFyKwsM+AULo=
X-Received: by 2002:a2e:2e12:: with SMTP id u18mr9286103lju.200.1620422781142; 
 Fri, 07 May 2021 14:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210505134028.13431-1-jbx6244@gmail.com>
 <20210505134028.13431-2-jbx6244@gmail.com>
In-Reply-To: <20210505134028.13431-2-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 7 May 2021 23:26:09 +0200
Message-ID: <CACRpkdZZ-FZn6Q3w6g=FayOzpUW4ZfenQ9Oxe0+Co2RyYpTZLA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to
 YAML
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, 
 Jianqun Xu <jay.xu@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
 David Wu <david.wu@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
 Tao Huang <huangtao@rock-chips.com>, cl@rock-chips.com, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_142623_161165_321B9B7B 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, May 5, 2021 at 3:40 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
> In order to automate this process rk3328-grf-gpio.txt has to be
> converted to YAML.
>
> Rename 'grf-gpio' nodename to 'gpio'.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
