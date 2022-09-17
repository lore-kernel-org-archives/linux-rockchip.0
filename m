Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C76ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 06:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FplcJZYgD4P0n7RkFnh9AGl8WnhogxL5el/xm3AyOYg=; b=BWcFB2XqmFi4xC
	1SaVvSWtm5ebi6FcJc+6bcdAQlyv0rmUkhWUKP/fp+koECZUIzAEHGV3zgM7zFH0KKB8m6+5tBQSe
	9t/ceOjupEzTh3Qm7zZhIenL4kDuqZLv3LgBIxLsM3pdUBKrK8ISUmrnVorWd0oCNg9C0bMhe7RDp
	Cgv9JuqQRW3qah0mSlqWyJwoPw3WfToThzGikasGy6S/1os9OItyyfpgqG9ojw5tYMKrHrcEKZGOR
	endCXhxHKGwE1iGr1HyzwWqoM8Gn0NaQEkm7XIdpk5dXDLjQU9mv/dPNWHQmoYORs8Tdo1GWIstVl
	mKD8jzahXni7plNFviaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRXO-003mXm-1D; Sat, 17 Sep 2022 06:42:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRX9-003mPg-NV; Sat, 17 Sep 2022 06:42:37 +0000
Received: from [167.98.135.4] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZRWy-0007CE-Mc; Sat, 17 Sep 2022 08:42:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alessandro Carminati <alessandro.carminati@gmail.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: k3566-quartz64-a: adds sata variant
Date: Sat, 17 Sep 2022 08:42:23 +0200
Message-ID: <14722513.tv2OnDr8pf@phil>
In-Reply-To: <CAMdYzYovjSMZgpWd+ATWsv2piNc2ZtnKfB1cTBukvsnfG41g_w@mail.gmail.com>
References: <YySdhiqZgXpl0q/g@lab.hqhome163.com> <CAMdYzYovjSMZgpWd+ATWsv2piNc2ZtnKfB1cTBukvsnfG41g_w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_234235_795984_8F843812 
X-CRM114-Status: GOOD (  27.34  )
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

Hi Peter,

Am Samstag, 17. September 2022, 03:40:07 CEST schrieb Peter Geis:
> On Fri, Sep 16, 2022 at 12:06 PM Alessandro Carminati
> <alessandro.carminati@gmail.com> wrote:
> >
> > The Quartz64 board is built upon Rockchip RK3566.
> > Rockchip RK3566 has two combo phys.
> > The first connects USB3 and SATA ctrl1, and the second PCIe lane and SATA
> > ctrl2.
> > The second combo phy is hardwired to the PCIe slot, where for the first,
> > the hardware on the board provides both the USB3 connector and the SATA
> > connector.
> > This DT allows the users to switch the combo phy to the SATA connector.
> 
> Good Evening,
> 
> NACK to this whole series. Neither works correctly in the hardware as
> is,

Just for my understanding for the future, sata not working is that a bug
in the soc or the board?

> and USB3 was decided to be left enabled as the SATA port will be
> removed completely in the next revision.

That is good to know. Thanks for the heads up :-)

Heiko


> > Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile                   | 1 +
> >  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts | 9 +++++++++
> >  2 files changed, 10 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 8c843f6fc3cc..1d5dd91d1a34 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -60,6 +60,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-usb3.dts
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a-sata.dts
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > new file mode 100644
> > index 000000000000..8620df7ec01e
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a-sata.dts
> > @@ -0,0 +1,9 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3566-quartz64-a.dtsi"
> > +
> > +&sata1 {
> > +       status = "okay";
> > +};
> > --
> > 2.34.1
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
