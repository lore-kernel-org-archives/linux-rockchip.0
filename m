Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B95AC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E3FB2388B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OvBSPNBL";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rm2gLHq9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E3FB2388B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zjTxtYrzM2sT5mXfBRapVLZ/A5ai0OWgRdf6yTjljk4=; b=OvBSPNBLmyJF/W6qdOi+CIjQZ
	oht0aeIVjlNuZlS7cRiO6shlS/ExyS6Olhd4DvwL5u0Z2xohwHAqqWpBWBgCsd/VD/vNPYqmIbTv8
	1h83Bp4XVuMlC45p+K4rLZirzPmbUZZKDnfywUJnAg+l00VmK1tArI6ACfDr4OGfD8/GRrXTHS1VA
	oDyCEOmk4g9OTnT9IfA/zQAporaIeaOfrcsvFUfpzyQlHFvPbpEy1ZCHTsArW5dcSgLPLCYbh/ck9
	SaArd5Z7MZE2x4zpbtinZne44skIft2d4K/auFf7KLxBm3pTctv2Es4fRgTSZXtSr018Iw82TXaVa
	kyBbkpv9Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKoDo-0005GM-EH; Tue, 22 Sep 2020 19:45:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKoDf-0005Dh-8v; Tue, 22 Sep 2020 19:44:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96164221E8;
 Tue, 22 Sep 2020 19:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600803894;
 bh=eCsbf88+3hbsuxXMVeMDVUwgMkMeeFKQ3z+JXhLEwVE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Rm2gLHq9kTle5/dASc8C/0PKaf1LhGUKhvcDrN2UcXhp3wz9bFTuFVHfClyFwxQAf
 GANFc6EDVHY9Zpav0o2/tDjIyZ5gY0ujKpz7i1eF5bIbkNrzFlfBcFeqN9tJz7vF8e
 /INB+FP0R3ab+YrdnZDPvb6xR7j4QRQRx6EJUSak=
MIME-Version: 1.0
In-Reply-To: <20200916161740.14173-2-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
 <20200916161740.14173-2-krzk@kernel.org>
Subject: Re: [PATCH 2/6] clk: fixed: add missing kerneldoc
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 David Lechner <david@lechnology.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Tue, 22 Sep 2020 12:44:53 -0700
Message-ID: <160080389349.310579.18222721785105717802@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_154455_424008_1E52681D 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Krzysztof Kozlowski (2020-09-16 09:17:36)
> Add missing kerneldoc to fix compile warnings like:
> 
>   drivers/clk/clk-fixed-factor.c:211: warning: Function parameter or member 'node' not described in 'of_fixed_factor_clk_setup'
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
