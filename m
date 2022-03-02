Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FA1BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 08:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFMoICdNLSeFFijzUIKhztb3UllBZU5jKB6gpIfYETg=; b=wRJkXfR3NxMQSw
	M+maYGwTRUpLh76yP9izNz+gVjAwnkM/8MpjQHcCuQJHSdWEylyGGGUIR1XSewFr4T7shgszTyF91
	NTd2vm/dwPyBfcF5Exg1WinkPDjynn8LBBUPzu386EZULYI3V4e51bVfVXReoIdIAj+pY/0oTCO2v
	Gwx5pZE3dEbpRRgmKoMJE5xUu+vaEn7uYY3kMsEVSYOY6ZGMWv8itWo62nl0Yyz/yzkL067Q1Xe8w
	kl+6R5WwBSu/U8CI1OgDqfwzFMBQ+8avMOMwXc67pH4vms7/T/uvwEXdQsPg4nWpZRK6lgfEH4JjR
	KNQxDMkUztkMHLiE1jGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPK9j-001pLf-H2; Wed, 02 Mar 2022 08:16:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPK9W-001pGh-TP; Wed, 02 Mar 2022 08:16:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6E6FF60C3B;
 Wed,  2 Mar 2022 08:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D631C004E1;
 Wed,  2 Mar 2022 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646208965;
 bh=XZmYOYtMmwo2P8dkntVlx9JQ2MUJP9KNkRguDCErpIw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WDCy5Z6KWGROQHThae/yU5BrZuHCU9dZq/2cNdJdxg0V6Hof+D1ToifbE+FwwAKyT
 2iOaaD0IXi1xgmb1cngtu9WMV3lT8d/4J0FL3zIA2b/5105dRtABUPKpUUf6gsR+y1
 Doh3hXkIwRcc/p/nl2D/FXKuXkberO3ONKsPSJklPVple89omC2Esp1QSpDKyzYpnL
 fG2EE0PjfADIMl8BgAylOqpqEODALYuX8juYiooud5uzVB7tsy28W94dO12MBnZU51
 fs7Kn3MUkc0QNs+nxPJTUeXZYFN9VI3FOZAQTWfvSyHd8lp/nIYWPFcczFJ9n2QEzd
 Jdr+OcECbqWfg==
Date: Wed, 2 Mar 2022 13:46:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 devicetree <devicetree@vger.kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Liang Chen <cl@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Lee Jones <lee.jones@linaro.org>, wulf <wulf@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Message-ID: <Yh8nwS7iAKgJZeFa@matsya>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
 <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
 <CAL_Jsq+1ixfw4+pwPcM5azPdC_4_bYCPu50jUvKnVMr6dSncpA@mail.gmail.com>
 <CAMdYzYryTb4Gvv3XENgUOSrutr7S-5a7GOMRahXWWZOeL1qKWA@mail.gmail.com>
 <CAL_JsqLsLU5-bJVRWv_TzGUZdFHOx7tdzqV2piNfacNkXg=zww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLsLU5-bJVRWv_TzGUZdFHOx7tdzqV2piNfacNkXg=zww@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_001607_047409_EE13ADB8 
X-CRM114-Status: GOOD (  28.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 01-03-22, 08:06, Rob Herring wrote:
> On Mon, Feb 28, 2022 at 3:37 PM Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Mon, Feb 28, 2022 at 2:18 PM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Tue, Feb 8, 2022 at 3:15 AM Yifeng Zhao <yifeng.zhao@rock-chips.com> wrote:
> > > >
> > > > Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> > > >
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > > ---
> > > >
> > > > Changes in v8: None
> > > > Changes in v7:
> > > > - remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
> > > >
> > > > Changes in v5:
> > > > - modify description for ssc and ext-refclk
> > > > - remove apb reset
> > > >
> > > > Changes in v4:
> > > > - restyle
> > > > - remove some minItems
> > > > - add more properties
> > > > - remove reset-names
> > > > - move #phy-cells
> > > > - add rockchip,rk3568-pipe-grf
> > > > - add rockchip,rk3568-pipe-phy-grf
> > > >
> > > > Changes in v3: None
> > > > Changes in v2:
> > > > - Fix dtschema/dtc warnings/errors
> > > >
> > > >  .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
> > > >  1 file changed, 109 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> > >
> > > This now fails in linux-next:
> > >
> > > /builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
> > > syscon@fdc50000: compatible: 'oneOf' conditional failed, one must be
> > > fixed:
> > >  ['rockchip,rk3568-pipe-grf', 'syscon'] is too short
> > >  'rockchip,rk3568-pipe-grf' is not one of ['rockchip,rk3288-sgrf',
> > > 'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
> > > From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > > /builds/robherring/linux-dt/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:
> > > syscon@fdc70000: compatible: 'oneOf' conditional failed, one must be
> > > fixed:
> > >  ['rockchip,rk3568-pipe-phy-grf', 'syscon'] is too short
> > >  'rockchip,rk3568-pipe-phy-grf' is not one of ['rockchip,rk3288-sgrf',
> > > 'rockchip,rk3568-usb2phy-grf', 'rockchip,rv1108-usbgrf']
> > > From schema: /builds/robherring/linux-dt/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > >
> > >
> > > The problem appears to be that patch 1 was applied incorrectly and the
> > > compatibles ended up in the wrong section (the one requiring
> > > 'simple-mfd'). Patch 1 probably conflicts as my bot will just skip the
> > > patch if it conflicts which is why this had a different error report.
> >
> > Good Afternoon Rob,
> >
> > This is fixed in the first patch of my rk356x dwc3 enablement series:
> > https://patchwork.kernel.org/project/linux-rockchip/patch/20220228135700.1089526-2-pgwipeout@gmail.com/
> 
> Where does that say Vinod incorrectly applied the original patch and
> needs to apply it? What's the status of the series? Do we have to wait
> for the rest of the series to be applied?

Thanks for pointing that out, I can revert this patch so that corrected
one can be applied... Does that look better

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
