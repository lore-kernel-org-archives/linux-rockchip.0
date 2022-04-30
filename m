Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6296C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhja40FbAc7Hdh21MXLbz7tGv87jLBvBaEOvNc91fho=; b=cuV40PPUWPhyKE
	q6hpD3Q3ubAs9zEOuSjAX7GgpF1Bw/+05SO7YRQ0B+LgwlyOj9YC1c3LxYgBuJc0TGxKz9H9d2pUZ
	Ac6g3EnD0xqAfFYupQDtK+g2WEwBTjUN8dDSJUGZRK5ESL6HxIlc+5iuZMVnZKmN7+pZ4oGIQQ0IZ
	IEKXp6EmHEI2ArF20TAfTzcUeySXgXVU1rtrZszITP3METs1ME+OyVlBqkXQT6IX3UwZzkGHdKd5w
	x4BaUckZGKhNbIz/VKFYswhqvQ5+OXKkBJD57FGGYJ3KzqnKW7/gflTlPpeHQjjpBYcyDtWrondK2
	0/6Xt83u/SNo/ij3jDwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknlL-00ERbn-KP; Sat, 30 Apr 2022 14:07:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknkt-00ERNi-Sq; Sat, 30 Apr 2022 14:07:29 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nknks-0001ZV-O8; Sat, 30 Apr 2022 16:07:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: enable otg/drd operation of
 usb_host0_xhci in rk356x
Date: Sat, 30 Apr 2022 16:07:25 +0200
Message-ID: <3229434.5fSG56mABF@phil>
In-Reply-To: <ca670161-7133-631e-f4b6-b48c8fde669b@wolfvision.net>
References: <20220425133502.405512-1-michael.riesch@wolfvision.net>
 <2087500.ItEYzMA54p@archbook>
 <ca670161-7133-631e-f4b6-b48c8fde669b@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070727_981042_DE25A52D 
X-CRM114-Status: GOOD (  23.17  )
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

Am Donnerstag, 28. April 2022, 15:24:09 CEST schrieb Michael Riesch:
> Hi Nicolas,
> 
> On 4/28/22 13:15, Nicolas Frattaroli wrote:
> > On Montag, 25. April 2022 15:35:00 CEST Michael Riesch wrote:
> >> This USB 3.0 controller is capable of OTG/DRD operation. Enable it in the
> >> device tree.
> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> index 55e6dcb948cc..f611aaf2d238 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> @@ -266,7 +266,7 @@ usb_host0_xhci: usb@fcc00000 {
> >>  			 <&cru ACLK_USB3OTG0>;
> >>  		clock-names = "ref_clk", "suspend_clk",
> >>  			      "bus_clk";
> >> -		dr_mode = "host";
> >> +		dr_mode = "otg";
> >>  		phy_type = "utmi_wide";
> >>  		power-domains = <&power RK3568_PD_PIPE>;
> >>  		resets = <&cru SRST_USB3OTG0>;
> >>
> > 
> > Hi Michael,
> > 
> > according to official specs[1], only the RK3568 is capable of using the
> > USB 3.0 controller in OTG mode. For the RK3566, OTG is USB 2.0, if I
> > understand this correctly.
> > 
> > So I think this should be an override in rk3568.dtsi.
> 
> Thanks for pointing that out -- will change in v2 (I'll wait a bit,
> though, as I hope that patches 2 and 3 will be applied as they are ;-)

that can be arranged ;-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
