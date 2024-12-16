Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F1C5E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 03:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UgEbnez3O/+xcijT8GnBH5aJ1hoOn0lgN4EpHXPktQI=; b=FnxSNmjGgUHi4Q
	7caet+I2548qE2SIPfkruuouc6PJyf8ilnV0pRefXC8Wii1sw0Q15qMoR4qSktFDkPvZRr0AnhrQu
	aMj0vvlRYT2zxv2sliKQ5dcDT38UPYkXIBL3lxn1hnMDjG28c5qn0TfSXvL+9XdBpKvGap6VHr9G9
	vAU8rbH5adfNAnKsFsJFNG6WBX38efLS60bXrPumIF5wTAVfGTIP9u/sQM5lNrEWQjU3mojwIh3Gz
	0LMczUy4HcgoBhvJiQ9EdqftZdQ6XNnZ7KyYWIwU7j7XGGIUd0d+vFSGDdJ9wVgUEIcQCFIsN6xe/
	MxST6YuqYhigpNz4LGjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1ws-00000008wQJ-0iqq;
	Mon, 16 Dec 2024 03:39:10 +0000
Received: from mail-m127175.xmail.ntesmail.com ([115.236.127.175])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1wq-00000008wPd-1JUo
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 03:39:09 +0000
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5d068538;
	Mon, 16 Dec 2024 11:39:00 +0800 (GMT+08:00)
Message-ID: <2c1331d8-5b3c-45ef-b116-01a0b11abf34@rock-chips.com>
Date: Mon, 16 Dec 2024 11:39:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: Fix Copyright description
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>
References: <20241212124344.3121514-1-andyshrk@163.com>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20241212124344.3121514-1-andyshrk@163.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkZSFZLGENLTE8ZH09MSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93cd8c3d9703afkunm5d068538
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MU06Sjo*GTIPLiE#TjYcSE0a
	TFYwFCNVSlVKTEhPSElLSE9KTktPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKTklPSzcG
DKIM-Signature: a=rsa-sha256;
	b=bUWM8lu7JaVdvNeO/oa/b00QZke+CcONJbMiFMcGq3GOvmFaqPm465RuuUIuVdgeKJCb1YG1ejGMilMthIeT990cUTMA/vQP0ljPfsdBnA+YyIGDb9rnBoZbmXjtZfBFx3myHObzZJawg4uytWhw9y9kWZjU7b/fSuS6R155Iho=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=MlYAOJJvUyoj9w3d0T4l2FqUYXNERU/TZG70Faevmwc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_193908_716599_3D55CFAE 
X-CRM114-Status: GOOD (  10.09  )
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


On 2024/12/12 20:43, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>
> The company name has update to Rockchip Electronics Co., Ltd.
> since 2021.
> And change Co.Ltd to Co., Ltd. to fix mail server warning:
> DBL_SPAM(6.50)[co.ltd:url];
>
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips. com>

