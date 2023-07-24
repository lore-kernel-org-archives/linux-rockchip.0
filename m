Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE61BEB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 06:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBheBHlw+iTbuw7yMTiHxMJYLGlFbVl0UT+yAsWUNEo=; b=rs0dzPDup4Yisn
	tEkH9MmAhK5W2+psQuRD4be+zXiUq3i7stAOrZRByVIqBFZNN//lyLM5krAyiaRv/1BZwe91MBYih
	7BQcPVHm6Zc2hjamGc6MER7Xi2U2d0xOOZOlbEA8JUe8kHIJ1nd+b1TnKLSvyVa6MSkob/AaQdKoP
	K3hPKW0OUo6p7XKMW2oIRyi3tlOGzYfLZZ8/VLGb2U5fU2172HNqxMtE8ojmelrezanSpdOp6WWY9
	mhpNJMcCcjD7R38gmWZOGjD18IVOfESLwOHeDuUcEwz2SAavbULHhLieWNqdSK2gQD5sc4Qn0KiBq
	y3Epa30goUa6efSMX88w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNohg-002urc-0v;
	Mon, 24 Jul 2023 06:05:56 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNohc-002upU-30;
	Mon, 24 Jul 2023 06:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690178753; x=1721714753;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cYOvDa/qJ9hkLr+Th/fUbw3uX8xGcuMEk/G0ZAWXTcM=;
  b=fKzc60WDcVu/oW1DkFFhJcAF3vuXGWB4zQOf6hvHnsiffhL6Dl7OQmYO
   Qfv3Ed4u1vU/sneW1Z6osfPDD/mKWmwgLpAypiU3yahZTE92Kk7Nui9tW
   P3i9nhBiRxZ+aaTWiiyDVnU6nRclX/CSMkHdPjsd71du8YZZMafJ9jK1n
   GIpyKbGgKAoGWWCF76wNNA9xU3DozBB1IxZHn/4uHqvP5O89yjNxylhWR
   T/UcQyO5Y739Cxf7RyJ+J5gKczeoYH2oVod2aztNSahv/K8z7R5nE/Wsh
   P8aJNLNYM3P0cjxgBMoTQlLyfgJj6H4UKmQzkZuP/eLqwrG2W62YP/mtK
   A==;
X-IronPort-AV: E=Sophos;i="6.01,228,1684792800"; 
   d="scan'208";a="32069740"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 Jul 2023 08:05:37 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 20C6D280078;
	Mon, 24 Jul 2023 08:05:37 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, =?ISO-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>, Tony Lindgren <tony@atomide.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 2/2] arm64: dts: Replace deprecated extcon-usb-gpio id-gpio/vbus-gpio properties
Date: Mon, 24 Jul 2023 08:05:36 +0200
Message-ID: <3251040.44csPzL39Z@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <c3ea2edb-1b3e-2c39-ccf6-333e3c8b9020@linaro.org>
References: <20230721081948.1185360-1-alexander.stein@ew.tq-group.com> <20230721081948.1185360-2-alexander.stein@ew.tq-group.com> <c3ea2edb-1b3e-2c39-ccf6-333e3c8b9020@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230723_230553_287574_7F40EBA2 
X-CRM114-Status: GOOD (  13.36  )
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

Hi,

Am Freitag, 21. Juli 2023, 14:22:06 CEST schrieb Krzysztof Kozlowski:
> On 21/07/2023 10:19, Alexander Stein wrote:
> > Use id-gpios and vbus-gpios instead.
> > =

> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > Acked-by: Heiko Stuebner <heiko@sntech.de> #rockchip
> > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com> #mediatek
> > Reviewed-by: AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> Acked-by: Shawn Guo
> > <shawnguo@kernel.org>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > Changes in v3:
> > * Rebased to next-20230721
> > * Split from bindings patch
> =

> I think you wanted to split it per subsystem, right? That's why you
> resent/v3? But the split did not happen.

Yes, I split it into dt bindings and DT changes patches. Is this not correc=
t?

> If you decide not to split,
> then try to figure out: who should pick up this patchset?

Well, intention was one patch for DT bindings maintainers and these two =

patches for imx maintainer (Shawn AFAIK). I've send patches separated by ar=
ch/
arm and arch/arm64 in one series, so I'm slightly confused now.

Best regards,
Alexander
-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
