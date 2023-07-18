Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E8CEEB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 08:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkIK+mYRJXpvjOlEfOC1tyZGY9rrggESC3RcYwCA1Tw=; b=eeg/XUWDnZTmuf
	nME8fbV7jluzoVQg5gjIhZkh/C/2rbC8v3Yx4Hv03ptt5o2p1M9AMYHziXWix173Z67pIu/nUUoSP
	w8kAzFi3Dg0J0ewgpyOHKsUtWdIShB9wn7DnTRr9XdiqkkGZluBy1A2DiafuMiRjzkPsoD5mwkp9b
	i0Y909D24WeqDgmRhSrYCo0RNq29TRAsvvcnEi/5W0gh0sabyWpNyKS+3GcJfmxg5h3KESdb8Me38
	M5nOHJQVkxttPr77iTcQ80hmY14teMNfxuDdSJ3t+aM2fkkboliE0mwtK3L/RYW4tEWlSfupvKoAl
	7rp/bH0eo1OiPDk2LKXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2EL-006EGr-1y;
	Wed, 19 Jul 2023 08:08:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2EI-006EFY-2r;
	Wed, 19 Jul 2023 08:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=5Dt0XbJphgWhfxscv+v0zuGvIhup8GAxvOTTyVEuEy0=; b=Uek0csm2YaE7Wqo8LX1NM1Uyls
	q3Ta4eeDxMWpPFcBqwq0efFVC1DKJj6tBXJVAAgQ474nEuyft7aIqB/E7Q0k3lOXu8ks0X9pmKb/8
	2pdAaBl4VC6mELJ6663SHkl5P1qAbytqWaSGrsPvZja9io0POhHHgv8dGKDZXpEeKL+LqgXffpqyh
	oLtSaP4LZim1j5CuaQYB8yp+bE3+D8IxQ4RH+hiAI00XFqsMYBqU0uY1p4aCvYZa/aFxZiQdFq4G7
	sC/7Bji6Ldj5dvckdqZ65AAM8Lhj/gCsBsybQNS/+p9rPsdNIqonZbSkmMipx7Hy43pvI5/g6k0Dj
	jP8Ne16A==;
Received: from dliviu.plus.com ([80.229.23.120] helo=smtp.dudau.co.uk)
	by desiato.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLqWv-00BwTS-1V;
	Tue, 18 Jul 2023 19:38:43 +0000
Received: from mail.dudau.co.uk (bart.dudau.co.uk [192.168.14.2])
	by smtp.dudau.co.uk (Postfix) with SMTP id 1735441A7003;
	Tue, 18 Jul 2023 20:38:36 +0100 (BST)
Received: by mail.dudau.co.uk (sSMTP sendmail emulation); Tue, 18 Jul 2023 20:38:36 +0100
Date: Tue, 18 Jul 2023 20:38:36 +0100
From: Liviu Dudau <liviu@dudau.co.uk>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, John Clark <inindev@gmail.com>,
	Qu Wenruo <wqu@suse.com>, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: rk3588: add PCIe3 support
Message-ID: <ZLbqPB5yP7Kn6FT6@bart.dudau.co.uk>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
 <20230717173512.65169-3-sebastian.reichel@collabora.com>
 <ZLarQUvUK3v3m6Cg@bart.dudau.co.uk>
 <20230718160137.sfitnkl6gmyi75jx@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230718160137.sfitnkl6gmyi75jx@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_203841_861669_D09585E3 
X-CRM114-Status: GOOD (  20.31  )
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

On Tue, Jul 18, 2023 at 06:01:37PM +0200, Sebastian Reichel wrote:
> Hi Liviu,
> 
> On Tue, Jul 18, 2023 at 04:09:53PM +0100, Liviu Dudau wrote:
> > On Mon, Jul 17, 2023 at 07:35:12PM +0200, Sebastian Reichel wrote:
> > > Add both PCIe3 controllers together with the shared PHY.
> > > 
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3588.dtsi | 120 +++++++++++++++++++++++
> > >  1 file changed, 120 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > > index 88d702575db2..8f210f002fac 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > > @@ -7,6 +7,11 @@
> > >  #include "rk3588-pinctrl.dtsi"
> > >  
> > >  / {
> > > +	pcie30_phy_grf: syscon@fd5b8000 {
> > > +		compatible = "rockchip,rk3588-pcie3-phy-grf", "syscon";
> > > +		reg = <0x0 0xfd5b8000 0x0 0x10000>;
> > > +	};
> > > +
> > >  	pipe_phy1_grf: syscon@fd5c0000 {
> > >  		compatible = "rockchip,rk3588-pipe-phy-grf", "syscon";
> > >  		reg = <0x0 0xfd5c0000 0x0 0x100>;
> > 
> > What tree is based this on? Even after applying your PCIe2 series I don't have the above
> > node so the patch doesn't apply to mainline.
> 
> You are missing naneng-combphy support:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.6-armsoc/dts64&id=6ebd55b3bba383e0523b0c014f17c97f3ce80708

Thanks! It looks like the PCIe2 commit that adds support to rk3588(s).dtsi
files is also missing an #include <dt-bindings/phy/phy.h> for the PHY_TYPE_PCIE
use, otherwise the DTS fail to compile.

Best regards,
Liviu

> 
> -- Sebastian



-- 
Everyone who uses computers frequently has had, from time to time,
a mad desire to attack the precocious abacus with an axe.
       	   	      	     	  -- John D. Clark, Ignition!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
