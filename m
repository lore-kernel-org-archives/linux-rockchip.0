Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3535C7EE29
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jun 2023 10:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVWCOoWuMso/2/6vLpRItC/CNdcK9V5n/TEi/xc92Cc=; b=MCUCUuyQTiRTiG
	CXyZ1LsAcXM0xWqcmvRmO+l7CLn5bgrq9n2qEK29+3bi+8ANp3PmE38oJ5+Vv1TaprbH7OnUI3jxz
	rJ9KIr+NbxwxdF3oL/WDie9SxVmlFeYKaS1kRomS2uZx63KwfKPefgxaakQ7e3G0hncSlpLzh6oIW
	qEJWO1PRgCZ7yIz77C0MFTUiXACM8gNG1YUh0Z6yGDwiHoI9sJvYZ9uVKmrssprbzkZHABBbgOkRr
	+Uhy6SeRmYSJ6BMXHeiGPDGkrqAT8j2+bI5Trtelvt+yui6epdOHvi+iK1jqNqcy+/7VXRNM/1jnH
	aBSlpuSmF+4tQysEIQhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5kr0-00BohM-0V;
	Sun, 04 Jun 2023 10:20:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5kqx-00Bogb-0m;
	Sun, 04 Jun 2023 10:20:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1DC8860C11;
	Sun,  4 Jun 2023 10:20:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73D51C433EF;
	Sun,  4 Jun 2023 10:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685874049;
	bh=KNWTkBNxkUm0++34/5RGlpBQ8nek3uIrv2ErreqYNkw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ET68GUTN8XQJzGbSbl3yHcepbNoqbblEZuRWjiDbNT52xCz3Es63iVrSuT2hGzd6x
	 n52iZlrLTDbd7ipeLxVTqbZhITWiTJq0VrKNuWpzQ5iP/u6w6Dwyx1XB5FZmdyBUBt
	 Rde+1BNaRYyH0jHUAIugHRSYI1Szx4a/MNIlv4ytVGD4eyms/jj6xV/8naJ6Ej4ims
	 qJoxFCD5Zs+OoYg8dVqOGbx3bHVv4tBsnpq4hWVFCGxOt+buRU5gwDQPJIRcDqcM2H
	 uBsqjrXhoNqwWPM1Nxd+JH/qo0s+SqDb/xBgdjICr6YRq8D9omNpyqnZNcXOKMHORx
	 qGw0JU6f+hPsg==
Date: Sun, 4 Jun 2023 11:20:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: andy.shevchenko@gmail.com
Cc: Shreeya Patel <shreeya.patel@collabora.com>, lars@metafoo.de,
 heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 sebastian.reichel@collabora.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 gustavo.padovan@collabora.com, kernel@collabora.com,
 serge.broslavsky@collabora.com, Simon Xue <xxm@rock-chips.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v3 2/8] iio: adc: rockchip_saradc: Add support for
 RK3588
Message-ID: <20230604112043.43b1ada0@jic23-huawei>
In-Reply-To: <ZHunAIbK7-tIvsm1@surfacebook>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
	<20230603185340.13838-3-shreeya.patel@collabora.com>
	<ZHunAIbK7-tIvsm1@surfacebook>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_032051_340545_9F620909 
X-CRM114-Status: GOOD (  13.92  )
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

On Sat, 3 Jun 2023 23:48:00 +0300
andy.shevchenko@gmail.com wrote:

> Sun, Jun 04, 2023 at 12:23:34AM +0530, Shreeya Patel kirjoitti:
> > From: Simon Xue <xxm@rock-chips.com>
> > 
> > Add new start and read functions to support rk3588 device.
> > Also, add a device compatible string for the same.  
> 
> ...
> 
> > +/* v2 registers */
> > +#define SARADC2_CONV_CON		0x0
> > +#define SARADC_T_PD_SOC			0x4
> > +#define SARADC_T_DAS_SOC		0xc  
> 
> Can you use fixed-width values for all registers?
> 
> 	0x000
> 	0x004
> 	0x00c
> 
> > +#define SARADC2_END_INT_EN		0x104
> > +#define SARADC2_ST_CON			0x108
> > +#define SARADC2_STATUS			0x10c
> > +#define SARADC2_END_INT_ST		0x110
> > +#define SARADC2_DATA_BASE		0x120  
> 

I tidied this up whilst applying.

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
