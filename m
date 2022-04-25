Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1248AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 12:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m28qTd8UzrX3FKekOIQ5IURvLhbH+iU2tbJIEKh8InA=; b=y/I+iJlQKveAU7
	uk3LaxlCEPUJr9t5kbrAh6yt4Zh4mKrxxfuxnUeLQzy7hmZmXhbNWDM/mSYfYITi9mdotYYLuSNH4
	Agn74WLyYLYfK+iTq4r473miq6BNzNCWZ4qkz40bDdOYFVOCDBzQuj7wyVzw6OB6Ss7Vvl0o8xcVj
	754xF8AOI/u6+qTT9BMxhrlhZOnwGxHVoNt62LRVCo8MDHDwBy0i357ctUqR66GT2iLR5s7Yo+U4F
	nboKcHA6oUbMShMYy3nt/HIKdtuNY14ViE3VaqaybvQS+WvmPSvP51DRowv/Q1elTdtYsN3QOPWpr
	JqBOKAXzY8kk7xxclzbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nixa5-009RyZ-6n; Mon, 25 Apr 2022 12:12:41 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nixa0-009RvF-9U
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 12:12:39 +0000
Received: by mail-ed1-x52c.google.com with SMTP id a1so12474933edt.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 05:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u8jWkC3uGhpIesYWEXYlUoa6QOg8WMwc/6eHbmnOET0=;
 b=z8IQnKw/QCUVdEhGIPQl+8KO75rfqTMoiKMA3BB9sFazxr+viuAmkDtOFAjYYeqiOc
 BICBVB5W2S7RFYNSYuiQ6npvOUj18cyj24dNXTVDLHF+Df1i3nrw0JfwTe3/UGJ4/wUE
 Qca2+w5QoifM49TBcyBSRvgIievMdF2gdAJds31r60IivrAwNdzi3MI849ffzBimYtZG
 vwDiY04IZruTc3NDSAl4XfavEBJ1vfBwMPdlEkYSVfnOVY15MH9gH0F7JHLbs43U8yMf
 h/8JO4jyVbPJnAS414pRuAsGdZ9Da+iWc9gku4zBIfYqxQSrDaaccKm2crCoDnSsiUne
 u/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u8jWkC3uGhpIesYWEXYlUoa6QOg8WMwc/6eHbmnOET0=;
 b=ML4MfhGD9tTedHn5AZFzOOSKnGHhR8OMAIu64ia4atyqUsryiZxRw8Z6OCMkM8CFIa
 Mh9Y/A8mWAvZNLxxhRDMRVddilOH8EO5BnNWxbKZpuba861Cn3EZrwP9yCtQWy1FHJzX
 /Z5JkeSX6UR4KnlKccoyg3UkSOgkzaDNqyaaXstZUWo/bivY12/O6NfMLDiZEKZLbOpD
 9luPhDWcCSapTAuctwyvyZ5/pQFz2hYyGh6YCCE4AOos3A2rxpu2FXWBQLgQfgqJDo2j
 fQ/WmzD/MjGo29rue81Yicv2uo09oKD/GAv5kkfDEiqhOdItrzIs22wWFw/DIxofnpnA
 wFoQ==
X-Gm-Message-State: AOAM531kaplZQQfB36/N28Yv6W0FQni5mfX7B6ShL/ucEOso7TQZ+cKG
 N/UQy3hhmxbEEHl35r+DcROdC6eNInPpMRrL262DHw==
X-Google-Smtp-Source: ABdhPJyaFAHnaHfcxF9oK2zzYsY2EtPh/uGq+12bC7Ho7eUw/yPfwKq2bJmWpg53blCYTMA1ROMhpC7iIBK74ygqh2U=
X-Received: by 2002:aa7:c789:0:b0:413:605d:8d17 with SMTP id
 n9-20020aa7c789000000b00413605d8d17mr18351707eds.100.1650888752051; Mon, 25
 Apr 2022 05:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220425105346.324864-1-benjamin.gaignard@collabora.com>
In-Reply-To: <20220425105346.324864-1-benjamin.gaignard@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 25 Apr 2022 09:12:20 -0300
Message-ID: <CAAEAJfA2K2-YOruDMUjHixaPa1wfTSwpb3K5A-y_i3H6BF7oKQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg KH <gregkh@linuxfoundation.org>, linux-media <linux-media@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, jon@nanocrew.net, 
 Adam Ford <aford173@gmail.com>, Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_051237_986838_D9A5AED7 
X-CRM114-Status: GOOD (  14.53  )
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

On Mon, Apr 25, 2022 at 7:53 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> Always set pps_cb_qp_offset and pps_cr_qp_offset values in Hantro/G2
> register whatever is V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT
> flag value.
> This fix a couple of tests in fluster.
>

Which tests?

Thanks,
Ezequiel

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index 2c8eb0720db8..bb512389c1a5 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -194,13 +194,8 @@ static void set_params(struct hantro_ctx *ctx)
>                 hantro_reg_write(vpu, &g2_max_cu_qpd_depth, 0);
>         }
>
> -       if (pps->flags & V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT) {
> -               hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
> -               hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
> -       } else {
> -               hantro_reg_write(vpu, &g2_cb_qp_offset, 0);
> -               hantro_reg_write(vpu, &g2_cr_qp_offset, 0);
> -       }
> +       hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
> +       hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
>
>         hantro_reg_write(vpu, &g2_filt_offset_beta, pps->pps_beta_offset_div2);
>         hantro_reg_write(vpu, &g2_filt_offset_tc, pps->pps_tc_offset_div2);
> --
> 2.32.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
