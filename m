Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1243CC6FA89
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 12:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BFQLeS6iDJyPs8rV4DCBR595bssAGNPH5lofIywLRjE=; b=HPiykfNVp/fJQANUqLmuJiFBFh
	flENwW0Xwi+sfutIOa0sXk6txRqBiKJXwFl0Oy7cw52FBHnJjS9Tkt3qritwzMEfvPqitbCRMLzQE
	s9R5puuAZamtND3hBapY0xyrXqsV1wg0bFHac+oRySf1/zPjXT3shSo7fC4T4XNNlVdSZIAxIu6JH
	AhREzVe8hIiemebd4nPr4WiQ6tYmCyJf+0wR56YTcYmXmJZdZJjBagKghUpATQEEXLvNkcoHu+pW9
	UCFtjut0G1KDhGMibGlNwJusR0wpZ+SuR3RIiUR125SxbHdRq8HsymYAOj0EFUeplAsXhMOXvWUXT
	JWUxM4bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY4sB-009rtJ-Lp; Tue, 13 Sep 2022 12:18:39 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY4s3-009riy-Rh
	for linux-rockchip@lists.infradead.org; Tue, 13 Sep 2022 12:18:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1663071503;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VUHFbdI/sSQ+lPWla6vxMFPzfldZ5qkJTJ0zYyOv4c4=;
	b=i6VD6YZKKBG1siccT2V117zjw0L2L+eyYtLiYyCPCxVvvG8CAF+EtGIYmv99RwmQBzE4Xc
	UCuNm190wzmMvZDIolz3AcjpRFIkaUBGSH5tH3nOglmLOa8l1hRBT2QbhlUdcLh+aSWfIZ
	4WXA13LbmbgmFZHIjujUtRRCDeLhtOLEQ3b5NsZzp1lrs6dhiKCekp1ZQPtWzqJIWlHMT6
	ro01n3iRcEoEZigacBbIRo+ZyEWZQmcU43Ntk0e1V93AV4/+lXX1KsWKWC7zNeHhisM2GH
	fudyeAYXhi64DD5L+ZT0STpKpJAfBGSPd/8zLBDOXJ+waQeiLw6bPNAoSzyPLg==
Message-Id: <1663071245058.1178518167.1870445212@manjaro.org>
From: Furkan Kardame <f.kardame@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: pgwipeout@gmail.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable video output on Station
 M2
Date: Tue, 13 Sep 2022 12:18:20 +0000
In-Reply-To: <1736540.VLH7GnMWUR@phil>
References: <1736540.VLH7GnMWUR@phil>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_051835_413467_40158CBE 
X-CRM114-Status: GOOD (  17.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello

On Tuesday 13 September 2022 15:10:25 (+03:00), Heiko Stuebner wrote:

 > Hi,
 >
 > Am Montag, 27. Juni 2022, 22:22:08 CEST schrieb Furkan Kardame:
 > > Add the device tree nodes to enable video output on the Station M2.
 >
 > what is this "Station M2". You're changing the rk3566-roc-pc device,
 > which I think is "just" an SBC?

Station M2 is the same SBC with a case on.  Station M2 Link: 
https://www.firefly.store/goods.php?id=142
Rk3566-roc-pc is the barebone sbc without the casing.  : 
https://en.t-firefly.com/product/industry/rocrk3566pc.html

 >
 > Does the rk3566-roc-pc in general have a hdmi port as well?
Yes it have hdmi port.
 >
 >
 > Heiko
 >
 > > Enable the GPU and HDMI nodes and fix the GPU regulator range.
 > >
 > > Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
 > > ---
 > > .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 52 +++++++++++++++++++
 > > 1 file changed, 52 insertions(+)
 > >
 > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts 
b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
 > > index 57759b66d..dba648c2f 100644
 > > --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
 > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
 > > @@ -4,6 +4,7 @@
 > >
 > > #include <dt-bindings/gpio/gpio.h>
 > > #include <dt-bindings/pinctrl/rockchip.h>
 > > +#include <dt-bindings/soc/rockchip,vop2.h>
 > > #include "rk3566.dtsi"
 > >
 > > / {
 > > @@ -27,6 +28,17 @@ gmac1_clkin: external-gmac1-clock {
 > > #clock-cells = <0>;
 > > };
 > >
 > > + hdmi-con {
 > > + compatible = "hdmi-connector";
 > > + type = "a";
 > > +
 > > + port {
 > > + hdmi_con_in: endpoint {
 > > + remote-endpoint = <&hdmi_out_con>;
 > > + };
 > > + };
 > > + };
 > > +
 > > leds {
 > > compatible = "gpio-leds";
 > >
 > > @@ -149,6 +161,29 @@ &gmac1m0_clkinout
 > > status = "okay";
 > > };
 > >
 > > +&gpu {
 > > + mali-supply = <&vdd_gpu>;
 > > + status = "okay";
 > > +};
 > > +
 > > +&hdmi {
 > > + avdd-0v9-supply = <&vdda0v9_image>;
 > > + avdd-1v8-supply = <&vcca1v8_image>;
 > > + status = "okay";
 > > +};
 > > +
 > > +&hdmi_in {
 > > + hdmi_in_vp0: endpoint {
 > > + remote-endpoint = <&vp0_out_hdmi>;
 > > + };
 > > +};
 > > +
 > > +&hdmi_out {
 > > + hdmi_out_con: endpoint {
 > > + remote-endpoint = <&hdmi_con_in>;
 > > + };
 > > +};
 > > +
 > > &i2c0 {
 > > status = "okay";
 > >
 > > @@ -577,3 +612,20 @@ &usb_host0_ehci {
 > > &usb_host0_ohci {
 > > status = "okay";
 > > };
 > > +
 > > +&vop {
 > > + assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
 > > + assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
 > > + status = "okay";
 > > +};
 > > +
 > > +&vop_mmu {
 > > + status = "okay";
 > > +};
 > > +
 > > +&vp0 {
 > > + vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 > > + reg = <ROCKCHIP_VOP2_EP_HDMI0>;
 > > + remote-endpoint = <&hdmi_in_vp0>;
 > > + };
 > > +};
 > >
 >
 >
 >
 >
 >

-- 
--
With best regards
Furkan Kardame


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
