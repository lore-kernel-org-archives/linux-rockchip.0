Return-Path: <SRS0=esWy=OW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98608C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Oct 2021 13:02:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 66ADB619E9
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Oct 2021 13:02:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 66ADB619E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7II/B311QwJQj+gp4iLACIuPF2Tbo0qVD5Mn+iFh/M=; b=DN70ByVou5p6cV
	8DKs1qjN33Oq3HXcOGykWU+23Vz4jH4TdukVDzEDXJK+wboX3zIM1n3DNELtshljKUsVrTctyIqnN
	VOMK/+OHep5ktgbNpUV9Kg7zuacAD6U77C0hvJKZq1MmiUUwe99DXUdKPtCc3eSs2C6TUxr0Aglj4
	Gu+58fjdz1h8kZKg8OFbAx7/B6gQPNvR82LW1c7YTl7a/IzSnQ/Hi3oYaWfdjUQA5S7xxGLGIpL3z
	cKPm5Bd8jDr5hzlDOwJs5fU+NUjL3Kmw9qY73Nbcli3LrAx9LM4mPq7I3nMvfvU3+uW/gf9tllvut
	nORQrLVi2jauKV1nbbXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWeem-002Dbk-Rx; Sat, 02 Oct 2021 13:02:24 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWeeY-002DYE-TH; Sat, 02 Oct 2021 13:02:12 +0000
Received: by mail-ed1-x52c.google.com with SMTP id r18so44920081edv.12;
 Sat, 02 Oct 2021 06:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ndllisJpfri3hb1olUYJenRfRB5AbrAxzqRPTi6j654=;
 b=kqogW/uhlIxcQTtD4H2CvFfmWs499lz0u1RvmeXfGNfCXzcR1fLHhyhYSUUPun0Pk7
 elB8dK7MWMXVNYG1sM3lSVzYm84IfwbW6A6MloOSCJNCMmnZq9Tqh4BnDtNoOs1bAKF6
 wBC2zpt6CzqqbmGX5mDKOiXEUh6H40XskQBGw/8ib8WRRPitFdeFTGSnh1ZefUjcfUy2
 zfqD766y31hlg9/8TY/Wc7D+jfnsp1Ch+rrWU3/+nWsJ5VYXAl0aFVaO8VFjzmajU9zq
 AlNtQBmAwmlPMp8eKnLSL2ABkE7mSkDFivB1+MrKnfl8bnSoLb4uPJ4SakEzJkkOE3EE
 rnKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ndllisJpfri3hb1olUYJenRfRB5AbrAxzqRPTi6j654=;
 b=0HbC8MUPd7cZBRsj187c4qnAnBhHdKoCjLt0XUr+z7zMa6n+O2nU6N0lSNfj3WnXQ6
 vt4zXG6Jh9TJ2Aw+MNwfISkfQzgXvlJV/RRq7WXwY4NMIRt3YEGRjJkaBMm3pCzyvT2H
 7WbAGY8GoRbKuxG7O86g12sQsxEqP/4vMic3l6nlgq19UU2UTBlk5o2y5b2lf/22OlsV
 v6xsflFoLjgzRGbw/jkPGQ/1TsrXSrNMOIUSMp8xgFCMY/kaMb/C8/5EoRCmD+9q/c4h
 q72I3l4ysJirZzZvqSIZJoYFQFhbwA/ays0m6b8+PrwWy7HeckhASgBlCsrdS9UqxqQc
 1ptQ==
X-Gm-Message-State: AOAM532nFTjn8Tu61wvkLxOB7uRSmXM+fDYFGxd/axH1m5IP6cZ8g552
 nxHCxMSEX/gpSh3EB581aQQtZVXF12SVM3WEN7U=
X-Google-Smtp-Source: ABdhPJxD7CMyGM7QpQq/DlkZDaDLq0WriVeer/gNXyc23grxbsElTIc3j3RxOEb0CSkMyPT3TA7hcGtTOfUpyz8+Xqo=
X-Received: by 2002:a05:6402:1848:: with SMTP id
 v8mr1215860edy.0.1633179726993; 
 Sat, 02 Oct 2021 06:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210928141956.2148-1-caihuoqing@baidu.com>
 <20210928141956.2148-6-caihuoqing@baidu.com>
In-Reply-To: <20210928141956.2148-6-caihuoqing@baidu.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 2 Oct 2021 15:01:56 +0200
Message-ID: <CAFBinCB+tYAjqhyO-UAsZxqm6FkK8Q8TGPJ_ehuxwgRSSRZDJA@mail.gmail.com>
Subject: Re: [PATCH v3 6/9] iio: adc: meson_saradc: Make use of the helper
 function dev_err_probe()
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Jonathan Cameron <jic23@kernel.org>, 
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
X-CRM114-CacheID: sfid-20211002_060210_976949_63047BDA 
X-CRM114-Status: GOOD (  10.01  )
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
>
> When possible use dev_err_probe help to properly deal with the
> PROBE_DEFER error, the benefit is that DEFER issue will be logged
> in the devices_deferred debugfs file.
> Using dev_err_probe() can reduce code size, and the error value
> gets printed.
>
> Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
as well as:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
# Odroid-C1

Thanks for your contribution!


Best regards,
Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
