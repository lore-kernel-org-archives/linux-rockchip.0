Return-Path: <SRS0=B2S1=K2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E06C8C4708F
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 08:26:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0FF6610A8
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 08:26:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A0FF6610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1mKAqDQjV9knOzNdw2BsLZAUxdM/YK/zig1BFHT+lo=; b=mwv1GNEXcxG+2/
	Qc5U9uJo9oZQUxPtCMJwYRe5KN9psosRdxtwYupKiEeADWTVAWEwVRY9RBcTXd2ZYcoU9z3Hni1vB
	lzbwSjAIngFpGAX7jT4Lb2Fq6u2gxdgkJPF/L9DKgAiU1BNpI7l65cKOh9gV5+XdjXNiNFO2h8/Eq
	62tbnb1cAxA0b58iIOWhaXfK1A16Xjrq31DYLusikhU1iCHvv/2iA02uumuRzubx8etLEn9dPmcrC
	RBhcwuzMypmzSe8+kDCcJBlXOeGurRxv4TelEJ36P/lDTMovZhhcz/rDZPn+Sqe4y6qc/VyXr9hSC
	Vhsaeir59LVULFoQWIEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndFG-00BQhW-FA; Mon, 31 May 2021 08:25:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndDZ-00BQ6n-HJ; Mon, 31 May 2021 08:24:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2FEAD610C9;
 Mon, 31 May 2021 08:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622449453;
 bh=8P7d3B/GlN7hz8aqxDwhACR/qaphXcmTzOMcKPMMbjs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l6iom4iXr1g//E31Q4JTOMJNEIBl9AI1ytDZrSoXQbtQz5ns0OU6NDWcq6PbPibct
 aqfYzQGL80zLYrFt81XnCToJRhdcqsavxJkuHnew2dK5H6apCu7lvSe32LOQLTAGUA
 vw9GkdLQ3JCfDGabQQQhxYQP8VzE0ThilvJYO3qDnhsnewALCytaa4chbv4R+2rnes
 5Q02x8NwWXxSbflMmduvllf3QDsjcpxNS0mdB8mP8RH0yFNY60p+9dNoYiii9Uuii9
 GjYgSLF3JnnimiW5QBxR0PNQqB7GnatDWb6q5ZKwW/MTeCvrAi4HYPKf9VjvQ+Xp6a
 HQvpaeRvxKehw==
Date: Mon, 31 May 2021 13:54:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] phy: phy-rockchip-inno-usb2: add support for
 RK3308 USB phy
Message-ID: <YLSdKcOJcwzB8IeW@vkoul-mobl.Dlink>
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
 <20210514150044.2099298-3-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514150044.2099298-3-t.schramm@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012413_653387_96F44447 
X-CRM114-Status: UNSURE (   7.01  )
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

On 14-05-21, 17:00, Tobias Schramm wrote:
> The RK3308 SoC uses a slightly different USB phy than other Rockchip
> parts.
> This commit adds support for that phy.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
