Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD0ECC32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 07:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BvtBLj9csQLnarDlz9nJPfps0bFO8IpXcDadj+9gBOw=; b=XdMaFp9dsSeez2gb/6Ofy+yCEP
	SrJJwQQ1YpOqVReCm7BVx6QZQPnfuLWjXcdRScZo1a546QfvmU1z4cMGonHGpHgXTP/85aAv0Nhmg
	N6+b3GSCisKdivH8YYop34EhfeAOWjzuczN2sfPZMFki7KFnS1tSx0I/Yh37i1cgtSCjP4BOjLaP8
	ZEnxqYnY8gdmc4r20TR9wi/KEUM4m+4id5sf2dbdlsGjSXl4eyE1BJtb/9HKg8tdugGa4BErTTpXn
	dzdjPG+ONZi/BEOQzo0/3Mzn59rxGEgLtlVWk23pm/MRcTdw64s/4B5L6gOV3tSOrea58z0qpOaAE
	ZF5+zAVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRfz-00EbVL-G3; Wed, 28 Sep 2022 07:40:15 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRfd-00EbIn-Ce
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 07:39:56 +0000
Message-ID: <22f7e797-1915-cd33-90b3-daa2525b4eab@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1664350788;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oqp3PpgnwUebZ3o+bFEtB0PlIn4fj0SQtEr54VpPFCg=;
	b=pBxSzH4GkYlnYTWVXuj1+KeEYPl7kHokxrR8NHXVxnGL3sgCQeRhsUBv1MK4M6KO6hLYZ7
	jaCXoUwaDcU7H1H4yZ9nDLpO5yHmC6T4nElHs7zhtrcjpE/s9I5rtIOxA3LRjRxVyGuiDz
	YEtoLpKqd/G08M8fQDm+90hnVmnFboxDH6SyEnYMILrMH0ABBAmTv5FGtd2FDP9nlBcDLc
	Wpj45G9j0ry4sEPEcrcDYevKn4Ay6/Hor7ZOn522vW6UA06YHa+tXcllKdcG1f22dAxNKH
	s7YdE6idTQLWoA9i4lqAUi/7Vh9NgD+grGlgFYh7KdwNdXlSoTdiYIa4r7n0Lw==
Date: Wed, 28 Sep 2022 09:39:47 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 00/13] Add support for the Hardkernel ODROID-M1 board
Content-Language: da-DK
To: linux-rockchip@lists.infradead.org
References: <20220926183727.1893566-1-aurelien@aurel32.net>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20220926183727.1893566-1-aurelien@aurel32.net>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_003953_989575_55A3B8D7 
X-CRM114-Status: GOOD (  17.80  )
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


Den 26.09.2022 kl. 20.37 skrev Aurelien Jarno:
> On the ODROID forum, Dongjin Kim said he is not planning to submit a new
> version of the patchset adding support for the Hardkernel ODROID-M1
> board. I therefore decided to address the issues reported during the
> initial review, and I also did some small fixes either because some
> things changed in the meantime on the kernel side or because I noticed
> some warning or issues when using the hardware.
>
> I continued writing some additional patches to complete the ODROID M1
> DTS to almost fully support the hardware, the drivers being already
> present in the kernel.
>
> Changes since v1 (patches 1 & 2):
> * Added Acked-by to the first patch
> * Fixed indentation
> * Removed unneeded labels
> * Renamed labels to not use underscore
> * Renamed regulator nodes
> * Added -pin to pinctrl bindings
> * Changed GPU related regulators to always on (see 2cda380102ff)
> * Added phy-supply to gmac0
> * Added supplies to sdhci
> * Changed SD card speed to SDR50 from SDR104 (see 1ea90b2d293f)
> * Fixed power LED polarity and set the default-state to "keep"
>
> Aurelien Jarno (11):
>    arm64: dts: rockchip: add thermal support to ODROID-M1
>    arm64: dts: rockchip: Add NOR flash to ODROID-M1
>    arm64: dts: rockchip: Add analog audio on ODROID-M1
>    arm64: dts: rockchip: Enable vop2 and hdmi tx on ODROID-M1
>    arm64: dts: rockchip: Enable HDMI audio on ODROID-M1.
>    arm64: dts: rockchip: Enable the GPU on ODROID-M1
>    arm64: dts: rockchip: Enable the USB 2.0 ports on ODROID-M1
>    arm64: dts: rockchip: Enable the USB 3.0 ports on ODROID-M1
>    arm64: dts: rockchip: Add SATA support to ODROID-M1
>    arm64: dts: rockchip: Add PCIEe v3 nodes to ODROID-M1
>    arm64: dts: rockchip: Add IR receiver node to ODROID-M1
>
> Dongjin Kim (2):
>    dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
>    arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
>
>   .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 727 ++++++++++++++++++
>   3 files changed, 733 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
Tested-by: Dan Johansen <strit@manjaro.org>
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
