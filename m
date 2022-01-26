Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57D0AC28CF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 11:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H87/lE8C73MlB558hJvvtmDgvLXqNNEn2iCOWbBx2mU=; b=aTvLXEbO6rMYi6
	bCo9f/5iRPUstwIL9SrXKtcFsNce+SIvoPBEjiU+fozEhhMuA9/Njo004xiw4OWuZaS8DmB/xKGCi
	B6KTBszymkcU/HZo6xCNrlwR64GDTlvzQvcQKNJuoazPN05JKDPjFLYM0O8nlXkuCwEPB/Bmv4jq3
	YpxJEAaBD5M1zk7Ygal4NzN62l6/+C+gK+M/+3EwHj1ILNnGTj2JFlex6m/mzJkzMKWe2a0BYIOD9
	M7+/yguKCBUzWV4hwLs++5948lzxgivFMLcQWNTv8vWI407VTRM/XsA7dkddNWaDnMb7NSh1v6t8p
	6s2IGPvCQO5A+tmPCPnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCgPQ-00BSju-Mq; Wed, 26 Jan 2022 11:24:16 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCgIr-00BQve-6W; Wed, 26 Jan 2022 11:17:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=h/+jy8zONBbPEtv/A67VifATmxWwSbkDPnarJPgcQS0=; b=73Bzu
 gCJwQRhve2wwkOJRFfsB910Q1T+oS6L/8BpFXtIIj1AQkTxBcl/D0RZYqe6Y+UgbN8mbepUtvTxq8
 j8tI2WJFug3+gBW3G499kTkoLn/fbO/3gLMR5ITONbIfKV8uThHhtHz1Z+JJy4T88eZVd+VnuHqvO
 wkAZE+NfSLlvE4dXWvVPU5s+7HudhIt5srcsZU8ZsjP8u1+MngfYLDE08tFLuFR+9OeoOk8qFuNUW
 0rk/rsN6HzW6HaghRg0pXlRQNhIwyG45qgB7i7I7dNdx5uD5M44B8YJUQji/H9wJOXJP9Db4s+XB8
 5kjey2nPc/Qt5g+QmcGLd0eaPk/zw==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nCgIn-0002fy-3t; Wed, 26 Jan 2022 11:17:25 +0000
Date: Wed, 26 Jan 2022 11:17:19 +0000
From: John Keeping <john@metanate.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: fix MMC compatibles for rk3288
Message-ID: <YfEtv+UIT7Y+d2lx@donbot>
References: <20220125115007.3138311-1-john@metanate.com>
 <7e935740-66a3-da07-a196-0584dab310b9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e935740-66a3-da07-a196-0584dab310b9@gmail.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_031729_299519_FF12E321 
X-CRM114-Status: GOOD (  23.12  )
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

Hi Johan,

On Tue, Jan 25, 2022 at 01:14:21PM +0100, Johan Jonker wrote:
> MMC aliases should go in the dts board files.
> Sort on reg address, based on availability and without number gab.
> (For rk3288 a lot of boards to change. That's why it wasn't done
> yet...Could someone pick that up?)

Since there aren't any mmc aliases for rk3288 at the moment, I'll drop
this and send a patch adding them for the one board I have access to.

At some point the nonstandard mshc aliases should be removed, but it
may be best to keep them around for a while given that 5.17 will be the
first kernel that doesn't use these as a weird mechanism for per-port
settings.

> On 1/25/22 12:50, John Keeping wrote:
> > Prior to commit 4bac670aa5cb ("mmc: dw_mmc: rockchip: use common_caps")
> > the mshcN aliases were used in an unusual way by the dw_mmc driver and
> > affected behaviour.  Now that this has been fixed, rename the mmc
> > aliases to use the standard form.
> > 
> > Signed-off-by: John Keeping <john@metanate.com>
> > ---
> >  arch/arm/boot/dts/rk3288.dtsi | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> > index aaaa61875701..50fa0a4652b5 100644
> > --- a/arch/arm/boot/dts/rk3288.dtsi
> > +++ b/arch/arm/boot/dts/rk3288.dtsi
> > @@ -25,10 +25,10 @@ aliases {
> >  		i2c3 = &i2c3;
> >  		i2c4 = &i2c4;
> >  		i2c5 = &i2c5;
> > -		mshc0 = &emmc;
> > -		mshc1 = &sdmmc;
> > -		mshc2 = &sdio0;
> > -		mshc3 = &sdio1;
> > +		mmc0 = &emmc;
> > +		mmc1 = &sdmmc;
> > +		mmc2 = &sdio0;
> > +		mmc3 = &sdio1;
> >  		serial0 = &uart0;
> >  		serial1 = &uart1;
> >  		serial2 = &uart2;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
