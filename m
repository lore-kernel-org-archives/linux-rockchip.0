Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4F2AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 23:06:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49413610E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 23:06:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 49413610E6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0niC9B5VXUhf2XLTlCb1WBn9sS2UfZ8yH0rGNDnxQ8=; b=Ko6Ev8em8w/1ah
	FFDs29T91yVHVJ3Jh26y43dLI1Np5o9Ua7pCSD/vgXQP5/cywLOvti48nihEjxUqJcgH+94JN6Gzg
	XO6MjKVWK7dFAgliEqPwhMW1VSJn8Uze3bfMLN4lGCClcPbRqOkQlGTd5d3SI+Yo8+KMOg72x9nBt
	cFfGyLLtbL4WskJuiTk/5KxEAwTGRqe0K3gmzv3agV0wOtdpEIfU1Vzlhc47A0Fi7ArVPWMJcG4Us
	Tnstl1liRzNY07kMmcAfTZh9WUT3meJj+in7Y1w9nZ3R2HH1uN1UDwvgWrpwLhMnYY3L+HnQN7gSj
	noRhWsfTgh2pkezCrZgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1manKm-000yGK-6Q; Wed, 13 Oct 2021 23:06:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1manKk-000yFg-2j; Wed, 13 Oct 2021 23:06:51 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1manKe-0007mv-Gi; Thu, 14 Oct 2021 01:06:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Cc: Johan Jonker <jbx6244@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip,
 pinctrl.txt to YAML
Date: Thu, 14 Oct 2021 01:06:43 +0200
Message-ID: <27874771.ckeLuOHhQ7@diego>
In-Reply-To: <CACRpkdYArdPwEVf_5pwsROKPjbnVAtU3mf9v1z6WXGPoBb=SZg@mail.gmail.com>
References: <20211007144019.7461-1-jbx6244@gmail.com>
 <1633661172.660863.1409603.nullmailer@robh.at.kernel.org>
 <CACRpkdYArdPwEVf_5pwsROKPjbnVAtU3mf9v1z6WXGPoBb=SZg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_160650_158410_1DD18F75 
X-CRM114-Status: GOOD (  17.84  )
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

Hi Linus,

Am Donnerstag, 14. Oktober 2021, 00:31:59 CEST schrieb Linus Walleij:
> On Fri, Oct 8, 2021 at 4:46 AM Rob Herring <robh@kernel.org> wrote:
> 
> > On Thu, 07 Oct 2021 16:40:17 +0200, Johan Jonker wrote:
> > > Convert rockchip,pinctrl.txt to YAML
> > >
> > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > ---
> > >
> > > Changed V3:
> (...)
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> 
> Rob can you tell me how you like me to handle this?
> Do we merge the nice new bindings and deal with the
> aftermath or do we need to fix the DTS files in the same
> patch series?

I guess personally I'd say it comes together in linux-next.

But if you like your pinctrl-tree without additional warnings dtbs_check
till the next -rc1, I'll add Acks to patches 1+2.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
