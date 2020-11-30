Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 443E6C64E7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AA0120757
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZclrHwNR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3AA0120757
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nkWeP23OChOGMw/DLye4IGuN0JAoHDss4Y8BMHfiECE=; b=ZclrHwNRxY/3UAenfI6tgY3mx
	8tTnPQpkgrgKaTVf6nfCesqVDkajCzv53gxZMTaMaiWFhf4YFRnT5q3qIFN9hEhJeTfNRrezUAcb0
	VBemyS/ALnHfKrvxtdVAePOwcBdnEx4YdIim5JgtaqBhPtVwaATtQBlUzcbvPKyw13aKjcmbomfAL
	XXz5VdBq16+0OnWpat8MdU/wKpw7lc92bfWWfciQncSD31dN+znlSwn/y/VaiaizexSuHfiRByg5s
	dBYmGyVqh7+PWWXSEpXsn5EOFPvZSGuth5GYVGXdx8bnN08dx4I7YNJVT9rJMBYskIjDp/j63LbIq
	HVZDRWsow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjYMg-0002Zp-B7; Mon, 30 Nov 2020 01:52:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjYMJ-0002VF-RR; Mon, 30 Nov 2020 01:52:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjYME-0007OY-4p; Mon, 30 Nov 2020 02:52:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 0/9] arm64: dts: rockchip: Engicam PX30.Core changes
Date: Mon, 30 Nov 2020 02:51:56 +0100
Message-Id: <160670107989.1055391.7542778986080357647.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_205207_972153_4AB66CDB 
X-CRM114-Status: GOOD (  11.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 9 Nov 2020 23:40:08 +0530, Jagan Teki wrote:
> Series support Engicam PX30.Core SOM changes along with C.TOUCH
> Open Frame 10.1" board.
> 
> All respetive LCD panels are in Mainline already.
> 
> thanks,
> Jagan.
> 
> [...]

Applied, thanks!

[1/9] arm64: dts: rockchip: px30-enagicam: Enable USB Host, OTG
      commit: 4548ea027c900f1e0f07a292b8e10dc3d2725f44
[2/9] arm64: dts: rockchip: px30-engicam-edimm2.2: Enable LVDS panel
      commit: 87761edeb2cd90b8251f269eb52c4b48152aace8
[3/9] dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
      commit: 23708d46101b5d5538c88b84b764d0ed9d8957ca
[4/9] arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0 10.1" OF
      commit: 0e418423be1c824b2cda37fd00528f62231cd219
[5/9] arm64: dts: rockchip: px30-engicam: Add WiFi support
      commit: 93a4e7d12468b0ab46796f3ed8dc5838dc7f63bc
[6/9] arm64: dts: rockchip: px30-engicam: Add BT support
      commit: 1cc1e851d15b4ebd4c6c5f741cfdb58b988a4445
[7/9] arm64: defconfig: Enable ROCKCHIP_LVDS
      commit: dbb378a59cb2bdb01454098513d9b61355fbe377
[8/9] arm64: defconfig: Enable PHY_ROCKCHIP_INNO_DSIDPHY
      commit: ec68a66395d9ccedc9b2b2f6452edfd7cb0fdfd5
[9/9] arm64: defconfig: Enable USB_SERIAL_CP210X
      commit: cf35bff64f79b4ca8785766d67b608b76404d43f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
