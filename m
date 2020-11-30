Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0D50C64E90
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 404FD20757
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="k7k7hrxG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 404FD20757
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vNeXotSydHfgQcNv0HQt5eD03seDQR+fV8WMx0ahZ54=; b=k7k7hrxG8bUOq6e3TEOozJ7mX
	aHeISOVWpi1KpIMLCPCpl1HPZZxSnXoX9pS70oFG7WITHjnE5SfKffjvcoWS/GgrO0jQZdLoq9Z5D
	xKiPa0ZRHwj3AyToRUG9oFhP3ztTHFXGwIqkc3qK1j9e1NlB/SjoqvbF7H9cqLWFebbaXWL8UH5qC
	q9dVpPf1yOYXLhFS2oL6r6YZBo/1FDte5j+i5prC2bWAYlIfDe4l0eHetNPxVVHcs7/SGBVD73w//
	48Xwl0BbUsq6jUY1v0SXKVO6xmsH21r2l9equvLqwXGbVeRaAufweFeKuftuDiOxzOzCl8p+W/xiP
	yFO5ifJfg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjYMp-0002cl-Qp; Mon, 30 Nov 2020 01:52:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjYMP-0002W7-9s; Mon, 30 Nov 2020 01:52:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjYME-0007OY-Vw; Mon, 30 Nov 2020 02:52:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: (subset) [PATCH v5 0/7] Enable rk3066a HDMI sound
Date: Mon, 30 Nov 2020 02:51:58 +0100
Message-Id: <160670107988.1055391.2625216014157320355.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201118135822.9582-1-jbx6244@gmail.com>
References: <20201118135822.9582-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_205213_443565_80E7B192 
X-CRM114-Status: GOOD (  12.28  )
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, airlied@linux.ie, lgirdwood@gmail.com,
 mturquette@baylibre.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, broonie@kernel.org,
 daniel@ffwll.ch, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 18 Nov 2020 14:58:15 +0100, Johan Jonker wrote:
> First fix some legacy things in clk-rk3188.c that was never updated,
> because probably nobody used rk3066a I2S before in the mainline kernel.
> Update the rk3066a HDMI documents with a #sound-dai-cells property.
> Include the code for sound in the HDMI driver.
> Add a simple-sound-card compatible node to rk3066a.dtsi,
> because I2S0 and HDMI TX are connected internally.
> And as last enable rk3066a HDMI sound in the rk3066a-mk808.dts file.
> 
> [...]

Applied, thanks!

[1/7] clk: rockchip: add CLK_SET_RATE_PARENT to sclk for rk3066a i2s and uart clocks
      commit: 5868491e1257786628fdd2457dfb77609f49f91d
[2/7] clk: rockchip: fix i2s gate bits on rk3066 and rk3188
      commit: caa2fd752ecb80faf7a2e1cdadc737187934675e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
