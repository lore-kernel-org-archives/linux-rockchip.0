Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70008E77197
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jan 2025 17:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCjp0egnfUsUPbN2ie9tq44WjMw5xz1XozsVGA4Gl8c=; b=WOwN3eHKG9EsU7
	PWg0MXoYe4uEIkShik0lQsh9juZncL3EpftJov7csS4MXBffR1bCE/zSF5SsQEYxkwzZHkVv/OUlm
	Y2/IxeXd+QuNhcC7tjFkBrD+xG7cgw8zK+vWGWve7Erx55c+50C9XhbcCPORKLAf+6F3GYB+Mz/yE
	htQv7bYorZqpN6dOkG/cMiiVfy3MGh2fr6uzfeGnGgqUjVFZbGhSu33AA2yAt3DSYBOj8tQwPwkkZ
	k8TMCM7rO7bRP77u15pw+BLLN1fYlVvdP43cNRLEsi2z8efS4f10xhjCSrTINOY9zQuf1es9sOZgt
	hoAK4XbWv/R2Ezf0rHGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUUtn-0000000HE8v-2UOg;
	Sun, 05 Jan 2025 17:58:51 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUUsa-0000000HE18-3w6J;
	Sun, 05 Jan 2025 17:57:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=T7UsKrbMGaYAZ3fGhh5FClLeroSco1WoimCzDT9Vf7U=; b=5OPUmOZ3o/p2aRzIxC2coxZwSb
	iXPBt1P6j5PHapItsuOIhVh5ofmhzUoep7Ou153gc+mZFWbR0tmVR///7EfWDlN8U6y94gLQEdy4d
	0r5YwgG9jVKYql3edBmad9lUO3B+L/du3yyam3IpUAgvmo2+TsMcE73Iy6o1r3iDIl7Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tUUsN-001dMh-VD; Sun, 05 Jan 2025 18:57:23 +0100
Date: Sun, 5 Jan 2025 18:57:23 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <c94570db-c0af-4d92-935c-5cc242356818@lunn.ch>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <Z3fKkTSFFcU9gQLg@ryzen>
 <CANAwSgS5ZWGTP+A11r_qFSrjWZH_DqsM89MLiP+1VAxhz+e+2A@mail.gmail.com>
 <5a3e8fda-f9e4-4c2f-847b-93f521b8313b@lunn.ch>
 <CANAwSgSUuEvJb2Vn58o0i7Soo3jGzM8EYHvDtUTPxRHekCpruA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgSUuEvJb2Vn58o0i7Soo3jGzM8EYHvDtUTPxRHekCpruA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_095736_974739_B394B075 
X-CRM114-Status: GOOD (  19.02  )
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

On Sun, Jan 05, 2025 at 11:16:21PM +0530, Anand Moon wrote:
> Hi Andrew,
> 
> On Fri, 3 Jan 2025 at 21:34, Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > +&gmac1 {
> > > +       clock_in_out = "output";
> > > +       phy-handle = <&rgmii_phy1>;
> > > +       phy-mode = "rgmii";
> >
> > rgmii is wrong. Please search the archives about this topic, it comes
> > up every month. You need to remove the tx_delay and rx_delay
> > properties, and use rgmii-id.
> >
> According to the RKRK3588 TRM-Part1 (section 25.6.11 Clock
> Architecture), in RGMII mode,
> the TX clock source is exclusively derived from the CRU (Clock Request Unit).
> To dynamically adjust the timing alignment between TX/RX clocks and
> data, delay lines are
> integrated into both the TX and RX clock paths.
> 
> Register SYS_GRF_SOC_CON7[5:2] enables these delay lines,
> while registers SYS_GRF_SOC_CON8[15:0] and SYS_GRF_SOC_CON9[15:0]
> are used to configure the delay length for each path respectively.
> Each delay line comprises 200 individual delay elements.
> 
> Therefore, it is necessary to configure both TX and RX delay values
> appropriately
> with phy-mode set as rgmii.
> 
> [1[ https://github.com/torvalds/linux/blob/master/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c#L1889-L1914
> 
> I have gone through a few of the archives about this topic
> 
> [2] https://lore.kernel.org/linux-rockchip/4fdcb631-16cd-d5f1-e2be-19ecedb436eb@linaro.org/T/

O.K, let me repeat what i have said a number of times over the last
couple of years.

phy-mode = "rgmii" means the PCB has extra long clock lines on the
PCB, so the 2ns delay is provided by them.

phy-mode = "rgmii-id" means the MAC/PHY pair need to arrange to add
the 2ns delay. As far as the DT binding is concerned, it does not
matter which of the two does the delay. However, there is a convention
that the PHY adds the delay, if possible.

So, does your PCB have extra long clock lines?

Vendors often just hack until it works. But works does not mean
correct. I try to review as many .dts files as i can, but some do get
passed me, so there are plenty of bad examples in mainline.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
