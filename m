Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F027DC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 19:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E77oN2fksrwQdQLdgA1GoXaFyXHuczeW76RciDTf8sM=; b=pc34v0ctvAeo28
	txop3MNffWb8nIvVB5tKCKTJe/JWflOFHeuDSmVvFuLF5sgrkKJS83qELMlIUV5j9GnRP4g7FQE9e
	cBBnC/4MGsqYWb9bGVZh3LIVU+ypgOKFPEq3qxmxoW2t+hEiWJnSLFYbotbB0LH2hYUj8SlWDETvC
	0GEGcvJ4gMsLArL+5XPVy5vklLnkFi9hqfUauY8kPaYkurSNrUbbuT+3rYulzeoeUT+RILaIVTU8/
	DaF4ZNwdzj5vWdG7Ik6uMGl/gYYThN8aQY/oRSrq/DzWhJAED08DMNa3cCxbzqgm9lkgqGDr1mU72
	FpGpIjDDh+LrJByFKkWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9sSU-002XHz-3A;
	Sun, 03 Dec 2023 19:48:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9sSR-002XHa-2L;
	Sun, 03 Dec 2023 19:48:53 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9sSK-00062s-Af; Sun, 03 Dec 2023 20:48:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on rv1126
Date: Sun, 03 Dec 2023 20:48:43 +0100
Message-ID: <4413905.22IY78Rhhi@diego>
In-Reply-To: <20231203190620.26of3xrcoosnpicb@zenone.zhora.eu>
References: <20231203124004.2676174-1-tim@feathertop.org>
 <20231203124004.2676174-4-tim@feathertop.org>
 <20231203190620.26of3xrcoosnpicb@zenone.zhora.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_114851_914505_FCC2D1A3 
X-CRM114-Status: GOOD (  14.46  )
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

Hi Andi,

Am Sonntag, 3. Dezember 2023, 20:06:20 CET schrieb Andi Shyti:
> Hi Tim,
> 
> On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> > Rockchip RV1126 is using old style i2c controller, the i2c2
> > bus uses a non-sequential offset in the grf register for the
> > mask/value bits for this bus.
> > 
> > This patch fixes i2c2 bus on rv1126 SoCs.
> > 
> > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > Acked-by: Heiko Stuebner <heiko@sntech.de>
> 
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

you're listed as the maintainer for the i2c busses,
are you going to pick this one patch yourself?
Or do you expect a different handling?

I.e. it doesn't really tie into the dts patches and everything will come
together nicely in linux-next and during the next merge-window.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
