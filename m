Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D89E6C48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:22:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E5C5610A0
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:22:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E5C5610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkRUYaHyZeDdABub77FuiQio2MkXaMRoTyebxbLa2+A=; b=MgZIki90fPm5bK
	TgOZoJ9YzgqbD0lzDFXkOivc0ZJVgdANTw8YxTsdSrRudu1Dww7wHV36Tck3Yc5uu68PstAnGDnj3
	9qPZpsBFLixxAQoro2KR3CykvCxrbHHMaiJ8O4voaIFs/sFqv6Ff+Q++6Nf+KEMgkVu1ACVKfV9Nm
	seEH4XYxwH+/Zg484prIjeegL757+SilFi32qMESQx1GqxCucDzkaiSBxJETB+FcUGJRzNHK5mYZn
	XKL/rz7EnRtEvSv8FZrlQCX6/marMeBUFNnsHr/xiAbV4DWmWQH40Z9a6z6YhG7jp7460IxQUdXe6
	oGY9YUR2SjIvkXqmRVeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsSsE-00AiUj-JW; Sun, 13 Jun 2021 16:22:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsSsC-00AiTW-4z; Sun, 13 Jun 2021 16:22:09 +0000
Received: from p508fc96c.dip0.t-ipconnect.de ([80.143.201.108]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lsSs4-0005Bk-Sg; Sun, 13 Jun 2021 18:22:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/12] ARM: dts: rockchip: add power controller for
 RK3036
Date: Sun, 13 Jun 2021 18:22:00 +0200
Message-ID: <3783580.yKVeVyVuyW@phil>
In-Reply-To: <1dc782cd3956598b2eb5f89ad0680d2ce38ffd54.camel@collabora.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-9-knaerzche@gmail.com>
 <1dc782cd3956598b2eb5f89ad0680d2ce38ffd54.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_092208_218558_58B50035 
X-CRM114-Status: GOOD (  15.94  )
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

Am Freitag, 11. Juni 2021, 17:58:58 CEST schrieb Ezequiel Garcia:
> Hi Heiko,
> 
> On Thu, 2021-05-27 at 17:44 +0200, Alex Bee wrote:
> > Add the power controller node and the correspondending qos nodes for
> > RK3036.
> > Also add the power-domain property to the nodes that are already
> > present.
> > Note: Since the regiser offsets of the axi interconnect QoS are missing
> > in the TRM (RK3036 TRM V1.0), they have been taken from vendor kernel.
> > 
> 
> Can you take care of the device tree changes (patches 8 to 12)?

sure, I'll pick the power-domains now but need to wait for
the vpu nodes for the driver parts to land in the media tree.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
