Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1BCFC432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 21:42:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D95B610D2
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 21:42:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6D95B610D2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsCZApRsD4KxNvihojc9cAm5GeNLXOhZgm2Jr6W5Rf0=; b=1mrppkGZCU3K45
	87Pd9GrBXwqj225zMbb80hYKL9wWzLSJp5e+7Z88fTAWAzDjkjRAO6KnqiDanrJl9kM1w8xTRtYwO
	ihks3Uq/sD6bxat7iuv2Ow7/XqJ0VHqyDFTTOnOwmfBOHb61LSeEN1v5Bhe+HgKkL//+t7lk5Azla
	/o9eG3BlyGz45wntfKj8bWk3cVQIsLcmoUMu1iOK9MWFR9fwbe2acPbLX1S12a6GSk2MVbSO9lXzI
	fwjUsFt5pK7yiJTVuhqsohvqMtt+WBYLFCHfCmFOmoZUd7Qv1TSA6y82a19o1X3Fw3Pv5vIUl03Zj
	eoinh6A1lMBb2DTFIk4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGTKl-006iXh-9Q; Wed, 18 Aug 2021 21:42:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGTKh-006iXD-Tx; Wed, 18 Aug 2021 21:42:49 +0000
Received: from [212.185.68.41] (helo=phil.client.m3-hotspots.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mGTKf-0001Wh-RY; Wed, 18 Aug 2021 23:42:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/8] fixes and enablement for rk356x
Date: Wed, 18 Aug 2021 23:42:44 +0200
Message-Id: <162932289621.2860738.15310161824918921933.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_144248_010654_7B88898E 
X-CRM114-Status: GOOD (  13.33  )
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

On Wed, 28 Jul 2021 14:00:26 -0400, Peter Geis wrote:
> Good Morning,
> 
> This series aims to fix some early issues with the rk356x and enable
> nodes that are currently supported by the available drivers.
> 
> 1. fixes the mbi-alias, which points to the wrong location
> 2. fixes the rockchip clk-pll to work without a grf node
> 3. adds the gpio debounce clocks which are necessary for gpio to bind
> 4. adds the common gmac1 node
> 5. adds the tsadc nodes
> 6. adjusts the gpll and ppll clocks to better support hardware
> 7. enables the gmac1 on the Quartz64
> 8. adds thermal support to the Quartz64
> 
> [...]

Applied, thanks!

[5/8] arm64: dts: rockchip: add rk3568 tsadc nodes
      commit: 1a9563ba0a59b221156d80a3a77a43fdd144576c

[I've moved the tsadc-pin pin setting to the second pinctrl
 block meant to hand-crafted pin settings in rk3568-pinctrl.dtsi]


[8/8] arm64: dts: rockchip: add thermal support to Quartz64 Model A
      commit: d0e2e61b3cbaab474e2093ceb2073c4441bd36f8

Looks like we're all done with that series now.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
