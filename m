Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFBC4C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 17:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7mYdn+c0OPTfNN7LODa3EH5DB9mnnznxy5wEsCxgB8=; b=zINe0KvNcTyglM
	fcQC8ZWlhVJdsY3C7ELdlee3iuti1dcICOgfAziV8GOX/I9k8fHxHD9VD8RkHWkXVWwL596780WM4
	xxA8d0RA6cGmS9krAjY+668wzx2cw+j2sSWYdbwLkHkWszcN6K/QeP6LSHUUOFQqJjVgyMh9nAWhN
	N/BVIxUQpcTRkEWPv6eZYucnntjBbM9UYgc3z0bDBwt4v7/VTe5RV1tESTYehTWujhpy8I3Ps9a75
	iqVl/tojLh24hiw8FHWmAh/7G1EnSrXOokWXZMWXkRhjNeJozdxUM9yLEK7sB16KGPfS4mPB6oU3x
	+D1HOhc5p/twC7ITssgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ronhO-00000000vC4-2AW4;
	Mon, 25 Mar 2024 17:01:26 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ronhK-00000000v8h-2SI3
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 17:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711386079;
	bh=J65GG3qBBSnWUcbMSJgEcFyXxA8qwEWeK8c+V32sdPk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HVnyuDHnc+yeAIvf6f4BgaiUKTqwveBDuAHewSzDfehGNtTWgFvi9HHkYe4poG3d2
	 aMk3M2gVgAH0oOWxeJaYHmdmK4/xNzs9Z20IPWiq4V/mBtEMQx1D2RDT043Uq42W0M
	 fiBpin06pwJv0c7BSdI9LDnlr8vHFPJf8eO04IWMSM/z8iO/i1HqkgLfN5STnoXdH6
	 y+Zs2t6cv5vjfog2PSPj279F4ofNvIPbLalnwUYHavrI29Zp2NaOzQDu2tN+4vr5AY
	 nk/NOMZPm6H5R/GUxpzFejsuonOVIQY/EglTHfsmPycijd+FSXvVGjtwEBTVEQAVjO
	 sIayP/IXBvgbQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D353837820E1;
	Mon, 25 Mar 2024 17:01:18 +0000 (UTC)
Date: Mon, 25 Mar 2024 18:01:17 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v1 3/4] arm64: dts: rockchip: rk3588-rock5b: Enable GPU
Message-ID: <20240325180117.39d72749@collabora.com>
In-Reply-To: <a6uu7b3y7d4nirxbplc5cj4oeuyblx2grpvvldeovofhx3tnqc@dlse3vixhpws>
References: <20240325153850.189128-1-sebastian.reichel@collabora.com>
	<20240325153850.189128-4-sebastian.reichel@collabora.com>
	<20240325164441.1dab4018@collabora.com>
	<a6uu7b3y7d4nirxbplc5cj4oeuyblx2grpvvldeovofhx3tnqc@dlse3vixhpws>
Organization: Collabora
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.38; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_100123_520722_BF09325C 
X-CRM114-Status: GOOD (  26.89  )
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

On Mon, 25 Mar 2024 16:58:47 +0100
Sebastian Reichel <sebastian.reichel@collabora.com> wrote:

> Hi,
> 
> On Mon, Mar 25, 2024 at 04:44:41PM +0100, Boris Brezillon wrote:
> > On Mon, 25 Mar 2024 16:37:20 +0100
> > Sebastian Reichel <sebastian.reichel@collabora.com> wrote:
> >   
> > > From: Boris Brezillon <boris.brezillon@collabora.com>
> > > 
> > > Enable the Mali GPU in the Rock 5B.
> > > 
> > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>  
> > 
> > I don't remember writing this patch ;-), maybe I screwed authorship at
> > some point, dunno.  
> 
> mh, I cherry-picked the DT patches from your branch before
> cleaning them up.

Yep,  I probably wrote this patch and asked someone else to test. I
couldn't find any traces of this patch where I'm not flagged as the
author in any of my local branches.

> 
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > index 1fe8b2a0ed75..096ee7a98b89 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > > @@ -180,6 +180,11 @@ &cpu_l3 {
> > >  	cpu-supply = <&vdd_cpu_lit_s0>;
> > >  };
> > >  
> > > +&gpu {
> > > +	mali-supply = <&vdd_gpu_s0>;
> > > +	status = "okay";
> > > +};
> > > +
> > >  &i2c0 {
> > >  	pinctrl-names = "default";
> > >  	pinctrl-0 = <&i2c0m2_xfer>;
> > > @@ -470,6 +475,7 @@ rk806_dvs3_null: dvs3-null-pins {
> > >  
> > >  		regulators {
> > >  			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
> > > +				regulator-always-on;  
> > 
> > Hm, should we mention why the regulator is always on here?  
> 
> In case of the EVB1 it's needed because the generic coupler driver
> cannot handle regulators that are not always on.

Ah, okay. I thought I added that for a different reason.

> I'm not sure why
> it was added for the Rock 5B. I will check if it works without that
> flag.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
