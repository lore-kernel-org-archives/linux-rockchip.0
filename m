Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A1DDC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 11:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEgJH7J/0jJC9A4oIgO2yNg/Br9++wowqnrBhUYmyoc=; b=qZSESWN+3EHJkX
	5a43xteU0BF4JTlN5DAsttzA3TfCh515zeCvyWCAfA/D4YM5KJTEiYG5yZZIAjNJz4YMN32tL3QLF
	nZqmUC2kbOW5Qb5mLDjuVFrXkbRPcWcBeInqsSX7FK+ZlWjAXCtG8VXGZ3RW3KcH7bUvD0hIWkFrN
	nBaJCddzfMWqidbZRiIXHjF7GdeedZMMPmSenqRQGWEO3dz3JvcQ4ayJ0Pc7OrnEAoGcWUjXe3jDp
	h9Z3h4X+x2SybPH4AhSbb12Z/Ng0cyefsIoNIRu3O5Iiff5kgUeHUNvwfrL0qC2PutUFIBPyjR8wp
	CSk61WGlO81G4eoQU33Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU5d6-008uho-2E; Tue, 15 Mar 2022 11:46:20 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU5cn-008udM-Tp
 for linux-rockchip@lists.infradead.org; Tue, 15 Mar 2022 11:46:07 +0000
Received: by mail-wr1-x42d.google.com with SMTP id d7so1504427wrb.7
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Mar 2022 04:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Rdv/e+N9RKCYlsIErqQmgmfh2gKfHXTu33oNrZu8kz8=;
 b=A3sT6MX6alP9UYPt7IrmvkXHdXmB3JMuOlPq4cv+RzDnKvPmftpeAd+wAthVtuvLOR
 TSJO+rcz6oBZvdvAN+vzJ9NEj6GTF6cRmxuc0adN4a68O6VTPF5wu0XuMz0CDJSGN7ow
 LuyJjZTw1mbtujfagKf2egqCFVxq2LtfiPVSP+/AFN6n8ZxrhT5e/02J8aPcxFw39mmM
 mcHeoezJpT0TnNOXA0yAuwh+bIXrHnm2xmwfgFmKCw2BvzmEMbREvJBDu0YacB5YReET
 +2JPnJ8Xt92b1X3t6VJViRsCePeqhaoC+YN9Oj+x8d74MuI63JO4fWlo3Ry1SwJ7RRqj
 2BYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Rdv/e+N9RKCYlsIErqQmgmfh2gKfHXTu33oNrZu8kz8=;
 b=duHabOlRzruR1tJEjVpsy3dTjHFWI9MawmBpN6kX1HhDBMaPA6VY3jRDR8YPxAr0rV
 YGFC3nJ2BiS2xSz/fMmTbhL7mKkbqKcxRhp7ZFBR8NXuoFXHJidyW45dkDL6j5hrpi7+
 Pz2QsKgz4OxURxrj2mnadvGBjbvNOqxCgeFF5s/W0jflw6AYE2ohehoYiIoCWC3kIKKS
 AHU17i2pKhvfP+9iUZMNNYIs+YmphZhKW99k/Z4GKzuMr5s4WcHon7UNGUnqoh7iT/0I
 oJ31YLcLhCcQs5ip3MjZZjL42vRRwmWtxBIFyrlP1mk1r0UD8BDxwVOTw2aOKS1tBVHJ
 2ZSg==
X-Gm-Message-State: AOAM533kYvCUjHKFxE2UK6uqxZA+KBk1rwHfNvvjnRn2Qahsga2ZOApc
 8/0rRUKKtW6qf6VNCuMZcl7D3w==
X-Google-Smtp-Source: ABdhPJykGc/ExLOktxuXmqNruX8+buuAwFNvFbHd5E9TVnkBq1/hEOO0TA9qkLywG1gC+J8D1hckhg==
X-Received: by 2002:a05:6000:23a:b0:1f0:2359:9cd5 with SMTP id
 l26-20020a056000023a00b001f023599cd5mr19582416wrz.335.1647344759115; 
 Tue, 15 Mar 2022 04:45:59 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 bg18-20020a05600c3c9200b0037c2ef07493sm2380228wmb.3.2022.03.15.04.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 04:45:58 -0700 (PDT)
