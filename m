Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A2FC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 02:11:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 54BAA600D3
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 02:11:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 54BAA600D3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mRl1X9LlwBP0l9hP4+87l/2p6DLFT/Jr5cM0CHc7NE=; b=xNEod9IKtsv9ED
	gfyX8Zfk7OCSGk7x+sNUql3KvAinVSyxPmn7EOkytYYWxm8QkSagoMWLD3GSyM2Px0rBFrE+2It99
	qRROmzq6dJ7k3GMwWnsaysopt0J3yEfl9HuNOdxqNkCAgjJSkXqFZzY0Xr4UXmYaQDRd6JXlM5Z4o
	7eOnfi29iFrD3/bQHT+0E1OlZE2ecBgBkcrfmpD+WrQmHLabfybOjK4Z0yV53IEe5f5VWMPhn9TeA
	p7aPO/k3ews5gFH3lLXoC2ty82c4lWSAoxwuQZdnhBF3DRRHUTl/0aSgsIZoYLby75ZK/WQZ/Or4t
	GmKQp0Zt5BsqNkIv7JZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llMXf-002rpz-T6; Tue, 25 May 2021 02:11:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llHsn-001uK1-2R; Mon, 24 May 2021 21:13:09 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1llHsk-0008Me-To; Mon, 24 May 2021 23:13:02 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Marc Zyngier <maz@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 3/9] arm64: dts: rockchip: Prepare Rockchip RK1808
Date: Mon, 24 May 2021 23:13:03 +0200
Message-ID: <3998020.X9hSmTKtgW@diego>
In-Reply-To: <87fsycw41m.wl-maz@kernel.org>
References: <20210516230551.12469-1-afaerber@suse.de>
 <7ef183f1-00f8-13c4-1fd3-eae9e0bbf74c@suse.de> <87fsycw41m.wl-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_141305_159728_C38A45A1 
X-CRM114-Status: GOOD (  28.82  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 24. Mai 2021, 17:21:41 CEST schrieb Marc Zyngier:
> On Mon, 24 May 2021 14:32:41 +0100,
> Andreas F=E4rber <afaerber@suse.de> wrote:
> > =

> > On 17.05.21 11:21, Marc Zyngier wrote:
> > > On Mon, 17 May 2021 00:05:45 +0100,
> > > Andreas F=E4rber <afaerber@suse.de> wrote:
> > >>
> > >> Add an initial Device Tree for Rockchip RK1808 SoC.
> > >> Based on shipping TB-RK1808M0 DTB.
> > >>
> > >> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> > >> ---
> > >>  arch/arm64/boot/dts/rockchip/rk1808.dtsi | 203 ++++++++++++++++++++=
+++
> > >>  1 file changed, 203 insertions(+)
> > >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk1808.dtsi
> > >>
> > >> diff --git a/arch/arm64/boot/dts/rockchip/rk1808.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk1808.dtsi
> > >> new file mode 100644
> > >> index 000000000000..af2b51afda7d
> > >> --- /dev/null
> > >> +++ b/arch/arm64/boot/dts/rockchip/rk1808.dtsi
> > [...]
> > >> +		gic: interrupt-controller@ff100000 {
> > >> +			compatible =3D "arm,gic-v3";
> > >> +			reg =3D <0xff100000 0x10000>, /* GICD */
> > >> +			      <0xff140000 0xc0000>, /* GICR */
> > > =

> > > This is obviously wrong. You have two CPUs, and yet describe a range
> > > that spans 6. I guess this is a copy paste from rk3399 again?
> > =

> > Not on my part at least. As indicated, these numbers are what ships in
> > the DTB on the RK1808 card, as per dtc -I dtb -O dts. Could be a mistake
> > by Rockchip, of course.
> > =

> > Are you suggesting 0xc0000/6*2 =3D 0x40000 for two CPUs here?  Works
> > as bad as before - investigation still ongoing with latest next.
> > =

> > As for "obviously": The GICv3 YAML binding has no description for me to
> > validate those numbers: "GIC Redistributors (GICR), one range per
> > redistributor region" - says nothing about correlation to number of CPUs
> > or size per CPU, and the examples are not explaining either: 0x200000
> > has no number of CPUs associated, and by my calculation 0x800000 for 32
> > CPUs results in 0x40000 per CPU; but then again the examples also have
> > GICC etc. at diverging 0x2000 size.
> =

> The GICv3/v4 architecture spec does apply, and you should really have
> a look at what these sizes mean. What is the value of copy-pasting
> things without understanding it the first place?
> =

> > =

> > >> +			      <0xff300000 0x10000>, /* GICC */
> > >> +			      <0xff310000 0x10000>, /* GICH */
> > >> +			      <0xff320000 0x10000>; /* GICV */
> > >> +			interrupt-controller;
> > >> +			#interrupt-cells =3D <3>;
> > >> +			interrupts =3D <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > >> +			#address-cells =3D <1>;
> > >> +			#size-cells =3D <1>;
> > >> +			ranges;
> > >> +
> > >> +			gic_its: msi-controller@ff120000 {
> > >> +				compatible =3D "arm,gic-v3-its";
> > >> +				reg =3D <0xff120000 0x20000>;
> > >> +				msi-controller;
> > >> +				#msi-cells =3D <1>;
> > >> +			};
> > > =

> > > What uses the ITS?
> > =

> > DT-wise seemingly only the __symbols__ table (named just "its" there, I
> > notice), so we could drop (or rename) the label if you prefer.
> =

> No, I am asking *what* uses the ITS. Is it just dangling without any
> user? No PCI bus making use of it?

just 2ct, as far as I remember the rk1808 does have a PCIe controller.
And the datasheet [0] does agree with my memory it seems


Heiko

[0] http://opensource.rock-chips.com/images/4/43/Rockchip_RK1808_Datasheet_=
V1.2_20190527.pdf



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
