Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96604C433C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 19:00:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F25F76194C
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 19:00:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F25F76194C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FypVpCIbMBJr4VO6nidHff3A1lulrUrZMW17oO1UxcE=; b=dam5P1R8ipP41yz3zlo6RhqiS
	2Mdj6GieglR412HKwFunVZD1BKX6WB0LUpSLw6trH83tC3GUTgu9qKViTnNA61PG4L2MacgR9gqQX
	ZCit0c6nCWx1cZMoXAYQvvYJEaneBlu6YqSMTYmxOAHtx071Yg60KMJDvaapCAC17Lg78Ps+TZcno
	pb6EHbuCUs3ZcqRi5u9Z3Dnv1OAPs1huB9yB4XvEApqc/qgLme870Q4tvtA2X0AtjB8aaFeaAK2Qu
	pVQDL/0MmDdd538ZpE1UvvJhwou0QA9X5f6pM7ROswQVgFdPNH6W0A+yxpnI8OTI6JV5IGB/ogZtn
	uqFzEzrWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO3Ig-00AFpV-Tw; Sun, 21 Mar 2021 18:59:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO3IS-00AFnv-L7; Sun, 21 Mar 2021 18:59:34 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO3IR-0006zk-Tf; Sun, 21 Mar 2021 19:59:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Jianqun Xu <jay.xu@rock-chips.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] pinctrl: PINCTRL_ROCKCHIP should depend on ARCH_ROCKCHIP
Date: Sun, 21 Mar 2021 19:59:31 +0100
Message-ID: <9858038.nUPlyArG6x@phil>
In-Reply-To: <20210316134059.2377081-1-geert+renesas@glider.be>
References: <20210316134059.2377081-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_185932_781316_6D3A9FF1 
X-CRM114-Status: UNSURE (   9.69  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 16. M=E4rz 2021, 14:40:59 CET schrieb Geert Uytterhoeven:
> The Rockchip GPIO and pin control modules are only present on Rockchip
> SoCs.  Hence add a dependency on ARCH_ROCKCHIP, to prevent asking the
> user about this driver when configuring a kernel without Rockchip
> platform support.
> =

> Note that before, the PINCTRL_ROCKCHIP symbol was not visible, and
> automatically selected when needed.  By making it tristate and
> user-selectable, it became visible for everyone.
> =

> Fixes: be786ac5a6c4bf4e ("pinctrl: rockchip: make driver be tristate modu=
le")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
