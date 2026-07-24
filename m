Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2EAAC531C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 12:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hSTr4WTTe1ZkYGasUC8/HVgWBRRqtoAMpHFCMTzwew=; b=rnkyZvj8aAZ402
	wreCzLbT6AkXtsgko/ufrElKPzx+QnvkCS5D317YjYBeb73a3pDka04wwU76G0IAKTWnjxZOVSdDu
	lrpevIaboGyTlcTXFEKpZD8OiLQ33vZhVRXvFmkvrsL276Noiqh2SCB69pKc1U24bMOflHsNySUQR
	FjkM1+y9Ygz9xWCE7e3qKM7CzeDJlMX2c+3hBfJaWIGy/8LWJ8lXQYeKleNo7QuWpBQoE4mwr7omq
	6XMSOFnPIeZJ1aZBsZL7DO2UhZ1kF7c4LMiU72gqmc51J4jZLphPDwFqwypbCVD2iLh08WOlqlADj
	q1zbTnNvUYm8IuSqvfhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnFGC-0000000GPTj-3cGd;
	Fri, 24 Jul 2026 12:44:16 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnFGA-0000000GPSo-07PR
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 12:44:15 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-8ff20870ac7so3002386d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 05:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784897053; cv=none;
        d=google.com; s=arc-20260327;
        b=WrKTzAFUHJe3nLY98RrkXVvWa0RMOVSCYpYcQXCHkLSmWX8GfNaNIRwZrtZ8qvqF2L
         SHu8v/Fn4EW7cyisOcENLwE/mk5biSqH3TsRb53aE0OPisb9sUILgVsjpb8pw/Eigdy5
         wanalihWcGpTTetTcnKU2LnDGGSqG9Ukdb2gPFs8hbeFTgkYXxByEjfjsx7CVTcTcE3Z
         ohKlXvKWmyUlg2iwDTXv/7lWa8XNlkY400OvhxIx11FdxwhV7WW1Xnn4GCJbIT+EQ6a/
         Apvik1Bq8I1oqrURBMVQoXO6Kt7xX0SZLQPtkYV4gRaqpmv6hX5Y0c/mKdUzJtYaLvfb
         QGPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aC2psv7ALiBxeuXZI5bTG7C7BxKxDQncU75RPTVHyag=;
        fh=lzvSrfO6AXZgp7n+yjjdzl9jZa8AafuZ47bam94wudA=;
        b=p9+Enj169aRGsJZ3OmQSjYu3AKYtx+BsYVnOO7Ha6mWh/Ff48f4EtPo9c4Fd82nm7B
         DA0xxONg7nGbrSnCTWCItxE/vc/5YoS0JK1mGDbvX8ChENuHp4yTLTpiJb2QGor5aUMg
         /rL+WJuAWd5VHZepQunKZo8/rQVZJypZWTcuVxPDYf5jJ7vz4fe5N98PPhVMqM3VdAxK
         SfFa5mcas9qrrV0ClcYNLs2XrNgu7Ri7ki2k2ksSXGds794940Dx0xDJZKfed61Hu3PP
         XZnQD55gbkPEq9cwPIkuLhDBX40xIc374uDsUMsGZPeacTEVNqJcXMciGBUQEPYNBE1t
         uCFw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784897053; x=1785501853; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aC2psv7ALiBxeuXZI5bTG7C7BxKxDQncU75RPTVHyag=;
        b=HGbWw6wUKkd3jKAtaxxbD2G4N+Vx+LqgGwVLft/ZKsweTuM9/79157fXb5UOlBssvt
         uPLo/2QRq3hg4/OpuW2G/BlikbvZvzTpl24W8nwvr9M+xpl9S3FLFUXIKKdmQuBXmy0X
         HaJZA4X/UGcMABwEmAdiI3PBr21CZ8UZ2e7286Gu6slbZfpkfrx31kzxqydT13WYY5BA
         7DUFRRp1oGuIE09yFy/JWNxNCHGjwx8FHEcpLgAJmZbOsy8H1DbpHwVb8FF1e7aSqtAS
         CnJl8zqMS//466tXVON/hXCjyUoo+T60oHfP2DUsp+A5gGJuwdKYrssPUljE4Z9M8qP2
         G+Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784897053; x=1785501853;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=aC2psv7ALiBxeuXZI5bTG7C7BxKxDQncU75RPTVHyag=;
        b=CTk7zVMSu47J9yYhqy85jvmNmsaSRQjnl4mzf/4LJfBdkiRSngTspK8/yzYyZUA4SL
         bKyVxzw0JzPcpYIAy1KLOgrREHEBLEG0pscoDKEeK1CtfyxxTR6vWPYY3VPptoB3yBHa
         i0mBy+dJWoJBsSPnXqUw+e6ppfuiEAPUUJaetWvj96CZawgtMBsPV+cCHqQJO2jeeA3T
         oidAvlZJqmZvvVyEMq3gKqwgfqdkwyZndansiALfHYQSJFNDW0ypcZeXxtGKKQcsK4Cu
         2lHRFdReUyrzOuM5LAPEPRdZ2hX44VpfirylREYCjM6fABTEBBNo/Gl6LyV9iM7a7QRw
         nGEg==
