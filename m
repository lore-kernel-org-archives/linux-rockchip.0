Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB53EB64DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 09:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hi0ACiTEd1iIj8kZ2KmAeTJWOmsQvVMeObCCRBLh8oI=; b=5CvE87z+2FWcI4
	eyXk14qTplH2dn3ag0DBDkvnkNZ2PCWsvlP/0qGkBiR8VDclBKf0bC4IIt1rDAL0KQ+0PCs0vqoDm
	jOSrpUfNuxmAf+ODEpgI4KsZPcC6UOecgSakM3nWs6+qmKHctHjtHFJEBwj1ScOSrpqqzsqkCZrB5
	hpDN6X2ScM+kuFndEkEF1qJQBF3JLuRSGaWxltq8ew9XoqY+MLeo3Mq+R4H4xECj7F3WkAwCofIuJ
	zgDzh1NA5ToHiIUBGkeL/KRZnhBxU/r6vTosBiA/uCwDSmeiyGj9O1BhKQsOrDlNvZRfTTHbz8F+U
	fE0R8X0Yckr3qVa5qmVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9jRj-00EKkN-0t;
	Thu, 15 Jun 2023 09:39:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9jRg-00EKjb-2x
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 09:39:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C68F61F20;
	Thu, 15 Jun 2023 09:39:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08AE3C433C9;
	Thu, 15 Jun 2023 09:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1686821951;
	bh=r6Tojsa+J6QEpbUTFlxJtR4e9II0ZoBS4MhS04CM0c8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ENhHmjQYvwCXAItnRbPoVGU2HfxOUEX8DOwQwlizbljXLQdyYtvtCyfvdNSbFPNe6
	 BlsvG0koqV90GuFdC1PBzI3BFQDPhP9frmFX3qKKw4ESS2F5FAZ59wFiOUIQDmefcL
	 +eUTn0E5sIkLK8qwQ6zCSgtEMeMwyb74I9bQcAZY=
Date: Thu, 15 Jun 2023 11:39:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: sebastian.reichel@collabora.com, linux@roeck-us.net,
	heikki.krogerus@linux.intel.com, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: [PATCH v3] usb: typec: tcpm: add get max power support
Message-ID: <2023061551-gumminess-clasp-6285@gregkh>
References: <20230322093120.8686-1-frank.wang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230322093120.8686-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_023912_995663_A5D5F219 
X-CRM114-Status: GOOD (  10.36  )
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

On Wed, Mar 22, 2023 at 05:31:20PM +0800, Frank Wang wrote:
> Traverse fixed pdos to calculate the maximum power that the charger
> can provide, and it can be get by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
> property.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  drivers/usb/typec/tcpm/tcpm.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

What ever happened to this patch?

Frank, can you rebase it and resubmit?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
