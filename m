Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A50C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jun 2022 17:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpYHmxS1wtemFh4/GplVcpFL3Q+M0Fzf64izSFwm42Q=; b=FHoYD4sskt6Q59
	LBAULtFYmLkyUDe9fqGpM/HgQiernoyvf1f93osQo6p3GJCRjbTBKp7H9AqVRowIjvC933GzJlPLF
	f5pkJiDKQVgNknGVjMR/kIjT63YOZcctZLVELe47nt8CWpMKFoeZOaw9DYxJRgExCKyUzPKL0SRxE
	xRLMQDWlsaHw/Oxb6emgH4bUe4FzzvE2g1vpT9EzRdaRqKjDNIlhebXcet52TVSWaqTa4nkvpGiVj
	uT0oe17HdcuMBIYj3UABhk5BayZ5Hq4EDyycfMW+61qVskaE9DA0reZoGH+HULYh7vEDNUp/KAOlt
	0GvznvCmK3BZYNnQsogw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5snA-002G7m-Lz; Mon, 27 Jun 2022 17:44:56 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5sn7-002G5t-Dq
	for linux-rockchip@lists.infradead.org; Mon, 27 Jun 2022 17:44:55 +0000
Received: by mail-oi1-x234.google.com with SMTP id e131so13773061oif.13
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jun 2022 10:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=v+dkrP2udNa9sOxtusDdTPKwT59IDya3j7lSRZunhgo=;
        b=hq0YjRdG9AhL2dAGsQRZXNGTdvU4mcLdbhoK6/QbH1g+a5rBIVlYtl9tqXCIkSN4U7
         gtiV3/f9XovWSBq7G2K/20G4aSKDGIAEMqx5wtUkiv9cyWQFtBf72eEAFyJs7jTlNHZQ
         VITvQB+1q0n+jtiPp7xYaVdO7JZ2APg24MQxs0ZeTqGMaGDwQCYywXfru6wL/haAQPy+
         EEHt0s7ggb3g21vp3p+IGbKiZ243SeRZandqU9a2nIooRpNeR++J0jsS02uulYlsX5dq
         bec4pW4+j4Zxz4vHNfKpFxciD8P/KaR+1qBhctFCb7IUiRQ1Rz2mHZqrXV5sgdpPiOim
         lofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=v+dkrP2udNa9sOxtusDdTPKwT59IDya3j7lSRZunhgo=;
        b=V0FoYrYL6vySEDYQ4ngne62G7700eD6sE5AqUzJ3oVBsC/KC2TV7ZWerp2XHFWA4y3
         xBHcuon4IrEOXKhc5jDj5NvLcDX01SyE2YSUekqg9YOPJRX3Dp3ex59SqDahv1XAgMvK
         r3r6Rjgo5Dgjs8VZz7C6bkJP/XYjvTbXlbGW9Mg4b8zInbe90y7UTy1AVXrFvzH6T+SN
         gT0SNTiZ6ZWj3Z1oxs+XhpHyB5QFSc3Nns1s1K++y/kE9iUuBe3j7QbN2ddU1ebLO5uE
         IQnawRBpm3BcPmo7CjqiEJnK9DD71KCUZVYgg069CJfWFmu7B8tX1MTXuxt9FNRz3ZGK
         G4Ww==
X-Gm-Message-State: AJIora/FO67+AvnhB/UXw+SCg/RTJLvAegzpqYb5QSzHIaTGeQ8SBf4D
	yKAGt5Z/6K+tDGrbgaFYm/f4Fg==
X-Google-Smtp-Source: AGRyM1tcFw++OyIJoIgcqrFORwWhgAzwJoCx66v4j6E9ylGaKiz54nY3UYOhi5uhQbmV96+7sensEA==
X-Received: by 2002:aca:f03:0:b0:335:4760:d9c8 with SMTP id 3-20020aca0f03000000b003354760d9c8mr8262390oip.128.1656351889745;
        Mon, 27 Jun 2022 10:44:49 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id k19-20020a056870d39300b0010200e2828fsm7424768oag.30.2022.06.27.10.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 10:44:48 -0700 (PDT)
Date: Mon, 27 Jun 2022 14:44:43 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Brian Norris <briannorris@chromium.org>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	kernel@collabora.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/5] media: rkvdec: Disable H.264 error detection
Message-ID: <Yrnsi2lbtYEDgTEk@eze-laptop>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
 <20220610125215.240539-2-nicolas.dufresne@collabora.com>
 <YqNzt9T9BaYu8tgb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqNzt9T9BaYu8tgb@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_104453_868045_E28FC7AD 
X-CRM114-Status: GOOD (  18.56  )
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

Hi Hans,

On Fri, Jun 10, 2022 at 09:39:19AM -0700, Brian Norris wrote:
> On Fri, Jun 10, 2022 at 08:52:11AM -0400, Nicolas Dufresne wrote:
> > Quite often, the HW get stuck in error condition if a stream error
> > was detected. As documented, the HW should stop immediately and self
> > reset. There is likely a problem or a miss-understanding of the self
> > self reset mechanism, as unless we make a long pause, the next command
> > will then report an error even if there is no error in it.
> > 
> > Disabling error detection fixes the issue, and let the decoder continue
> > after an error. This patch is safe for backport into older kernels.
> > 
> > Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
> > Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> 
> This is effectively how ChromeOS previously was using this hardware for
> years. When moving to the upstream/staging driver, this started giving
> us problems. This fix is helpful; we'd rather sacrifice error detection
> for now, to avoid hanging the hardware in error cases ;)
> 
> Reviewed-by: Brian Norris <briannorris@chromium.org>
> Tested-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Given this is stable material, looks like we should queue it,
while the rest of the series is still being discussed.

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
