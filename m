Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BD9C47082
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 08:58:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6206661361
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 08:58:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6206661361
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+p71dRFmKPVW/moqlUti6wP1AFhCBv1w7+a9Lim22/8=; b=IHcdhffNmDZOrE
	gVPiF7ESACKtWsToMyoDJEcK4oUids467/LLCznGZ/ERvq5/cGULF49klhtBUHmlKbeByNtUPw8PN
	KuH5EdxVj5DrGankgIqlaVHHNEKu54Q5z40DKomkKlK376vH7OLsQnOAI6dfcB9+DgtfgAvdJX6Q0
	wYPiWA0f7KBxDOWm8A8Okmj9PeQOthhAD4vlUSwGN7U+FdNDfNyfqS/ixtyTleHRwbrPILBjqUNwL
	0cSTWPKNqFUT5pUeiHZjYcr3ayRu5/tdNhyPNCfabfS5XdutF4qfLNtAa9nsD2L56++7oq1NQ/nfp
	3qTPKNmMrWLC/qXyDcdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lojBV-007oVp-4Y; Thu, 03 Jun 2021 08:58:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lojBR-007oU6-MO; Thu, 03 Jun 2021 08:58:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lojBL-0004B6-0N; Thu, 03 Jun 2021 10:58:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Vinod Koul <vkoul@kernel.org>
Cc: robh+dt@kernel.org, kishon@ti.com, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
Date: Thu, 03 Jun 2021 10:58:26 +0200
Message-ID: <3601774.Dhsi8hcfAM@diego>
In-Reply-To: <YLhukPL7jSx3+dBj@vkoul-mobl>
References: <20210601164800.7670-1-jbx6244@gmail.com>
 <20210601164800.7670-2-jbx6244@gmail.com> <YLhukPL7jSx3+dBj@vkoul-mobl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_015833_770145_B737DA6C 
X-CRM114-Status: GOOD (  14.78  )
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

Hi Vinod,

Am Donnerstag, 3. Juni 2021, 07:54:24 CEST schrieb Vinod Koul:
> On 01-06-21, 18:47, Johan Jonker wrote:
> > The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
> > in phy-provider.yaml has required "#phy-cells" for phy nodes.
> > The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
> > Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
> > notifications. Remove unneeded "#phy-cells" from parent node.
> > Also sort example.
> > 
> > make ARCH=arm dtbs_check
> > DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
> > phy/phy-provider.yaml
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml       | 11 +++--------
> >  Documentation/devicetree/bindings/soc/rockchip/grf.yaml       |  4 ++--
> 
> I dont have grf.yaml, I guess it would be easier to split this into two
> or apply this thru rockchip tree. If you prefer latter:
> 
> Acked-By: Vinod Koul <vkoul@kernel.org>

before we do any more rounds, I'll just do that with your Ack, thanks :-)


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
