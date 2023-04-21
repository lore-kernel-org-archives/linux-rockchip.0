Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55A4CC7618E
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 12:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsaIB6/37Jh9GFvahnPxXYhWdN7HddEwnewupITrI1s=; b=OUDKo0wJGs5MmY
	P706kvYw4HDnwl/0tReO09L3tqqdAZe6DbV3Esdsnp0Gzf3bYsSHeZ1fzD0R2v4wKIdlN4RI5ZgRH
	xJD40ZCgF2cSMXT+rZ/IThtiFxObm9rUW3TV8mX5s7PbJswVP6HDBcTXv4GT0JoKVJVBD6ZT/NnZq
	moghDsGbQAF/1PjcrcVOjlgMO1gWMHIeZEBfsrL6zTxe08xDVnGCP1UuN3MKNjXqBQ7eCwCuGceb8
	3zKBrmQvE24N+681LLV/3r3N0V9VaMSr++nLoyR5qPkDs+DBkIQvKa5dM5HcWTTBrJm96fBluuv9J
	J5ip3HHL7j+OgHNpZFXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppq3b-00At3I-1F;
	Fri, 21 Apr 2023 12:40:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppq3U-00At1S-2F;
	Fri, 21 Apr 2023 12:40:02 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ppq3R-0002eq-SZ; Fri, 21 Apr 2023 14:39:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix nEXTRST on SOQuartz
Date: Fri, 21 Apr 2023 14:39:56 +0200
Message-ID: <6259690.irdbgypaU6@phil>
In-Reply-To: <12191318.O9o76ZdvQC@archbox>
References:  <20230419171731.28641-1-frattaroli.nicolas@gmail.com>
 <8914603.GXAFRqVoOG@phil> <12191318.O9o76ZdvQC@archbox>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_054000_740389_2E0143F8 
X-CRM114-Status: GOOD (  20.81  )
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

Am Freitag, 21. April 2023, 14:38:48 CEST schrieb Nicolas Frattaroli:
> Hello,
> 
> On Friday, 21 April 2023 13:58:58 CEST Heiko Stuebner wrote:
> > Hi,
> > 
> > Am Mittwoch, 19. April 2023, 19:17:31 CEST schrieb Nicolas Frattaroli:
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > > b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi index
> > > ce7165d7f1a1..f589a4fdaccb 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > > @@ -65,6 +65,17 @@ led_work: led-work {
> > > 
> > >  		};
> > >  	
> > >  	};
> > > 
> > > +	nextrst_pin: nextrst-pin-regulator {
> > > +		compatible = "regulator-fixed";
> > > +		enable-active-high;
> > > +		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&nextrst_h>;
> > > +		regulator-always-on;
> > > +		regulator-boot-on;
> > > +		regulator-name = "nextrst";
> > > +	};
> > > +
> > 
> > I agree with the sentiment and of course the rationale of the change,
> > but not necessarily with the implementation ;-) .
> > 
> > Why is this done as a regulator?
> > 
> > If you want the nextrst line to be high, you could just use a gpio-hog
> > for the line instead of doing a (fake?-)regulator.
> 
> Simply put: because I didn't know gpio hogs were a thing. I'll send a V2
> to correct this. Thanks for pointing it out!

great, thanks :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
