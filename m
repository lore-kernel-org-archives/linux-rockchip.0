Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC2BCC25B47
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Oct 2023 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iieXKLbigXrNFy2A1s6KjTA3dq+4HNyD27Y5Gr01zhc=; b=m69wfYF2INIYv2
	URtwwfD21Sugwv506CUxVVSjyCMqnNrZ7Qo3RJSeBG1efBbu77zkYNhfhVHoMiL/Xygl5kTVUAFOs
	7SoJWXT4RNdaBujXutUbPdAF4BVPIRSuXdV+nw8ilw/qkOF+VliFMLaD2hp6Vvc7cDmKUG+D4a6WG
	lGkYo6hj8dQDSHrpmqLPo6m3/1acI8WCVpSGMke63JO9JPMcR5Efjb3Myi5L+bc+1Z8eW8qRf3LAD
	I6Q+MZ4QtwzC9p7HLIiB9p76Gp+21dYR+BYueALumyPn6bRLo0Cf+ypeWLgoEnbpTmW2abiA9nhIR
	OyUwJ+M2KS9oY/Jpq4bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qwKAi-00G9j5-36;
	Fri, 27 Oct 2023 10:34:32 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qwKAf-00G9g3-1Z
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Oct 2023 10:34:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id AE102B82770;
	Fri, 27 Oct 2023 10:34:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D7EBC433C7;
	Fri, 27 Oct 2023 10:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1698402867;
	bh=Z69Iak1OZ6khdmyqVFeCCZ5rvCZc39XumyIBgPwnBAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MCEu82v6BBCEwSrCNS80JvJeUystIGiQ8ix7rtiXLbCusg9qF6O7EcrIybEj8pqT4
	 +hfdJ4WQKx4Iw24FnTgBSDPSaDT8WCM8FfRl8Vap0Sl3w31vViR2+wbp7tUUzMWwGv
	 HgMkLAiRo8YjNeN2FLJrOmbdnD29dZB+4ndKD9tk=
Date: Fri, 27 Oct 2023 12:34:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: sebastian.reichel@collabora.com, linux@roeck-us.net,
	heikki.krogerus@linux.intel.com, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: [PATCH v3] usb: typec: tcpm: add get max power support
Message-ID: <2023102711-candle-untitled-05a7@gregkh>
References: <20230322093120.8686-1-frank.wang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230322093120.8686-1-frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231027_033429_680514_7271D8D6 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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

What ever happened to this change?  Can you rebase and resubmit it
please?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
