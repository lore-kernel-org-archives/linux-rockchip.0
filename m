Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6683C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 14:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IN7t4OuuzS2LNzaxZlTacXWFrTIJxSy00MfPMYnDVeA=; b=rGbIwwkGVbmz4dS7SahcXPfKpl
	WEkdzdaPYBIRVXNkz5CCXUrhVWuDyPl1A3XMulcJHtZeLzTnEzmurPIan65ULo2D7lY9iY3+Y9rN9
	wZAekwITfCI60xRLyKOwJyooLzQiptpfaSd3D3xc/gUQBjXHa2tXSiTNTmosJVXWTHwKcGwsCf+Yt
	SY+FGSSO2B6ZFv6qVhbfM/I2Vpx7ktHy12KHn/WCB7NLZOSaC9h6HL3pHZm2wlOz8GTmrCFxRSCTd
	BUWCWw8/fXL7UOjOF74nt/EV6URzxBGj3SakuOFVSD3xjNimkIk9vErn3kEtxvZvgHAyc2DA5rV4M
	Jq4SJo2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4k8J-002ZjG-O2; Fri, 24 Jun 2022 14:18:03 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4k7g-002ZLB-DU
	for linux-rockchip@lists.infradead.org; Fri, 24 Jun 2022 14:17:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 7861D32002D8;
	Fri, 24 Jun 2022 10:17:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 24 Jun 2022 10:17:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1656080235; x=1656166635; bh=UZO+6LZwuV
	65rxjHuXD5fqHsft7utbD++dALaICTs5Y=; b=HRXKyx2Idq4un2eEi5eWOh6U0j
	V9VY9EwFdXQQ0/u3z/cfd/sFJXnaIjTgkCoiT2utjWF/NNWO5S83phjuW65BfkCn
	J6kSOzQvkmz/8JAku1aa6+C/WeIn//kDtDY+p4qLD918mpZa0mP/O1JAWBW7o44F
	nQSvuP//H9HC13GbVoywVQ5QxxhLIyVka6XdCoYcPnZn21m6xrI/VqEPok4/Gz1S
	ii8uyuxfiXUuS6EiYyQWHNgBd3tdafoB3mSQIXjKWMJOpzxTkhUkxMHfqRCfAtLY
	X2+LpxBuZiEimHO6Q3wDm+IEB7GPe6CaVgwbBOkDjhR16XOS/KTqUg7Pejjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1656080235; x=1656166635; bh=UZO+6LZwuV65rxjHuXD5fqHsft7u
	tbD++dALaICTs5Y=; b=FVwXlmN0lJ5YjZ+6USTKUSJyQKzRj3MV+xxgoO42G0+4
	g4Ar8hImR2a/sZ26MTADeJat+2eth1C9/pbs5vSyG5jq6epPfaI2hGKF1LAiF0wU
	jc0/bGAKh1FZgm4JGrMikAsRNNQ2bp/1X5C+MIugMdLXx0iwJ6dRLZxycppwR7oD
	fbY4Huy4u/oWxm4ndsVCMjXH/T0NB75qzDjJ6fE4LrCsHNpnwXEy9+imJf3N5zOF
	GXJ1HIFPXvIwRghJzLqoWDjqMeaHvqAdbqr/+rIZN+6U3Tb3XaUB6fQcWsSBj2yB
	xoEISPFAP61kaW8lILAB8Mz+NByfuOaCLq63f2S3mA==
X-ME-Sender: <xms:ase1Ys4LXgYFYuveBNp6tclhx0QoVP30lJfOxJGhGDjN_tIkJxx_0A>
    <xme:ase1Yt42hAJOUTK3XPM3Dfp_9AUSTt9ZXKsj6iB2kv9IpJBKxdB_SbuuwJsy9-7h0
    jY1hFRlrR2wguD6VD8>
X-ME-Received: <xmr:ase1Yrcon-s2HEtwfvLA1RxhCm15PqcMOtlALmE4bU-h1ZTfRNrYfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudefledgjeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvhedtledukeegveelfeeuvddujeeiteehkedvhfetkeffudej
    hfeftdduhedvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:ase1YhIs8NDo5HQm8y7Sv_Nc4KpCU0ywqyRW-_gb8fUopYxQGoOQHw>
    <xmx:ase1YgK0tjYsQj9Mnese2oV8uvWT6dnFypKF3kHrrYw4-j7D8V_LRA>
    <xmx:ase1YiwNQ6ASuU3HsN-2G7qHZ0VcMzBsKeO7l9vM1B8mFjaUFpbAWQ>
    <xmx:a8e1Ypo0AbsYt40_4V86FudF7yyogAKqOykeiSU8HoEuh4W5Rva_rg>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Jun 2022 10:17:11 -0400 (EDT)
Date: Fri, 24 Jun 2022 17:17:08 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	heiko@sntech.de, jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org, djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 02/55] media: rkisp1: Enable compilation on ARCH_MXC
Message-ID: <20220624141708.v32f3j377aliygix@guri>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-3-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-3-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_071724_867379_13BAC24B 
X-CRM114-Status: UNSURE (   7.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15.06.2022 04:10, Paul Elder wrote:
>From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
>The ISP used by the Rockchip RK3399 is also found in the NXP i.MX8MP.
>Enable compilation of the driver for the MXC architecture in addition to
>ARCH_ROCKCHIP.
>
>Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>---
> drivers/media/platform/rockchip/rkisp1/Kconfig | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/Kconfig b/drivers/media/platform/rockchip/rkisp1/Kconfig
>index dabd7e42c193..731c9acbf6ef 100644
>--- a/drivers/media/platform/rockchip/rkisp1/Kconfig
>+++ b/drivers/media/platform/rockchip/rkisp1/Kconfig
>@@ -3,7 +3,7 @@ config VIDEO_ROCKCHIP_ISP1
> 	tristate "Rockchip Image Signal Processing v1 Unit driver"
> 	depends on V4L_PLATFORM_DRIVERS
> 	depends on VIDEO_DEV && OF
>-	depends on ARCH_ROCKCHIP || COMPILE_TEST
>+	depends on ARCH_ROCKCHIP || ARCH_MXC || COMPILE_TEST

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

> 	select MEDIA_CONTROLLER
> 	select VIDEO_V4L2_SUBDEV_API
> 	select VIDEOBUF2_DMA_CONTIG
>-- 
>2.30.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
