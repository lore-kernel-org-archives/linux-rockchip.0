Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18FE9C25B06
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Aug 2022 13:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vsqj46iuDtVKk82QSA/l9UH95F5EIA8YHzIMmx3bbo=; b=jusmfG1U6Qtz1Y
	PPwmdahgeNTiNvrLx55jmjNBnYdTYnRhi/876JY5zw/BrKYsf5/B4cWIDQiEcvVPD05k8BohmVNx0
	QaIBPnlUV5VLz/3oH3Q56C8QwTMDrxAhxRtWamfCcT01k4XWfICrFvmCHDgrlSMPCgMeB/nMZn24D
	WBIwuY4dkwvA2ERRQlPsx9/huenb6tcQTcfLzJeOEid6nJHSVR//9oPtFg+Ye5ROEb+RUotEV0GzE
	QlRwdTroyipPQ/DxmHiEOMsE1oMKNaZNg+yc2/pXOGm0mTTsN1CLShVmAV8gA4QhHdqbg35TcyFdV
	df+Pds0TdMczxH+OqjOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNDQ5-006hF8-VO; Sun, 14 Aug 2022 13:12:45 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNDQ2-006hDj-2R; Sun, 14 Aug 2022 13:12:44 +0000
Received: by mail-wm1-x32a.google.com with SMTP id k17so2736103wmr.2;
        Sun, 14 Aug 2022 06:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=N6io3A2B3gOnjaLctJK+AORdD68hnIfgj9pgUADE+0k=;
        b=iDymSYVbtnceEseY6LJGZvvSnhJThnz5nk0Q4aG1XvngKwqALSlMzSHEt5oiOtxMNa
         iykN/V+qXWXlzW8CvsZz8GuslLVxE36eKD8c9lULIGUp4cHAl/JjnUDAfL05J3f3MLgU
         DF9mZNHLDjepLmjxkPedIxjF7VbzQ5WLbujUw78wSS5TLIb2knhl35zxAmb2R3rk6oTw
         7rSCQzcD1UOm456dKHjkSpbCv0Nnrc3JrRThCMEJlqLCsKIqZ845YKqad9BhuVWJ+cij
         S4yq0Ts/sfyqpyhImBFfMHP7X0RMTajYmsK+9ymbPGcb6rwHUiNidokSD4tayAOAJoJF
         jX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=N6io3A2B3gOnjaLctJK+AORdD68hnIfgj9pgUADE+0k=;
        b=RHBojLCxdGHWcPOXBHE14iKFOb7J7uBWBF/nMRIV3lSukVnHp7ftSqhoTIy2/l/so1
         jMlSYyxZO0axQWRFw3GmeA2Mo4Xd1gna4uq0N6UHHF1Ii2HcI6EHIAJWEIB6ODlloR6+
         i3k5HJ+USMT0BV3P1z0BOzaDalh4i3W0Eyuhl+oK7zA6aIIRWraGZWP3x0Vqj/hy3D+i
         PygxUNdr2JRRj/6KWyIkEbT45sw3DUDMg1L2FCL/SFOdXs+LR/KQFTGaCMs1yaXoeEoc
         S5RKlfuBwxx12RD1BQK1+6F9BT8B89vJqOR9oLoi5i+/fy8mBGItejMutfNsNQSYPnII
         4MIg==
X-Gm-Message-State: ACgBeo3+1VYsYSttfTqVuZY6JmoAXFviFBEqhq+ezDJvBw5UXnv9UlYz
	E72XRvRChP3lSGJZCgxvZMORonJhGhHSwBkw1qJltBXKVb4=
X-Google-Smtp-Source: AA6agR7eiE/InuX3RR69EbMuEkyt3nq821a1W/YpUh7GHunF6VnG+PX7iJhl8bbovJIZnnwvZ9/FJJCOFKMKVRLZvzE=
X-Received: by 2002:a05:600c:5114:b0:3a5:cb1f:6bf3 with SMTP id
 o20-20020a05600c511400b003a5cb1f6bf3mr6961219wms.65.1660482760270; Sun, 14
 Aug 2022 06:12:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220814040806.7523-1-kernel@undef.tools>
In-Reply-To: <20220814040806.7523-1-kernel@undef.tools>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 14 Aug 2022 15:12:28 +0200
Message-ID: <CAMdYzYoD9kM_RNs0t=7qc9Tyt9j-cD0DEQD0sR5cEkkGifFSSA@mail.gmail.com>
Subject: Re: [PATCH] media: rockchip: rga: Fix probe rga_parse_dt bugs
To: Jarrah Gosbell <kernel@undef.tools>
Cc: Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, phone-devel@vger.kernel.org, 
	Ondrej Jirman <megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_061242_134499_F4FBCB85 
X-CRM114-Status: GOOD (  20.15  )
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

On Sun, Aug 14, 2022 at 6:10 AM Jarrah Gosbell <kernel@undef.tools> wrote:
>
> From: Ondrej Jirman <megi@xff.cz>
>
> rga_parse_dt is missing a error return, so if some of the resources
> return DEFER_PROBE, probe will succeed without these resources.
>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Jarrah Gosbell <kernel@undef.tools>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 2f8df74ad0fd..b88dd7ed2036 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -815,8 +815,10 @@ static int rga_probe(struct platform_device *pdev)
>         mutex_init(&rga->mutex);
>
>         ret = rga_parse_dt(rga);
> -       if (ret)
> +       if (ret) {
>                 dev_err(&pdev->dev, "Unable to parse OF data\n");

If this can return EPROBE_DEFER, shouldn't this be dev_err_probe
instead of dev_err?

> +               return ret;
> +       }
>
>         pm_runtime_enable(rga->dev);
>
> --
> 2.35.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
