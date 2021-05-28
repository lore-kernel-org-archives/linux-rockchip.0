Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB0B4C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:50:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1B0F613B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:50:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1B0F613B4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=walle.cc
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qUiQa86608MFlr3Vfra6E6bAX8TISAZvFyzqbNHjQtg=; b=GABDBcZ6fXZlWrlQ1gOnKEeFbg
	CfAaaelg93qJft2RYhD9yOnERdkr5ARBVKLVL7GhzAH3k71fD1J3HMivsCQOs9WfXtjFjKG7BscuA
	I/FUk6BsFMp+NhKVcG+cH6NMBYoE6NLv9EFTEC2kc2XeYD5iDO9hYFTfCqIDqLzdscqbB4oUTE1ah
	I7EDH97gcZ5P2jgXZPIK1lqn04+/RHpmChcuyTMVR3Kul2gaTmsBYxV97/Ri08jvnckBKR5rK8w66
	65Ydc7kZgcuuFJo2/qMRztGLrH/CIaN1ek7gRnsYRNSBOW4zzUWUrLCWwQtmHXKf/6Eu3mKVZpO7b
	rkPyzVRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmhYs-000QBD-DV; Fri, 28 May 2021 18:50:22 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmhYR-000Py3-2Z; Fri, 28 May 2021 18:49:56 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 4FF8B22178;
 Fri, 28 May 2021 20:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1622227793;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=muyZ7dRi9VKmMFMF0e+RgnPXqwIN9W8zYDF1kKPUmY8=;
 b=gDnrPTuEZwtJQZ8KpGPfH3rvD8bGN+56uEgD7cnUM/kQjm1VtIo8k/Kwjm5p16JuVVyydU
 Yvy0FeS5tdOuNcst/w/bZzCivZx54nbmHjiv/E93WsoWGvxLyjB5BevP8u9fx13kRfwMnk
 O9UpkbszYBbmBdP6XgifQhFsrTfFIZ4=
MIME-Version: 1.0
Date: Fri, 28 May 2021 20:49:53 +0200
From: Michael Walle <michael@walle.cc>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-mtd@lists.infradead.org, linux-rockchip@lists.infradead.org,
 andy.yan@rock-chips.com, yifeng.zhao@rock-chips.com,
 sugar.zhang@rock-chips.com, tudor.ambarus@microchip.com, p.yadav@ti.com,
 heiko@sntech.de, robh+dt@kernel.org, vigneshr@ti.com, richard@nod.at,
 miquel.raynal@bootlin.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 0/4] Add Rockchip SFC(serial flash controller) support
In-Reply-To: <20210528170020.26219-1-macroalpha82@gmail.com>
References: <20210528170020.26219-1-macroalpha82@gmail.com>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <6d849f2fd9c6ca3389fa98f4ae8e8069@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_114955_316244_24324917 
X-CRM114-Status: GOOD (  21.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 2021-05-28 19:00, schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> I'm trying to revive an abandoned patch series for the Rockchip serial
> flash controller (SFC) found on the Rockchip PX30 SOC, as well as other
> SOCs by Rockchip. I'm picking this up from version 8 of the patch
> series located from here:
> 
> http://patchwork.ozlabs.org/project/linux-mtd/cover/1518091958-3672-1-git-send-email-andy.yan@rock-chips.com/
> 
> Changes made in v2:
>  - Reimplemented driver using spi-mem subsystem.

Nice!

Oh and I forgot, the dt-bindings patch should go first.

-michael

>  - Removed power management code as I couldn't get it working properly.
>  - Added device tree bindings for Odroid Go Advance.
> 
> Changes made in this new series versus the v8 of the old series:
>  - Added function to read spi-rx-bus-width from device tree, in the
>    event that the SPI chip supports 4x mode but only has 2 pins
>    wired (such as the Odroid Go Advance).
>  - Changed device tree documentation from txt to yaml format.
>  - Made "reset" message a dev_dbg from a dev_info.
>  - Changed read and write fifo functions to remove redundant checks.
>  - Changed the write and read from relaxed to non-relaxed when
>    starting the DMA transfer or reading the DMA IRQ.
>  - Changed from dma_coerce_mask_and_coherent to just
>    dma_set_mask_and_coherent.
>  - Changed name of get_if_type to rockchip_sfc_get_if_type.
> 
> Chris Morgan (4):
>   spi: rockchip-sfc: add rockchip serial flash controller driver
>   spi: rockchip-sfc: Bindings for Rockchip serial flash controller
>   arm64: dts: rockchip: Add SFC to PX30
>   arm64: dts: rockchip: Enable SFC for Odroid Go Advance
> 
>  .../spi/rockchip,serialflash-controller.yaml  | 107 +++
>  arch/arm64/boot/dts/rockchip/px30.dtsi        |  38 +
>  .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  16 +
>  drivers/spi/Kconfig                           |   9 +
>  drivers/spi/Makefile                          |   1 +
>  drivers/spi/spi-rockchip-sfc.c                | 856 ++++++++++++++++++
>  6 files changed, 1027 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/spi/rockchip,serialflash-controller.yaml
>  create mode 100644 drivers/spi/spi-rockchip-sfc.c

-- 
-michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
