Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F3D4EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 06:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sr52Rg3Ag7ZESgIL132MI1LtP5C/lB0DHH99YdPQPIM=; b=DISzgEAPVHdoGk
	KKZiJFp9vuHBx0A13ZWJ4AmCCyfPe6Z/RYJk+LdHjVLXPxlE1jxPoIymEaHzfXhd/Y3phq0/yq2nn
	MbPNSohoNd5C/jTubRoTR5lPPnUp8HGJwp3W1hTUG/4Kjtwk4gN9bbd2NMw9hHAU54jEjIj4O31JI
	0UMBQgghILoJ7nlqzB8dHtdkNJOosHFG4qTtgEmeVr0zk4ojchLTFv7X84xGHnuEqf/sNGh5Clfcm
	aot4arSJcJ+3wPLHY7LiqKaLteQD0ArOLnodshAoAqYOjv3giItM5ZUiWuKNCCJXKDgtWCIxR+oDh
	qD94R3UMgxhcvstx9Ivg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2b1-00GxwK-1f;
	Fri, 16 Jun 2023 06:06:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2ay-00GxvV-1u
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 06:06:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C7C8E61976;
	Fri, 16 Jun 2023 06:06:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78CB7C433C0;
	Fri, 16 Jun 2023 06:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1686895563;
	bh=oFafS+joAVEfG2Kq+i4g/5wzFR7uMWWQuQRO7azLGmM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IZHiUi+FVQwaLPloXN4kUYjIihOnMM4OFQV4manBBaVGAsrDvI42mDL89HASx0wxN
	 hTa27+eKuKu+2VfDj5cr99NsHcxQ/ucP1ZGST2LoW1MDshtwk4gc5gnb13ANI5SY3d
	 CFSQr5xviiZEJslzAz8eSa2dnuLCLHmov5LEQ4qU=
Date: Fri, 16 Jun 2023 08:06:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: Guenter Roeck <linux@roeck-us.net>, heikki.krogerus@linux.intel.com,
	sebastian.reichel@collabora.com, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: usb: typec: tcpm: fix cc role at port reset
Message-ID: <2023061643-uplifting-sequester-0152@gregkh>
References: <20230616022001.25819-1-frank.wang@rock-chips.com>
 <3c3fbecd-caf9-c432-0890-93cceade98c1@roeck-us.net>
 <f4bc4e7e-b9d4-432b-2157-f5b30c160a3a@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4bc4e7e-b9d4-432b-2157-f5b30c160a3a@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_230604_669480_B55073EB 
X-CRM114-Status: GOOD (  15.92  )
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

On Fri, Jun 16, 2023 at 11:03:14AM +0800, Frank Wang wrote:
> Hi Guenter,
> 
> On 2023/6/16 10:27, Guenter Roeck wrote:
> > On 6/15/23 19:20, Frank Wang wrote:
> > > In the current implementation, the tcpm set CC1/CC2 role to open when
> > > it do port reset would cause the VBUS removed by the Type-C partner.
> > > 
> > > This sets CC1/CC2 according to the default state of port to fix it.
> > > 
> > > Comments are suggested by Guenter Roeck.
> > > 
> > 
> > I have no idea (recollection) of what I suggested here :-(
> 
> Aha, this is also an old patch I have sent before, you suggested that the cc
> role should require some tweaking based on the port type or default state,
> do you remember it now?

Please version the patch, and provide the change information as
documented.

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
