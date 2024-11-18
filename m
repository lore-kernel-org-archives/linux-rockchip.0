Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F99D4920F
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Nov 2024 11:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11/rA1AuHJMzBTEGo0vBHfI8ogjuSDFGJWeFxPf36TE=; b=pCuVNGyYnQTAEc
	ukCtAFYNg4mSpx9LM3S8Tm55THf42cB5XFlqX9j6ZibxtnMylSKW0F8jRcXB7OZgHgDy+SF+b0CiC
	tK7gBc83r+2ikK5BsNWod61/rMo3YeHebyx2bHUfJtTM+vi45od05KGdV82Fmb/bB+FJFZQkg165Y
	rySCgK4Op8aT7f2DE9YXoEKI/63y1yFN0E9aV/IW3NHSfoYj+3a1wbrYvKWBmrqd5OMSW8S4djqHF
	yVT+4iCXcpf1i2laRQIQCW/x9mYkSSpgUUXQ0e11z9ct2Nk5Ob68MJa0nZBRSbcW962Wvz/y3QFuF
	l1ag1th22VoMD/uYUSZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzhj-00000009Dk9-1rw4;
	Mon, 18 Nov 2024 11:14:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCzgl-00000009DWm-3JwU;
	Mon, 18 Nov 2024 11:13:05 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5E8795B3;
	Mon, 18 Nov 2024 12:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1731928364;
	bh=9FZtUrLxgITXxMZ87S63LEQHrA/feohoWzEBTJ5kX2g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aWE4QKXkEVkAGci1B/4oU48WhnfVRM+9r+GqkCD8E6QpEZCJrTFyfS3SmczquDqxI
	 GRe9hjT+bymWJAg/MWSc4ozlAm1Fhr2hGcVrAdK3nNGsyrEMgohMIIi+RYhsnxrTDl
	 P29fpFbI0nqOnaHbia46POuSs8uZYYltmQF2AvE8=
Date: Mon, 18 Nov 2024 13:12:52 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Cc: dafna@fastmail.com, linux-media@vger.kernel.org, mchehab@kernel.org,
	heiko@sntech.de, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 media-next] media: rkisp1: Fix unused value issue
Message-ID: <20241118111252.GL31681@pendragon.ideasonboard.com>
References: <20241118093721.55982-1-dheeraj.linuxdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241118093721.55982-1-dheeraj.linuxdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_031303_967019_8D105F8C 
X-CRM114-Status: GOOD (  17.19  )
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

Hi Dheeraj,

Thank you for the patch.

On Mon, Nov 18, 2024 at 03:07:21PM +0530, Dheeraj Reddy Jonnalagadda wrote:
> This commit fixes an unused value issue detected by Coverity (CID
> 1519008). If ret is set to an error value in the switch statement, it is
> not handled before being overwritten later.
> 
> Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index dd114ab77800..9ad5026ab10a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -228,6 +228,9 @@ static int rkisp1_subdev_notifier_register(struct rkisp1_device *rkisp1)
>  			break;
>  		}
>  
> +		if (ret)
> +			break;
> +
>  		/* Parse the endpoint and validate the bus type. */
>  		ret = v4l2_fwnode_endpoint_parse(ep, &vep);
>  		if (ret) {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
