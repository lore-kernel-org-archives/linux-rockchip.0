Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DF04C636CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Feb 2023 16:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKYEb3x6xSJXZxI0xp+Nkausyo3r3yI8zXewaK74Enc=; b=hylF0hPaWlz3oD
	Rk9zr/9EOd7zBMXDZfA/vf6oTDkCLWM+jUyL4pLx+PslC9HXHYbtXSV2ACEOKNktu+uk/kR9RyR+o
	GBfCxhYzqx6OxuBHXQ2TFhixJ+pq/W88raY3yhxVDLu1AHe7PEgyuYOLC6hcxZv1LlvRWaAS9Q5FX
	zVi4r8QnIO/nehcbjMbMNSP2gg5FXHzyRJ/jiAbCUomd4K7iKGM9bUWjNIipFC/fH2p4t4n1zepXB
	HJG18U1DoJXURI1SPMgNmSwJNr/1DhWhvpHmVpGcV7NrjRHaRv+2uXkonbtVSFnmqTY82whRM8acQ
	E+4y2uovcfnLwQDqwMBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWfg-006ana-Hh; Fri, 10 Feb 2023 16:54:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQWfU-006aia-OZ; Fri, 10 Feb 2023 16:54:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 51DB961E40;
	Fri, 10 Feb 2023 16:54:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBD3DC433D2;
	Fri, 10 Feb 2023 16:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676048075;
	bh=mPNSF25Vw08jHwqhi+oGjDm1ZxRGMszvGZ4dzpicqCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fwFIkxe2ldbNfCCbXHnm2i5Xr7ilZ6OEknoqdv9p7h2bClXdP7K3xk7CVQAxC6bWJ
	 XFPct7vzN5a2A8PlkCJs5xHspNvAUYVjxE8qOMV5CETjO9BU+fONHHdcFkPneV/KAi
	 qXzL9vnALcs+ptjo704r5Ipa38Cf5K6FuoZYt992ufpGdOBT0Rz1Ep/RjfdD0pm97/
	 Xil84IML6FT205fPfwIli8b6AcDXWBH65dnVxwegCc1Bjw8Zs8Kb4RuuZM5pUHFW3C
	 OZ/JwQvJ3sWo1ZYdk15jNCeMs8eZfn8RPDxHbFj1PPPgj9LNBDOPwUb172RtXxj/l3
	 J2/Puo/XGPfGQ==
Date: Fri, 10 Feb 2023 22:24:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: kishon@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH] phy: rockchip-typec: Fix unsigned comparison with less
 than zero
Message-ID: <Y+Z2xs8gu8eV5rS1@matsya>
References: <20230207052606.29506-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230207052606.29506-1-jiapeng.chong@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_085436_854591_833B3839 
X-CRM114-Status: GOOD (  18.49  )
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

On 07-02-23, 13:26, Jiapeng Chong wrote:
> The dp is defined as bool type, the return value type of function
> extcon_get_state should be int, at the same time,if(dp>0) is used as the
> conditional statement, so the type of dp is modified to int.
> 
> ./drivers/phy/rockchip/phy-rockchip-typec.c:827:12-14: WARNING: Unsigned expression compared with zero: dp > 0.

You should see same error for ufp as well, that also stores return of
extcon_get_state()

> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3962
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index 6aea512e5d4e..85ed7d510cbf 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -808,9 +808,9 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
>  	struct extcon_dev *edev = tcphy->extcon;
>  	union extcon_property_value property;
>  	unsigned int id;
> -	bool ufp, dp;
> +	bool ufp;
>  	u8 mode;
> -	int ret;
> +	int ret, dp;
>  
>  	if (!edev)
>  		return MODE_DFP_USB;
> -- 
> 2.20.1.7.g153144c

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
