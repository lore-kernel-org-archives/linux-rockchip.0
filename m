Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 697A1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 08:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PY8c3zzfo2fSseirUV0GZt3qFIWZMEuyelh0ZHIWPk8=; b=axkxsUZmFsaHGz
	xurEFjg9EG4zpNIDQdIldkLvsvQAFE7Urz/KPbgrk43knq9Bciio7m+hw0cZSEyPRHHblrBOzo/EZ
	ih7vpMUM6Up92eq/wuQBZBBMdJQ7Bjojw8uadMJH2g8tnkE3C/+we4sV2+taj2WBmk+VROJFY9dic
	2hWIGSvL/+2jOoKOjmKTpytu9hz8Ie0YV4EJRfo4iajLEm12RNRqiDymWUGsG/eHHs+6/mmLWBvwq
	l83Pw1pEMndIujnYDkPNtrtHJKJUnC/txAgV9tivRf+fiyVb55IAa5lLxxeXLZ4HVY4dd4uNnaaGk
	482X4aYrNHejgJj9IDFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og0FD-00DEBW-FR; Wed, 05 Oct 2022 08:59:11 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og0F1-00DE9I-TZ; Wed, 05 Oct 2022 08:59:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1664960338; bh=lEwY/zjdybhUANOaEO/4dQ3U3RYpKuYPtegSEH6M8KM=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=pQ6HYkXtdvvb8qsKJ4r6ENWZLKMAfB4GcE4XFdPwNkiCWvjpZj9g6ghJr+eeedXQ9
	 hJ5W6OgUVhM9SO3E8O/fNHAadFYWX1H3T54oN7BfNPB+GD0HGvFOiyajhAk0hj8Pd9
	 /P3zUtN80mmvpU/EANmT5Zvs4uMPKiHoN1OScb1w=
Date: Wed, 5 Oct 2022 10:58:57 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: Fix PCIe register map and
 ranges
Message-ID: <20221005085857.psmoj7ktohsvvxic@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Peter Geis <pgwipeout@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20221004144304.536023-1-megi@xff.cz>
 <CAMdYzYou74UoPFeLx-5Od6rXe+8Fr9AjRv6fuiaqDMXhiufmYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYou74UoPFeLx-5Od6rXe+8Fr9AjRv6fuiaqDMXhiufmYA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_015900_131482_3C5C4593 
X-CRM114-Status: GOOD (  30.60  )
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

Hello Peter,

On Tue, Oct 04, 2022 at 03:52:39PM -0400, Peter Geis wrote:
> On Tue, Oct 4, 2022 at 10:43 AM Ondrej Jirman <megi@xff.cz> wrote:
> 
> Good Afternoon,
> 
> 
> >
> > I have two Realtek PCIe wifi cards connected over the 4 port
> > PCIe bridge to Quartz64-A. The cards fail to work, when nvme
> > SSD is connected at the same time to the bridge. Without nvme
> > connected, cards work fine. The issue seems to be related
> > to mixed use of devices which make use of I/O ranges and memory
> > ranges.
> >
> > This mapping is designed to be more straightforward, inspired by
> > dt-bindings docs for sample pcie3x2 node:
> >
> >       reg = <0x3 0xc0800000 0x0 0x390000>,
> >             <0x0 0xfe280000 0x0 0x10000>,
> >             <0x3 0x80000000 0x0 0x100000>;
> >       ranges = <0x81000000 0x0 0x80800000 0x3 0x80800000 0x0 0x100000>,
> >                <0x83000000 0x0 0x80900000 0x3 0x80900000 0x0 0x3f700000>;
> >
> > I noticed that this is crafted so that there doesn't need to be
> > any translation other than dropping the high dword bits, and I
> > modified the ranges for pcie2x1 to follow the same principle.
> >
> > This change to the regs/ranges makes the issue go away and both
> > nvme and wifi cards work when connected at the same time to the
> > bridge.
> >
> > Signed-off-by: Ondrej Jirman <megi@xff.cz>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index 319981c3e9f7..e88e8c4fe25b 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -855,7 +855,8 @@ pcie2x1: pcie@fe260000 {
> >                 compatible = "rockchip,rk3568-pcie";
> >                 reg = <0x3 0xc0000000 0x0 0x00400000>,
> >                       <0x0 0xfe260000 0x0 0x00010000>,
> > -                     <0x3 0x3f000000 0x0 0x01000000>;
> > +                     <0x3 0x00000000 0x0 0x01000000>;
> > +
> >                 reg-names = "dbi", "apb", "config";
> >                 interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
> >                              <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>,
> > @@ -884,8 +885,8 @@ pcie2x1: pcie@fe260000 {
> >                 phys = <&combphy2 PHY_TYPE_PCIE>;
> >                 phy-names = "pcie-phy";
> >                 power-domains = <&power RK3568_PD_PIPE>;
> > -               ranges = <0x01000000 0x0 0x3ef00000 0x3 0x3ef00000 0x0 0x00100000
> > -                         0x02000000 0x0 0x00000000 0x3 0x00000000 0x0 0x3ef00000>;
> > +               ranges =  <0x01000000 0x0 0x01000000 0x3 0x01000000 0x0 0x00100000
> > +                          0x02000000 0x0 0x02000000 0x3 0x02000000 0x0 0x3e000000>;
> 
> Have you verified these ranges do not regress the NVMe drive when it
> is connected directly to the controller? The reason we went with the
> configuration space we did was because the original space from
> downstream caused errors on NVMe drives when reading large amounts
> (>1GB) of data at a time.

I did. Anyway... looking at the ranges more carefully, I came up with a scheme
that uses whole of 0x300000000 range for MEM and the smaller 32M range at
0xf4000000 for I/O and config, and tested it again to work for both:

- nvme without a switch (directly connected)
- nvme+wifi cards with a switch

See v2 for more details.

That ranges setup is closer to what BSP does.

Kind regards,
	o.

> Very Respectfully,
> Peter Geis
> 
> >                 resets = <&cru SRST_PCIE20_POWERUP>;
> >                 reset-names = "pipe";
> >                 #address-cells = <3>;
> > --
> > 2.37.3
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
