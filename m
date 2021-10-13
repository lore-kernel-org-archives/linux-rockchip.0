Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29DCC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 22:50:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EDA661105
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 22:50:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4EDA661105
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dk128lyTHTBg8n67y/OSUXT58Mmr+UhdlugkhXoRR1E=; b=IGI94z/15tVs7E
	5eEx/Y8KsQd7/1wCbH/IksrupJ/9nvLNffqD58RwVxIj9d0uxszpAu7PknPw1lHf5TkCT3FwFB+EW
	QO1j5UqorvjsVlwjNu7tMdRjWiHxHlkm0BD5+JZANJPhzaHXFepyoLCJ1w5Sd1auLETrCsMf7bLGs
	J20UG31gUJGILB7jZiXdn4oFRRViFd2IHynRvzlzDYjmus/nvwDsffFYJmE8ycQOZi0+mxyDIf21Y
	GdSvSbjmIPA3QQ/MKkU2qx90brwoZO4h4U45/bPD09LhYBfhjk/wmpvYnWmqTa2xkPApwrfYI+wN/
	gSZ0yJmZPwvoA4Se/cEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1man54-000w9b-Hq; Wed, 13 Oct 2021 22:50:38 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1man50-000w8c-Fa
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 22:50:36 +0000
Received: by mail-qt1-x836.google.com with SMTP id r1so4139922qta.12
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Oct 2021 15:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xM1fMd37P0GkH+ZlVvAIHq/XlgyRCHndX09GA3o6I2w=;
 b=sV74+qP2MQF6w9NmafHoTpTolVfVwa0rljewKiYT94oDqfz0A5uHEVwWv2+SmELSHc
 tWi6VdT69T4pL6mhUtsPnJwakwfrCd8tASkny/rtRx3bV5bZnliB+S91yJtXbcd4cJsP
 CEhnBkaQthmsfom4VTyB5PDG8CoKhTHAi0ufvApv/LElVrWx/9vAwQnuQ4FIx80EIjgr
 yeORRy5s1q4pLKS0K3IRbLLUlzgFwOrD4yiBCTNTw7+G6ykXocghAiFCj3U3+GBI2e/7
 5awydk+SNqULo5yRmsVegI6pH+Cn83rFSzSS36NqX0k3ET+lDcgZ6BH/8i5vOlv2eUAo
 Kakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xM1fMd37P0GkH+ZlVvAIHq/XlgyRCHndX09GA3o6I2w=;
 b=t5C2615ALCKsl9OrPYP5SLDqIfU1cvo0t8C858KeL/zbiqLPOiEZZ1KZ/PvywCwwJY
 OiEMUGEYtiO+xiUtelH4gpJewqmFaIxw3+RyTLyZC+RuVL5dizvEa7fu6dLXTapGnPtP
 id/fpx1Djx5IOPOhdNmPAK9xyon8L9zdh7GvndjGFNqLSrvNyHmSQtEmhgQ+x4xTujCF
 m7him7x5GEAYa25RIWRm8ZEn1oOZTZBHUQOEnQni4cYnMFZuJyq+7EjEWzfC/Hr8aXwf
 VdhdF+3ZJajAglshNOE+qfwxPUwQj3iNqV9n7hQc0KyhrpwePhlNAPgeKho/CSsUuxN/
 tLPA==
X-Gm-Message-State: AOAM533F5l2HDcDf9dZiBYjVNUAvHF9SwX7MsRWknYQdZ61KsRCVja5O
 c0eEuoBg4X5C0HkQRIbizgodFg==
X-Google-Smtp-Source: ABdhPJyMyktfWBfUtcNLXQN+ND/84ayn5d3dsHNkBD7ZxYgHVbjL6ZghrpM+UN8x+hQpM+G+IwpnBw==
X-Received: by 2002:ac8:7f44:: with SMTP id g4mr2516291qtk.130.1634165432864; 
 Wed, 13 Oct 2021 15:50:32 -0700 (PDT)
Received: from fedora ([196.32.91.248])
 by smtp.gmail.com with ESMTPSA id g11sm606454qko.31.2021.10.13.15.50.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 15:50:31 -0700 (PDT)
Date: Wed, 13 Oct 2021 19:50:27 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: media: rkvdec: Constify static struct
 v4l2_m2m_ops
Message-ID: <YWdis9cj3OyLFNaR@fedora>
References: <20211012221144.30638-1-rikard.falkeborn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211012221144.30638-1-rikard.falkeborn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_155034_789164_404AC25B 
X-CRM114-Status: GOOD (  18.11  )
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

On Wed, Oct 13, 2021 at 12:11:44AM +0200, Rikard Falkeborn wrote:
> The only usage of rkvdec_m2m_ops is to pass its address to v4l2_m2m_init(),
> which takes a pointer to const v4l2_m2m_ops as argument. Make it const
> to allow the compiler to put it in read-only memory.
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index bf00fe6534a3..28aab5c7fe33 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -677,7 +677,7 @@ static void rkvdec_device_run(void *priv)
>  		rkvdec_job_finish(ctx, VB2_BUF_STATE_ERROR);
>  }
>  
> -static struct v4l2_m2m_ops rkvdec_m2m_ops = {
> +static const struct v4l2_m2m_ops rkvdec_m2m_ops = {
>  	.device_run = rkvdec_device_run,
>  };
>  
> -- 
> 2.33.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
