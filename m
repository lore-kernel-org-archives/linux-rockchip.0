Return-Path: <SRS0=esWy=OW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F711C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Oct 2021 17:06:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 55C3161278
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Oct 2021 17:06:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 55C3161278
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uE2ZqeaIucNtQhws0IffA/+zbqzeOVPcPd+GBqZh0xY=; b=dcDfzI5kBS1ACU
	0n8s0J9q7ajLW2ZTFs8FIsj0F2lFXdpb4so0TLig8LtRyWZyvLtW6NZqguH9JsfN6RvBVpwNBJ2sb
	RVGCoPEJZsENjPzCBCFviNiiJ2mOysWe+5OT5s0xG7u0hFmOcOzh6fVH+rvMiPlvmaTtxksgI3vU5
	IrC946Z3gz7hhs1VKy2aqKzNv9CQcOSfxJ1EOoqK97JoZhysGpncfynmIWhMiyTJ4JerM/uhjOqZj
	UCnAKfK/GKMCBgtkzTIzC8SjJApf7ij3KYslkVnZowCHr6YNFXQbtM4I3qN01SKVK+wpIxmabcSN5
	E1DpIvBS8DE71CQQUd0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWiTC-002VYq-1K; Sat, 02 Oct 2021 17:06:42 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWiSy-002VXh-8P; Sat, 02 Oct 2021 17:06:29 +0000
Received: by mail-ed1-x52e.google.com with SMTP id x7so45495022edd.6;
 Sat, 02 Oct 2021 10:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y2Fe+5HrwJTnu6L3tCqAwaOKm35V1Vq91Zrd9rcYwKc=;
 b=F1U/fSQMsbaeL82WKL86FwCqGVfXgJH/lcVE/X9OKtjg3g8c4+MGG3/26Ee50ovqo5
 sClWS6OIKYXWsMqLvoAgE9nE3vFO2xCF9yNfpshHTznIYJbQCjL+XMesGSaRW4nGPdaN
 Ry3HwXBlU0EH09YFivoGhKIEp4mFMVVoXakRUE8qfWO1jVCGU2GX0LoetwJ7OIW+t4qM
 yxUmKviC4GhVG58KnGzQdZ4HXUhx8oYP9y4qcvSvfNm4nLkPwRedUAHLoNfCldbp2BGD
 4TRlQFapvZf+a9Os9QnD2RKcg3/h7BDdEvOMqOgBXKVjaiU5CIbZf8KaEyXWQXCVD/ib
 gqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y2Fe+5HrwJTnu6L3tCqAwaOKm35V1Vq91Zrd9rcYwKc=;
 b=GaBz1jOEfLOCYHPdmakmade7CyRB1yHCXGl2x6cv8Qaoq7LzLPm83C75jKJTXffMmn
 O38lS8lRn4ez8T1yHmu6zems+nlGF08oPJ0jWRDV9TGNKmCVt3Do0s2MEVnEXS88SKtZ
 cMk/I+GKVRifGrHp2z67zbberlgcjz0DKD4QW6+iQMZwLoYIeMlW6GetnH2geFJlUZ+R
 KBiSYsQDmqt2VxqUK+hqtvimaZPldMMA1xb2frNNQNTaVxA4EfUxA9hiAezpCw5C91Ha
 +ZCYQ+VqWxV08Tk2UOLt6tucdnfERVHtLqwe9Fb+PjqJi5LtNpBsiQM7OxuBbm8IKYo1
 1mhw==
X-Gm-Message-State: AOAM530Lxm41aWUpr9/n+T4wJmb3/bpDtwhB7JF9hUQ4litSPB4dnIEK
 v8ldDnydCpoxJ4hJ2lCrrx4PWl+isy27tJ5kTk4=
X-Google-Smtp-Source: ABdhPJxuqgSm9BN4R8HPnjHHfNyekDXMoB+gI0/bxNwXe9vVCIueascepu98U9unJ5AE9NIsK+/oy2hmLJbFl24MJBg=
X-Received: by 2002:a05:6402:493:: with SMTP id
 k19mr5145256edv.386.1633194386596; 
 Sat, 02 Oct 2021 10:06:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210928141956.2148-1-caihuoqing@baidu.com>
 <20210928141956.2148-6-caihuoqing@baidu.com>
 <CAFBinCB+tYAjqhyO-UAsZxqm6FkK8Q8TGPJ_ehuxwgRSSRZDJA@mail.gmail.com>
 <20211002170901.7378fcc4@jic23-huawei>
In-Reply-To: <20211002170901.7378fcc4@jic23-huawei>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 2 Oct 2021 19:06:15 +0200
Message-ID: <CAFBinCAka2oQorT2Dy-DiGrChQd45_u3i5zTg_H2Mnu6vZQ2=A@mail.gmail.com>
Subject: Re: [PATCH v3 6/9] iio: adc: meson_saradc: Make use of the helper
 function dev_err_probe()
To: Jonathan Cameron <jic23@kernel.org>
Cc: Cai Huoqing <caihuoqing@baidu.com>,
 Linus Walleij <linus.walleij@linaro.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Vladimir Zapolskiy <vz@mleia.com>, Neil Armstrong <narmstrong@baylibre.com>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, 
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_100628_337967_401B6BCD 
X-CRM114-Status: GOOD (  13.92  )
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

Hi Jonathan,

On Sat, Oct 2, 2021 at 6:05 PM Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Sat, 2 Oct 2021 15:01:56 +0200
> Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > On Tue, Sep 28, 2021 at 4:20 PM Cai Huoqing <caihuoqing@baidu.com> wrote:
> > >
> > > When possible use dev_err_probe help to properly deal with the
> > > PROBE_DEFER error, the benefit is that DEFER issue will be logged
> > > in the devices_deferred debugfs file.
> > > Using dev_err_probe() can reduce code size, and the error value
> > > gets printed.
> > >
> > > Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
> > Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > as well as:
> > Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > # Odroid-C1
> Hi Martin,
>
> Confusing tag.  Was the second meant to be a Tested-by?
my bad - it is indeed supposed to be:
Tested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Testing was done on a Meson8b Odroid-C1 board.


Best regards,
Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
