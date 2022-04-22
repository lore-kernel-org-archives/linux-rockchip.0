Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3EEEC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 07:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKOlY1Ut/IFV+kQFS+o0+U9jKm3B2D6vMHqNBiXdjgU=; b=P4i5ip4biQoDWV
	D86/SFdzfhPmvQr4QERvr4DVBn9RYUR2nIMXsew4WiTLc4akJELPuh8kcZY9Qu9kZo2asiA4+FT6o
	/0b5ICvKfliAANFWDWMwhHrP+Pgiwl5r6ZUePmB79GoGOZegdYMOpsdECl6nR1LxKk5QwUkt5nS2v
	zZNd7VwmImgQgU0e6ESNW9asLYa7SoSCak5da5nTHGJUTNPc9uRsQ/aMJbPuoUF7ELWAXstskLmyU
	ySrsL1Wgg+oCFzRk7FYHpa1XghFYqAM8x8wzrbs11AMMZLCXN9rWaV/sARdAm8Yi6IWWrTQ1Pcfvr
	nx6CmpraRXv10gJDBwsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhnyP-00GwVw-Gb; Fri, 22 Apr 2022 07:45:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhnn2-00Gqgr-Ny
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 07:33:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id D12D9CE2784;
 Fri, 22 Apr 2022 07:33:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CD0CC385A4;
 Fri, 22 Apr 2022 07:33:10 +0000 (UTC)
Message-ID: <4f4c3348-4eae-f881-74e4-d39aeebf5356@xs4all.nl>
Date: Fri, 22 Apr 2022 09:33:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 12/24] media: rkvdec: Stop overclocking the decoder
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
 <20220405204426.259074-13-nicolas.dufresne@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20220405204426.259074-13-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_003316_987382_A7788D73 
X-CRM114-Status: GOOD (  19.58  )
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

On 05/04/2022 22:44, Nicolas Dufresne wrote:
> While this overclock hack seems to work on some implementations
> (some ChromeBooks, RockPi4) it also causes instability on other
> implementations (notably LibreComputer Renegade, but there were more
> reports in the LibreELEC project, where this has been removed). While
> performance is indeed affected (tested with GStreamer), 4K playback
> still works as long as you don't operate in lock step and keep at
> least 1 frame ahead of time in the decode queue.
> 
> After discussion with ChromeOS members, it would seem that their
> implementation indeed used to synchronously decode each frames, so

frames -> frame

Regards,

	Hans

> this hack was simply compensating for their code being less
> efficient. In my opinion, this hack should not have been included
> upstream.
> 
> Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index c0cf3488f970..2df8cf4883e2 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -1027,12 +1027,6 @@ static int rkvdec_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	/*
> -	 * Bump ACLK to max. possible freq. (500 MHz) to improve performance
> -	 * When 4k video playback.
> -	 */
> -	clk_set_rate(rkvdec->clocks[0].clk, 500 * 1000 * 1000);
> -
>  	rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(rkvdec->regs))
>  		return PTR_ERR(rkvdec->regs);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
