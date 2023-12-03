Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65062C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 19:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPJouljJF0476wPem23mSITj07KHkCisgB+tuIz53b4=; b=iSJPNWWOZTvJCa
	a+Q/309cNd0zOFp7uuB6ysC5OAF0g5U9JySvN8jrnK2cUQohmcx9FTavXy4zvZdykqB349KlJSCDD
	vaSEare0CatDdgKlZ8fdH6ZfLSKe1czYT088wPV2mD63vIX2xfS8EqyTB4nZ1tgVj5KtU0QDySoPv
	Pl/0x8ulXQc62hB01IRV638t8Ypmy9kuBhYTTy1yLvmwAATo9GruWKat50WUj2rYetQzUQx7Fkc7S
	z+RGJRcFj3LehcV7u0E5hWBuKb1ZPQBy2/AoIAdYzmFD88RiqF597NdyKbwqbGnlhhtp41Hys0JJi
	8Cfr1416WOGm0PvF6oEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9rnX-002UlR-0I;
	Sun, 03 Dec 2023 19:06:35 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9rnR-002Ukl-1j;
	Sun, 03 Dec 2023 19:06:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 980A0CE0E05;
	Sun,  3 Dec 2023 19:06:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6311BC433C7;
	Sun,  3 Dec 2023 19:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701630382;
	bh=r+9689hxvXM2mI23/KLlWD8KQBVbzpUI4REaNKSBVNw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qNRIXfpXqOuw3Z1riGp5ch3x9qCgZOvQ2N5TxMXPCFxiLm7AQ+zHp5YacQD/nLce/
	 /goDWhmDUbU+wcn4XWXrMA1b4eArYY02SEki5Lxo6JSTHKNEsPu26jro1cjz27inPO
	 +n0P6liiB1qYZgaPOBsKpxkmq30sepYA5h9nCHm5bwWTStaFZVBqTgXs9eQOCaCE33
	 wgJ3mzLRH97wp1L9/43cW0Rxe1XNnffXFUN456VXJfbYX748/k5RKMOsSrRluIYzMY
	 jRmS6dS6mRxhDz+Doi1DkTLVBBZ7QgR+aylisMwrR5FeHxQlBPXhjWKSgYGWZae+Kj
	 ictRm4489nqRQ==
Date: Sun, 3 Dec 2023 20:06:20 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on
 rv1126
Message-ID: <20231203190620.26of3xrcoosnpicb@zenone.zhora.eu>
References: <20231203124004.2676174-1-tim@feathertop.org>
 <20231203124004.2676174-4-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231203124004.2676174-4-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_110629_801752_C1A27CB4 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

Hi Tim,

On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> Rockchip RV1126 is using old style i2c controller, the i2c2
> bus uses a non-sequential offset in the grf register for the
> mask/value bits for this bus.
> 
> This patch fixes i2c2 bus on rv1126 SoCs.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> Acked-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
