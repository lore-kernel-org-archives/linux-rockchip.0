Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3F3E77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 03:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8OyVGaQHUt8BLQ6mabcqcilaWb3CZKgb3re/zZa7AA=; b=euf6rsXHiEomxo
	J5+Njd7amL3WubhPR8UWrQ1g8/RfnvCX3nohaqV/PRZ4pCZQe0VuM1c2kYVJoJz4sKj9b3AvUdLop
	Fu7HN5kuic0rhknD0YGcsKV7ZHUnrAPUMwtBSMBT8QLJ+cExSlDnhZZ2OMIXNwv3CX51lYopQ/Hjf
	MgmE8TcfLcTS5XEyNawVnDPRem3NdhWTQ+pFffyQsnWWoYRuLzQZwOzyKnPoe0ll+DzQT1aQQWk9I
	nBqxIRuSiANUnILMtvTYEAJjdJhcQjPN/2Pm7ARRvTKSPVI2gZ2WyuV+okc4aZ/8tl6BMQdmXk6tO
	UDDpmG84Nqse1qCI+RLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1yX-00000008wZv-4BUy;
	Mon, 16 Dec 2024 03:40:53 +0000
Received: from mail-m15599.qiye.163.com ([101.71.155.99])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN1yU-00000008wZ9-3Jap;
	Mon, 16 Dec 2024 03:40:52 +0000
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5d0822af;
	Mon, 16 Dec 2024 11:40:46 +0800 (GMT+08:00)
Message-ID: <69751cb9-006b-485b-b3da-b8d2788d519a@rock-chips.com>
Date: Mon, 16 Dec 2024 11:40:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: rockchip: phy-rockchip-typec: Fix Copyright
 description
To: Andy Yan <andyshrk@163.com>, kishon@kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
References: <20241215092441.3447155-1-andyshrk@163.com>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20241215092441.3447155-1-andyshrk@163.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk1DT1ZJGUhLHR9IS0odSk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93cd8ddd4f03afkunm5d0822af
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODY6Fjo4QjIRKiFWCS0ZDkIc
	EDYwFClVSlVKTEhPSElLT09DSU5IVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKS09MNwY+
DKIM-Signature: a=rsa-sha256;
	b=QQJNvZkXkO4xuFK3Ssdr4t6ucRRATY442NcfcCZHa/oPkc1P0vGuqltjBsjzakKXb/VB0IMMzWWo8Ce/emekE7FNLYHtaQwsXGrPWHeap2sJ5GZOu7KwHDoDarleZyOz6m/jUzejrmQlvqpkV8hn+o7/VrnU2mIwAUFoSvvjnmA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Fx0nkf+AyUanISVWFcHsI/N1SR2FzzXYHeCfgWZJivE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_194051_058796_E59EA94B 
X-CRM114-Status: GOOD (  10.28  )
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


On 2024/12/15 17:24, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>
> The company name has update to Rockchip Electronics Co., Ltd.
> since 2021.
> And change Co.Ltd to Co., Ltd. to fix mail server warning:
> DBL_SPAM(6.50)[co.ltd:url];
>
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>
>   drivers/phy/rockchip/phy-rockchip-typec.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index 122ae0fdc785..7b1dba252ce9 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -1,6 +1,6 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
> - * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
> + * Copyright (c) Rockchip Electronics Co., Ltd.
>    * Author: Chris Zhong <zyw@rock-chips.com>
>    *         Kever Yang <kever.yang@rock-chips.com>
>    *

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
