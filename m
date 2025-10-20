Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C2B0CCD1A7
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=poNwG06SlT1De17DLMLJGB7k8IeayU216D8QGdA1Izg=; b=tMxYz5lhhhb5kw
	0IfoDF1TghH3rhB5Ep8CufRMX2nVH+5PNvU1BfwSH68fpjDA3fU1zo9kDFzdushgg5xp7m2iT5Rcz
	fXUmhcF5z7upungaPKObwdp+F0+j6gWTzGpadZADaTk5V77W2Aust48Q+SkKryUlWiCBzYUVpFwuY
	2/H7qZrTu+KVH0hOZQjFk4Rz7IGUvaDREXzS+R4uHaUffC4T9joQ9/1fu+Q2w5UPGYaHjkYWj/eP5
	RFtCTq8ApntD7SYehSxALzF+RV45YCoXwWrvBjb5HxqiQESnPKT1bHRJHRgfMa34w0V6H1pzQJ8ST
	JfnjEvNdYQTfLwjmQz8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAocP-0000000DHeV-2rhi;
	Mon, 20 Oct 2025 12:04:05 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAmmf-0000000CkKH-0orq;
	Mon, 20 Oct 2025 10:06:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 08DE540D09;
	Mon, 20 Oct 2025 11:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1760953293; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=QGW0UXPHuAzfUyVJq6SzZa/ZD5eWO7i1MGpbhW7LPcI=;
	b=jW7m505xbww0KhZcVkm/7a/5SkRhUKtxfzlyMz5EZs1RmvsphJ7m5lYLFyNG+c5m156ksA
	/iMsmNQq85AYSsMDegTbO8SFQPO0wTJbiZ2Z2RsWhicfRuh1RfxzHJtikBsxmzRGcuLP0z
	84QlUwkNCQ0xzH+23NnpYd2/yQmUW4JCXB8nru+JEBBgjttN1T+OvIR3R+OMCtDebkYMur
	oEGWpARae1AueVRbftD9Ao9WiCG5y0laFfwqtqMzdu590msFvWzWbBZMO9cETaL8Tm6Ylu
	tmDmByAxQCeQamP4oH5KLR/TAtmmQALfWHxDdb6QxvhENPhCw5NrmkqS+zvo8g==
From: "Dragan Simic" <dsimic@manjaro.org>
Date: Mon, 20 Oct 2025 11:41:29 +0200
Cc: "Hugh Cole-Baker" <sigmaris@gmail.com>, "Jimmy Hon" <honyuenkwun@gmail.com>, "Tianling Shen" <cnsztl@gmail.com>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Grzegorz Sterniczuk" <grzegorz@sternicz.uk>, "Jonas Karlman" <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Shawn Lin" <shawn.lin@rock-chips.com>
To: "Anand Moon" <linux.amoon@gmail.com>
MIME-Version: 1.0
Message-ID: <52537005-b8a3-c202-770c-599efc6a4d17@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= fix eMMC corruption on NanoPC-T6 with A3A444 chips
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_030633_423881_0D4C5DE2 
X-CRM114-Status: GOOD (  20.50  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:18 -0700
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

Hello Anand,

On Monday, October 20, 2025 05:13 CEST, Anand Moon <linux.amoon@gmail.com> wrote:
> On Sun, 19 Oct 2025 at 23:40, Dragan Simic <dsimic@manjaro.org> wrote:
> > On Sunday, October 19, 2025 19:25 CEST, Anand Moon <linux.amoon@gmail.com> wrote:
> > > Would you consider the following patch?
> > >
> > > As per the Rockchip RK3588S SoC Technical Reference Manual (TRM) Part 1,
> > > chapter 21.6, Interface Description, the eMMC signals require careful handling
> > > to ensure signal integrity.
> > >
> > > I2C2_SCL_M2 I/O EMMC_RSTN/I2C2_SCL_M2/UART5_RTSN_M1/GPIO2_A3_d
> > > BUS_IOC_GPIO2A_IOMUX_SEL_L[15:12]=0x9
> > > I2C2_SDA_M2 I/O EMMC_DATA_STROBE/I2C2_SDA_M2/UART5_CTSN_M1/GPIO2_A2_d
> > > BUS_IOC_GPIO2A_IOMUX_SEL_L[11:8]=0x9
> > >
> > > $ git diff .
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > > b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > > index 6584d73660f6..f60a1d8be0ef 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > > @@ -327,7 +327,7 @@ emmc {
> > >                 emmc_rstnout: emmc-rstnout {
> > >                         rockchip,pins =
> > >                                 /* emmc_rstn */
> > > -                               <2 RK_PA3 1 &pcfg_pull_none>;
> > > +                               <2 RK_PA3 1 &pcfg_pull_down_drv_level_2>;
> > >                 };
> > >
> > >                 /omit-if-no-ref/
> > > @@ -369,7 +369,7 @@ emmc_cmd: emmc-cmd {
> > >                 emmc_data_strobe: emmc-data-strobe {
> > >                         rockchip,pins =
> > >                                 /* emmc_data_strobe */
> > > -                               <2 RK_PA2 1 &pcfg_pull_down>;
> > > +                               <2 RK_PA2 1 &pcfg_pull_down_drv_level_2>;
> > >                 };
> > >         };
> >
> > Frankly, I'm not really sure how would such changes do something
> > good regarding the eMMC signal integrity?  In general, signal
> > integrity depends mostly on the routing of the PCB traces, which
> > is purely hardware design.  Sure, termination of data lines also
> > plays a significant role, but that surely isn't at play here.
> >
> It is necessary to enhance the signal quality from the controller to
> the eMMC module

Well, yes, but the proposed change almost surely isn't a way
to achieve that.  Maybe I'm missing something, but it looks like
a pretty much random change to me.

> > Moreover, the eMMC RSTn line is already pulled high to VCCIO in
> > the reference RK3588 design, so pulling it down in the SoC itself
> > would be pretty much wrong thing to do.
> >
> It is specified in the TRM that this is only applicable during
> initialization.as per my understanding.

It doesn't matter what the TRM says in this case, because the
board-level pull-up and SoC-level pull-down remain the same at
all times, and having both a pull-up and a pull-down at the same
time is a typical example of what shouldn't be happening on some
line until that's intentional and the pull-ups and pull-downs
deliberately have different strengths.

Anyway, let's see will the patch that Shawn sent [1] fix this
issue (by the way, thanks, Shawn!).  I'll hold the A3A444 quirk
patch(es) off until Tianling's friend and Hugh find the time to
test Shawn's patch.

[1] https://patchwork.kernel.org/project/linux-mmc/patch/1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com/


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
