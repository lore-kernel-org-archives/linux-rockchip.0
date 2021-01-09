Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21179C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B38123372
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B38123372
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/CdFy1xBGz6ClV6jSSWrX4aSttPIf1yyQrnaTnmu0L4=; b=ArupS5XGwSI/4pP+OsiZKZPV+
	oCPBkRa59kKTyr6ymtG51Zqf7HCPQ0rv0D+7bZ5q7LC5B8o/LXMdAMR2T3MgZSlCZRVg7jU5D2RyZ
	Vkk16GI6d3wSFvlwIQKiSQDzldTjbl2++OO++K0jvK4S2dFIpj6RMta2xDfU4/yy5wBC23zC5zq+5
	uPreXewWVFBaKF4c8wd/LwoUJDK9ckQEeOgG6mk/XFog8OtZ+38HgHFInw1cHMvzuyg7CHYNxKKf5
	RzgUjvtr8SvonO7R77FiyBW69jFqGi/1OjbqEz/93B8fh/zGQNm2hWZRkMarie3zlv9zb/ughffCV
	aNTeP5/3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyGLy-0000jD-Dp; Sat, 09 Jan 2021 15:40:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyGLP-0000Yd-SD; Sat, 09 Jan 2021 15:40:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyGLO-0000jX-2W; Sat, 09 Jan 2021 16:39:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: sigmaris@gmail.com, jbx6244@gmail.com, t.schramm@manjaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, smoch@web.de,
 linux-rockchip@lists.infradead.org, Simon South <simon@simonsouth.net>,
 katsuhiro@katsuster.net, robh+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Pinebook Pro: Use supported PCIe
 link speed
Date: Sat,  9 Jan 2021 16:39:53 +0100
Message-Id: <161020678303.3482489.12367815944017835659.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20200930185627.5918-1-simon@simonsouth.net>
References: <20200930185627.5918-1-simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_103959_983966_44ABACBD 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 30 Sep 2020 14:56:27 -0400, Simon South wrote:
> On Pinebook Pro laptops with an NVMe SSD installed, prevent random
> crashes in the NVMe driver by not attempting to use a PCIe link speed
> higher than that supported by the RK3399 SoC.
> 
> See commit 712fa1777207 ("arm64: dts: rockchip: add max-link-speed for
> rk3399").

Applied, thanks!

[1/1] arm64: dts: rockchip: Pinebook Pro: Use supported PCIe link speed
      commit: 642fb2795290c4abe629ca34fb8ff6d78baa9fd3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
