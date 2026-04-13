Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92F2FE9380D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 03:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akhYi58qQdG+ufAqvvRzkjJGeYC6Le+/1UFwpLFwzAA=; b=FbOvsWkZxhpxbI
	Iu/qhRVVlFIVSZLM6t38WNfpkSytIm8e9mKyY0QPbDatg7z/RTT9RcGHJlvcRw+hW5E5YtP43qk4j
	iStmWAjc09C3/GqW+qwg4H4+pR/05azKnZfcy0sYhPSBnuu0Bb3ik1yfJ4I+zgzjASmkSZGs0nwwZ
	APU1FangGzJpwOVp9ECNz31uVfBDUYLdYgnfOsoYzvF6TsMoOiOLpDjoURLuHbPzXdUV4Jdrl5y7g
	Z0cHVRm5p0GSQT4eF2omfpoyjTVoEB3/YzEd0aHxor9/xnCxZ0DzyQVNbazMRfhvMY3z6774H7scQ
	ZpjDoyDidbVdq4MD+Zjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC7qX-0000000Ew1X-3g73;
	Mon, 13 Apr 2026 03:20:21 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wC7qT-0000000Ew0h-37GX
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Apr 2026 03:20:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1776050352;
	bh=ogsVwqs2EHz5JEsVYxGWqhUqK0WWsNCtR6dBPtTnbfg=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=AtLtVC5As+3Ph/LJaCjtMx3byYQAw/CSid1kGDO/FH+iXr6V+zjOkHTIHUOXw8tl+
	 n8wJ+ATyr+CeBJJOp9UmPdO9/2q2E5VuvEPhbSmub40p51tFJrp6JayptULtn8NQ08
	 qZvU1XMzc7qYIVD9ynrEWzTLxs+cX/8LRmwHKjeQ=
X-QQ-mid: zesmtpsz9t1776050350t7b8516f3
X-QQ-Originating-IP: GNntOqy7/9Vf323diNegGGGi1nHYBbOd6PR/kOLCRlI=
Received: from [172.16.12.51] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 13 Apr 2026 11:19:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4940756688928196925
Message-ID: <3F2138A226F05F52+ad3e8619-5b37-487c-87e8-cde3b5ae8081@airkyi.com>
Date: Mon, 13 Apr 2026 11:19:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/mipi-dsi: Only remove child devices that match the
 dsi device type
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20251203115028.133-1-kernel@airkyi.com>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <20251203115028.133-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OTISBJKPy/pkWjEOYa8AGV0DAvpund6eIGsVLzpyjlOj8/sh4a47Nf1p
	YHjUMUNCuYV/DC2N8Lsf8UjjbWFwAegM6/4vUAprWAfuPPFsb9ykkd0jsVYWVwN7q36q45T
	oCAfDXcMx2tOE3mj/R/4WBZNQ6RTTkJHcK+H610zh3xat5JLo6KaObDlULOIUuZKKSzWUfU
	TchiUMQYLS0v08hKxSSKYaRYrwItAg8VElhYW+dlgoDDuxK3NfY+t8qrBN6hCOuw+144lX7
	zZJKH8qKT8EwlricE4rcaipy+6Y9VpaX5XVVAaowSKsc+46ZT3zmkKdyjEODnmEq5Pz2Uul
	UboYoW8S6CwLTfAJN2AGYWAumi/mPltYQFpUnj9CyGhNnXqKL0CzW27iKV6kZ9QI9vCzRL+
	57xFPOH2KUpeAJxeIL0iGdtEsecM+WOR7ZjJzG4ND9shbzZ46CfMVhoeFgrPjX750He4LYg
	s+HfLoJSM/P6yXVKqIm/RWkr/+W/fARTxCJ3i5p9jMyH/75yqa+/yeLy5ZGdC5VMRAitQcb
	z9kduR+dpO6J1iuvE14HpYNFjsUs9m1l5GXKxM/ODHkn4+8hw926QG2Ove8YH9M8GwMFk0F
	ZQgxON7j1T6+wJ7ufmR2E6K0rba46DjoQq5SlOAn6HE/1USbx/Q0Rem4gzrmO4lK+rN47PO
	O17JvnmoegoAqEfKfbE7UmjcPqHejUWjKt/0yr8zikT9L3ETl1uuaNSAJI9UT9cEWKUzkOt
	LSytBxauvRV+j4UWlhqH1eU3fWIBMa4uUu8bqSKdThAEarf8PjVi0AV9t6fy1ZU35p4fnPs
	QwnKfoZnyb+X8a7fCcpLL76mpqwcJSK8Ht3n+uoWxjfP6bRvJsEUW6IdCfay3foT43T3YWV
	pkhoiWlamz7AXmZr9S9Ar0f+Yt1sgccGVfWINEiEeM0/oCCMnlYQChJdXllLUn/dFP99GDE
	JnN5H+sc1LvaEswIDKtNnbCUzeg4vkbrJAfVV4sL0VGEuSXsKrq+xEzspIqRjTS1vjKRsEj
	/up7CD0XH0rwgLAE8m
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_202018_817409_279F6913 
X-CRM114-Status: GOOD (  21.07  )
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

Hi,

On 12/3/2025 7:50 PM, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch checks whether the device is a valid mipi_dsi_device before
> accessing it in mipi_dsi_remove_device_fn().
> 
> The mipi_dsi_host_unregister() assumes that all child devices of the
> host device are mipi_dsi_devices and uses mipi_dsi_remove_device_fn()
> to perform subsequent operations specific to mipi_dsi_device.
> 
> In rockchip platform, for dw-mipi-dsi-rockchip.c, it creates a dphy
> device, and it use the dsi host device as its parent device.
> 
> And when we call dw_mipi_dsi_remove() in
> dw_mipi_dsi_rockchip_remove(), mipi_dsi_host_unregister() will get
> such a dphy child device and treat it as an mipi_dsi_device, which
> will lead to a further panic.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/gpu/drm/drm_mipi_dsi.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_mipi_dsi.c b/drivers/gpu/drm/drm_mipi_dsi.c
> index a712e177b350..5b9cc799eb87 100644
> --- a/drivers/gpu/drm/drm_mipi_dsi.c
> +++ b/drivers/gpu/drm/drm_mipi_dsi.c
> @@ -349,7 +349,12 @@ EXPORT_SYMBOL(mipi_dsi_host_register);
>  
>  static int mipi_dsi_remove_device_fn(struct device *dev, void *priv)
>  {
> -	struct mipi_dsi_device *dsi = to_mipi_dsi_device(dev);
> +	struct mipi_dsi_device *dsi;
> +
> +	if (!dev_is_mipi_dsi(dev))
> +		return 0;
> +
> +	dsi = to_mipi_dsi_device(dev);
>  
>  	if (dsi->attached)
>  		mipi_dsi_detach(dsi);

Gentle ping about this.

Thanks!

-- 
Best, 
Chaoyi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