Date: Tue, 15 Mar 2022 12:45:55 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, john@metanate.com
Subject: Re: [PATCH v2 11/18] crypto: rockhip: do not handle dma clock
Message-ID: <YjB8c6gfPyUmzYpd@Red>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-12-clabbe@baylibre.com>
 <064626ad-129e-c7eb-5e08-12d93cffa993@gmail.com>
 <YioPGUFPOerQKak5@Red>
 <9295c92e-e054-8817-c96c-b33821643ce7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9295c92e-e054-8817-c96c-b33821643ce7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_044602_105071_6B749851 
X-CRM114-Status: GOOD (  36.72  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Thu, Mar 10, 2022 at 06:52:15PM +0100, Johan Jonker a =E9crit :
> =

> =

> On 3/10/22 15:45, LABBE Corentin wrote:
> > Le Fri, Mar 04, 2022 at 04:01:58PM +0100, Johan Jonker a =E9crit :
> >> Hi Corentin,
> >>
> >> Make your clock driver parsing portable.
> >>
> >> =3D=3D=3D
> >>     oneOf:
> >>       - const: rockchip,rk3288-crypto
> >>       - items:
> >>           - enum:
> >>               - rockchip,rk3328-crypto
> >>           - const: rockchip,rk3288-crypto
> >>
> >> Compatible string must be SoC related!
> >>
> >> rk3288 was the first in line that had support, so we use that as fall
> >> back string.
> >>
> >> =3D=3D=3D
> >>
> >> Make binding fit for more SoC types.
> >> Allow more clocks by using devm_clk_bulk_get_all.
> > =

> > Hello
> > =

> > Thanks for the hint of devm_clk_bulk_get_all, I will switch to it as it=
 simplify clock handling.
> > =

> >> Drop reset-names requirement for devm_reset_control_array_get_exclusiv=
e.
> >>
> >> =3D=3D=3D
> >>
> >> Use a patch order to prevent the scripts generate notifications.
> > =

> =

> > which scripts ?
> =

> For Linux users:
> ./scripts/checkpatch.pl --strict <patch1> <patch2>
> =

> Device tree maintainer rob+dt:
> A bot with unknown scripts.
> =

> > =

> >>
> =

> =

> - dts rk3288 clock removal
> =

> >> - dt-bindings conversion
> >>
> >> - add rk3328 compatible string in a separate patch
> + new clock names
> =

> =

> >>
> >> - your driver changes
> >>
> >> - dts patches
> >>
> >> A proposed maintainer must be able to submit patch series without erro=
rs. ;)
> >>
> >> =3D=3D=3D
> >>
> >> When you remove a clock in a YAML conversion you must add a note to the
> >> DT maintainer.
> >>
> >> =3D=3D=3D
> >>
> >> Johan
> >>
> >> On 3/2/22 22:11, Corentin Labbe wrote:
> >>> The DMA clock is handled by the DMA controller, so the crypto does not
> >>> have to touch it.
> >>>
> >>> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> >>> ---
> >>>  drivers/crypto/rockchip/rk3288_crypto.c | 16 +---------------
> >>>  drivers/crypto/rockchip/rk3288_crypto.h |  1 -
> >>>  2 files changed, 1 insertion(+), 16 deletions(-)
> >>>
> >>> diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto=
/rockchip/rk3288_crypto.c
> >>> index 94ef1283789f..645855d2651b 100644
> >>> --- a/drivers/crypto/rockchip/rk3288_crypto.c
> >>> +++ b/drivers/crypto/rockchip/rk3288_crypto.c
> >>> @@ -40,15 +40,8 @@ static int rk_crypto_enable_clk(struct rk_crypto_i=
nfo *dev)
> >>>  			__func__, __LINE__);
> >>>  		goto err_hclk;
> >>>  	}
> >>> -	err =3D clk_prepare_enable(dev->dmaclk);
> >>> -	if (err) {
> >>> -		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
> >>> -			__func__, __LINE__);
> >>> -		goto err_dmaclk;
> >>> -	}
> >>> +
> >>>  	return err;
> >>> -err_dmaclk:
> >>> -	clk_disable_unprepare(dev->hclk);
> >>>  err_hclk:
> >>>  	clk_disable_unprepare(dev->aclk);
> >>>  err_aclk:
> >>> @@ -59,7 +52,6 @@ static int rk_crypto_enable_clk(struct rk_crypto_in=
fo *dev)
> >>>  =

