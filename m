Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C16C61DD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2026 17:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pVeg6xDyfkzHKDlPWyiVJUtgNJuWaQo6UUKNRA1KUA=; b=VInsyKUV1hKZiQ
	Kw3Z735IzfuyjE/bTAJskcsOP3UK1gOk8iGuyu08unyqGIkxB29luj+BHuMMvp77P+VLrvWciWPRM
	1hrZnrtAy6RElp4YB+JdevAhCEkHHsNFWm1fStYcYo4oMhFblyA9TMOZVZ1xpPeToOyUSsC5BPG2X
	9uYcDSuLb97tBO8uHghBMG8qj+Hkla9CAzzzlt99jpa7/m7OiwBbRL95SPN/bYEAx8XPfUzU1BVMg
	NNCqp7l++ZUEUqi8KW9D8XtT2qoQaiv17A71kCVvx1H1SI8xI6oxJnZ5KSr7SYPkIBGGST8AHWmrl
	8JlfhnkDBWj4oDLk018A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x15ow-0000000ACIM-1lfN;
	Mon, 31 Aug 2026 17:29:22 +0000
Received: from out-14.mta1.migadu.com ([2001:41d0:203:375::e] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x15or-0000000ACHH-32RQ
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Aug 2026 17:29:19 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=1kSqhe2+PT1a5oElxIG7Elgw45NvEJRmD8rNlzuc6uQ=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1788197354; v=1; x=1788802154;
 b=Eg+3TeghJpGSjh9G//MYnADdyR59XsqVK7/yHz2uiF/L9nqgoac8zkCiI+hDQ+FMeF6rdzU2
 shrQ79EMVaAl8/iUmaPDrHCMPb6dV5Zmp4+v9rZkHXA7Fj15X2SN/UzLc/pFX9uqpBSIQncy2vt
 i5YFBeOn3r7eEGzDuXhl66U94DbxGODBrD+hfqI+eYUuc8RkNDdJVLzY0V4R8PoIi2IqwOw2Hom
 bQduCWIHKUNW+C3xya5Jp1DM108azSvBHdb1qDepqLi7So2VlyRZppcyaINh5GmEIbm0IEuL+tx
 ui3h+QW/HALvJDMj5e16DnQQcPYmgDWC19jiQ1WvQ7jxQ==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 3bb6bfbe23dd3995;
	Mon, 31 Aug 2026 17:29:04 +0000
X-Mizu-Trace-ID: 3bb6bfbe23dd3995
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Mon, 31 Aug 2026 19:29:00 +0200
Message-Id: <DL3B1XH7K4WC.1ZXA6ANI8Q1A0@cknow-tech.com>
To: "Detlev Casanova" <detlev.casanova@collabora.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Johan
 Jonker" <jbx6244@gmail.com>, "Alex Bee" <knaerzche@gmail.com>, "Christian
 Hewitt" <christianshewitt@gmail.com>, "Robin Murphy"
 <robin.murphy@arm.com>, "Nicolas Frattaroli"
 <frattaroli.nicolas@gmail.com>, "Nicolas Frattaroli"
 <nicolas.frattaroli@collabora.com>, "Kuninori Morimoto"
 <kuninori.morimoto.gx@renesas.com>
Cc: <kernel@collabora.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 5/7] arm64: dts: rockchip: Rename rk356x HDMI audio card
From: "Diederik de Haas" <diederik@cknow-tech.com>
X-Mailer: aerc 0.22.0-9-ge948bb7230f4
References: <20260831-fix-rockchip-hdmi-audio-names-v1-0-5b155ae05293@collabora.com> <20260831-fix-rockchip-hdmi-audio-names-v1-5-5b155ae05293@collabora.com>
In-Reply-To: <20260831-fix-rockchip-hdmi-audio-names-v1-5-5b155ae05293@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_102918_336904_6F7821A4 
X-CRM114-Status: GOOD (  13.02  )
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

On Mon Aug 31, 2026 at 4:20 PM CEST, Detlev Casanova wrote:
> Rename the card from "HDMI" to "RK356x HDMI" so it identifies the SoC
> in user-visible ALSA fields and no longer collides with the identical
> "HDMI" string used by other Rockchip SoCs.
>
> Fixes: 697ee8546e241 ("arm64: dts: rockchip: Add HDMI audio nodes to rk356x")
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index a5832895bd39..98785c812fc4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -150,7 +150,7 @@ scmi_clk: protocol@14 {
>  
>  	hdmi_sound: hdmi-sound {
>  		compatible = "simple-audio-card";
> -		simple-audio-card,name = "HDMI";
> +		simple-audio-card,name = "RK356x HDMI";

Move the name property to rk3566.dtsi and rk3568.dtsi and use their actual
SoC name, thus RK3566 and RK3568?

Cheers,
  Diederik
>  		simple-audio-card,format = "i2s";
>  		simple-audio-card,mclk-fs = <256>;
>  		status = "disabled";



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
