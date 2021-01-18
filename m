Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF04C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 12:58:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFACE22B49
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 12:58:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFACE22B49
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rI4kuKgljrfysZO0sxJnloJGEU6ZjgZDGi0hlfS3akw=; b=a5IafzJ8ya86BfJ/sR5g9AB3r
	mWvC6iRiF3tdGufgg0i4HmuWgTh+MTBImXT7ewTIpTET6ykxYoM9RhkflISmbGheR5bXc5Yq3JL1a
	f/iSoWkhE4rBkEmlWqpwRuHMFH7lCTHJwuhqcJjWKgzsVLENqSEpWFKzrQePeeWEz+7etgEHfe4Ln
	LHWh0WrkWXgObqcKFQOckx0Ws9ksfdwUhv88P71tkvxzbtVmQSMwm6WBPq9f9NHSQYGoK8olxWKSK
	oiHxxtHYTU1GrrzAW+2w5POkPUudpoMnl4X1Rpn1iu7qynXV5xU9cBKT0Nsa2n9QMyD1a8ehDJEYR
	S6yU9HeSQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1U6X-00027R-LC; Mon, 18 Jan 2021 12:57:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1U6J-00022z-Ln; Mon, 18 Jan 2021 12:57:44 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l1U6E-000424-L9; Mon, 18 Jan 2021 13:57:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 0/3] arm64: rockchip: rk3328: Add Radxa ROCK Pi E
Date: Mon, 18 Jan 2021 13:57:35 +0100
Message-Id: <161097370156.287816.17060866195446483502.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210117100710.4857-1-wens@kernel.org>
References: <20210117100710.4857-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_075743_756634_071BBF44 
X-CRM114-Status: GOOD (  11.44  )
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
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 17 Jan 2021 18:07:07 +0800, Chen-Yu Tsai wrote:
> This is v2 of my ROCK Pi E support series.
> 
> Changes since v1:
> 
> - Picked up Rob's Ack for the binding
> - Dropped comment about LED color
> - Dropped max-frequency from emmc node
> - Changed pingroup name from "ethernet-phy" to "ephy" to avoid DT binding
>   check failure
> - Dropped cap-mmc-highspeed from sdmmc node
> - Fixed regulator properties to have consistent ordering
> - Added adc-key for recovery button
> - Sorted header files
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: rk3328: Add clock_in_out property to gmac2phy node
      commit: c6433083f5930fdf52ad47c8c0459719c810dc89
[2/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
      commit: 31b8e8592f6663c0937d1408f1fd6ed566fbde5c
[3/3] arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E
      commit: b918e81f2145967f0cadfe9ede38c69c1796fe09

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
