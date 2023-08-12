Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5C06C001DB
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 12:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo0x74Y2nx5eleeEvub9RktgsT8OCeJxd0/912LI9Os=; b=tq4sE7kIrRmdEN
	aB1iBnbRaI12XTI/XOSswvxM0xGAKHMERCx9mMGzPdtdLsFQsJBnVkHMX5B1rsL3ydphzT0vC4286
	I4i/HLZSr6b5NHZXlvry+b35qlBj4KLZpNTWU9uhrUULrXRqDq4DdcbHYGqJNLsyTkYiZw2JguUJM
	OjsquJm/edGDMnS8N1mvkk0eYDA/n1Gcq/BrhK/sUX438DMHZkdTmt74Ir6glBqmE1LbPj6OR0Uge
	QVBpudj/fBeVS1HD/mCfrUnuH80orKRXGGz5kYtttsuSkJrtGLIPA9QW5WGdeuEREdNsFh9jYTtb+
	NW3uhH3D9WSppgWQFk5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUoBD-00DQzA-1B;
	Sat, 12 Aug 2023 12:57:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUoBA-00DQxj-1j;
	Sat, 12 Aug 2023 12:57:17 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUoB9-0000Ut-1g; Sat, 12 Aug 2023 14:57:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@edgeble.ai>
Cc: Jagan Teki <jagan@edgeble.ai>, linux-pm@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 01/14] genpd: rockchip: Add PD_VO entry for rv1126
Date: Sat, 12 Aug 2023 14:57:14 +0200
Message-ID: <3694249.5fSG56mABF@diego>
In-Reply-To: <5699457.DvuYhMxLoT@diego>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-2-jagan@edgeble.ai> <5699457.DvuYhMxLoT@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_055716_597307_6C847B3E 
X-CRM114-Status: GOOD (  14.09  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 31. Juli 2023, 22:48:45 CEST schrieb Heiko St=FCbner:
> Am Montag, 31. Juli 2023, 12:59:59 CEST schrieb Jagan Teki:
> > PD_VO power-domain entry in RV1126 are connected to
> > - BIU_VO
> > - VOP
> > - RGA
> > - IEP
> > - DSIHOST
> > =

> > Add an entry for it.
> > =

> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> =

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> =

> @Ulf: now that we have a genpd subsystem, I assume you're going
> to pick up this patch, right?

Looking at other soc trees, it looks like genpd changes right now are
often still going through these ... so I've gone forward, merged the
genpd shared tag and applied this patch on top in my rockchip drivers
branch.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
