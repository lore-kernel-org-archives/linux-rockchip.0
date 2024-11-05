Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8933D2B928
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Nov 2024 13:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXYWOcLr49dLN3s/Ioy1V9FJYSX0iuPEz6RoeUWvhiA=; b=DEanVkFelbaF5S
	XLS+v7xFEGuQ9CSbpKwtLqbTZYTDVNjUoV0/ky1DTQPJ5d9wUeZ4msgzTsWJsMvNd4GAxT4nWQ+LS
	A/5GoGDjM8FzuG6C23kAQmgzPDagYT8q8D18Wdc4E4v0iz4Ke1xz/UPYWYB14U6NfHBavhYVpxRAE
	ub6KDT0f9+7/eRLWkEpdBN3jhHIauFusejTjrkxbwjUaQ994/rNOvGgdr75ACl3N5+WIcGyt8ItET
	gU2VwikNq8nykc9L8LNvXghbCDPluhgHNWvyyulPyUGB/pYMRfk7R5/WomdK1rJnt95BgiFGRpFuw
	Fnmve9JcrlD19zsoO7Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8JcT-0000000H7ml-1zKD;
	Tue, 05 Nov 2024 13:29:17 +0000
Received: from mx.treblig.org ([2a00:1098:5b::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8JcQ-0000000H7lO-2JgN;
	Tue, 05 Nov 2024 13:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
	:Subject; bh=Rni1On+4mOltPkVhnP9DXSxhrFHE3c1gu9PqntacxGw=; b=EeX+x2dVtB5Y5gUz
	M57DLCynM4e4fGecj9gyPr31qs0VhBEkxm3oSlszwPnWdtN4jV4jU3EhGglkddUh/TkuOfOybpLrr
	kq2KR2h/TNshQIdstteci+vqCAa3HWx4BkkjRqw70LFnANzGtQBwucbp4zRsSXDutw6QGE1eyz6K4
	P3JgyKt4u6xLCm6qRcyQZs+kjpSHakN4fgVmJAfkhQZu7SKe2u6UHhRD/nlLhl1RDR9twty97izRd
	5YNi9CIf6BxzBZemqQxuXc6IPZwyM0fouFOl+kAUW/BlOySMIOxmBfRHaNZgu0Im+VX4vJrwqrEkE
	FIPX7T5Y3vkq0aMc5w==;
Received: from dg by mx.treblig.org with local (Exim 4.96)
	(envelope-from <dg@treblig.org>)
	id 1t8JcF-00FY1n-26;
	Tue, 05 Nov 2024 13:29:03 +0000
Date: Tue, 5 Nov 2024 13:29:03 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Remove unused functions
Message-ID: <Zyodn5bfqtqoMTJ3@gallifrey>
References: <20241005232551.307399-1-linux@treblig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241005232551.307399-1-linux@treblig.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-21-amd64 (x86_64)
X-Uptime: 13:28:51 up 181 days, 42 min,  1 user,  load average: 0.04, 0.01,
 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_052914_598390_795F2B91 
X-CRM114-Status: GOOD (  15.73  )
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

* linux@treblig.org (linux@treblig.org) wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> cdn_dp_get_event and cdn_dp_dpcd_write were added in 2017 by commit
> 1a0f7ed3abe2 ("drm/rockchip: cdn-dp: add cdn DP support for rk3399")
> 
> but unused.
> Remove them.
> (Build tested only on x86-64)
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Ping.

Dave

> ---
>  drivers/gpu/drm/rockchip/cdn-dp-reg.c | 39 ---------------------------
>  drivers/gpu/drm/rockchip/cdn-dp-reg.h |  2 --
>  2 files changed, 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> index 33fb4d05c506..a57cda971f20 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> @@ -244,40 +244,6 @@ int cdn_dp_dpcd_read(struct cdn_dp_device *dp, u32 addr, u8 *data, u16 len)
>  	return ret;
>  }
>  
> -int cdn_dp_dpcd_write(struct cdn_dp_device *dp, u32 addr, u8 value)
> -{
> -	u8 msg[6], reg[5];
> -	int ret;
> -
> -	msg[0] = 0;
> -	msg[1] = 1;
> -	msg[2] = (addr >> 16) & 0xff;
> -	msg[3] = (addr >> 8) & 0xff;
> -	msg[4] = addr & 0xff;
> -	msg[5] = value;
> -	ret = cdn_dp_mailbox_send(dp, MB_MODULE_ID_DP_TX, DPTX_WRITE_DPCD,
> -				  sizeof(msg), msg);
> -	if (ret)
> -		goto err_dpcd_write;
> -
> -	ret = cdn_dp_mailbox_validate_receive(dp, MB_MODULE_ID_DP_TX,
> -					      DPTX_WRITE_DPCD, sizeof(reg));
> -	if (ret)
> -		goto err_dpcd_write;
> -
> -	ret = cdn_dp_mailbox_read_receive(dp, reg, sizeof(reg));
> -	if (ret)
> -		goto err_dpcd_write;
> -
> -	if (addr != (reg[2] << 16 | reg[3] << 8 | reg[4]))
> -		ret = -EINVAL;
> -
> -err_dpcd_write:
> -	if (ret)
> -		DRM_DEV_ERROR(dp->dev, "dpcd write failed: %d\n", ret);
> -	return ret;
> -}
> -
>  int cdn_dp_load_firmware(struct cdn_dp_device *dp, const u32 *i_mem,
>  			 u32 i_size, const u32 *d_mem, u32 d_size)
>  {
> @@ -400,11 +366,6 @@ int cdn_dp_event_config(struct cdn_dp_device *dp)
>  	return ret;
>  }
>  
> -u32 cdn_dp_get_event(struct cdn_dp_device *dp)
> -{
> -	return readl(dp->regs + SW_EVENTS0);
> -}
> -
>  int cdn_dp_get_hpd_status(struct cdn_dp_device *dp)
>  {
>  	u8 status;
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.h b/drivers/gpu/drm/rockchip/cdn-dp-reg.h
> index 441248b7a79e..68c3dbff1123 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-reg.h
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.h
> @@ -459,9 +459,7 @@ int cdn_dp_load_firmware(struct cdn_dp_device *dp, const u32 *i_mem,
>  int cdn_dp_set_firmware_active(struct cdn_dp_device *dp, bool enable);
>  int cdn_dp_set_host_cap(struct cdn_dp_device *dp, u8 lanes, bool flip);
>  int cdn_dp_event_config(struct cdn_dp_device *dp);
> -u32 cdn_dp_get_event(struct cdn_dp_device *dp);
>  int cdn_dp_get_hpd_status(struct cdn_dp_device *dp);
> -int cdn_dp_dpcd_write(struct cdn_dp_device *dp, u32 addr, u8 value);
>  int cdn_dp_dpcd_read(struct cdn_dp_device *dp, u32 addr, u8 *data, u16 len);
>  int cdn_dp_get_edid_block(void *dp, u8 *edid,
>  			  unsigned int block, size_t length);
> -- 
> 2.46.2
> 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
