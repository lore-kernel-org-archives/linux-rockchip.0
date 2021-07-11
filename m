Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CC0FC07E96
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 11:55:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA3E861090
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 11:55:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AA3E861090
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoPKbf//g0OuZ65XXlxPxIpztg6dLs47zRAbmEmIArM=; b=De2AKfyaFj9lGI
	RY/iO8CPXUxJRZt09Ki0lC5g2PX/cAHi8M3LeswYS2TPVJgHanS/OFH2W3oNleE3GHenuHaxvfKc9
	lSIv2roLSxnADpHn1bkc7gVw7xo4HG4jAYiAX336glI5UIiamy++Pr4bMM1bYii9KduPNaBxe1MKu
	XBEGgesShDjjGYYFHUYmpIPzdswpkeAFdyIMWlaoTerYuiDbPct+7yacFVkhLYBkmTQ4cLWivCP13
	xu0aKHydgwdAVvc0LSlJZZXZ5NraN6Hnb20DFb9yFNTxeceqB/g0KwawrlRgRDwmcIMs8lUMYj4WN
	J8PVO8CNMyT/Z2ZXbIpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2Y3d-0051XQ-7f; Sun, 11 Jul 2021 11:55:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2Y3a-0051WY-FA; Sun, 11 Jul 2021 11:55:35 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m2Y3R-0007Bq-TM; Sun, 11 Jul 2021 13:55:25 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, Lee Jones <lee.jones@linaro.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/12] dt-bindings: mfd: syscon: add Rockchip
 RK3036/RK3228 qos compatibles
Date: Sun, 11 Jul 2021 13:55:25 +0200
Message-ID: <3527273.z0yIoBN5P9@diego>
In-Reply-To: <20210601154651.GE2159518@dell>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-2-knaerzche@gmail.com> <20210601154651.GE2159518@dell>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_045534_557603_64948383 
X-CRM114-Status: GOOD (  14.13  )
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

Hi Lee,

Am Dienstag, 1. Juni 2021, 17:46:51 CEST schrieb Lee Jones:
> On Thu, 27 May 2021, Alex Bee wrote:
> 
> > Document Rockchip RK3036/RK3228 qos compatibles
> > 
> > Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> > 
> >  Changes in v2:
> >  - collect Reviewed tag
> > 
> >  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> 
> Applied, thanks.

not sure if I'm missing something, but this patch wasn't part of your 5.14?
And I also don't see it in your for-mfd-next branch. Did it get lost somewhere?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
