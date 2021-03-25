Return-Path: <SRS0=wzRa=IX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2904C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 08:51:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EA8D619F2
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Mar 2021 08:51:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2EA8D619F2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NTmfS0DSqeESrwHUKEYw6m+TPWG+K9tHOGw6jex5YJc=; b=gZvru1rPPmsupSmelFlwzhRvX
	0r7O/Otf7jbwtcnrmbXRc0IJmWN0tplJ2zf5N65YHfPrO+5C5DG0pkvJkHCVzqHiMdtHYdRM9WLYi
	R58sNZoCJEWhUvchPRSw65O9LJEbFBTb7x/R5hTnhdzpNvkpP0AZ4I3zFFH7UqsnFQGwzn6ZT0Cmd
	KxcXUZsIZ8PN3arTZ1T/whA/NcokVDCMtaiBRWCxjMC/3U0MfY42as0TNortch7PkjkMHZckkOmXv
	zZYNclGP/PcKcJ9U7GERbQ4WPj61+ipDi2pktOxbivYhd4MZW43n92D6pGOZLq4bM3Xaie1D1G3AC
	xBL6Y17NQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPLhh-000yf1-ON; Thu, 25 Mar 2021 08:50:57 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPLfm-000yVd-9A
 for linux-rockchip@lists.infradead.org; Thu, 25 Mar 2021 08:49:28 +0000
X-Originating-IP: 90.65.108.55
Received: from localhost (lfbn-lyo-1-1676-55.w90-65.abo.wanadoo.fr
 [90.65.108.55]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 470BB1C0006;
 Thu, 25 Mar 2021 08:48:46 +0000 (UTC)
Date: Thu, 25 Mar 2021 09:48:46 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Emil Velikov <emil.l.velikov@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
Message-ID: <YFxObibxqK23WTMf@piout.net>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
 <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
 <50b3b4b3-6c5b-3f1e-3499-c88574ce9f74@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50b3b4b3-6c5b-3f1e-3499-c88574ce9f74@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_084926_294760_EE303BB5 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

On 24/03/2021 14:44:14+0100, Nicolas Ferre wrote:
> Now, when we have the tag from Rob, how to coordinate these different
> pieces? Will it go through the media git tree? Will we benefit from a stable
> branch to share or will we just have to wait for the driver to hit Mainline
> before adding the defconfig and DT patches?
> 

I think the defconfig and dt patches can go through at91 as soon as we
get Rob's ack. There is no build dependency so it can be taken at any
time. Worst case, we end up with a selected config option that doesn't
exist.

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
