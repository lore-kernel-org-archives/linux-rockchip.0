Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DD9C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 16:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sdm8gyqu74Kbc4YOdEsLtgY6+MOayRG5qwNA7/7MKnE=; b=GiH8z3p5fs9w7s
	fwFFJj6xA0V8cfmk5a2mqPT2C0hNZD1eiG9mulgwMwoMrq+adYTT50h/ASQQBgCNnv6EoFR962uQ5
	62eniXhgmtq4oYFWI4CAcF/XhUpcRW+NHNBzCzauiMv0GZrX2JhR90Tmou4ZbpcglQqX896Gs/3hM
	MFu5wQ/Ak3kc25SCpd0WUGusi28GADwYvGSgieIQ5LhDKHF3BHg1F4ERIWtUVjTnCGZb5J6OafNn2
	FKYE0W7Jiw2T8FpH+RDfW7SwsxgJpvCUgi2inLwPgJ/YOmLysb/1RwyzBwcDQYzTaREMAYgozvtm0
	rUNXcI4klR4ZF7hWgrfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoRs-000mZo-1I;
	Thu, 14 Dec 2023 16:20:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoRo-000mZD-0e;
	Thu, 14 Dec 2023 16:20:29 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDoRR-0005iB-OR; Thu, 14 Dec 2023 17:20:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/11] dt-bindings: display: rockchip,inno-hdmi: Document RK3128
 compatible
Date: Thu, 14 Dec 2023 17:20:04 +0100
Message-ID: <2221612.3VsfAaAtOV@diego>
In-Reply-To: <df84a0cc-cb38-431f-864b-012ada7bb0d5@linaro.org>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <288857ab-bebd-4f80-9cdc-9b04fa6c7386@gmail.com>
 <df84a0cc-cb38-431f-864b-012ada7bb0d5@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_082028_243211_B6107008 
X-CRM114-Status: GOOD (  19.49  )
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

Am Donnerstag, 14. Dezember 2023, 17:07:27 CET schrieb Krzysztof Kozlowski:
> On 14/12/2023 16:22, Alex Bee wrote:
> > 
> > Am 14.12.23 um 08:53 schrieb Krzysztof Kozlowski:
> >> On 13/12/2023 20:51, Alex Bee wrote:
> >>> Document the compatible for RK3128's HDMI controller block.
> >>> The integration for this SoC is somewhat different here: It needs the PHY's
> >> Please wrap commit message according to Linux coding style / submission
> >> process (neither too early nor over the limit):
> >> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> > OK. Not sure why checkpatch --strict  didn't tell me that I'm over the 
> > limit here.
> >>
> >>> reference clock rate to calculate the ddc bus frequency correctly. This
> >>> clock is part of a power-domain (PD_VIO), so this gets added as an optional
> >>> property too.
> >> If clock is part of power domain, then the power domain must be in the
> >> clock controller, not here. So either you put power domain in wrong
> >> place or you used incorrect reason for a change.
> >   Rockchip defines it's powerdomains per clock and I was little to much 
> > in that world when writing this. Actually the controller itself is part 
> > of the powerdomain. Will rephrase.
> 
> Does it mean you have like 200 different power domains in one SoC? Then
> how are they different than clock if there is one-to-one mapping?

It's more like the other way around. Controllers and their clocks belong
to specific power-domains. So there are of course more clocks than domains.





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
