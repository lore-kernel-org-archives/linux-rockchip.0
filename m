Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB9ABC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:27:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 08F8A613B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:27:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 08F8A613B2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp/IDdjekPH2rDFP01b/ukcx6uLoKqxz9QM3aUsclvI=; b=MxNFT3YzUdq+S1
	sncrT5fRfmaBNdeqt9tQTrKmPshSQZj/2+zaBGvTrp2g+k7eJAQZBySHPs1YnISeD+cscVZJcvR4Z
	+7qsOsOjL6foq4gk4UEDmnUy/kdpBYIt0Vh0tlC7cfaDGhhxdLF9oiHKHmODybDUGW39eOaqeOaSP
	sSJyUTTC7IZ4ucWM+nN/5Prugl6JJnbWX2nIiz4l065waxIWE8awkmFxbEL8lRfT0+wK7+mBtIK0m
	DlbgkyJR4FkY4ESJWa0VoN0n0dcpwtCKQ6agMvjwKifgVMHP2wGhJjw3SBmYlOOCq2ezqovrhdIhv
	qyT9wOCJW4NULqAkZvOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvdca-006djO-Fd; Tue, 22 Jun 2021 10:27:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvdcX-006dhN-G8; Tue, 22 Jun 2021 10:27:06 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lvdcE-00030O-By; Tue, 22 Jun 2021 12:26:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: jay.xu@rock-chips.com,
	"cl@rock-chips.com" <cl@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, jamie@jamieiles.com,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 jagan@amarulasolutions.com, huangtao@rock-chips.com, wens@csie.org,
 jbx6244@gmail.com, wim@linux-watchdog.org, uwe@kleine-koenig.org,
 david.wu@rock-chips.com, jensenhuang@friendlyarm.com,
 linux-kernel@vger.kernel.org, maz@kernel.org, zhangqing@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux@roeck-us.net,
 linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org,
 ulf.hansson@linaro.org, robh+dt@kernel.org, cnsztl@gmail.com,
 linux-arm-kernel@lists.infradead.org, shawn.lin@rock-chips.com,
 linux-watchdog@vger.kernel.org, gregkh@linuxfoundation.org,
 michael@amarulasolutions.com, mail@david-bauer.net
Subject: Re: (subset) [PATCH v5 0/4] arm64: dts: rockchip: add basic dtsi/dts
 files for RK3568 SoC
Date: Tue, 22 Jun 2021 12:26:30 +0200
Message-Id: <162435742917.99007.5058927510330896859.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210622020517.13100-1-cl@rock-chips.com>
References: <20210622020517.13100-1-cl@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_032705_630254_91D09D95 
X-CRM114-Status: GOOD (  10.45  )
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

On Tue, 22 Jun 2021 10:05:13 +0800, cl@rock-chips.com wrote:
> v1:
> 1. add some dt-bindings for RK3568 devices.
> 2. add core dtsi for RK3568 SoC.
> 3. add basic dts for RK3568 EVB
> 
> v2:
> 1. sort device nodes by some rules.
> 
> [...]

Applied, thanks!

I've dropped the pwm and watchdog nodes as their binding changes
haven't been applied yet - see followup patches I'll post in a minute.

I've also droppen the debounce clocks from the gpio nodes, as Jianqun
is still working on that.

That way the yaml dtbscheck is pretty happy with the result :-)

Let's see if this can still make it into 5.14.

[2/4] arm64: dts: rockchip: add generic pinconfig settings used by most Rockchip socs
      commit: ef0bff8ba8dfa53780fca0fd5c369f9c78fc30cf
[3/4] arm64: dts: rockchip: add core dtsi for RK3568 SoC
      commit: a3adc0b9071d880dcceb78b5e921843502f272bd
[4/4] arm64: dts: rockchip: add basic dts for RK3568 EVB
      commit: 01610a24cefa182b155a17e38cd0b84f8a3f0529

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
