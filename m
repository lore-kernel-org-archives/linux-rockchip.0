Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F572C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 00:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKI/qP26+TcvjNpQsAxRyCv/SnHiK+Ux/Mah2+mJIQk=; b=imboLa6aCvmiwk
	n4sP8FuZ6YRQSPFpomaoSiRrtXnafiDcP5Udwgv4IHyvN6gxS6zibYiTEGpgaQTqDlTI+sDDAEp1o
	eBmeUTP7d7bcWHbU0K5EUN/gPyW36lt9pi2vl8//KoLJ2zto4aOBiJXvK+RzQO6FxJ0z0sWL2/711
	E31iALBEKwZq+zTlbVQYOPf+lKeqIQEXA/m0Vu+vZzG5s76a2wibdbZ4icck+k8npQrLvhjI/ja3Y
	tXCZzDkr4e9FW0A/iZacK0YLc8ZN0+3Ov/Q69z3UyuFMBST/ozGgJLJvpXBrC6LFYTGedue519W1D
	QPTDrOOqDR5Lcm8b6Uuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmPZZ-00DM2n-SF; Thu, 05 May 2022 00:42:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmPZN-00DLt0-D7; Thu, 05 May 2022 00:42:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 5D6FE1F40A4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651711327;
 bh=MyOm9L9WGRdUCHRglVPQ6r+0Az2kPrdmLi4U0cgQB+M=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=OzGMoesSvl76vDw/rGqLDlidJ30q+2p8JVEemntpZj/HiFybMjDA64LAQlAuBXCDv
 ddHuD/R0AiRd0qGdMOQU3IKMpL6cUYyiB31hXaFcPGYOYx15QobmdbztD8c/AXll9M
 lYER4eSv4WHNv/f/509FCX0O9Ua8VzNlrO6VQRjlHwPvWSWIsgIebs3WMHvGbp8N7o
 0lFvG17/neKrcP9HzEJoUMcWLxIwEsnUcmqyLhU9MLmB+usJiGbxRms1is1I5UqkFm
 jgzYyWq1GtDPthuLF7d3zG6wxigGxTqKdnuXjSx809hL8eBmphREbxwV2r+4VMyHZx
 Q8lrF5JxdXuTw==
Message-ID: <dfda7666-7325-f4a1-69b1-6b3cb9701b62@collabora.com>
Date: Thu, 5 May 2022 03:42:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v4 05/24] media: h264: Use v4l2_h264_reference for reflist
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: nicolas@ndufresne.ca, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
 <20220426125751.108293-6-nicolas.dufresne@collabora.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220426125751.108293-6-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_174213_605951_16F48129 
X-CRM114-Status: GOOD (  12.04  )
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

On 4/26/22 15:57, Nicolas Dufresne wrote:
>  static int tegra_vde_wait_mbe(struct tegra_vde *vde)
> @@ -768,7 +768,7 @@ static int tegra_vde_h264_setup_frames(struct tegra_ctx *ctx,
>  	struct h264_reflists reflists;
>  	struct vb2_buffer *ref;
>  	unsigned int i;
> -	u8 *dpb_id;
> +	struct v4l2_h264_reference *dpb_id;

nit: will be nice to preserve to reverse Xmas coding style, but only if
you'll need to make v5 with more important changes

>  	int err;
>  
>  	/*
> @@ -811,14 +811,16 @@ static int tegra_vde_h264_setup_frames(struct tegra_ctx *ctx,
>  	}
>  
>  	for (i = 0; i < b.num_valid; i++) {
> -		ref = get_ref_buf(ctx, dst, dpb_id[i]);
> +		int dpb_idx = dpb_id[i].index;
>  
> -		err = tegra_vde_h264_setup_frame(ctx, h264, &b, ref, dpb_id[i],
> +		ref = get_ref_buf(ctx, dst, dpb_idx);
> +
> +		err = tegra_vde_h264_setup_frame(ctx, h264, &b, ref, dpb_idx,
>  						 h264->dpb_frames_nb++);
>  		if (err)
>  			return err;
>  
> -		if (b.refs[dpb_id[i]].pic_order_count < b.cur_pic_order_count)
> +		if (b.refs[dpb_idx].top_field_order_cnt < b.cur_pic_order_count)
>  			h264->dpb_ref_frames_with_earlier_poc_nb++;

Tested-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
