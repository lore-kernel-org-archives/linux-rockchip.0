Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 940E2EB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 17:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Cc:To:From:Message-Id:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLXnX/RA2/eqxI695mzVUIeI4BHDZViQVt3t/KJPNU8=; b=Wy0FKfg5kJL3lW
	0zHFqITMGsbvgzETyQO0FPRD7BYFNP6hyCMmTXSmi6h+C91XRJ4lUg+QOMdQc5zjFkyi1g9KE3xAH
	VR9+cRtMHEd3Vrod4XunQw+byuiKVPIp/5qb0rjHRY3DPWum4niv7mWSUpamAjT48kiTDlHqUktda
	tXsb/QVmacqdTAgpKN5ysHAM81ZFfso9Xxb2YfI5bqiD9TfmrX8q+fR7NBI+HOQurNvwyWPuEbspe
	U9QXmx59YILHURAB9PeWPtjJC4jDAVpsdP41RXLD6KOEDGXNkkz4mHgL5/JNJNOGq9VZFomM400mc
	ma38KxFUdovsjhUzaoRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeno-00Bt4R-0p;
	Tue, 20 Jun 2023 17:06:00 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBenk-00Bt3H-1r;
	Tue, 20 Jun 2023 17:05:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687280753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rTmTy1WXEGmdcqhzGnAmxnaNlJl7OG70Wq3ri14vgRY=;
	b=l1ezp8VHu1KMPm3mGn5zw3f5IbR53qX+AwhtlwlyknMpFjPPjuC9R1/GRoXGM8Stf5EK/g
	rrw8ANWqmK7HwDt9sQkLmjbrQchgs3/drSDuMZbdDpOU8Mgbfm/58J+pmkO7OhVwyltOKy
	TQfZcOYg6W9QrS/ZIyLsRJfovgF5dshyLmptWRTEcaIhARazWWg7/dbYmxOJ05CzrqDYLN
	x9984v3xTjtD1tsMfT4OrL8Uxs9FZgmGMj3m4GaxqtQKVY2mYVOve3E0TxCZuApaT9KqKw
	xLaaIvHgw2PYClD6YTKg0BaFDtSQ3p0zeFf7tAWVogAxQp5sc6cSz5XDkRB/tg==
Message-Id: <1687280004029.3690769854.982412891@manjaro.org>
From: Furkan Kardame <f.kardame@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 heiko@sntech.de, broonie@kernel.org, deller@gmx.de, dsterba@suse.com,
 arnd@arndb.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCHv3 2/2] arm64: dts: rockchip: add dts for Firefly
 Station P2 aka rk3568-roc-pc
Date: Tue, 20 Jun 2023 17:05:48 +0000
In-Reply-To: <c020531e-c56e-7606-1846-5ca7332de96f@linaro.org>
References: <c020531e-c56e-7606-1846-5ca7332de96f@linaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_100557_068171_4B8940E5 
X-CRM114-Status: GOOD (  12.45  )
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




On Tuesday 20 June 2023 09:19:22 (+03:00), Krzysztof Kozlowski wrote:

> On 19/06/2023 20:48, Furkan Kardame wrote:
> > Add dts for Firefly Station P2.
> > Working IO:
> > * eMMC
> > * HDMI
> > * LAN
> > * LED
> > * SD Card
> > * UART
> > * USB2
> > * USB3
> ...
> 
> > +	};
> > +
> > +	hdmi-con {
> > +		compatible = "hdmi-connector";
> > +		type = "a";
> > +
> > +		port {
> > +			hdmi_con_in: endpoint {
> > +			remote-endpoint = <&hdmi_out_con>;
> 
> Missing indentation.

I am not able to see any missing indentation in the patch. 
I did run checkpatch and did not find any such warning.
Please advice in detail ?


> 
> ...
> 
> > +
> > +	vcc3v3_lcd0_n: vcc3v3-lcd0-n-regulator {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc3v3_lcd0_n";
> > +		regulator-boot-on;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> 
> How do you turn this regulator off in suspend?

These nodes needs to be deleted as they are not used.
I will remove vcc3v3_lcd0_n and send a new patch.

> 
> > +		};
> > +	};
> > +
> > +	vcc3v3_lcd1_n: vcc3v3-lcd1-n-regulator {
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc3v3_lcd1_n";
> > +		regulator-boot-on;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> 
> Same question here.
vcc3v3_lcd1_n will be removed.
> 
> > +		};
> > +	};
> > +};
> 
> 
> 
> Best regards,
> Krzysztof
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
