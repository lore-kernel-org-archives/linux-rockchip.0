Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3500BC46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrBnCIe8MA4rthrltuoS5gmnZsGY1e6hY/85aElJREw=; b=n4c0HI9SD2P+oq
	KD7g3wTB66+/84k8nA/ErrWS7fZrogcs4TqnY9Vc+krsyzzm9m3Mn0HBS+9PJQDe4MlwcOXryPFYZ
	pVi96EoFWAIc1TLamfWvGUhZVatMn7JjqiBlpQghCwZObnAiCSOpTjL0Z8oIdJQVplBqqbjmpIRwV
	3wuAfP97Z4Jy4jmYF3EyjB4itn/Vn6O9EM5tGmBB6Kqospd60pHVbRE+fUhErzwTT0p52n0JCCuXm
	UlVWUWWUEpRKHlaPsc1BtPrq6p4a84B7XPRZpkQRSNeGJzjbokBukZNBqc7AN/GtDAY/OlGpmq/fo
	3jc5Q6OadSs7gPu1Qjpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYaS-00ArXy-BV; Wed, 11 Jan 2023 10:44:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYaB-00ArPO-Br; Wed, 11 Jan 2023 10:43:48 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYa7-0004Th-7W; Wed, 11 Jan 2023 11:43:43 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Anand Moon <anand@edgeble.ai>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Richard Cochran <richardcochran@gmail.com>, Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCHv4 linux-next 3/4] Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
Date: Wed, 11 Jan 2023 11:43:42 +0100
Message-ID: <2917690.KRxA6XjA2N@diego>
In-Reply-To: <CACF1qnd=o+QWuofgAb+YXOs1R_dOuCPxWrb-+YEhuN4z8OnTrA@mail.gmail.com>
References: <20230111064842.5322-1-anand@edgeble.ai> <7148963.18pcnM708K@diego> <CACF1qnd=o+QWuofgAb+YXOs1R_dOuCPxWrb-+YEhuN4z8OnTrA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024347_422539_B608358F 
X-CRM114-Status: GOOD (  20.66  )
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

Am Mittwoch, 11. Januar 2023, 11:31:40 CET schrieb Anand Moon:
> Hi Heiko,
> =

> Thanks for your review comments.
> =

> On Wed, 11 Jan 2023 at 15:41, Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Hi,
> >
> > Am Mittwoch, 11. Januar 2023, 07:48:38 CET schrieb Anand Moon:
> > > Add Ethernet GMAC node for RV1126 SoC.
> > >
> > > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >
> > patches 2-4 have this Signed-off-by from Jagan again where he is not
> > not the author but also not the sender.
> =

> We both work to fix this patch hence Jagan's SoB was added.

ok, then I think the correct way to express that would be:

Co-Developed-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>


> >
> > Also this patch here, needs a fixed subject with the correct prefixes.
> >
> Ok, will fix this in the next version.
> >
> > Heiko
> >
> > > ---
> > > v4: sort the node as reg adds. update the commit message.
> > > v3: drop the gmac_clkin_m0 & gmac_clkin_m1 fix clock node which are n=
ot
> > >     used, Add SoB of Jagan Teki.
> > > v2: drop SoB of Jagan Teki.
> =

> Thanks
> -Anand
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
