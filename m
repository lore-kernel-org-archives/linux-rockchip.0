Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8FC4C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Oct 2022 12:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DK2YBfA7JKvVt8BUaA9qpXyBVlVPiJbBORScEJM2gZM=; b=efGS1eDixZFniE
	smhO0za5qwGK8ltS9dFik/b1AKBHlOkKThxF+hqEqOp94jdTeh6nAdjvTQd25f66n6Wkt3Dk7D9yC
	UvU1tNw1dtRBvRTPyNhNlWbNZlzU+udEVB6claL1o5DL1IxLB0+q5Vy840/7i/YiK7tQwiMHMvqAM
	XhfylBPDEKqFojGsGCI4CqO2/Xg7NL6b6OGj+aqzRv7jmaAzVChrq+WGN0nYsrOl4uiRscDkxROAO
	2h3UFcndcuoMUJfJfjJXIBnWMmHrlKo1tVbcTzCfkuvjapI+zbKu5i9OzUDqrovtncfQsKDyby6fH
	n/rUPs7gs0uGqeQBHL0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oh8gi-00D1vL-SI; Sat, 08 Oct 2022 12:12:16 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oh8gW-00D1pG-DW; Sat, 08 Oct 2022 12:12:06 +0000
Message-ID: <8e84786d-8ae9-0f51-3438-24fb340199c6@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665231118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ddNkVrba/EFnig8p208wtNiaW3ykO4vqSHsplkdSsys=;
	b=SIFz4p0heRVDbNoYwzEyMdHzCn2skoSPucuMOhWOQyJHiOyjGAvZAIElgwjOVA/6KgDx71
	SxzKTcvB3wq4/0U3/S6Q5nmvxm+X3VOwgmP57H5L9jtC98YzRiwZWWzdea9+bEF9wH0pfG
	cgUprXzVknoFR1bbOuphLa6B+a9TYyyk9/jiRZdgY2uuK2jrPBnqF0JKzEjCkDX7ApoJYv
	bd0nRfdVhMCoW1RH50YK4B0+mM/rhc+oOFFniGEPUZdi3WN9jcS9ZIQ80CDHpSGwAh7Xrw
	em3rxP9g2JC7xQDIjEleHIC/vOh+6qTgYFfyYlUPOEheKw51aSkGaINOjZ0GQQ==
Date: Sat, 8 Oct 2022 14:11:56 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v3 00/13] Add support for the Hardkernel ODROID-M1 board
Content-Language: da-DK
To: Aurelien Jarno <aurelien@aurel32.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Cc: Dongjin Kim <tobetter@gmail.com>
References: <20220930051246.391614-1-aurelien@aurel32.net>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20220930051246.391614-1-aurelien@aurel32.net>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221008_051205_121298_CD385FF3 
X-CRM114-Status: GOOD (  24.38  )
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


Den 30.09.2022 kl. 07.12 skrev Aurelien Jarno:
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
> This new version includes feedback from the linux-rockchip mailing list
> and from the Odroid forum.
>
> Changes since v2:
> * Renamed "Rockchip RK3568 Hardkernel ODROID-M1" into "Hardkernel Odroid
>    M1" and fix the sorting.
> * Fix sorting of arch/arm64/boot/dts/rockchip/Makefile
> * Collected Acked-by and Tested-by

Even though I added my Tested-by to this series, it seems I didn't test 
it on eMMC.

This fails to boot for me on eMMC, but works on SD card and NVMe.

Sorry about that.

> * Switched the NOR flash to dual I/O from quad I/O to solve a pin
>    conflicts with the EMMC.
> * Added a comment about the pull-up on the IR receiver GPIO
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
>   .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 744 ++++++++++++++++++
>   3 files changed, 750 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
>
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