Thanks,
- Kever
> ---
>
>   drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
>   drivers/gpu/drm/rockchip/cdn-dp-core.c          | 2 +-
>   drivers/gpu/drm/rockchip/cdn-dp-reg.c           | 2 +-
>   drivers/gpu/drm/rockchip/cdn-dp-reg.h           | 2 +-
>   drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c     | 2 +-
>   drivers/gpu/drm/rockchip/inno_hdmi.c            | 2 +-
>   drivers/gpu/drm/rockchip/inno_hdmi.h            | 2 +-
>   drivers/gpu/drm/rockchip/rk3066_hdmi.c          | 2 +-
>   drivers/gpu/drm/rockchip/rk3066_hdmi.h          | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c     | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.h     | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_fb.c      | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_fb.h      | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.c     | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_gem.h     | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c     | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.h     | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.h    | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_lvds.c        | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_lvds.h        | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_rgb.c         | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_rgb.h         | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c    | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_vop_reg.c     | 2 +-
>   drivers/gpu/drm/rockchip/rockchip_vop_reg.h     | 2 +-
>   26 files changed, 26 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 546d13f19f9b..02876eb66e94 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -2,7 +2,7 @@
>   /*
>    * Rockchip SoC DP (Display Port) interface driver.
>    *
> - * Copyright (C) Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author: Andy Yan <andy.yan@rock-chips.com>
>    *         Yakir Yang <ykk@rock-chips.com>
>    *         Jeff Chen <jeff.chen@rock-chips.com>
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index ff9d95e2c4d4..4b28121ffa42 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author: Chris Zhong <zyw@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> index 33fb4d05c506..924fb1d3ece2 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author: Chris Zhong <zyw@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.h b/drivers/gpu/drm/rockchip/cdn-dp-reg.h
> index c7780ae3272a..13ed8cbdbafa 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-reg.h
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author: Chris Zhong <zyw@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 1b64b6e39cc8..3398160ad75e 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0+
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:
>    *      Chris Zhong <zyw@rock-chips.com>
>    *      Nickey Yang <nickey.yang@rock-chips.com>
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 42bda4ffbbbd..e7a6669c46b0 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-or-later
>   /*
> - * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2014, Rockchip Electronics Co., Ltd.
>    */
>   
>   #include <linux/clk.h>
> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
> index b58e2a29294b..898d90155057 100644
> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    *    Zheng Yang <zhengyang@rock-chips.com>
>    *    Yakir Yang <ykk@rock-chips.com>
>    */
> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.h b/drivers/gpu/drm/rockchip/inno_hdmi.h
> index a7edf3559e60..8b7ef3fac485 100644
> --- a/drivers/gpu/drm/rockchip/inno_hdmi.h
> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    *    Zheng Yang <zhengyang@rock-chips.com>
>    *    Yakir Yang <ykk@rock-chips.com>
>    */
> diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> index b0fc8ace2e41..403336397214 100644
> --- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    *    Zheng Yang <zhengyang@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.h b/drivers/gpu/drm/rockchip/rk3066_hdmi.h
> index 39a31c62a428..c3598ba7428c 100644
> --- a/drivers/gpu/drm/rockchip/rk3066_hdmi.h
> +++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0 */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    *    Zheng Yang <zhengyang@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 3e9f590c734e..bf1d4c5599fa 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    *
>    * based on exynos_drm_drv.c
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> index 24b4ce5ceaf1..8bcce08a34d9 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    *
>    * based on exynos_drm_drv.h
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> index cfe8b793d344..dcc1f07632c3 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.h b/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
> index bae4e079dfb1..5179026b12d6 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> index 93ed841f5dce..6330b883efc3 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> index 72f59ac6d258..cdeae36b91a1 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_gem.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 69900138295b..57747f1cff26 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 0cf512cc1614..f04c9731ae7b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> index 2995988ef559..ca3f1613d51c 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index aba733736ff7..385cf6881504 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:
>    *      Mark Yao <mark.yao@rock-chips.com>
>    *      Sandy Huang <hjc@rock-chips.com>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
> index 4ce967d23813..ca83d7b6bea7 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:
>    *      Sandy Huang <hjc@rock-chips.com>
>    *      Mark Yao <mark.yao@rock-chips.com>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> index dbfbde24698e..811020665120 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:
>    *      Sandy Huang <hjc@rock-chips.com>
>    */
> diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.h b/drivers/gpu/drm/rockchip/rockchip_rgb.h
> index 1bd4e20e91eb..116f958b894d 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_rgb.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_rgb.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0 */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:
>    *      Sandy Huang <hjc@rock-chips.com>
>    */
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 4ee56ad7b811..cbabec73685b 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author: Andy Yan <andy.yan@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index 8998967f0c00..4e2099d86517 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
> index fbf1bcc68625..addf8ca085f6 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
> @@ -1,6 +1,6 @@
>   /* SPDX-License-Identifier: GPL-2.0-only */
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (C) Rockchip Electronics Co., Ltd.
>    * Author:Mark Yao <mark.yao@rock-chips.com>
>    */
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
