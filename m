Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2943BC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 10:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Zx9Pg6qbN3IQ636aEdqva4WgRyFyhzTCxMvGnHKdZE=; b=fkmHo+ukuUuD81
	xiqgxFP21OcmJQuyMa4Ai/v3DJxOTxnWD4prcgW4gWxTJYWXN3pgzunjpPAtarIZPaKzUc02GaO6d
	JW7cvyxyTdWAki1/44AZolOlQ9Y/ei14DGthu0938yrP08mne2oY7WxPgoX+AV/5ma8lz7qiZaDO/
	o25+yRUvYLHH5YwvlZMszL2WgxWIWFi3lr7nZsmmTrjxYDuKRYB/rU5ZpELCyqeNNlAAiNBJkz4E7
	ulfh2cnyiM0Vl86XFrV7QLRVzwY4tNfMbuax68hrWoLzjgTPWqFy9HJO5sfv+o2OW17L4kjMd7Mn9
	lrTw897uBzNMvjgjl4QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setvk-0000000CYE8-38Zm;
	Fri, 16 Aug 2024 10:11:36 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setv5-0000000CYAS-3qi9;
	Fri, 16 Aug 2024 10:10:57 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 6418440005C1; Fri, 16 Aug 2024 10:10:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 6418440005C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1723803018;
	bh=8PnY6ixqsAoTmvoPYVNiLNZjGToDbEwFtSVLO2CL+hg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kf4RjgisE1JyRq2z8ZDh/EHzOiRO0w7GKQ92NB7qdEPAarpRZ9hKmjv/12eGkU+fS
	 OBqKFp2auis09NoRVLoo057/ZNxBgbjDItLeVAIdnrB7HKb1odzRHWFmM+pO3gW7zw
	 5bbGgunBCKnEZRjIW0Dl/hcPbbjyvSJtI+aZwH1wVbCJlOTtLujFUh/+uLvHobHgx0
	 V1Tbg6F9+opwRh27EvYWcg7WLU/s9LmhpwVWobZKssWw3mNvlbcG/AV7+FyM/nIL1n
	 h8WcTGcGMn6KXM/5qITcRVwxMzmoNVmmYb/KLc1mg+aWflxn/ECb1YiUT+SlPWaHRa
	 lwUGdkP9jqdUQ==
Date: Fri, 16 Aug 2024 10:10:18 +0000
From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
To: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: improve eMMC speed on
 NanoPi R2S Plus
Message-ID: <20240816101017.GB28881@ветеран.su>
References: <20240814170048.23816-1-jin@mediatomb.cc>
 <20240814170048.23816-4-jin@mediatomb.cc>
 <002107db3dcf3f1d1d1a767f049b5b79@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <002107db3dcf3f1d1d1a767f049b5b79@manjaro.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_031056_031835_7EA611FA 
X-CRM114-Status: GOOD (  16.39  )
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

Hi,

On Fri, Aug 16, 2024 at 08:51:40AM +0200, Dragan Simic wrote:
> On 2024-08-14 19:00, Sergey Bostandzhyan wrote:
> >This change has been suggested by Daniel Golle during patch review,
> >adding mmc-hs200-1_8v; makes sure that eMMC gets detected as HS200
> >which improves it's performance.
> 
> Describing who suggested the patch in the patch description looks
> out of place.  Instead, you should add a Suggested-by tag, whose
> purpose is exactly to describe who suggested the patch.

thank you for the pointer, I guess I missed that, I generally had a hard time to 
come to grips with the hole process as there are so many details and nuances.

Heiko, I guess it is too late to fix that now, sine you wrote that the
patch has been applied?

Kind regards,
Sergey



> >---
> > arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 +
> > 1 file changed, 1 insertion(+)
> >
> >diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> >b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> >index 12eabdbf8fe8..146b1da198b8 100644
> >--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> >+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> >@@ -23,6 +23,7 @@
> > 	cap-mmc-highspeed;
> > 	supports-emmc;
> > 	disable-wp;
> >+	mmc-hs200-1_8v;
> > 	non-removable;
> > 	num-slots = <1>;
> > 	pinctrl-names = "default";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
