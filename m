Return-Path: <SRS0=hTL8=M3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1861C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 18:57:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 611A360525
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 18:57:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 611A360525
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/56FuxAFgCycqy8AOMsVDkHklA34W9Fd5pM3YTAVAXA=; b=truKN6+75LEHKY
	uutOrXnKbeR6w2z8j4T/HiIl7+OAgj6xtR55v1VksisGzauqOzLlMl79EqaBVW4GlgXV2W03hDRmK
	BZYJr8NRAcA1+gnfqZzDrcJU5/A6DajlFE1t9UZnSUNK0DBCi7eOikGUfkhXsBOD5LqQpQrLgY9lN
	mFw86l34AeKP02+EPjQkRVHOZ7az/1pms8rufiE+BcIp23iNFObxsoR0KbkyyvLQQjL0Ifkx7Jn24
	g1ZNCExz93T4FJHWDi/URDOL/DRrASi6npWOXe4BaCWdvUQypQ7DWz6Vj/vET3KI4AwdXba2TK9lX
	Ov6ToWFIBc2fzIuJzb5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBM5C-007F2c-U9; Wed, 04 Aug 2021 18:57:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBM4y-007EzK-Ls; Wed, 04 Aug 2021 18:57:26 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mBM4t-0002da-UO; Wed, 04 Aug 2021 20:57:19 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Simon Xue <xxm@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: rockchip: rk3568-evb1-v10: add node
 for sd card
Date: Wed, 04 Aug 2021 20:57:19 +0200
Message-ID: <36612273.XM6RcZxFsP@diego>
In-Reply-To: <68c6c548-ff07-da79-f75c-afb6a9846932@wolfvision.net>
References: <20210804130625.15449-1-michael.riesch@wolfvision.net>
 <aa16ee55-e1de-adc8-51f0-8ceed136b911@gmail.com>
 <68c6c548-ff07-da79-f75c-afb6a9846932@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_115724_785746_DAA5A802 
X-CRM114-Status: GOOD (  30.72  )
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

Hi Michael,

Am Mittwoch, 4. August 2021, 20:49:45 CEST schrieb Michael Riesch:
> Hi Johan,
> 
> Thanks for your comments, I'll try to implement the requested changes
> and prepare a v3 tomorrow.
> 
> On 8/4/21 4:30 PM, Johan Jonker wrote:
> > Hi Michael,
> > 
> > Could you add a commit message to all patches in this serie?
> 
> Well the short commit message (i.e., the subject line) pretty much wraps
> it all up in my opinion, hence no need for an extended commit message.
> Is there anything in particular you would like to see or have explained
> that requires an extended message? I would like to refrain from adding
> an extended commit message just for the sake of having one.

it's just a matter of style, and yes having a non-empty commit message
is preferred in most parts of the kernel.

Even if it's just a simple one-liner ;-), for example

"Enable the sdmmc node on the rk3568-evb1 with the 4 lanes connected on it"


Heiko

> 
> > On 8/4/21 3:06 PM, Michael Riesch wrote:
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >> v2:
> >> - rename alias to match convention
> >>
> >>  arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 15 +++++++++++++++
> >>  1 file changed, 15 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> >> index ed96f27c64a3..c4da6436059d 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> >> @@ -17,6 +17,7 @@
> >>  		ethernet0 = &gmac0;
> >>  		ethernet1 = &gmac1;
> > 
> >>  		mmc0 = &sdhci;
> >> +		mmc1 = &sdmmc0;
> > 
> > mmc aliases are sort on reg address based on availability without number
> > gap.
> > 
> > 	sdmmc0: mmc@fe2b0000 {}
> > 	sdhci: mmc@fe310000 {}
> 
> I'll turn these around.
> 
> >>  	};
> >>  
> >>  	chosen: chosen {
> >> @@ -353,6 +354,20 @@
> >>  	status = "okay";
> >>  };
> >>  
> >> +&sdmmc0 {
> >> +	bus-width = <4>;
> >> +	cap-sd-highspeed;
> >> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> >> +	disable-wp;
> > 
> >> +	pinctrl-names = "default";
> >> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> > 
> > pinctrl-names below pinctrl-0 like the rest of rk356x.dtsi
> 
> OK!
> 
> >> +	sd-uhs-sdr104;
> > 
> >> +	supports-sd;
> > 
> > Check mmc-controller.yaml, rockchip-dw-mshc.yaml and
> > synopsys-dw-mshc-common.yaml for properties.
> 
> I am afraid I don't quite follow. What exactly should I check? I am
> pretty sure that the properties I used are described in the mentioned
> yaml files.
> 
> Regards, Michael
> 
> > 
> >> +	vmmc-supply = <&vcc3v3_sd>;
> >> +	vqmmc-supply = <&vccio_sd>;
> >> +	status = "okay";
> >> +};
> >> +
> >>  &uart2 {
> >>  	status = "okay";
> >>  };
> >>
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
