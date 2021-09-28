Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDC1C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 13:47:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 909C8611BD
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 13:47:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 909C8611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM/LWZMzubqjxaIK4+kwAPXf9eCl1shmtYRzyDUoNhE=; b=LA507Z1ursZ8SL
	jbBjXIOWKYHTJ4nHyMLsDoq2Lqe25UKNx1mKMg0+mVbGSrg8i2hKhrw1Q9AmAuj5pTpluwdpDe0sV
	gJjUIBumIf6d4aiUF99H0fDV5xpkpuofwh+7YsEZ+j1cjOBI+CS6fJNAzDo3x0UheY2/aj6C8db8I
	TC+GElzORMFeBSIq1XARJ03hjyp756p7vdtSGgVZYkWfPSdU45VXKH59N7o1sitFLwJaGvbHSZoM6
	ZRJKYxU84qcGGR2CO7eSDwVyHonV9g/N7H2NEkrYLwz+uue9fgEAVg3I4uPWJxUw48wf+DBMDHnqj
	tkJ2zYGJcbFCXxPtvE4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVDSQ-007NHn-P7; Tue, 28 Sep 2021 13:47:42 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVDSN-007NGH-Ui
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 13:47:41 +0000
Received: by mail-lf1-x134.google.com with SMTP id b15so91537189lfe.7
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 06:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zwVENlJtRAi6Ax59HxxFqFtBJgRbm8ce1Id+5WhoWL8=;
 b=XQFP1mUhXKlHXI+xEmvDrSXbeLGnD4CLmXjgYseEqEruv9KrCC6FSc8Y5Ho4LjbDOX
 zC6snsJNUUz1wZImn8MwvqtBxmMBxpHhjrx+sD7movv4TlZPXtvtAREC+/yRiKmX0pue
 ++eKN5f+0dJcVxMLuJppLKf8ZQF/8jTKUtiroQPAE26FNLy3qV5NuZ4Mfmn9YaCTMPq7
 nzwGakmqi86S8+l5vHWVzyPlqaDPjAMTD04P50HoQaOwSxjmCvIFwGP8TkCDq/Iqin0z
 nosD+DseVrciB0VXscUsdG8/7r83wCXEdGV3qDxxotWcJfScS76Tqa9v285icJA3aBNN
 Ec1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zwVENlJtRAi6Ax59HxxFqFtBJgRbm8ce1Id+5WhoWL8=;
 b=eM+kb9kHcdKwUCmVHMbzmn7NRo998KQRxP1CnplCopo6172inIPrugNkDTSHR68pAO
 Uk31y6zI9zkxWLuYGeCVjGSh0KUN7xidJTc3sffsmasgC/xxNNkMXD0UORldRNLZB/tr
 eV/sAgY3Kyhaf8UumIUATXUKkN7z7X/CxnS8xWl7Pi33i9Mu06u5d4lEx/9N10752tEw
 UPMYLm46KfS1sC9dptQ6SWGZUXCnPWKieb6qAM9HeM/9pN2hYaHj1swHfxpIoNFUFMup
 ucccsu7EJ49SyujLC0qbfwYvR8RiUucnmtJpiohdkVGTT9VuglyI3ij6MCqII5u06YaW
 jNyw==
X-Gm-Message-State: AOAM530EiI4du6J7LKHADmFl+FaoamroXsJnbubuCqEpQnIuIccae2kD
 +DzhwIDYaA8MBF/W4JP6GIt/sLMBNEvilW4xzxHDjA==
X-Google-Smtp-Source: ABdhPJw2Fb4WlAdBMN6qf/ANOW7XfaZ4dwR3+5V+TQbap6YMXmbnt1TkRoKkuxS6/KOggTQZ6bWvGaBx1mJ0aeF2U9k=
X-Received: by 2002:a19:f249:: with SMTP id d9mr5834936lfk.229.1632836846030; 
 Tue, 28 Sep 2021 06:47:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210928013621.1245-1-caihuoqing@baidu.com>
In-Reply-To: <20210928013621.1245-1-caihuoqing@baidu.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Sep 2021 15:47:14 +0200
Message-ID: <CACRpkdZX6JkBOFX9yd-gsrzD5ObXR1VKmVNFLNbAv2Q0w1w5FQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] iio: adc: ab8500-gpadc: Make use of the helper
 function dev_err_probe()
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Vladimir Zapolskiy <vz@mleia.com>, Neil Armstrong <narmstrong@baylibre.com>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 linux-iio <linux-iio@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 MSM <linux-arm-msm@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_064740_001719_405A4336 
X-CRM114-Status: GOOD (  10.75  )
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

On Tue, Sep 28, 2021 at 3:36 AM Cai Huoqing <caihuoqing@baidu.com> wrote:

> When possible use dev_err_probe help to properly deal with the
> PROBE_DEFER error, the benefit is that DEFER issue will be logged
> in the devices_deferred debugfs file.
> Using dev_err_probe() can reduce code size, and the error value
> gets printed.
>
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
> ---
> v1->v2: Remove the separate line of PTR_ERR().

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
