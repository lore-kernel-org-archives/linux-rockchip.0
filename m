Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB20FC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rE5yu8AM4qbEr5Uw0CIHbixe7gSWYxa145jnZrRXKpM=; b=48VFtbOOQ08jRW
	r08lNejqowotonEhY1e5o/qoSxVtaQp0oNiAxYjdXcanGuZGkyA4S2FKzmsB+62kSFLHVe5+f1KBB
	up/jKi80krNbbDDItREzxvG7C3ePB5SeTlUJM5E2GxvG4XtDy5ZY2MKzpxwajjUOkcBe9wUdE94BC
	YEjU3hVM/fsURmDJMgFJRBCunW8RY/vE42+V3m82yzy76w554mHnJaLj3gZ+xuSfvT5Q1u/tUHZjt
	EV4gZ9wOK5Chx2CfU+QK+lxKGhGiIabOSuFj9doW279QqZtUdytHRO1gXQCf4/8kYo+32987eLhfH
	OSZlfpD5GvMEzVLJjiWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCG0B-0051BN-SK; Fri, 15 Jul 2022 07:44:43 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCG09-0051AP-Pm
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 07:44:43 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7A4E1993;
	Fri, 15 Jul 2022 09:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657871075;
	bh=EYq45zGoUpOXunsfzllgRnepVXXmx+WGLuPM9ZT1l9U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WmSEmGcLE4C6+NHwAFufW+M0JB+gd9R58ZpbC+Ha77LJBdXjXZje+YHcKGWe2bDmX
	 zwLRIeCrLjvZIv/xzsy4p9nC2LvxvBGC/5FuvZUBaGYtMPJLwL2bBQzZ4gQuRWEwup
	 Bv0Mo5JjklzFFEUcJ7MNPGCIFaOQtBeSSLwvqI0I=
Date: Fri, 15 Jul 2022 16:44:28 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 1/3] media: rockchip: rkisp1: Set DPCC methods enable
 bits inside loop
Message-ID: <20220715074428.GE3411283@pyrite.rasen.tech>
References: <20220616160456.21549-1-laurent.pinchart@ideasonboard.com>
 <20220616160456.21549-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220616160456.21549-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_004442_014500_B673A500 
X-CRM114-Status: GOOD (  15.36  )
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

Hi Laurent,

On Thu, Jun 16, 2022 at 07:04:54PM +0300, Laurent Pinchart wrote:
> The rkisp1_dpcc_config() function looks over methods sets to configure
> them, but sets the RKISP1_CIF_ISP_DPCC_METHODS_SET_* registers outside
> of the loop with hand-unrolled code. Move this to the loop to simplify
> the code.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index c88a9c0fa86e..140012fa18f0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -18,6 +18,8 @@
>  #define RKISP1_ISP_PARAMS_REQ_BUFS_MIN	2
>  #define RKISP1_ISP_PARAMS_REQ_BUFS_MAX	8
>  
> +#define RKISP1_ISP_DPCC_METHODS_SET(n) \
> +			(RKISP1_CIF_ISP_DPCC_METHODS_SET_1 + 0x4 * (n))
>  #define RKISP1_ISP_DPCC_LINE_THRESH(n) \
>  			(RKISP1_CIF_ISP_DPCC_LINE_THRESH_1 + 0x14 * (n))
>  #define RKISP1_ISP_DPCC_LINE_MAD_FAC(n) \
> @@ -66,13 +68,9 @@ static void rkisp1_dpcc_config(struct rkisp1_params *params,
>  	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_SET_USE,
>  		     arg->set_use);
>  
> -	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_1,
> -		     arg->methods[0].method);
> -	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_2,
> -		     arg->methods[1].method);
> -	rkisp1_write(params->rkisp1, RKISP1_CIF_ISP_DPCC_METHODS_SET_3,
> -		     arg->methods[2].method);
>  	for (i = 0; i < RKISP1_CIF_ISP_DPCC_METHODS_MAX; i++) {
> +		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_METHODS_SET(i),
> +			     arg->methods[i].method);
>  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_THRESH(i),
>  			     arg->methods[i].line_thresh);
>  		rkisp1_write(params->rkisp1, RKISP1_ISP_DPCC_LINE_MAD_FAC(i),

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
