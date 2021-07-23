Return-Path: <SRS0=F11g=MP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C6DAC4320A
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 12:02:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AAF760ED7
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 12:02:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0AAF760ED7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MasXfzKQ27+f68vyMHDzqg2f25le7NciMw1UdBGCQ6Y=; b=sMLstNwp4y1TgK
	Gh6yBEeznoYoDvxB66G5+2cXApASvqsUwlJA25NBHU+SWJ13eLNnTrPVciPqTNMl2z8sBm5UKBO/c
	GKxID/P91iq1fWiCKG3lQluVsNXESTgE/Pb/dOxNO8cEk14LJ6wfxXOHB0CSFd1Bxz5pBoD2K+dJu
	F4cIayhexQt8TuizwB5fn28vIePyHze6oUwDOiLQ341Jv3ElzEezDz6Yrzin34tQX83nbDbqC7hYf
	bFSrgTLRGA5fwdu8QX7DQM6CSuCiIJZwfZwGj3qaa2RhE9t0JZqV3IW0TjBHfD9tUyRQ6LcA7CYOd
	01xbx+SWlqT2S0/58Vgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6tsg-004YES-E7; Fri, 23 Jul 2021 12:02:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6tse-004YAK-3B; Fri, 23 Jul 2021 12:02:17 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m6tsV-0004qO-47; Fri, 23 Jul 2021 14:02:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Liang Chen <cl@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH 0/4] split rk3568 and rk3566 device trees
Date: Fri, 23 Jul 2021 14:02:05 +0200
Message-Id: <162704168907.1329605.13579564143359977102.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210710151034.32857-1-pgwipeout@gmail.com>
References: <20210710151034.32857-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_050216_176163_F3746BD4 
X-CRM114-Status: GOOD (  12.07  )
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

On Sat, 10 Jul 2021 11:10:30 -0400, Peter Geis wrote:
> This is an example patch set that addresses the split of the rk3568 and
> rk3566 soc device trees.
> This method attempts to avoid deleting and modifing nodes by maintaining
> a common dtsi for all common items and adding in the differences in
> separate dtsi files.
> It also includes a basic dts for the Pine64 Quartz64 Model A board
> as an example of a rk3566 device.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: move rk3568 dtsi to rk356x dtsi
      commit: 94c75b5265fe899391e298eace826e4f8d1e8e40
[2/4] arm64: dts: rockchip: split rk3568 device tree
      commit: 92eb5ffbae440700dd38378e24d8091fe166c352
[3/4] arm64: dts: rockchip: add rk3566 dtsi
      commit: 04e1ecf6099cc3ba17c2d4279c968a656320cd12
[4/4] arm64: dts: rockchip: add basic dts for Pine64 Quartz64-A
      commit: c95414d68f116462acf9622f715b8a568bb1dd00

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
