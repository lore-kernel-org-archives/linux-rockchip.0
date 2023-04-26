Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18374C77B60
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Apr 2023 22:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdXqgSvklt2ZWE0NoT9vmHjJyTLmKCgHFeDM8tB+UjY=; b=yXHXlEYCG5/aea
	nRLft+ffzuEh1qELMpGdQdAHY0fI0dtE8JEJ3Ni+YcdMWOywrs9SOfOIHsJjoU7CyjtE4ogTN3oKC
	ctQ+CCFrka+htX4bhcZKjfWUQSCO/CrRAKvRfeNRSUygOqOrbvdcL9VsOwvMc08VXXcTEBFwP0pMy
	S6eVil281m9nY288W7KXXZ4Y4XZuUArcBu/QpVnHbbHQz1CdK+a3POSorD34OsyHpiJJS6COyJCfR
	JFxbYBmKahwjL+YkIH+98Fu5TW0g9Dh5XDWkd3D+WXWB6sY35Ec7tZ2HdKFhwFATcsug6RBoUN90k
	ch3Sc6cTL7CdmwXY+nvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prnUh-004wkt-2z;
	Wed, 26 Apr 2023 22:20:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prnUe-004wis-0Z;
	Wed, 26 Apr 2023 22:20:09 +0000
Received: from [IPV6:2405:201:0:21ea:73f6:2283:f432:3936] (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F09E2660309E;
	Wed, 26 Apr 2023 23:19:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682547596;
	bh=+OscA6mJnbIYnZfMg7bAO4iT6/B0MVE8PNNsUBI7ZJU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VEDcQrFdE1I+omJfqHC8m/BHpXEM7wrEriDN2hxAn4O3x5NnuVgnf72/71aMwJ/Jo
	 gDhkCAd5C9lFGLlUhTdsgI8HmvAP6PVhLvXTyR3DcImczEzLtX8zBP9lgcDx3xhFon
	 0vdJYo8OihQDlCT50sm1WWvpqgpo0/BzLR1DEY8/JKZnekpQC5Je9Z23lpnFqNYxus
	 rB02gfObh36TMPh2yLtBTnT6N41C4BJxbiv4tn6Z5kOJeR5i+e7hv+XYeGN5Pn+Bqa
	 HaEH6nSRFsV5pv/L76U2U86ufVKMWzzRS3DuC9o946821M3ZSF9g6sfislLIvmyrK7
	 yp3NsqEZo2M0A==
Message-ID: <26addb7d-bb9d-34e8-d4fe-e323ff488101@collabora.com>
Date: Thu, 27 Apr 2023 03:49:48 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst
 formats in reset functions
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, robert.mader@collabora.com,
 nicolas.dufresne@collabora.co.uk, ezequiel@vanguardiasur.com.ar,
 festevam@gmail.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, linux-imx@nxp.com, regressions@lists.linux.dev
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
 <20230220104849.398203-2-benjamin.gaignard@collabora.com>
Content-Language: en-US
From: Shreeya Patel <shreeya.patel@collabora.com>
In-Reply-To: <20230220104849.398203-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_152008_361749_40C5CBD2 
X-CRM114-Status: GOOD (  17.61  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin,

On 20/02/23 16:18, Benjamin Gaignard wrote:
> Setting context source and destination formats should only be done
> in hantro_set_fmt_out() and hantro_set_fmt_cap() after check that
> the targeted queue is not busy.
> Remove these calls from hantro_reset_encoded_fmt() and
> hantro_reset_raw_fmt() to clean the driver.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

KernelCI found this patch causes a regression in the
baseline.dmesg.alert test [1] on rk3399-rock-pi-4b [2],
see the bisection report for more details [3].

Let us know if you have any questions.


[1] https://github.com/kernelci/kernelci-core/blob/main/config/rootfs/debos/overlays/baseline/opt/kernelci/dmesg.sh
[2] https://linux.kernelci.org/test/case/id/6442e825f19134d74c2e865d/
[3] https://groups.io/g/kernelci-results/message/40740


Thanks,
Shreeya Patel

#regzbot introduced: db6f68b51e5c

> ---
>   drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++-------
>   1 file changed, 2 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index c0d427956210..d8aa42bd4cd4 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -382,13 +382,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
>   
>   	vpu_fmt = hantro_get_default_fmt(ctx, true);
>   
> -	if (ctx->is_encoder) {
> -		ctx->vpu_dst_fmt = vpu_fmt;
> +	if (ctx->is_encoder)
>   		fmt = &ctx->dst_fmt;
> -	} else {
> -		ctx->vpu_src_fmt = vpu_fmt;
> +	else
>   		fmt = &ctx->src_fmt;
> -	}
>   
>   	hantro_reset_fmt(fmt, vpu_fmt);
>   	fmt->width = vpu_fmt->frmsize.min_width;
> @@ -408,11 +405,9 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
>   	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
>   
>   	if (ctx->is_encoder) {
> -		ctx->vpu_src_fmt = raw_vpu_fmt;
>   		raw_fmt = &ctx->src_fmt;
>   		encoded_fmt = &ctx->dst_fmt;
>   	} else {
> -		ctx->vpu_dst_fmt = raw_vpu_fmt;
>   		raw_fmt = &ctx->dst_fmt;
>   		encoded_fmt = &ctx->src_fmt;
>   	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
