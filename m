Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ADAEC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 10:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvDcpYn6Arr17LyWh6DUyFt1MWPQe+zIffNbrYWzKYk=; b=APtwaPzN83Jmft
	Tp2B5/2OtiDghxH4HbticAf+V09RkhcuiLzGjlnny/5GFl7wKK0ia9zsNRN+QeUkWVM9GmMyyWDlV
	No12ufoeZEp253jiN8ShwMjzgOjpLfXcb57LqcR0efs2R9L9ICJNcY41jBZarYEbdF1NcPRBLRDS1
	IymnhYE2O3dyRf4TXI+ZIxBB6TWIHU1G+adCasc/E/HcnKVT90R+Q2MWOf7rGtHY3Ce5Queywahiv
	TXNSPuvE7wlcHuMQz0x3pyZ9k0ch0CqJ+xrm8txrdY0UtBHgnCPcq5FYEeLl5no6G0kZjPCZZNeWh
	CjmxlxQsa7MXCpN5zsNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nppAu-001Gon-VG; Sat, 14 May 2022 10:39:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nppAj-001Gid-9D; Sat, 14 May 2022 10:38:54 +0000
Received: from p508fd4ce.dip0.t-ipconnect.de ([80.143.212.206]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nppAa-0006cU-CP; Sat, 14 May 2022 12:38:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Colin Ian King <colin.i.king@gmail.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH][next] drm/rockchip: Fix spelling mistake "aligened" ->
 "aligned"
Date: Sat, 14 May 2022 12:38:42 +0200
Message-ID: <5595180.aeNJFYEL58@phil>
In-Reply-To: <20220513135341.290289-1-colin.i.king@gmail.com>
References: <20220513135341.290289-1-colin.i.king@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_033853_369334_AA86ABDF 
X-CRM114-Status: GOOD (  15.61  )
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

Hi,

Am Freitag, 13. Mai 2022, 15:53:41 CEST schrieb Colin Ian King:
> There is a spelling mistake in a drm_err message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

didn't you sent the same patch some days ago already?
Which is applied to drm-misc-next in [0].

Just want to make sure I didn't miss anything.

Thanks
Heiko

[0] https://cgit.freedesktop.org/drm/drm-misc/commit/?id=f0eaf60c67738da8aae786bda74a2fffeca6d7cc

> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 0b49fed16535..04e8e22a8640 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1202,7 +1202,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  		 */
>  		stride = (fb->pitches[0] << 3) / bpp;
>  		if ((stride & 0x3f) && (xmirror || rotate_90 || rotate_270))
> -			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligened\n",
> +			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligned\n",
>  				vp->id, win->data->name, stride);
>  
>  		rb_swap = vop2_afbc_rb_swap(fb->format->format);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
