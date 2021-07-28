Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41D39C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 20:38:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B33A60F46
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 20:38:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B33A60F46
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zl4Rhc/1aAxTnasOjCPcz3Ul2j0666I7BkPBCuVx2TA=; b=U283VzLF3hRRSB
	HO/YY22Tif13Wdp8uM+eBx7h3m9qQk4q0tk9Aj//ASBDTodCj+Yy6/cSFlx4Ylvd05OIJO/Hw6fr0
	0j4vnaTNykeh/KzoT23dqvhPsJi0P+vopMqvCEI8GvFn6q4zthy0pH8XsAlyaSMHLdrBxy7kuueL3
	SKUDDLS1yeVuoi5G4cRl4KEGLB48Pxxfe9Y7NA5xcc24lw/4gldupvT+W8kDPterj3r9j8SEnERWn
	WQ+cZ4L8z/O/iDf8l1MCo/6FWJrZsQDinVnj7kkKtVnnkS6iBlF1JNGZItXLRk0+EWyj2TkAn84QP
	iG1mwPOAvXtodCIpVEug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8qJe-002K9P-UX; Wed, 28 Jul 2021 20:38:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8qJS-002K87-10; Wed, 28 Jul 2021 20:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=R7bNU8BZCOB5iHa54MHFRtshuOZCZQe5szk1h/9GSv4=; b=J3gS7vLVbdobYkuyQnS/5NIZXG
 LM0+y/ogncES/luhSa1aiof9fn2vigm1e0bj6MkI7gkilPMaCrc89un0I56HZ6f6UEBkvBSvGDbo/
 CXREAGn3PQPnFRYRnNDDhBsDf9GKxjETl0hHhOkDzzVIfEy1XHZJptJ7qwL74WvfnaN4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1m8qJK-00FEMI-Rg; Wed, 28 Jul 2021 22:37:50 +0200
Date: Wed, 28 Jul 2021 22:37:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3568-evb1-v10: add ethernet
 support
Message-ID: <YQHAHmMmysBVpF+m@lunn.ch>
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
 <20210728161020.3905-3-michael.riesch@wolfvision.net>
 <YQGaAFvqqc7wXrWD@lunn.ch>
 <CAMdYzYo8zf0wjtAxTuYQnZQsBtw38prNuAA0j0sBEamcbzZbfA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYo8zf0wjtAxTuYQnZQsBtw38prNuAA0j0sBEamcbzZbfA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_133758_136033_4BEC24A3 
X-CRM114-Status: UNSURE (   7.54  )
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

> Generally all rockchip boards use this value instead of the rgmii_id,
> I imagine because it's more consistent to tune here than the hit or
> miss support of the phy drivers.

Most PHY drivers actually implement it correctly, since by default,
most systems get the PHY to do the delays.

But if most Rockchip boards do it this way, there is a lot to be said
for consistence, so this is fine by me.

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
