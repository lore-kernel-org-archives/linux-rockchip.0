Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19997C2BA4C
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 06:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVuYfzyYiSC0jju3rKvQhBbuFTRL/DDS8R4aI3B3BwA=; b=O3UcXsfmIednzg
	MQtVURLUPT2J3P7peVB7Z/GGbfo/YyDscsTn3PJIgdv8W6crBCK94uCpsOS2p8OirMayjDRMJJdC2
	7xtY/VpWM1cfjPzoaM+OZ+gABWsuqTjmXt1s0vJVyM+JXw1xQlW2SpIeVBumatI3pY+lKQrIhRif1
	0WVxgU6XnXo/RiWosg8dl2KAqTqsnrOx26sMv6BpF5EqZrMtsJZVWafjf82J3qcRUOqBehM/35lHo
	eUPBm7dOzM4Knzo+/Vx+fRCiwGzJ2rArm/on0F6RW6MPFsTf3PL0rYKHPVcQmS5psGQXO8EURKqcY
	0JI10uw4BluP/qCdubDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCc1M-00AKME-7w; Wed, 26 Jan 2022 06:43:08 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCc0l-00AK7K-2V; Wed, 26 Jan 2022 06:42:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1643179351; x=1674715351;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hzPPq4isgNfFzq9vN+MNEiO/zlWFlWHgofFezQJOQ/Q=;
 b=ifSH9eQsdBaO5m9ofTmp1e2cR6EgS7V2uPVFDCIe0GfMLbEGsykoIuhy
 OJKxaPIufxysaOFH25NHm5wLZKERoFqYNyYeMz/fZ1Md5twBmQ6pfcJVV
 SY8jdJxOgUmro8unbJLoWSbHrBVafYHNkybArLC4Ssh+R8o5w08eXA/Sz
 4yVeAJgLjLv/gfYhBJ1xxHzLfGvAjj1hpB1mkVTf9SWDMCXrKscfu2YZf
 WSmA9+cHM2luxKlRxG6inTdwsr6+WYfHrU8wpBvAxlDsmC9b/7wNzj2fc
 PxeMSbwE1BAa0LwnvXrowrxzll2uBGZzffeY4ct8Q8V1AnI2whd6fTJtP A==;
X-IronPort-AV: E=Sophos;i="5.88,317,1635199200"; d="scan'208";a="21710555"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 26 Jan 2022 07:42:26 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Wed, 26 Jan 2022 07:42:26 +0100
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Wed, 26 Jan 2022 07:42:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1643179346; x=1674715346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hzPPq4isgNfFzq9vN+MNEiO/zlWFlWHgofFezQJOQ/Q=;
 b=SoezRi0go/RoYqZ7DSfpecFGn5iNSoUacCrpgOGSTsjv8BdhtIMqrq4f
 8GQQdc4U8sLgjNa7Lw65J0ryYi6XXF/IwceR/S3KVTi9oQXJrTufL5xPm
 VMCYzKnwKEbOgE2TsJEOxbC6VHuiEjzPJZHnmwO7oHoE/NELrJ1KknR3j
 jWQaEURzvbJf7DP1Zj152W2fjnpzj3bLOBjUNbFBX/ufDxPvrjF8SZcjC
 vhmEq0V72t7MCgA7Kj+tWie15djzWlvYuqUW2Vm2bJypkIIrK/Ne6sAK9
 DjJA8RoA+i3o9sqr/+piRK/fx6sBWwM+M6Tk8RclJQd823SsInpZ7VxkU A==;
X-IronPort-AV: E=Sophos;i="5.88,317,1635199200"; d="scan'208";a="21710554"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 26 Jan 2022 07:42:26 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 65492280065;
 Wed, 26 Jan 2022 07:42:26 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, aford@beaconembedded.com, cphealy@gmail.com,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: (EXT) [PATCH V4 01/11] arm64: dts: imx8mq-tqma8mq: Remove
 redundant vpu reference
Date: Wed, 26 Jan 2022 07:42:24 +0100
Message-ID: <5426078.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220125171129.472775-2-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-2-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_224231_482430_97F4DA06 
X-CRM114-Status: GOOD (  15.15  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 25. Januar 2022, 18:11:18 CET schrieb Adam Ford:
> The vpu is enabled by default, so there is no need to manually
> enable it.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi index
> 8aedcddfeab8..38ffcd145b33 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
> @@ -272,10 +272,6 @@ &usdhc1 {
>  	status = "okay";
>  };
> 
> -&vpu {
> -	status = "okay";
> -};
> -
>  /* Attention: wdog reset forcing POR needs baseboard support */
>  &wdog1 {
>  	status = "okay";





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
