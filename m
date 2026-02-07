Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22288EE0AC8
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 11:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDHk8ZP/yHVwo4nR0Ew81+SVXCnLCaYMQ0yqwnMAG10=; b=S2UY6L5+7lIz3a
	tDVbYLZVDAU4SRoJrAHNpMHgXuTBtk5RmKul4gEh6qiAE2PuHYyvxohs2QquTGGYjVNmtW0V9mVX/
	GfvAXhdGoCojIPxiRY1JJYVnhQmdeASLB7gwxFMdKkpNZvxpkO7yJCFTklET1v13MqJlcvi84vBap
	jFjou144hwZOmiHf6ealm407ssAhUabW29HhVMsBjOwSIW0E+YevtXr+655dnt8+5/2Sl3FXNlAfU
	HM7o0Dd5J1D6dYqrklfJlACDIYxC6wAO1FfKk/Qq3fw7zdozqhpAU05UY4qlryxIN61y7Uk3dJFja
	aXdfrBeEdjpQ65Ipj7IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vogC8-0000000COAr-2F49;
	Sat, 07 Feb 2026 11:09:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vogC6-0000000COAJ-21eX;
	Sat, 07 Feb 2026 11:09:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9331C44519;
	Sat,  7 Feb 2026 11:09:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 177DDC116D0;
	Sat,  7 Feb 2026 11:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1770462579;
	bh=OIwmG7ylTwl4hisHz0Q19ZZnRiXWGfi075fX99Cag7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PH1yYcKQkjUSbd3pr9eI9NKoJaKw8BegVjZtlwxIBX/jzcyRU3hJbX1yib0csIqFy
	 wFeZ61PAxKsQp0DoaJukUvVQFaSnBA96kXEim6ymJkkHwgOZtbY7kiTdSd+K9wYJJJ
	 bERHBSPsH51PXzMd1D6DR16eAS1aSG/HZ3waFlKs=
Date: Sat, 7 Feb 2026 12:09:36 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>, heiko@sntech.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>, linux-serial@vger.kernel.org
Subject: Re: [PATCH 07/11] dt-bindings: serial: snps-dw-apb-uart: Add support
 for RV1103B
Message-ID: <2026020723-despise-panoramic-2bef@gregkh>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-8-festevam@gmail.com>
 <20260207-unselfish-gorgeous-duck-cfc1ce@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260207-unselfish-gorgeous-duck-cfc1ce@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_030942_570657_F2C89EDA 
X-CRM114-Status: GOOD (  13.07  )
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

On Sat, Feb 07, 2026 at 11:59:06AM +0100, Krzysztof Kozlowski wrote:
> On Fri, Feb 06, 2026 at 03:13:05PM -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@nabladev.com>
> > 
> > The UART used in the RV1103B SoC is still the same dw-apb-uart compatible
> > type as on the SoCs that came before, so add the RV1103B to the list
> > of variants.
> > 
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: linux-serial@vger.kernel.org
> > Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> 
> Greg expressed MANY times that patches for him should be sent
> separately.

It's easy, I just ignore them now :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
