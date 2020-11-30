Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A005C64E7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:50:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C4453207BC
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:50:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ion+35kK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C4453207BC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HSBM3nRvhtMqTG4w6k2Vl5Fsg5h9Uxw4HkgAj5oN4S4=; b=ion+35kK+Oj7Qfj8IR+t5ZYqB
	woZnLv5BTd1h3W0ITSi6jNAFTQd2M3u7fKwXEe3C/21VEuedH1AiRBeoJ7RNoMK2x/hel9xOa6+Q/
	ZC8h/2/INtVrCKNmJT+sGOt+XZCwc0QYl3x7Kf+XhqAhh4DxGbh+mXkrMt6ibpBW0FZ5ybC71wBaG
	Ve1RyWVCRy1X+ryH9tolI4vod0P+dEtLE4xI1jYT/7MmL45u9aocaZJs/n8Zpb7vJr+HsQXICGGzE
	BT9uvc5Nu6METKdMNTsHTjXsl3L//T/5qtVPocCt6vc5YAb/Ly34RFdGYPi+8+Gpgl3nHU3DS0KEa
	YTi1XEC5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjjZX-0006Xv-K1; Mon, 30 Nov 2020 13:50:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjjZW-0006XK-2i; Mon, 30 Nov 2020 13:50:30 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjjZQ-0002YW-V4; Mon, 30 Nov 2020 14:50:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: rename wdt nodename to watchdog in
 rv1108.dtsi
Date: Mon, 30 Nov 2020 14:50:22 +0100
Message-Id: <160674371009.1066509.12752605391442707719.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201116150756.14265-1-jbx6244@gmail.com>
References: <20201116150756.14265-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_085030_150000_26EAB7A2 
X-CRM114-Status: GOOD (  12.04  )
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
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 16 Nov 2020 16:07:56 +0100, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> /arch/arm/boot/dts/rv1108-evb.dt.yaml:
> wdt@10360000: $nodename:0: 'wdt@10360000'
> does not match '^watchdog(@.*|-[0-9a-f])?$'
> 
> Fix it by renaming the wdt nodename to watchdog
> in the rv1108.dtsi file.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: rename wdt nodename to watchdog in rv1108.dtsi
      commit: 06bccda2c13c07d4ac7ebfef766a968c788cbdbf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
