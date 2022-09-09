Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2843ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 18:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwzVenTxxtSnrIscQBWihRrA5gomj7MxgE18YmAeWXs=; b=EAY3HRuvh8FKyF
	5KVkzdT0hM54Dmkc4JRaB2AmBEKiipRFlk1L8dZVppZtO2MbJoJ+JyFpWzr+pqCZ+eimKfF0X7xCD
	3qWrqCMHzMrzKQAtRe4ykbTGRoyV7316afLttpY9YThF4I/ZW9cUSowo8qqK06zP+NgNLJtXuPRQS
	B+V0up9CzmcG25B2XkPQHnhKjCLxcuQDjuOMV+ITzAMfjYUaIdR3g8MN6ccLC5oArkVhgQ+f8jpc2
	ne9OEPFUcbgzrk6p1LR0CQDayo6XmcieOGE5gARfLwL3cLP62m9i04baafdZWKMW70YV0RmZ117KB
	XahnJXw17ltzjmpcwmnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipt-001Ez9-N0; Fri, 09 Sep 2022 18:34:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipM-001Eaz-JA
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 18:34:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWipH-0007Ij-Qj; Fri, 09 Sep 2022 20:34:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-pm@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	jon.lin@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>,
	zyw@rock-chips.com,
	maccraft123mc@gmail.com,
	zhangqing@rock-chips.com,
	lee@kernel.org,
	robh+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	philip@pscan.uk,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	sre@kernel.org,
	mazziesaccount@gmail.com
Subject: Re: (subset) [PATCH V10 0/4] power: supply: Add Support for RK817 Charger
Date: Fri,  9 Sep 2022 20:33:48 +0200
Message-Id: <166274831282.21181.10815388429575993690.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220827021623.23829-1-macroalpha82@gmail.com>
References: <20220827021623.23829-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_113408_647906_D52BDF6C 
X-CRM114-Status: GOOD (  11.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 26 Aug 2022 21:16:19 -0500, Chris Morgan wrote:
> This series is to add support for the Rockchip rk817 battery charger
> which is present in all Rockchip RK817 PMICs. The driver was written
> as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> myself Chris Morgan <macromorgan@hotmail.com>.
> 
> The driver requires some basic parameters be described about the
> battery in the devicetree such as the maximum capacity, the minimum
> and maximum voltage for the battery, the maximum charge current, the
> maximum charge voltage, and the value of sample resistors and sleep
> currents.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: add rk817 chg to Odroid Go Advance
      commit: a5d5e515ed89709de8ad2537cd9d611b95e1928b

With the binding having gotten applied, this could go in.
It just leaves the charger-driver to be handled.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
