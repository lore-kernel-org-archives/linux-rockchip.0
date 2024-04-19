Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48267C04FF6
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 22:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dBO1fWnV1SDDHPgLxF5MrOkIvH/vur0lS83fVhXbaOk=; b=SMi8t0zEu5VN2COqV8ZC/RNd1Z
	gwgCC0Fn8zUUG+JZo6y7lX9AArgY86gZE9aD+2piA6WTDdJWMESz3UrPe/VzpCUqpFcoos47O20MR
	5ZcfsHMmQf90LlAOSN/HSy1gEfVvwPYXp5bnqNdYVP9THD5FkxRezQU1UEHmME+aKIovJunUUuZE3
	hzcIQou9zC7iF5tAOorWoRdstCLEhEIK2sOheX2WYj8JejSXHOTvCnYuYpcp1rsNqhCa2jaBr3pPx
	9sLa7Jm0X3zrUAxqs38QXtz76DrA0BF6Wmz9mkjBpSf8rAXFdO5jxoZQnwaa1dFzUH6h2/za5zWV3
	9TiULl/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxwei-000000078Lt-3DpC;
	Fri, 19 Apr 2024 22:24:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxwef-000000078KF-1ddx;
	Fri, 19 Apr 2024 22:24:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A42C961A2D;
	Fri, 19 Apr 2024 22:24:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38863C072AA;
	Fri, 19 Apr 2024 22:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713565464;
	bh=crBhB2ie1F22E8YCMI+PCb5RvOF5rOwI3h+5kfzyq7o=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=QaLtepc3EiMLJtMmI13qAWR2cc6IlLl/nkn6AOjP7RfdgBQmzT2zUfGSHxGM6NN7s
	 wC+5olEjg5pgaKSw5xMBRq+USrz8r8hhVOnj0lTZsY4HN129wjyK7TAoASwN42pS98
	 nr9/xGxSpd9NExf5mPtm/c7o8oS7/3RxjXuuaPDAKMRkSuv0ftPYozuLSaQLuNJBv+
	 OyMBEDez4nCoaGVLs2cDyKtsmmacWuJiLndZX44ZjcyZ05X1lzJMQjllAutrF1ABx2
	 qJGtfvpNA9dSAFi6KOwh07Bz3toDKfWCNhUd2/bfNeRcDhW1FxzVT+K1CGXWNQd0iH
	 utquCdwsjEvUQ==
Date: Fri, 19 Apr 2024 17:24:23 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, quentin.schulz@theobroma-systems.com
In-Reply-To: <20240418210332.2394871-1-heiko@sntech.de>
References: <20240418210332.2394871-1-heiko@sntech.de>
Message-Id: <171356537191.48026.7238978785873260892.robh@kernel.org>
Subject: Re: [PATCH 0/2] Add support for the dual-role dwc3 controllers on
 rk3588-tiger
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_152425_542095_B6E75C71 
X-CRM114-Status: GOOD (  13.45  )
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


On Thu, 18 Apr 2024 23:03:30 +0200, Heiko Stuebner wrote:
> A comment fix and then the addition of the nodes for the dwc3 controllers
> using the newly merged usbdp phys.
> 
> Heiko Stuebner (2):
>   arm64: dts: rockchip: fix comment for upper usb3 port
>   arm64: dts: rockchip: add dual-role usb3 hosts to rk3588 Tiger-Haikou
> 
>  .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 60 ++++++++++++++++++-
>  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 15 +++++
>  2 files changed, 74 insertions(+), 1 deletion(-)
> 
> --
> 2.39.2
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-tiger-haikou.dtb' for 20240418210332.2394871-1-heiko@sntech.de:

arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: /extcon-usb3: failed to match any schema with compatible: ['linux,extcon-usb-gpio']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