> >>>  static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
> >>>  {
> >>> -	clk_disable_unprepare(dev->dmaclk);
> >>>  	clk_disable_unprepare(dev->hclk);
> >>>  	clk_disable_unprepare(dev->aclk);
> >>>  	clk_disable_unprepare(dev->sclk);
> >>> @@ -199,12 +191,6 @@ static int rk_crypto_probe(struct platform_devic=
e *pdev)
> >>>  		goto err_crypto;
> >>>  	}
> >>>  =

> >>
> >>> -	crypto_info->dmaclk =3D devm_clk_get(&pdev->dev, "apb_pclk");
> >>> -	if (IS_ERR(crypto_info->dmaclk)) {
> >>> -		err =3D PTR_ERR(crypto_info->dmaclk);
> >>> -		goto err_crypto;
> >>> -	}
> >>> -
> >>
> >> rk3288:
> >>  		clocks =3D <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
> >> -			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
> >> -		clock-names =3D "aclk", "hclk", "sclk", "apb_pclk";
> >> +			 <&cru SCLK_CRYPTO>;
> >> +		clock-names =3D "aclk", "hclk", "sclk";
> >>
> >>
> >> rk3328:
> >> +		clocks =3D <&cru HCLK_CRYPTO_MST>, <&cru HCLK_CRYPTO_SLV>,
> >> +			 <&cru SCLK_CRYPTO>;
> >> +		clock-names =3D "aclk", "hclk", "sclk";
> >>
> >> The HCLK_CRYPTO_MST not is related to ACLK_CRYPTO.
> >> You are reusing rk3288 names to not to change the driver.
> >> Give it an other name.
> > =

> > You are right, I will change them.
> > =

> > =

> >>
> >> =3D=3D=3D
> >>
> =

> >> The sclk goes through a crypto_div_con.
> >> Does that need a frequency set?
> >> Or does that come from nowhere?
> >>
> >> From crypto_v1.c
> >> 	priv->frequency =3D dev_read_u32_default(dev, "clock-frequency",
> >> 					       CRYPTO_V1_DEFAULT_RATE);
> >>
> >> 	ret =3D clk_set_rate(&priv->sclk, priv->frequency);
> >>
> > =

> =

> > The problem is that I dont see any hints for this in TRM, and their roc=
kchips source are inconsistent, they do this in uboot not in linux....
> =

> Rockchip RK3288TRM V1.2 Part2-20170321.pdf
> page 1419
> =

> Make sure F crypto do not exceed 150M.
> =

> =3D=3D=3D
> =

> For rk3228/rk3328:
> Rockchip RK3228TRM V0.1 20151016-Part3 Graphic and Multi-media.pdf
> page 476
> =

> Make sure F crypto do not exceed 150M.
> =

> =3D=3D=3D
> =

> Rockchip RK3399TRM V1.1 Part3 20160728.pdf
> page 781
> =

> Make sure F crypto do not exceed 200M.
> =

> =3D=3D=3D
> =

> They all have a limit.
> Rockchip uses a default in there drivers and in there TRM tables.
> Then stay consistant and use that too what is already set by the bootload=
er.
> (till someone comes up with a better (yet unknown) approuch)
> =

> #define CRYPTO_V1_DEFAULT_RATE		100000000
> =

> =3D=3D=3D
> =

> Could you disclose your sclk frequency table from:
> =

> /sys/kernel/debug/clk/clk_summary
> =

> Does that fit within the limits?
> =


Hello

On my rk3328-rock64, sclk is 240Mhz, so far beyond the limit.
[   32.416633] rk3288-crypto ff060000.crypto: CLK 0 hclk_master 75000000 75=
Mhz
[   32.417292] rk3288-crypto ff060000.crypto: CLK 1 hclk_slave 75000000 75M=
hz
[   32.417926] rk3288-crypto ff060000.crypto: CLK 2 sclk 240000000 240Mhz

But everything is stable even with this value.
I remember trying overcloacking allwinner crypto, things broke really fast.

I will try to collect values from other SoCs.

                                 enable  prepare  protect                  =
              duty  hardware
   clock                          count    count    count        rate   acc=
