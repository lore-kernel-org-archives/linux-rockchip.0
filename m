Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BBC0C4741F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 13:58:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCCC02078E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 13:58:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cEFKKQ8Y";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rI4ESeXM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCCC02078E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=78gMfjU7uHhi18l0hwhNWadd9dCkOc5imlsav70trqg=; b=cEFKKQ8YqCKgDgB5/hcAR8L0B
	aqY5Uh9jNjRIrt6NCjIQBNYvjuKVRumFf+e15zQMY2cjXugS/xfqSalxH1mzE4wtJ7XFur5BT892V
	CB06lGFMhbgt2Qfmr8SdhtroBsjkcL8FiGKbBF4JJXSNCmJBw6jGD9RLymRaGAkb6uU5CkSyjJYeJ
	ZyS4gH06nnpv1KL+VvL1e8o/N0fzcXz3QAYVYJUo7gP7T8eATRlXh3xip7vYorS0s4gsuKJg9lbpa
	FSrvFZkadnTMmPRiAUtOrtnltu7c5nF8qc2FFAh0GIZWzNxsInvb5kZGj4qvT1unsi7CUbxc6/xuj
	tw7igg3vw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kafmA-00042M-VK; Thu, 05 Nov 2020 13:58:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kafm0-0003wC-Bx
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 13:57:57 +0000
Received: by mail-lf1-x142.google.com with SMTP id y184so2387161lfa.12
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2020 05:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hI0UzcPlzM3Z+TT8BLCsTb4B4PaVfW/TF8pw2jZ+3SI=;
 b=rI4ESeXM81khgcgR6VhCZFZCkhrDyz3SIB12oAg7aevlhKQnfwxm9DRbitflnAvySF
 b1+dCx0m83TOzFMQGZwu7zNhPOmY3mmvUQhzRTdKxLNkVT7kcXUsbga9iaNUP94wqONn
 HcOpAPayUbys/sx7e+1QFzx1rG6ppvxwBQnsLb8WXkR0i+wuTc6bKp4xVgOzX+k4uMox
 gcQMpeuLqq5aD/5FfogyW5ppol6/4UXTiW39v/24AqNx2otBT+thZL6nOfGhJDC7YXLT
 6XF/Eu4jZQ0GCf4aMXgOyA6B19+xP20CWGHGAj6oyWL+z5BNUpKQK26HmLXEAsMDKFOp
 Z46Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hI0UzcPlzM3Z+TT8BLCsTb4B4PaVfW/TF8pw2jZ+3SI=;
 b=IP5r3nfye1qj/gyYLet0ikcXCrlASYH5eleywiGrdkC0xa35mu9E2OZXHWd95dwFc1
 OO6IBQuCs7k5OFy3h06Mawml/AmX3/fNLyvkEnmpRm/bkg0nYeadMExVJTHEH9ACbsLQ
 N/ygdwGPlDMxt1qV/ZN//qZIseXpmP8uh3oIgvYK2y+yJPwWQKWAhGJAcvHUmfcZPvgV
 I1ab4hm/v4bvovHEKjhAOT4DYyfJN2j7HrPDwr6W12UZwxmHUhu2AHEy2rb0v1xY4ykE
 f90da1j0l2LarJsVtOZT2k6rAnObaLrdp8B8vsQotCnrhokPxKR8BS3cfsSOdAdSJYA/
 F2gA==
X-Gm-Message-State: AOAM531ROKA9ogjB3+FinasYO7kBUOsfnCVZbiK150lwAKTb50lPC1sQ
 l6MQa42kCUKS72nE94G0nOVY7peB3uMXjJI1FoKD5g==
X-Google-Smtp-Source: ABdhPJylKuZVTDjj0TM1vn3dfgBS2xLU+0Zy/JEB0e0mx8z3Xl+Cke+L0nZBl0FCSalSQ25Ca/7WB9cpgUs4vwTFDQg=
X-Received: by 2002:ac2:50c1:: with SMTP id h1mr983249lfm.333.1604584674765;
 Thu, 05 Nov 2020 05:57:54 -0800 (PST)
MIME-Version: 1.0
References: <20201028145117.1731876-1-geert+renesas@glider.be>
In-Reply-To: <20201028145117.1731876-1-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 5 Nov 2020 14:57:44 +0100
Message-ID: <CACRpkdayhrcfyXEB4P+apjOyF=8DZgmu=_H8+aQEr4XEbB0NeQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: Remove hole in pinctrl_gpio_range
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_085756_483613_C39059A8 
X-CRM114-Status: GOOD (  10.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 28, 2020 at 3:51 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> On 64-bit platforms, pointer size and alignment are 64-bit, hence two
> 4-byte holes are present before the pins and gc members of the
> pinctrl_gpio_range structure.  Get rid of these holes by moving the
> pins pointer.
>
> This reduces kernel size of an arm64 Rockchip kernel by ca. 512 bytes.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Compile-tested only (arm/multi_v7_defconfig and arm64/defconfig).

Patch applied.

Do you think it'd be worth it to add a check to checkpatch to suggest
to move pointers toward the end of any struct?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
