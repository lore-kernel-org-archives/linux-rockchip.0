Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5FE0C48BC4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 18:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBTIWl3o+VSFCzU9j2dsElS5MumBTiFFHv0JgyQqQBk=; b=ByUDrdC1QvC7Wh
	m3H0duhFrjZchu/sVV+Vn6DKfQ/MxD5MreZDf6cQLqV34EJz8nRcZwQQqpbKKbT1gsGFY8qSwiphz
	3v4DoRPC1Z65/utUsl4MGkQSpxCn3SLAMzOnRk9zdQU7MvEQ+q90Ii8OjvgaRRxzlCDqNOzL9zzyn
	UlcNJy1hMfhi7DSemx67ggGSRFN7h+3z2rpeCS5n6R7CU8oUBU6nDWhNvyA7sRb5FwSruR+vrrhsT
	C72YjXuv2Qnihiqbyn8Me+k4uF4an5m0L2nKwP2/wtA0mh1p0owkKD7wTNUZyl2ueUD6pMDzw76Du
	A15K32TMPqvsXl22FEmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rblt0-00000008C8Q-3m5A;
	Sun, 18 Feb 2024 18:27:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rblsx-00000008C7g-2zj8
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Feb 2024 18:27:33 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 56E37480;
	Sun, 18 Feb 2024 19:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708280843;
	bh=TUthxYyUEHuO74Lh6HcqiWly+WRYc2MjeEeGfpBGnMo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mTNVOFjmPTAypEwrtMCf4mfuoFWGYhm/p+bkVdAGecv/ly5BRoiqNm2gVA12CKy/I
	 FMpmOcKcUrCFUrO98AjrdzKRVk3pL/emqygq5TSKt/pv2BXWy7gBsSeExIsYsUZ5i8
	 GJpekJ7kGDF2fGKXSCruj1okIbfcxIxDO25K+onw=
Date: Sun, 18 Feb 2024 20:27:33 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com,
	aford173@gmail.com, Dafna Hirschfeld <dafna@fastmail.com>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v12 06/12] media: rkisp1: Add version enum for i.MX8MP ISP
Message-ID: <20240218182733.GI7120@pendragon.ideasonboard.com>
References: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
 <20240216095458.2919694-7-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240216095458.2919694-7-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_102731_914159_E773E46A 
X-CRM114-Status: GOOD (  17.38  )
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

Hi Paul,

Thank you for the patch.

On Fri, Feb 16, 2024 at 06:54:52PM +0900, Paul Elder wrote:
> Add to the version enum an entry for the i.MX8MP ISP.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
> New in v12:
> - split out from "media: rkisp1: Add match data for i.MX8MP ISP"
> - changed the version enum name
> ---
>  include/uapi/linux/rkisp1-config.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 730673ecc63d..2d1c448a6ab8 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -179,12 +179,14 @@
>   * @RKISP1_V11: declared in the original vendor code, but not used
>   * @RKISP1_V12: used at least in rk3326 and px30
>   * @RKISP1_V13: used at least in rk1808
> + * @RKISP1_V_IMX8MP: used in at least imx8mp

We need to also update the comments that references version numbers in
the same file. I'll send a v12.1 as a reply.

>   */
>  enum rkisp1_cif_isp_version {
>  	RKISP1_V10 = 10,
>  	RKISP1_V11,
>  	RKISP1_V12,
>  	RKISP1_V13,
> +	RKISP1_V_IMX8MP,
>  };
>  
>  enum rkisp1_cif_isp_histogram_mode {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
