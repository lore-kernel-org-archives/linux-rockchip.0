From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 2/5] drm/stm: dsi: Adjust dw_mipi_dsi_probe and remove
Date: Tue, 28 Nov 2017 21:10:17 -0500
Message-ID: <20171129021017.76wbflr4w5dqhxsl@art_vandelay>
References: <1511868006-27130-1-git-send-email-nickey.yang@rock-chips.com>
 <1511868006-27130-3-git-send-email-nickey.yang@rock-chips.com>
 <20171128184129.GB116479@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20171128184129.GB116479@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Nickey Yang <nickey.yang@rock-chips.com>, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, mka@chromium.org, hoegsberg@gmail.com, architt@codeaurora.org, philippe.cornu@st.com, yannick.fertre@st.com, hl@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, Nov 28, 2017 at 10:41:29AM -0800, Brian Norris wrote:
> Hi Nickey,
> 
> On Tue, Nov 28, 2017 at 07:20:03PM +0800, Nickey Yang wrote:
> > Bridge drivers/helpers shouldn't be clobbering the drvdata, since a
> > parent driver might need to own this. Instead, let's return our
> 
> Other reviews have suggested this might be described as "SoC glue
> driver", not "parent driver". Also, the subject probably should include
> either "mipi" or "dw-mipi-dsi".
> 
> > 'dw_mipi_dsi' object and have callers pass that back to us for removal.
> > So adjust it.
> > 
> > Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> > ---
> >  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> So, you've split my patch in 2 and called it your own (see patch 1,
> which still has the 'From' (i.e., author) line as "Nickey Yang", not
> "Brian Norris"). You need to keep the author accurate. (It's good to add
> an additional 'Signed-off-by' of your own, but keep the author.)
> 

Also cc everyone who commented on the previous version of the patch so they
can review the new version. Laurent had questions about the patch, and was
not cc'd here.

Sean

> When developing in your local git tree, make sure that the 'Author' line
> is accurate in 'git log'. Then 'git format-patch + git send-email' will
> format things correctly, such that your email headers will say "From:
> Nickey Yang", but then git-send-email will make sure there's an
> additional line within the body of the email to attribute the author.
> 
> For example, see how this patch was sent by Doug in a later series, but has my
> authorship:
> 
> https://patchwork.kernel.org/patch/9188419/
> 
> The email header says:
> 
> From: Douglas Anderson <dianders@chromium.org>
> 
> but the body of the mail includes:
> 
> From: Brian Norris <briannorris@chromium.org>
> 
> This ends up correctly-attributed in the mainline git tree:
> 
> commit 36b5d460261f16563f9196c49c936b3e17d237e3
> Author: Brian Norris <briannorris@chromium.org>
> Date:   Mon Jun 20 10:56:42 2016 -0700
> 
>     phy: rockchip-emmc: configure default output tap delay
> ...
>     Signed-off-by: Brian Norris <briannorris@chromium.org>
>     Signed-off-by: Douglas Anderson <dianders@chromium.org>
> 
> 
> But more importantly: you can't split my patch in 2, because it makes
> the series non-bisectable. As you split it, patch 1 is making an API
> change, but it doesn't update the drivers that use that API. So the STM
> DSI driver doesn't compile if you apply only patch 1. That's discouraged
> within the Linux kernel.
> 
> So, let's make sure to keep this patch in 1 piece.
> 
> Brian
> 
> > 
> > diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> > index e5b6310..80f9950 100644
> > --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> > +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> > @@ -66,6 +66,7 @@ enum dsi_color {
> >  struct dw_mipi_dsi_stm {
> >  	void __iomem *base;
> >  	struct clk *pllref_clk;
> > +	struct dw_mipi_dsi *dmd;
> >  };
> >  
> >  static inline void dsi_write(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 val)
> > @@ -318,10 +319,11 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
> >  	dw_mipi_dsi_stm_plat_data.base = dsi->base;
> >  	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
> >  
> > -	ret = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
> > -	if (ret) {
> > +	dsi->dmd = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
> > +	if (IS_ERR(dsi->dmd)) {
> >  		DRM_ERROR("Failed to initialize mipi dsi host\n");
> >  		clk_disable_unprepare(dsi->pllref_clk);
> > +		return PTR_ERR(dsi->dmd);
> >  	}
> >  
> >  	return ret;
> > @@ -332,7 +334,7 @@ static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
> >  	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
> >  
> >  	clk_disable_unprepare(dsi->pllref_clk);
> > -	dw_mipi_dsi_remove(pdev);
> > +	dw_mipi_dsi_remove(dsi->dmd);
> >  
> >  	return 0;
> >  }
> > -- 
> > 1.9.1
> > 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