uracy phase  cycle    enable
---------------------------------------------------------------------------=
----------------------------
 rk805-clkout2                        0        0        0       32768      =
    0     0  50000         Y
 xin32k                               0        0        0       32768      =
    0     0  50000         Y
 gmac_clkin                           1        1        0   125000000      =
    0     0  50000         Y
    clk_mac2io                        2        2        0   125000000      =
    0     0  50000         Y
       clk_mac2io_ref                 0        0        0   125000000      =
    0     0  50000         N
       clk_mac2io_rx                  0        0        0   125000000      =
    0     0  50000         N
       clk_mac2io_tx                  1        1        0   125000000      =
    0     0  50000         Y
       clk_mac2io_refout              0        0        0   125000000      =
    0     0  50000         N
    clk_mac2io_ext                    0        0        0   125000000      =
    0     0  50000         Y
 xin24m                               8        8        0    24000000      =
    0     0  50000         Y
    hdmi_phy                          0        0        0   148500000      =
    0     0  50000         Y
    usb480m_phy                       4        4        0   480000000      =
    0     0  50000         Y
       usb480m                        0        0        0   480000000      =
    0     0  50000         Y
    sclk_uart1                        0        0        0    24000000      =
    0     0  50000         Y
    sclk_uart0                        0        0        0    24000000      =
    0     0  50000         Y
    xin12m                            0        0        0    12000000      =
    0     0  50000         Y
    clk_usb3otg_suspend               0        0        0       30770      =
    0     0  50000         N
    clk_usb3otg_ref                   0        0        0    24000000      =
    0     0  50000         N
    clk_ref_usb3otg                   0        0        0    24000000      =
    0     0  50000         Y
    clk_emmc                          0        0        0      200000      =
    0     0  50000         N
       emmc_sample                    0        0        0      100000      =
    0     0  50000         Y
       emmc_drv                       0        0        0      100000      =
    0    90  50000         Y
    sclk_hdmi_sfc                     0        0        0    24000000      =
    0     0  50000         N
    sclk_timer5                       0        0        0    24000000      =
    0     0  50000         N
    sclk_timer4                       0        0        0    24000000      =
    0     0  50000         N
    sclk_timer3                       0        0        0    24000000      =
    0     0  50000         N
    sclk_timer2                       0        0        0    24000000      =
    0     0  50000         N
    sclk_timer1                       0        0        0    24000000      =
    0     0  50000         N
    sclk_timer0                       0        0        0    24000000      =
    0     0  50000         N
    clk_efuse                         0        0        0    12000000      =
    0     0  50000         N
    clk_otp                           0        0        0    24000000      =
    0     0  50000         N
    sclk_uart2                        1        1        0    24000000      =
    0     0  50000         Y
    clk_ddrmon                        0        0        0    24000000      =
    0     0  50000         Y
    hdmiphy                           0        0        0    24000000      =
    0     0  50000         Y
       dclk_lcdc                      0        0        0    24000000      =
    0     0  50000         Y
       hdmiphy_peri                   0        0        0    24000000      =
    0     0  50000         Y
    clk_24m                           1        1        0    24000000      =
    0     0  50000         Y
       clk_saradc                     0        0        0       49897      =
    0     0  50000         N
       clk_tsadc                      1        1        0       50000      =
    0     0  50000         Y
    pll_npll                          1        1        0  1200000000      =
    0     0  50000         Y
       npll                           1        1        0  1200000000      =
    0     0  50000         Y
          npll_core                   1        1        0  1200000000      =
    0     0  50000         Y
             armclk                   2        2        0  1200000000      =
    0     0  50000         Y
                pclk_dbg              1        1        0   200000000      =
    0     0  50000         Y
                aclk_core             2        2        0   600000000      =
    0     0  50000         Y
                   aclk_gic400        1        1        0   600000000      =
    0     0  50000         Y
                   aclk_core_niu       1        1        0   600000000     =
     0     0  50000         Y
    pll_gpll                          1        1        0   491520000      =
    0     0  50000         Y
       gpll                           3        3        0   491520000      =
    0     0  50000         Y
          clk_rtc32k                  0        0        0       32768      =
    0     0  50000         N
          aclk_gmac                   3        3        0   163840000      =
    0     0  50000         Y
             aclk_gmac_niu            1        1        0   163840000      =
    0     0  50000         Y
             aclk_mac2io              1        1        0   163840000      =
    0     0  50000         Y
             aclk_mac2phy             0        0        0   163840000      =
    0     0  50000         N
             pclk_gmac                2        2        0    54613334      =
    0     0  50000         Y
                pclk_gmac_niu         1        1        0    54613334      =
    0     0  50000         Y
                pclk_mac2io           1        1        0    54613334      =
    0     0  50000         Y
                pclk_mac2phy          0        0        0    54613334      =
    0     0  50000         N
          gpll_peri                   0        0        0   491520000      =
    0     0  50000         N
          clk_rga                     0        0        0   163840000      =
    0     0  50000         N
          clk_spi                     0        0        0    15360000      =
    0     0  50000         N
          aclk_gpu_pre                1        1        0   163840000      =
    0     0  50000         Y
             aclk_gpu_niu             1        1        0   163840000      =
    0     0  50000         Y
             aclk_gpu                 0        0        0   163840000      =
    0     0  50000         N
          gpll_core                   1        1        0   491520000      =
    0     0  50000         Y
    pll_cpll                          1        1        0  1200000000      =
    0     0  50000         Y
       cpll                          10       11        0  1200000000      =
    0     0  50000         Y
          clk_sdmmc                   0        0        0   100000000      =
    0     0  50000         N
             sdmmc_sample             0        0        0    50000000      =
    0     0  50000         Y
             sdmmc_drv                0        0        0    50000000      =
    0    90  50000         Y
          aclk_bus_pre                4        5        0   150000000      =
    0     0  50000         Y
             aclk_dmac_bus            0        1        0   150000000      =
    0     0  50000         N
             aclk_intmem              1        1        0   150000000      =
    0     0  50000         Y
             aclk_tsp                 0        0        0   150000000      =
    0     0  50000         N
             aclk_dcf                 0        0        0   150000000      =
    0     0  50000         N
             aclk_bus_niu             1        1        0   150000000      =
    0     0  50000         Y
             pclk_bus_pre             2        2        0    75000000      =
    0     0  50000         Y
                pclk_phy_pre          3        3        0    75000000      =
    0     0  50000         Y
                   pclk_phy_niu       1        1        0    75000000      =
    0     0  50000         Y
                   pclk_vdacphy       0        0        0    75000000      =
    0     0  50000         Y
                   pclk_hdmiphy       1        1        0    75000000      =
    0     0  50000         Y
                   pclk_acodecphy       0        0        0    75000000    =
      0     0  50000         N
                   pclk_ddrphy        1        1        0    75000000      =
    0     0  50000         N
                   pclk_usb2_grf       0        0        0    75000000     =
     0     0  50000         Y
                   pclk_usb3_grf       0        0        0    75000000     =
     0     0  50000         Y
                   pclk_usb3phy_pipe       0        0        0    75000000 =
         0     0  50000         N
                   pclk_usb3phy_otg       0        0        0    75000000  =
        0     0  50000         N
                pclk_bus             14       15        0    75000000      =
    0     0  50000         Y
                   pclk_wdt           1        1        0    75000000      =
    0     0  50000         Y
                   pclk_pmu           1        1        0    75000000      =
    0     0  50000         Y
                   pclk_saradc        0        0        0    75000000      =
    0     0  50000         N
                   pclk_sim           0        0        0    75000000      =
    0     0  50000         Y
                   pclk_sgrf          1        1        0    75000000      =
    0     0  50000         Y
                   pclk_cru           1        1        0    75000000      =
    0     0  50000         Y
                   pclk_grf           1        1        0    75000000      =
    0     0  50000         Y
                   pclk_dcf           0        0        0    75000000      =
    0     0  50000         N
                   pclk_tsadc         1        1        0    75000000      =
    0     0  50000         Y
                   pclk_uart2         1        1        0    75000000      =
    0     0  50000         Y
                   pclk_uart1         0        0        0    75000000      =
    0     0  50000         N
                   pclk_uart0         0        0        0    75000000      =
    0     0  50000         N
                   pclk_gpio3         1        1        0    75000000      =
    0     0  50000         Y
                   pclk_gpio2         1        1        0    75000000      =
    0     0  50000         Y
                   pclk_gpio1         1        1        0    75000000      =
    0     0  50000         Y
                   pclk_gpio0         1        1        0    75000000      =
    0     0  50000         Y
                   pclk_rk_pwm        0        0        0    75000000      =
    0     0  50000         N
                   pclk_spi           0        0        0    75000000      =
    0     0  50000         N
                   pclk_stimer        0        0        0    75000000      =
    0     0  50000         N
                   pclk_timer0        1        1        0    75000000      =
    0     0  50000         Y
                   pclk_i2c3          0        0        0    75000000      =
    0     0  50000         N
                   pclk_i2c2          0        0        0    75000000      =
    0     0  50000         N
                   pclk_i2c1          0        1        0    75000000      =
    0     0  50000         N
                   pclk_i2c0          0        0        0    75000000      =
    0     0  50000         N
                   pclk_otp           0        0        0    75000000      =
    0     0  50000         Y
                   pclk_efuse         0        0        0    75000000      =
    0     0  50000         Y
                   pclk_bus_niu       1        1        0    75000000      =
    0     0  50000         Y
             hclk_bus_pre             2        2        0    75000000      =
    0     0  50000         Y
                hclk_pdm              0        0        0    75000000      =
    0     0  50000         N
                hclk_bus_niu          1        1        0    75000000      =
    0     0  50000         Y
                hclk_crypto_slv       0        0        0    75000000      =
    0     0  50000         N
                hclk_crypto_mst       0        0        0    75000000      =
    0     0  50000         N
                hclk_tsp              0        0        0    75000000      =
    0     0  50000         N
                hclk_spdif_8ch        0        0        0    75000000      =
    0     0  50000         N
                hclk_i2s2_2ch         0        0        0    75000000      =
    0     0  50000         N
                hclk_i2s1_8ch         0        0        0    75000000      =
    0     0  50000         N
                hclk_i2s0_8ch         0        0        0    75000000      =
    0     0  50000         N
                hclk_rom              1        1        0    75000000      =
    0     0  50000         Y
          clk_wifi                    0        0        0    24000000      =
    0     0  50000         N
          sclk_vdec_core              0        0        0   100000000      =
    0     0  50000         N
          sclk_vdec_cabac             0        0        0   100000000      =
    0     0  50000         N
          aclk_vpu_pre                2        3        0   400000000      =
    0     0  50000         Y
             aclk_vpu_niu             1        1        0   400000000      =
    0     0  50000         Y
             aclk_vpu                 0        5        0   400000000      =
    0     0  50000         N
             hclk_vpu_pre             1        2        0   100000000      =
    0     0  50000         Y
                hclk_vpu_niu          1        1        0   100000000      =
    0     0  50000         Y
                hclk_vpu              0        5        0   100000000      =
    0     0  50000         N
          aclk_rga_pre                1        1        0   100000000      =
    0     0  50000         Y
             aclk_rga_niu             1        1        0   100000000      =
    0     0  50000         Y
             aclk_rga                 0        0        0   100000000      =
    0     0  50000         N
          aclk_vio_pre                2        2        0   100000000      =
    0     0  50000         Y
             aclk_vio_niu             1        1        0   100000000      =
    0     0  50000         Y
             aclk_hdcp                0        0        0   100000000      =
    0     0  50000         N
             aclk_cif                 0        0        0   100000000      =
    0     0  50000         N
             aclk_iep                 0        0        0   100000000      =
    0     0  50000         N
             hclk_vio_pre             5        6        0    33333334      =
    0     0  50000         Y
                pclk_hdcp             0        0        0    33333334      =
    0     0  50000         N
                pclk_hdmi             0        0        0    33333334      =
    0     0  50000         N
                hclk_vio_niu          1        1        0    33333334      =
    0     0  50000         Y
                hclk_hdcp             0        0        0    33333334      =
    0     0  50000         N
                hclk_vio_h2p          1        1        0    33333334      =
    0     0  50000         Y
                pclk_vio_h2p          1        1        0    33333334      =
    0     0  50000         Y
                hclk_ahb1tom          1        1        0    33333334      =
    0     0  50000         Y
                hclk_rga              0        0        0    33333334      =
    0     0  50000         N
                hclk_cif              0        0        0    33333334      =
    0     0  50000         N
                hclk_iep              0        0        0    33333334      =
    0     0  50000         N
                hclk_vop_niu          1        1        0    33333334      =
    0     0  50000         Y
                hclk_vop              0        1        0    33333334      =
    0     0  50000         N
          clk_mac2phy_src             0        0        0    75000000      =
    0     0  50000         N
             clk_mac2phy              0        0        0    75000000      =
    0     0  50000         Y
                clk_mac2phy_ref       0        0        0    75000000      =
    0     0  50000         N
                clk_mac2phy_rxtx       0        0        0    75000000     =
     0     0  50000         N
                clk_mac2phy_out       0        0        0    75000000      =
    0     0  50000         N
          clk_mac2io_out              0        0        0   150000000      =
    0     0  50000         N
          clk_mac2io_src              0        0        0   200000000      =
    0     0  50000         N
          clk_ref_usb3otg_src         0        0        0    37500000      =
    0     0  50000         N
          clk_sdmmc_ext               0        0        0   300000000      =
    0     0  50000         N
             sdmmc_ext_sample         0        0        0   150000000      =
    0     0  50000         Y
             sdmmc_ext_drv            0        0        0   150000000      =
    0   180  50000         Y
          clk_sdio                    0        0        0    50000000      =
    0     0  50000         N
             sdio_sample              0        0        0    25000000      =
    0     0  50000         Y
             sdio_drv                 0        0        0    25000000      =
    0   180  50000         Y
          cpll_peri                   1        1        0  1200000000      =
    0     0  50000         Y
             aclk_peri_pre            3        3        0   150000000      =
    0     0  50000         Y
                aclk_peri             1        1        0   150000000      =
    0     0  50000         Y
                   aclk_usb3otg       0        0        0   150000000      =
    0     0  50000         N
                   aclk_peri_noc       0        0        0   150000000     =
     0     0  50000         Y
                hclk_peri             7        7        0    75000000      =
    0     0  50000         Y
                   pclk_peri_niu       1        1        0    75000000     =
     0     0  50000         Y
                   hclk_peri_niu       1        1        0    75000000     =
     0     0  50000         Y
                   hclk_otg_pmu       1        1        0    75000000      =
    0     0  50000         Y
                   hclk_otg           1        1        0    75000000      =
    0     0  50000         Y
                   hclk_host0_arb       0        0        0    75000000    =
      0     0  50000         Y
                   hclk_host0         2        2        0    75000000      =
    0     0  50000         Y
                   hclk_sdmmc_ext       0        0        0    75000000    =
      0     0  50000         N
                   hclk_emmc          0        0        0    75000000      =
    0     0  50000         N
                   hclk_sdio          0        0        0    75000000      =
    0     0  50000         N
                   hclk_sdmmc         1        1        0    75000000      =
    0     0  50000         Y
                pclk_peri             1        1        0    75000000      =
    0     0  50000         Y
          dclk_lcdc_src               1        1        0    24000000      =
    0     0  50000         Y
             dclk_hdmiphy             1        1        0     8000000      =
    0     0  50000         Y
          clk_cif_src                 0        0        0  1200000000      =
    0     0  50000         N
             clk_cif_out              0        0        0    60000000      =
    0     0  50000         Y
          aclk_vop_pre                1        2        0   100000000      =
    0     0  50000         Y
             aclk_vop_niu             1        1        0   100000000      =
    0     0  50000         Y
             aclk_vop                 0        1        0   100000000      =
    0     0  50000         N
          sclk_venc_dsp               0        0        0    50000000      =
    0     0  50000         N
          sclk_venc_core              0        0        0    50000000      =
    0     0  50000         N
          aclk_rkvenc                 2        2        0    50000000      =
    0     0  50000         Y
             aclk_axisram             0        0        0    50000000      =
    0     0  50000         Y
             aclk_h264                0        0        0    50000000      =
    0     0  50000         N
             aclk_h265                0        0        0    50000000      =
    0     0  50000         N
             aclk_rkvenc_niu          1        1        0    50000000      =
    0     0  50000         Y
             hclk_rkvenc              1        1        0    12500000      =
    0     0  50000         Y
                hclk_h264             0        0        0    12500000      =
    0     0  50000         N
                pclk_h265             0        0        0    12500000      =
    0     0  50000         N
                hclk_rkvenc_niu       1        1        0    12500000      =
    0     0  50000         Y
          aclk_rkvdec_pre             2        2        0   100000000      =
    0     0  50000         Y
             aclk_rkvdec_niu          1        1        0   100000000      =
    0     0  50000         Y
             aclk_rkvdec              0        0        0   100000000      =
    0     0  50000         N
             hclk_rkvdec_pre          1        1        0    25000000      =
    0     0  50000         Y
                hclk_rkvdec_niu       1        1        0    25000000      =
    0     0  50000         Y
                hclk_rkvdec           0        0        0    25000000      =
    0     0  50000         N
          clk_pwm                     0        0        0   150000000      =
    0     0  50000         N
          clk_crypto                  0        0        0   240000000      =
    0     0  50000         N
          clk_i2c3                    0        0        0   150000000      =
    0     0  50000         N
          clk_i2c2                    0        0        0   150000000      =
    0     0  50000         N
          clk_i2c1                    0        1        0   150000000      =
    0     0  50000         N
          clk_i2c0                    0        0        0   150000000      =
    0     0  50000         N
          clk_uart2_div               0        0        0   150000000      =
    0     0  50000         N
             clk_uart2_frac           0        0        0     7500000      =
    0     0  50000         N
          clk_uart1_div               0        0        0   150000000      =
    0     0  50000         N
             clk_uart1_frac           0        0        0     7500000      =
    0     0  50000         N
          clk_uart0_div               0        0        0   150000000      =
    0     0  50000         N
             clk_uart0_frac           0        0        0     7500000      =
    0     0  50000         N
          clk_spdif_div               0        0        0    75000000      =
    0     0  50000         N
             sclk_spdif               0        0        0    75000000      =
    0     0  50000         Y
             clk_spdif_frac           0        0        0     3750000      =
    0     0  50000         N
          clk_i2s2_div                0        0        0    75000000      =
    0     0  50000         N
             i2s2_pre                 0        0        0    75000000      =
    0     0  50000         Y
                clk_i2s2              0        0        0    75000000      =
    0     0  50000         N
                   i2s2_out           0        0        0    75000000      =
    0     0  50000         N
             clk_i2s2_frac            0        0        0     3750000      =
    0     0  50000         N
          clk_i2s1_div                0        0        0    75000000      =
    0     0  50000         N
             i2s1_pre                 0        0        0    75000000      =
    0     0  50000         Y
                clk_i2s1              0        0        0    75000000      =
    0     0  50000         N
                   i2s1_out           0        0        0    75000000      =
    0     0  50000         N
             clk_i2s1_frac            0        0        0     3750000      =
    0     0  50000         N
          clk_i2s0_div                0        0        0    75000000      =
    0     0  50000         N
             i2s0_pre                 0        0        0    75000000      =
    0     0  50000         Y
                clk_i2s0              0        0        0    75000000      =
    0     0  50000         N
             clk_i2s0_frac            0        0        0     3750000      =
    0     0  50000         N
          clk_tsp                     0        0        0    50000000      =
    0     0  50000         N
          pclk_ddr                    3        3        0   150000000      =
    0     0  50000         Y
             pclk_ddr_grf             1        1        0   150000000      =
    0     0  50000         Y
             pclk_ddrstdby            0        0        0   150000000      =
    0     0  50000         Y
             pclk_ddr_mon             1        1        0   150000000      =
    0     0  50000         Y
             pclk_ddr_msch            1        1        0   150000000      =
    0     0  50000         Y
             pclk_ddrupctl            0        0        0   150000000      =
    0     0  50000         Y
    pll_dpll                          1        1        0  1596000000      =
    0     0  50000         Y
       dpll                           1        1        0  1596000000      =
    0     0  50000         Y
          clk_ddr                     2        2        0  1596000000      =
    0     0  50000         Y
             aclk_ddrupctl            0        0        0  1596000000      =
    0     0  50000         Y
             clk_ddrupctl             1        1        0  1596000000      =
    0     0  50000         Y
             clk_ddrmsch              1        1        0  1596000000      =
    0     0  50000         Y
          dpll_core                   0        0        0  1596000000      =
    0     0  50000         Y
    pll_apll                          0        0        0    61440000      =
    0     0  50000         Y
       apll                           0        0        0    61440000      =
    0     0  50000         Y
          clk_pdm                     0        0        0    61440000      =
    0     0  50000         N
          apll_core                   0        0        0    61440000      =
    0     0  50000         Y
 clk_hsadc_tsp                        0        0        0           0      =
    0     0  50000         N
 clk_jtag                             1        1        0           0      =
    0     0  50000         Y

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
