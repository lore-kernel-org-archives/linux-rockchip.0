Return-Path: <SRS0=M4rV=OQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1739FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Sep 2021 20:12:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76B5061019
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Sep 2021 20:12:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 76B5061019
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4X/veig4m/RrirQzRaKE/G2dQw5SDhU60rUFDuAfKts=; b=3i1zE0jtmvoE9w
	5ADjq0huGPkspCGnYceB6vECjOLb9bRshpltey9zKFxEl/fRcuxzaeF+RvsFG9Urgc9KSpggJsyQi
	ydmk6MA5GJYKvl+x35+lmpAjLgn+AOzo00bkHir5bOrBv/QeE9E2VNIQnO8a2dLXtZFHB57VHaY+w
	jLO30BZ76SdjdkahV3f1G216FEebqLjsyPR/aQPoDDk5c7FQZGdI59lpyuPc78m7jN5IgdMoMiqy4
	97LJYWHQl8sbcrd+B6lVN3rkId1xcwFThqjN05ZDbHpxa+pVwp5qheDWIhKD+m7bnHxbPYZ5d+rXI
	6nSUe8FmaUz+wyG55xgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUaVQ-0012Ma-OG; Sun, 26 Sep 2021 20:12:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUaVN-0012M3-JT
 for linux-rockchip@lists.infradead.org; Sun, 26 Sep 2021 20:12:11 +0000
Received: from user91-192-32-221.grape.cz ([91.192.32.221] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1mUaVH-0007k7-1H; Sun, 26 Sep 2021 22:12:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>, linux-rockchip@lists.infradead.org
Cc: linus.walleij@linaro.org, brgl@bgdev.pl,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-gpio@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Urja Rannikko <urjaman@gmail.com>
Subject: Re: 5.15-rc2 panics on boot on RK3288 veyron speedy,
 seems related to rockchip pinctrl / gpio split
Date: Sun, 26 Sep 2021 22:11:59 +0200
Message-ID: <1870262.PYKUYFuaPT@phil>
In-Reply-To: <CAPCnQJm8ABVsv9uXM2iJ59-DCP1Y65i5zf+pM3yQ0Na8Xfra7Q@mail.gmail.com>
References: <CAPCnQJm8ABVsv9uXM2iJ59-DCP1Y65i5zf+pM3yQ0Na8Xfra7Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_131209_698601_AEEE0698 
X-CRM114-Status: GOOD (  14.82  )
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

Hi,

Am Sonntag, 26. September 2021, 13:57:33 CEST schrieb Urja Rannikko:
> A boot log of this is attached. I can say that this happens on
> 5.15-rc2 but not on 5.14.7.
> 
> Based on the log and some reading of the code my diagnosis is that
> rockchip_pinctrl_probe (via rockchip_pinctrl_register and after that
> the pinctrl core register calls) ends up trying to apply the
> configuration and accesses a null bank->gpio_chip (i think at
> drivers/pinctrl/pinctrl-rockchip.c:2139)
> before the gpio is "populated" / probed a couple of lines later in
> rockchip_pinctrl_probe (line 2710 onwards).
> 
> What I don't know is how this is supposed to work and/or how to
> properly fix it, so that's why I'm sending this bug report instead.
> 
> I'm sending this to the people who last touched the rockchip pinctrl
> (and gpio), because that's where this log points me to.

See
https://lore.kernel.org/all/20210913224926.1260726-1-heiko@sntech.de/

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
