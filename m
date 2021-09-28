Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14132C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 14:30:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D867661206
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 14:30:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D867661206
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfLqQ8VneRd4q1Mx4fv1olopmPOJ0gUWuJTBffvKYko=; b=cR/4DBvdqmH1I4
	WNGxzLnOM4vZqMqypzMHFX6FQy02S++9/mNfYwIeGSAJsxM408T5DqqsFcRtz7pTaYvi4q9Ezfzhx
	GtOjLe9yxKchLkD3y7ELVLHV59yEZmLB3jmyw1002E+QqSPoWz8OzC82TZsJNvJPuVELnpUkXe36d
	3Nj3ukvC7/6huoL/qz/cY6uy98LEPw/fe7iTyeWMUkI8jmKKreRcBPKWGU8WZmth2wPXemEmpyvms
	biFPUYLOWJ4znoMs+ZEWwOEE9xvgA+T6tKUbP2zC57w4Uve8nsdWVgeX/Zf8bVEN5vSx2LKOO75zZ
	WeWtmmlRI9mfS4/QS9pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVE7y-007bT1-Gq; Tue, 28 Sep 2021 14:30:38 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVE7l-007bOy-0B
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 14:30:26 +0000
Received: by mail-lf1-x134.google.com with SMTP id x27so93711342lfu.5
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 07:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uh1B6XTocg/PuNZlNsHJ5qn3ywJ0pfLGKGnm5l1sB1s=;
 b=bt1vQ9mFtLWbSomTDSPbF5QE3RLYCRSGiCjPdnKP0BYNmZ22nN/5dQreFOHtJlZP9A
 w1Ju27SQF3MMrUPKopIdjsdV0fU69078TLg3O6fDK6EtaBVBFxWWwokt6QgWln5o8xT/
 0FE64IiWO7MHsJ9hCkLWJ0A73tKdDUIHDA2H6cYZe3v+aaEsZvFVbmFcynWdoX4JFqyW
 VHhtrRCMq587NZq3jdj7pcF+xc6daSurloZBhgz178YbCvxjCtZ9KIVs5/G/eVu3cZz0
 O2DoTHqZJqv61DW3iDhIzQkvY9RLrrmCkYy5YJEATVCpeoiBUANGdDnTN7VJiWwB9a31
 i2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uh1B6XTocg/PuNZlNsHJ5qn3ywJ0pfLGKGnm5l1sB1s=;
 b=iCmf28kTL/QPXjCY9AO9fSJeArcGM0MiMWHIIP9qDBQi36idTerUxaXyZoylq07i4Y
 D0W6LZhxLgk9uY504wfsHVWlUXFbguCr/UOTiGNuYanfT48RfMLcoZ13QzhoKyUx1UuC
 N+t/6IjCGZ/ZCvKUi5TPg4eYl42JxDIieBN5Pg2bFkPz3dnppiRb4WnfeFplUuUkcZMS
 OUAsQWYx0hflbaBaPafAdMTj4ed5F/iY0Jv44qO1RLtJRI+zOiSCJBUWRs2zm84vwaNR
 5ME4rkqNc9rikMNZjGkq+DtPYSebItZl8C24bLO0KEHeOXUTkKlk8F7QNY6QDQyXVFBV
 31nw==
X-Gm-Message-State: AOAM531Qs+ecRYLlawB1IkXKTPKSdcyj1adA/qiszJ1NLG5OoVKPUFt5
 ZbhbqkhWkKS35ofLDB+TX0NHItM2J5NqW9R6PtY4sg==
X-Google-Smtp-Source: ABdhPJxrQ91FcoG1j8MqOj19A8jz0Mbb51yvmE4ezgOpcY+fkN/eVADQarawxS3wzP2LfC8q5vYwAWJL1ZqFFqpb/1o=
X-Received: by 2002:a05:651c:1124:: with SMTP id
 e4mr253677ljo.261.1632839421344; 
 Tue, 28 Sep 2021 07:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210928141956.2148-1-caihuoqing@baidu.com>
 <20210928141956.2148-7-caihuoqing@baidu.com>
In-Reply-To: <20210928141956.2148-7-caihuoqing@baidu.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Sep 2021 16:30:09 +0200
Message-ID: <CACRpkdYSKnk0v2FEPg5h4p_ODtepXoH9=a=8hiTa7BP3goaPKA@mail.gmail.com>
Subject: Re: [PATCH v3 7/9] iio: adc: qcom-pm8xxx-xoadc: Make use of the
 helper function dev_err_probe()
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
X-CRM114-CacheID: sfid-20210928_073025_056205_EF09933D 
X-CRM114-Status: GOOD (  11.47  )
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

On Tue, Sep 28, 2021 at 4:20 PM Cai Huoqing <caihuoqing@baidu.com> wrote:

> When possible use dev_err_probe help to properly deal with the
> PROBE_DEFER error, the benefit is that DEFER issue will be logged
> in the devices_deferred debugfs file.
> Using dev_err_probe() can reduce code size, and the error value
> gets printed.
>
> BTW, change the return value from 'ENXIO' to 'ENODEV',
> perfer ENODEV which means no such device.
>
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
> ---
> v2->v3: Update the changelog.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