X-Forwarded-Encrypted: i=1; AHgh+RpsaHViWgz3DruN10ONGqhMrjr69+RZSia7liuOIwqqKvXn7wHmso69vjnm0qwE+yCMlyR3q6L2yRV90A3GMA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8PIP2NB9pFu9CiylCaFX5jTYq8++ewAd3Bi7JEVIf0Q7IOOKS
	ZDja4ECEi9Ngz6S6EqiX/lT2SiTAe7AWCClasClnnrG/wz0xnCGgBB3epHL9mNrCHS857tJmuPh
	OGOtVv4hwnLbf3mR8rAnFdI2wGvPgij0=
X-Gm-Gg: AR+sD11SMrd5IzYh10PnmcGY/sS5q1uqxZD5bOrVpa+FE8EKbWMnlLMV70wi+3qTQjJ
	sYIaauvqWvWr/FGzVrpZc08/NaMeFsuKNrG0u4jVwcfsSXN8V7vw52xhHzEKizbnAsVCQzjmNOr
	R+F4UbKoEM75wnEoUO4qCZBZHzRHlupF7AU/IDIZF17kSOuqE/u1PxYnX12t/xkzi6oecqoGrdE
	3kUvFMTfuJkiNeasaj95103hzO1BuT7Erdb6cqsRK4bHzzfmkBtPTeVMRxiojTUHc+Hy/uHZDd1
	JT5WN+Lk+ytG8F/opnWx4CJSaETyx0Mf4NyufFxSooz2580v7ige
X-Received: by 2002:a05:620a:6cca:b0:92e:cac7:96fc with SMTP id
 af79cd13be357-9310388efd2mr749905085a.24.1784897052712; Fri, 24 Jul 2026
 05:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260724111548.2109-1-tharitt97@gmail.com> <193a0d2b4f7c33163cb6aee56ceee0bf5cb6c11c.camel@pengutronix.de>
In-Reply-To: <193a0d2b4f7c33163cb6aee56ceee0bf5cb6c11c.camel@pengutronix.de>
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
Date: Fri, 24 Jul 2026 19:44:00 +0700
X-Gm-Features: AUfX_mxLzK4lEzDdIm63lfvgUd6SAd7_Ys3EmQdE2d3UhBcu1j4jPRBGqdfCOww
Message-ID: <CACak8wN-Y=oDbEVbou+RetS9X-Lca_MZHSY2NJFaGWR3LoVBKQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: release runtime resources when device_run fails
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil@kernel.org>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org, 
	me@brighamcampbell.com, jkoolstra@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_054414_079868_6FF9A0CD 
X-CRM114-Status: GOOD (  11.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> But right below this, you are still letting
>
>         if (ctx->codec_ops->run(ctx))
>                 goto err_cancel_job;
>
> without disabling the clocks.
>
> >
> > @@ -191,8 +192,12 @@ static void device_run(void *priv)
> >
> >       return;
> >
> > +err_disable_clock:
> > +     clk_bulk_disable(vpu->variant->num_clocks, ctx->dev->clocks);
>
> You have added vpu = ctx->dev, why not use vpu->clocks as second
> parameter?
>
> > +err_pm_put_autosuspend:
> > +     pm_runtime_put_autosuspend(vpu->dev);
> >  err_cancel_job:
> > -     hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
> > +     hantro_job_finish_no_pm(vpu, ctx, VB2_BUF_STATE_ERROR);
>
> Why are you changing ctx->dev to vpu here, but not in the other
> function calls in device_run(), e.g. pm_runtime_resume_and_get() and
> clk_bulk_enable() above?
>
> regards
> Philipp

Hi Philipp,

This is embarrassing. I did notice this, made a local change and
forgot to re-run git add.
I will fix this asap and send a v2.

Best,
Tharit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
