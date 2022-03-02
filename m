Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 988A2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 14:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu1l0XEV2OUDFdnQq4lKRW4F7gdOTl7E7ssvycz9jVs=; b=qI9nAekfrHrxej
	bbV3marypjh0SQhKDXdIIETAc4akTwPYEWI+qO927yPXtNQVbiIsNtevrxGrcQmbh6ezZgmyCOn4W
	YhmNKDiXnDYE4WwlMGYVMejbY5/CcVx6RFYaRx5VvxxbtDIk+yq17NyFa2d987k2e2BPtPl2SDVXb
	r+UDGZs0OmdebcDLADARzeiDISn6kKO5bp1SOxg5mMzs4z2skc7p4hDSfFRUYB6NTZgTxKRcsBVzA
	S9v8kmE9j3eNr4u42iEU2IMfYPuQV4FLvAdVYNfmDIf5HkSzt2zHSzt+F9wHDLPk0hHpH51ZgsXfs
	V8OTSHTa4wYSjzNTiFRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPPvF-002yhx-EJ; Wed, 02 Mar 2022 14:25:45 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPPvC-002ygr-CW
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 14:25:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4160F5C0563;
 Wed,  2 Mar 2022 09:25:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 02 Mar 2022 09:25:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
 cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=6ftNplKsZwbKfNPkFoUfJX/ZRhcgiPe/5y0QRo
 OrG94=; b=eLauOT2pSxEgzlM/O3b51PqedGKux2u0XfYVGau/kaZIjb6BLD7QXe
 DXzeXKcVg4fgnuLZlAqyfpqXII03LVfo2I2ZWToX9oTRBFs8sZ3dy4CXHs6t//bE
 dieMGJ5vsH/a41XPgXk/gKq8lCKfpjjL1Fzz4N+tiZTUBoqquIJwiAPS/xnvnHJE
 H02i83sXtDNMtOFv8r/FGsNTmYO4mbLG4I0WqtghXrN6Gjda9/fSD33ajRnFvT4v
 Frq3LsijlhwVPgc0wcvtpXr7A0RNvI03UcEeXXkCfmpQCtyDjYI1RCCFTUX8udJr
 K4JwhL4hBLMZBeup6uP9P7WPgCOMA5Og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6ftNplKsZwbKfNPkF
 oUfJX/ZRhcgiPe/5y0QRoOrG94=; b=M16xq+gKzo6LULFZ91F9yiXS+GxdY0tua
 wVE2LHfGCHfucRbM+3i2UOrZzppK9hnPw70t23VrAymA94k1NsgqK+OTBbi128AD
 2v20agQ3YkFLpSCaIZWMMWBSHnTk2K/LY1HKgbbWjNnX3A92Wub4bZFr0TU1u3so
 w5kC9ozLVa4nen4QpwmRgf9GQu38tQGwGgqk3joZudWl5gKiOGly62ssmkCqkrbB
 8vK678NAeEr33++BW6bGcM1/JYxaYzr6IZkFUubgbAYks9ZfAnk1MF38UA859MRt
 urzwR8tT9CVZbVRu5J9rSv416oKAFt0bCvrIlu3eFEluV4GizOQVg==
X-ME-Sender: <xms:Yn4fYu0Jb_dxldNvS3-7EkFhYnPFKCWqcnJkyoM_AMoxOztCuCfaIQ>
 <xme:Yn4fYhFEpBE-Wj7Z3mksBiictqiHzBcCzppSwpv6NOzVw_aH3rfboUqpiGgBHyyju
 PdBknWC-ZrdYKOYom8>
X-ME-Received: <xmr:Yn4fYm6ZJI0wjIh2jeoFooVIxcsOb2ehHZuIO1QKT4iFe2A4GZkO6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddruddtgedgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
 ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
 ftrfgrthhtvghrnhepffelvddujefgieetvdelveetudeukeektdejvdegvdfgudelteff
 ueejvdevkeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:Yn4fYv2TuRS5CC04gYrYsQBJJhfbshD4LUF28W7bEGVhZ1wCD2G7cg>
 <xmx:Yn4fYhEVeZ3_eHiDi6Skqpj9j7mCQooZJxiBhTcK8YQcsW27AQasjg>
 <xmx:Yn4fYo_aDYAV-GS5LOAUrLK3PfuC3SBubdEhSWHgG2BHZpngicEk9g>
 <xmx:Y34fYlgtvTgl8dEcfczE0JPthfm3tNdDF2a9X3yQQ4MXqX5T1kAqaQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Mar 2022 09:25:36 -0500 (EST)
Date: Wed, 2 Mar 2022 16:25:23 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/16] media: rkisp1: capture: Initialize entity before
 video device
Message-ID: <20220302142523.pxgetau3pxffqpfc@guri>
References: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
 <20220227160116.18556-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220227160116.18556-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_062542_527626_0B2AF6AE 
X-CRM114-Status: GOOD (  14.90  )
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

On 27.02.2022 18:01, Laurent Pinchart wrote:
> The media_entity embedded in the video_device needs to be initialized
> before registering the video_device. Do so.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c   | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index c95c00a91180..9c11f2b8e5f5 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1372,22 +1372,25 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  
>  	vdev->queue = q;
>  
> +	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> +	if (ret)
> +		return ret;
> +
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
>  		dev_err(cap->rkisp1->dev,
>  			"failed to register %s, ret=%d\n", vdev->name, ret);
> -		return ret;
> +		goto error;
>  	}
> +
>  	v4l2_info(v4l2_dev, "registered %s as /dev/video%d\n", vdev->name,
>  		  vdev->num);
>  
> -	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> -	if (ret) {
> -		video_unregister_device(vdev);
> -		return ret;
> -	}
> -
>  	return 0;
> +
> +error:
> +	media_entity_cleanup(&vdev->entity);
> +	return ret;
>  }
>  
>  static void
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
