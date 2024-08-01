Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4CB1C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 10:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJqs/hDx2MmzNgcgiXSHilF2CpewxmDBO08UygCcb4k=; b=stuLwbszDAull2
	PRr65xoD3z0RIsDefFrgXO18/fcY3RN//6dV4qJrgu8IyTiahV+9zk6N8bmeft+hSKbP/EholeqFs
	D9KLrT0j0XpmZ46pw2pCqoJ0nuPDBj57636NFbKfoYpNV3EiSOMmm8ImmMLW4wB6PjoBRsYRt72rj
	K++uaShmwlYIZrOPWG09VhwtwvDDtsxePzOMHJhgSwX2z+LHNPZXXWaZBALnyReV+q7Cguj4rYXe7
	7ha5IGq8NgLtno7wMenXVDQhnYq2cnsJWLxkx28Xnpl+D9NB/uwAM/9uYmdO4CqhjrLBWRc/I+W8d
	KDTFsMnioLYQNLXC1DhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTAn-00000004lnU-1eLc;
	Thu, 01 Aug 2024 10:36:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZTAk-00000004llw-1NaO;
	Thu, 01 Aug 2024 10:36:39 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sZTAb-0005uf-Nz; Thu, 01 Aug 2024 12:36:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: media: rockchip,vpu: Document RK3128 compatible
Date: Thu, 01 Aug 2024 12:36:28 +0200
Message-ID: <23279441.ssLaC8jLEa@diego>
In-Reply-To: <20240528083747.z55laxnmioorzaru@basti-XPS-13-9310>
References: <20240523185633.71355-1-knaerzche@gmail.com> <3639993.hdfAi7Kttb@diego>
 <20240528083747.z55laxnmioorzaru@basti-XPS-13-9310>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_033638_387283_A546C98A 
X-CRM114-Status: GOOD (  19.79  )
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

Hey,

Am Dienstag, 28. Mai 2024, 10:37:47 CEST schrieb Sebastian Fricke:
> On 28.05.2024 10:19, Heiko St=FCbner wrote:
> >Am Donnerstag, 23. Mai 2024, 20:56:31 CEST schrieb Alex Bee:
> >> The integration for this SoC is similar to RK3066/RK3188.
> >>
> >> Document it's compatible.
> >>
> >> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> >
> >Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> >
> >Media people, can you apply this patch alone from the series?
> =

> Yes, will do got this on my list already :).

as I'm going through my list of "waiting for ..." patches,
is this still on the radar?

As far as I can tell, it didn't make it into 6.11-rc1, but 6.12 would be
nice :-)


Thanks a lot
Heiko



> >> ---
> >>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 4 +++-
> >>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml=
 b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> >> index c57e1f488895..d1b47b14ca57 100644
> >> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> >> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> >> @@ -26,7 +26,9 @@ properties:
> >>            - rockchip,rk3568-vpu
> >>            - rockchip,rk3588-av1-vpu
> >>        - items:
> >> -          - const: rockchip,rk3188-vpu
> >> +          - enum:
> >> +              - rockchip,rk3128-vpu
> >> +              - rockchip,rk3188-vpu
> >>            - const: rockchip,rk3066-vpu
> >>        - items:
> >>            - const: rockchip,rk3228-vpu
> >>
> >
> >
> >
> >
> >
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
