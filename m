Return-Path: <SRS0=wzRa=IX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73194C433C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 00:51:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C70C560C3E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 00:51:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C70C560C3E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9kxzkrRiTo3HvcBMAG+pdetet1k9UVjt8jlW4W2c33g=; b=CoyX2LyKjo52kRP2dF9dR+LxW
	i6H386Lxx48qyYvzSE+CSlA8tETXe8ie/FdNpZRvwkqphCVCWTDhys0M8TjGUDnBuBrBRis6KvpRS
	VBcpLUBMuhoCjxdOi4RDSjhp4c6Vmqno7nbkdM5hmCa5c5fySe4taQCpS2gRJVleqpA0ORBNBRYrQ
	BNGObwc4DBn5V3UYBksyxnYrEvf0xaibujU6gySj68cdI2/fwzKnBDv/roUeFsm3rADzgQo7p/V0T
	sNPvAP07As2HPItL7XyKrbwOIoCxG8pIgJk7EjRAOsReCkeO/+cakpxB15kq8e3As3Sg7/C+qKu0u
	HfZbr2Y3g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPEDW-000Oc0-Mo; Thu, 25 Mar 2021 00:51:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPEDI-000Oak-Vu; Thu, 25 Mar 2021 00:51:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lPEDB-0003K7-QY; Thu, 25 Mar 2021 01:50:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, jamie@jamieiles.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@roeck-us.net, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-watchdog@vger.kernel.org, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 1/8] dt-binding: watchdog: add more Rockchip
 compatibles to snps, dw-wdt.yaml
Date: Thu, 25 Mar 2021 01:50:54 +0100
Message-Id: <161663335606.1190848.11875320014476153759.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_005106_905787_D4F321FA 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

On Fri, 18 Dec 2020 13:05:27 +0100, Johan Jonker wrote:
> The watchdog compatible strings are suppose to be SoC orientated.
> In the more recently added Rockchip SoC dtsi files only
> the fallback string "snps,dw-wdt" is used, so add the following
> compatible strings:
> 
> "rockchip,px30-wdt", "snps,dw-wdt"
> "rockchip,rk3228-wdt", "snps,dw-wdt"
> "rockchip,rk3308-wdt", "snps,dw-wdt"
> "rockchip,rk3328-wdt", "snps,dw-wdt"
> "rockchip,rk3399-wdt", "snps,dw-wdt"
> "rockchip,rv1108-wdt", "snps,dw-wdt"
> 
> [...]

Applied, thanks!

[2/8] ARM: dts: rockchip: add new watchdog compatible to rv1108.dtsi
      commit: 610e4c7215ddfa5c1bb52764717674ea8adb64f9
[3/8] ARM: dts: rockchip: add new watchdog compatible to rk322x.dtsi
      commit: 9ceb98f1ed19bc68129aa0db9da5adb4a40c0f1c
[4/8] arm64: dts: rockchip: add new watchdog compatible to px30.dtsi
      commit: d16c7082cff5e198f2435f08e2254e40f3058c75
[5/8] arm64: dts: rockchip: add new watchdog compatible to rk3308.dtsi
      commit: 58ead0c605e8a5f4139ed4dfffcdddac72e2eb31
[6/8] arm64: dts: rockchip: add new watchdog compatible to rk3328.dtsi
      commit: 2499448c920fc9648350d4f21e1fbd00ccd108ee
[7/8] arm64: dts: rockchip: add new watchdog compatible to rk3399.dtsi
      commit: 6b5c50863b3e6837f856a137fe6880ed4662335b
[8/8] ARM: dts: rockchip: remove clock-names property from watchdog node in rv1108.dtsi
      commit: 398a4087872a44921d0ede2afef53a3c9f779ab6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
