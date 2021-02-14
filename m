Return-Path: <SRS0=Bigu=HQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2FA1C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Feb 2021 04:52:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97CA264E52
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Feb 2021 04:52:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97CA264E52
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=posteo.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XjU8DsD1NFKFmge5ZQTgfvE4hkst47n5EEr4PMFeRtc=; b=JTLyIkStV2avPm3FeMUluldjL
	0PAt1h2pLvTt8ArdDSRmKhG5YMpOvrTuS6BmES4UOibhC702oJmTGPV3wRL0zgoujKqHmADdQQueR
	WJ14ibrZqRQ70tgHnjp20Aal0brgUq6XwutJh68udCj3lml+hh41kqOm0vV4+mCbjhIipzLSEH5u/
	ilkqCVIkXCxtrDpx47cLucMpNkjpp9HD/chGfg6oRWqD3siyWgn7FSijD7Fe6RocDb4LCKvJasfXg
	Icomyhg0DpSRW4TPTlueEZJQG3NNdgfBqW6qP/q6SfK38C4Ho0pqIC9MH9hfoG01oYMXDevkyWwXa
	ePkYvTbbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lB9ON-0004o9-U6; Sun, 14 Feb 2021 04:52:19 +0000
Received: from mout01.posteo.de ([185.67.36.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lB9OI-0004mb-HR
 for linux-rockchip@lists.infradead.org; Sun, 14 Feb 2021 04:52:16 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 18FC0160062
 for <linux-rockchip@lists.infradead.org>; Sun, 14 Feb 2021 05:52:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1613278329; bh=N2OFag51Yk707V6y0F3zYvO9dt8D3xrSs1fvn36Gyis=;
 h=Date:From:To:Cc:Subject:From;
 b=IziuXCnWpKYaoaVXJKT+kkTieF8H5YnmT0pAs4epzJThVbqDDYiwKI2KEL9kRhZ33
 0dnh+TMSMX4r+ndVuS/v+I/2iLFnR1JrH8AumHf7JRsmmjdsDDQ+9tSKatbgrAWNHI
 26ynq8McsRJKhYjxmm3g0QPPKECFm4Wz1ASoDWM4FPNEJiPjeSmo50MYDU36i39Rit
 Ro+YsGPy1nVJ/VNZ2EBvyLnGkaGYoeLrJNSZwxB+0E43reO1hwUVVXLVpsU71mWS4X
 VzIGuOxu+B67caK2mZ7q2NOl73OqBTbGK1x91BYhaOjz9Nwk+X+yfW4shggf6OEsXw
 G66+f0mnfnYsg==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4DdZbB5ZDhz9rxH;
 Sun, 14 Feb 2021 05:52:06 +0100 (CET)
Date: Sun, 14 Feb 2021 05:52:06 +0100
From: Sebastian Fricke <sebastian.fricke@posteo.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 0/6] Support second Image Signal Processor on rk3399
Message-ID: <20210214045206.4jqae2yuolgdxwad@basti-TUXEDO-Book-XA1510>
References: <20210210111020.2476369-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210111020.2476369-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210213_235214_871675_9D44F742 
X-CRM114-Status: GOOD (  15.07  )
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
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com,
 cmuellner@linux.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Heiko,

I have tested your series and it successfully fixes the problem with the
2nd camera when HDMI is connected at boot. Besides that the patch looks
good and my tests have confirmed that both cameras have the same output
quality when I exchange the connected ISP instances.

Tested-by: Sebastian Fricke <sebastian.fricke@posteo.net>

Greetings,
Sebastian

On 10.02.2021 12:10, Heiko Stuebner wrote:
>The rk3399 has two ISPs and right now only the first one is usable.
>The second ISP is connected to the TXRX dphy on the soc.
>
>The phy of ISP1 is only accessible through the DSI controller's
>io-memory, so this series adds support for simply using the dsi
>controller is a phy if needed.
>
>That solution is needed at least on rk3399 and rk3288 but no-one
>has looked at camera support on rk3288 at all, so right now
>only implement the rk3399 specifics.
>
>changes in v2:
>- enable grf-clock also for init callback
>  to not break if for example hdmi is connected on boot
>  and disabled the grf clock during its probe
>- add Sebastian's Tested-by
>- add Rob's Ack for the phy-cells property
>
>Heiko Stuebner (6):
>  drm/rockchip: dsi: add own additional pclk handling
>  dt-bindings: display: rockchip-dsi: add optional #phy-cells property
>  drm/rockchip: dsi: add ability to work as a phy instead of full dsi
>  arm64: dts: rockchip: add #phy-cells to mipi-dsi1
>  arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
>  arm64: dts: rockchip: add isp1 node on rk3399
>
> .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
> arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  39 ++
> drivers/gpu/drm/rockchip/Kconfig              |   2 +
> .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 349 ++++++++++++++++++
> 4 files changed, 391 insertions(+)
>
>-- 
>2.29.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
