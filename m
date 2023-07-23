Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5369C001DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jul 2023 12:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1hUt9vMXTbhYaPs0J3eX4aqdpntjSYSZqS/+3balgs=; b=W7zGzvPQ0/w3qf
	VxGSor96yL1Be8HOCSRZiYJfn3FlslNUFjGLmeg425CJQ0Q9lgnpykYSPu3FmM4D93cj7PQ/EPevP
	azSB+U7FtjCC599fJ3VTGnaLmeGSMUT7x7AEpysQ3GaNWq/Mm3tc+5KsbQ1na75+IThZx1efO7Uwg
	Hv3Zq9NDPVBIAGolh+thqh6+JcMix4YWmfvl324GP7rzDxQOsMhwSDdbGCEJjzCsDH8fCJd85LSkt
	J10NPVHRRt+SK2wblBCRvUTN2OGO1xHObuF1Kw6rmg+nzQ6H4SqLbjP1xOLDy6k30j03CVcmJXJhH
	6HBKxDLreyoGATPXKhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNYMa-0014jh-0c;
	Sun, 23 Jul 2023 12:39:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNYMW-0014ib-27;
	Sun, 23 Jul 2023 12:39:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D064660C1F;
	Sun, 23 Jul 2023 12:38:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B11D6C433C7;
	Sun, 23 Jul 2023 12:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690115939;
	bh=DqMrwul8Z+Kp+FVoVrlZHdVil5ffk4Br9Pj1Hqbnxm4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Ob77RBPFBoVTTNibSWxMjo0wYIwPaVtL0+Hj7xKLbn+8iwdFiEl306vNqyY02UYoL
	 jPYeKJ+MmA8RU2waU4uBNAvx+/k8LWhw1LvDiwwxOYcT8A1N61ZbBJwn2kgvupboS1
	 BS/Ly2Fwldf5uZurcjDRKOMfZVR+pXchkx2F9ETNpzNFputSU9qCWgDPTK3ficVtVB
	 hkKcaRcnMnpipcBvew2sRWfQD5EKlTmzr9CfzlxoWvfTNZGhet4PsFi1FmXGnXleMF
	 gtaTvOuB9gZlAqFWvC0RyHGmfCN2287EnLmncsKSc1B6d50Aw/+XGT9xje7oGzxj+G
	 JP70unohiRQRQ==
Date: Sun, 23 Jul 2023 13:38:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Alexandru Tachici <alexandru.tachici@analog.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Claudiu Beznea
 <claudiu.beznea@microchip.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio
 <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Orson Zhai
 <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan
 Zhang <zhang.lyra@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai
 <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland
 <samuel@sholland.org>, Crt Mori <cmo@melexis.com>,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] iio: adc: Explicitly include correct DT includes
Message-ID: <20230723133848.5dc96150@jic23-huawei>
In-Reply-To: <20230715182510.3d09970c@jic23-huawei>
References: <20230714174628.4057920-1-robh@kernel.org>
	<20230715182510.3d09970c@jic23-huawei>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230723_053900_802700_E6821190 
X-CRM114-Status: GOOD (  18.37  )
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

On Sat, 15 Jul 2023 18:25:10 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> On Fri, 14 Jul 2023 11:46:26 -0600
> Rob Herring <robh@kernel.org> wrote:
> 
> > The DT of_device.h and of_platform.h date back to the separate
> > of_platform_bus_type before it as merged into the regular platform bus.
> > As part of that merge prepping Arm DT support 13 years ago, they
> > "temporarily" include each other. They also include platform_device.h
> > and of.h. As a result, there's a pretty much random mix of those include
> > files used throughout the tree. In order to detangle these headers and
> > replace the implicit includes with struct declarations, users need to
> > explicitly include the correct includes.
> > 
> > Signed-off-by: Rob Herring <robh@kernel.org>  
> 
> Hi Rob,
> 
> Just one in here that I noticed isn't quite right. I'd have fixed it 
> up (and can still do so if nothing else comes up) but I want to give
> this more time on list anyway so won't pick it up today.

Fixed up whilst applying.

Applied to the togreg branch of iio.git and pushed out as testing to see
if 0-day can find anything we missed.

Thanks,

Jonathan

> 
> Jonathan
> 
> > diff --git a/drivers/iio/adc/stmpe-adc.c b/drivers/iio/adc/stmpe-adc.c
> > index 67518e460e05..55e36b40fdf5 100644
> > --- a/drivers/iio/adc/stmpe-adc.c
> > +++ b/drivers/iio/adc/stmpe-adc.c
> > @@ -14,9 +14,10 @@
> >  #include <linux/kernel.h>
> >  #include <linux/mfd/stmpe.h>
> >  #include <linux/module.h>
> > -#include <linux/of_platform.h>
> > +#include <linux/of.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/device.h>
> > +#include <linux/of.h>  
> 
> Duplicate include.
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
