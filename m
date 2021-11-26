Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D44ABC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 12:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwpJh1aPBVUTFXaTbaOanQliIu8GJE7Ecmt3tuGpdtI=; b=ANWB5Md6tBWMQ/
	EP4ZF8OBzzw5+sYNQpgDOSDxb9GWXBR3A2GIdhDy7bZ01LZxtw0L01AjorndtHpf0Dy/ARvi9FBbd
	AYeMF2O4x/9StWxpjFCjY8Uz6CCboXvGo2wKRwfT8sWkThViTWSMg7jIwOVqcr0LX3EmQ4QPJAl6m
	hIYn58MflYG75GYIq9e7q92MdVUt75sS1NzgAaOSNcOjxpB8ZsWQHxkcFsraHS+Xoc7YKz3pC/Sfx
	twKyoY+jhNGRq5O6yhT7vEcRwkU2/1HNrqe8SP+aYyiMrtqlh4aKoX2+xe07LyVHbc9zrFt0jrMqK
	zKb+drzMjrKi9CFTjprQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqadf-00ASGE-PL; Fri, 26 Nov 2021 12:47:39 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqaVZ-00APWN-ON; Fri, 26 Nov 2021 12:39:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=6Q8FkNR0DNeahIkoGpQtYJLzOambxup0KYyLRA9vCcY=; b=hjUMA
 LFrtuLT9/WLkRW0wCzOVZzXTcy0gZsOZt0xnR9prHD9xP991ArgEVv91sadR6YmjKUf8H+dBJS4XI
 jpfipRFa9k76XKDJQhhOYdiDHVYlnXHxCvKJr+zZYeo4/vXFyy9Z2VUGET8+ARF+ZM7+TKlbdbIrd
 79G2asIgrjBrk9/v1p6rcLSBodwCOxYvNsM4YA9HWGxyCmaWNrcRYcT7WqJbiT+P0/zUeqv973zAs
 TJljWxj28IWz+vm3b1vNSdHe2yMdgx/wWys7Cxqlyo2guwQevyXIlVftaoTWTeibzfDCOeCiMTfsf
 qCqTy/ELzRKDsi1GOs6DvBYR//wog==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mqaVM-0005gT-LX; Fri, 26 Nov 2021 12:39:04 +0000
Date: Fri, 26 Nov 2021 12:39:03 +0000
From: John Keeping <john@metanate.com>
To: Jaehoon Chung <jh80.chung@samsung.com>
Cc: linux-mmc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 4/4] mmc: dw_mmc: exynos: use common_caps
Message-ID: <YaDVZ94vQ/O5djuA@donbot>
References: <20211124184603.3897245-1-john@metanate.com>
 <CGME20211124184628epcas1p4130e325d30e2e32113f5c5cdf2d6c85d@epcas1p4.samsung.com>
 <20211124184603.3897245-5-john@metanate.com>
 <bfb7cc7f-d01a-f99e-2085-d1b3e252d7dd@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bfb7cc7f-d01a-f99e-2085-d1b3e252d7dd@samsung.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_043917_842751_9E5B5D77 
X-CRM114-Status: GOOD (  23.85  )
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

On Fri, Nov 26, 2021 at 08:38:20AM +0900, Jaehoon Chung wrote:
> On 11/25/21 3:46 AM, John Keeping wrote:
> > Move the common MMC_CAP_CMD23 capability to common_caps so that only the
> > special case of MMC_CAP_1_8V_DDR and MMC_CAP_8_BIT_DATA are set via
> > caps/num_caps.  Both of those can, and should, be set via device tree
> > properties instead, so we can now say that exynos_dwmmc_caps is only
> > used for backwards compatibility.
> > 
> > Signed-off-by: John Keeping <john@metanate.com>
> 
> 
> Reviewed-by: Jaehoon Chung <jh80.chung@samsung.com>
> 
> Added minor comment..
> 
> > ---
> >  drivers/mmc/host/dw_mmc-exynos.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/mmc/host/dw_mmc-exynos.c b/drivers/mmc/host/dw_mmc-exynos.c
> > index c2dd29ef45c6..f76eeeb0cc53 100644
> > --- a/drivers/mmc/host/dw_mmc-exynos.c
> > +++ b/drivers/mmc/host/dw_mmc-exynos.c
> > @@ -526,15 +526,16 @@ static int dw_mci_exynos_prepare_hs400_tuning(struct dw_mci *host,
> >  
> >  /* Common capabilities of Exynos4/Exynos5 SoC */
> >  static unsigned long exynos_dwmmc_caps[4] = {
> > -	MMC_CAP_1_8V_DDR | MMC_CAP_8_BIT_DATA | MMC_CAP_CMD23,
> > -	MMC_CAP_CMD23,
> > -	MMC_CAP_CMD23,
> > -	MMC_CAP_CMD23,
> > +	MMC_CAP_1_8V_DDR | MMC_CAP_8_BIT_DATA,
> > +	0,
> > +	0,
> > +	0,
> >  };
> 
> It can be removed all things.

Do you mean that the MMC_CAP_1_8V_DDR | MMC_CAP_8_BIT_DATA entries are
not needed at all?

I know those can be set via DT but I don't think any Exynos DTs are
currently using mmc-ddr-1_8v, so removing MMC_CAP_1_8V_DDR looks like a
change in behaviour.

MMC_CAP_8_BIT_DATA looks easier to remove, although
exynos4412-p4note.dtsi seems to set the incorrect bus-width for mshc_0
so there would be a change of behaviour on that platform from removing
this.

Maybe it makes sense to add a warning in dw_mci_init_slot_caps() if any
new caps are set by drv_data->caps[ctrl_id], to make it clear that this
is deprecated.


Regards,
John

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
