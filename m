Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DB0C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 08:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkZrgL96VS0o78rF5glyLAAOTnLUo6upuqIODUSSIzk=; b=MURKXOxyGzw4p1
	ICobNM4dMp5f8akY0Uzxanl2QzH5ugai4IFGSot7inO9U7ZfpMs4uI3nneJNnnN00LLjnrw3hJUMt
	9DT81yfoRy/DbjIVNhye7hf78BqDFb4RapDCcL31XGezRBkaWiU5JQnQuSiA0v8u/gYHE6ZeOUWiv
	68HhMA/L+Z4wOQTW5Oe6PKNZBsJJ8DHi8VeqUSYQGoJQ3cRSVuU/806fkzUjJ0iRpRaVSRmrzraiI
	RhyTxfBt2TKs0HwEVzuHNkHbfxNwU5+cXuIZFFjug4yYoYftXI8K/YboLkSY6vAlFOEuyCxcCb/o+
	L05Bs0YyLywW1BcYBAMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYLzw-0000000AaHR-2tPP;
	Mon, 29 Jul 2024 08:44:52 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYLzT-0000000Aa7I-22sO;
	Mon, 29 Jul 2024 08:44:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1722242658; bh=J0bsix4Qoxdi1CXAtomePnZehGLX5EbMnGJ5fiPl1WI=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=155WS3aFv6TUpvsEiUAz/lHlTuEuHSFjqqhRPD6fF6uxXUb/HYszg3gCQXwOIwZuY
	 ZRnNNfxRBQnRJN0EZg+A1Q9sZX+u/H234clES5Cq9XjLmR0YozbADzv9ASGUenWBbt
	 QUwbXDDv52YuxsLnFoJV5DqEp/+9mOaW/im7UskI=
Date: Mon, 29 Jul 2024 10:44:12 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org, 
	krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org, 
	arend.vanspriel@broadcom.com, efectn@protonmail.com, jagan@edgeble.ai, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, arend@broadcom.com, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, duoming@zju.edu.cn, bhelgaas@google.com, 
	minipli@grsecurity.net, brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, 
	nick@khadas.com
Subject: Re: [PATCH v4 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
Message-ID: <qetrwlvqekobedpwexeltaxqpnemenlfhky2t2razmcdtwlcv3@qdlesuiac2mr>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Dragan Simic <dsimic@manjaro.org>, Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org, 
	krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org, 
	arend.vanspriel@broadcom.com, efectn@protonmail.com, jagan@edgeble.ai, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, arend@broadcom.com, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, duoming@zju.edu.cn, bhelgaas@google.com, 
	minipli@grsecurity.net, brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, 
	nick@khadas.com
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
 <20240729070102.3770318-5-jacobe.zang@wesion.com>
 <d7068c96e102eaf6c35a77eb76cd067d@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7068c96e102eaf6c35a77eb76cd067d@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_014424_000620_795C3410 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jul 29, 2024 at 09:12:20AM GMT, Dragan Simic wrote:
> Hello Jacobe,
> 
> [...]
>
> > 
> > +	clk = devm_clk_get_optional_enabled(dev, "lpo");
> > +	if (IS_ERR(clk))
> > +	if (clk) {
> 
> These two lines looks really confusing.  Shouldn't it be just a single
> "if (!IS_ERR(clk)) {" line instead?

It should be `!IS_ERR(clk) && clk` otherwise the debug message will be
incorrect.

Kind regards,
	o.

> > +		brcmf_dbg(INFO, "enabling 32kHz clock\n");
> > +		clk_set_rate(clk, 32768);
> > +	}
> > +
> >  	if (!np || !of_device_is_compatible(np, "brcm,bcm4329-fmac"))
> >  		return;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
