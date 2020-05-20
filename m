From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/5] media: staging: rkisp1: return IRQ_NONE in isr when
 irq isn't for ISP
Date: Wed, 20 May 2020 23:58:25 +0300
Message-ID: <20200520205825.GA25474@pendragon.ideasonboard.com>
References: <20200512120522.25960-1-dafna.hirschfeld@collabora.com>
 <20200512120522.25960-2-dafna.hirschfeld@collabora.com>
 <33703448-c89b-b1ba-eedb-3ac769beaca3@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <33703448-c89b-b1ba-eedb-3ac769beaca3@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thank you for the patch.

On Wed, May 20, 2020 at 07:58:41AM -0300, Helen Koike wrote:
> On 5/12/20 9:05 AM, Dafna Hirschfeld wrote:
> > From: Helen Koike <helen.koike@collabora.com>
> > 
> > rkisp1 shares the interrupt line, then it shouldn't always return
> > IRQ_HANDLED, otherwise it can flag as handled an interrupt that wans't
> > meant for ISP.
> > 
> > return IRQ_NONE when the interrupt wans't meant for ISP
> > 
> > Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
> > 
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > ---
> >  drivers/staging/media/rkisp1/rkisp1-capture.c |  7 ++++++-
> >  drivers/staging/media/rkisp1/rkisp1-common.h  |  6 +++---
> >  drivers/staging/media/rkisp1/rkisp1-dev.c     | 14 ++++++++++----
> >  drivers/staging/media/rkisp1/rkisp1-isp.c     | 12 ++++++++----
> >  4 files changed, 27 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > index f69235f82c45..19021875e8a9 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> > @@ -649,12 +649,15 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
> >  	rkisp1_set_next_buf(cap);
> >  }
> >  
> > -void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
> > +irqreturn_t rkisp1_capture_isr(struct rkisp1_device *rkisp1)
> >  {
> >  	unsigned int i;
> >  	u32 status;
> >  
> >  	status = rkisp1_read(rkisp1, RKISP1_CIF_MI_MIS);
> > +	if (!status)
> > +		return IRQ_NONE;
> > +
> >  	rkisp1_write(rkisp1, status, RKISP1_CIF_MI_ICR);
> >  
> >  	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); ++i) {
> > @@ -682,6 +685,8 @@ void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
> >  		cap->is_streaming = false;
> >  		wake_up(&cap->done);
> >  	}
> > +
> > +	return IRQ_HANDLED;
> >  }
> >  
> >  /* ----------------------------------------------------------------------------
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> > index 0c4fe503adc9..33dffe21c769 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> > +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> > @@ -305,9 +305,9 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1);
> >  
> >  const struct rkisp1_isp_mbus_info *rkisp1_isp_mbus_info_get(u32 mbus_code);
> >  
> > -void rkisp1_isp_isr(struct rkisp1_device *rkisp1);
> > -void rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
> > -void rkisp1_capture_isr(struct rkisp1_device *rkisp1);
> > +irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1);
> > +irqreturn_t rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
> > +irqreturn_t rkisp1_capture_isr(struct rkisp1_device *rkisp1);
> >  void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
> >  void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis);
> >  
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
> > index 9ac38bafb839..b7f43dab71c8 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-dev.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
> > @@ -387,10 +387,13 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
> >  	return ret;
> >  }
> >  
> > -static irqreturn_t rkisp1_isr(int irq, void *ctx)
> > +irqreturn_t rkisp1_isr(int irq, void *ctx)
> >  {
> >  	struct device *dev = ctx;
> >  	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
> > +	irqreturn_t isp_ret;
> > +	irqreturn_t cap_ret;
> > +	irqreturn_t mipi_ret;
> 
> Just cosmetics, you could declare them in a single line
> 
> 	irqreturn_t cap_ret, isp_ret, mipi_ret;
> 
> With or without this change:
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> >  
> >  	/*
> >  	 * Call rkisp1_capture_isr() first to handle the frame that
> > @@ -398,9 +401,12 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
> >  	 * it is potentially incremented by rkisp1_isp_isr() in the vertical
> >  	 * sync.
> >  	 */
> > -	rkisp1_capture_isr(rkisp1);
> > -	rkisp1_isp_isr(rkisp1);
> > -	rkisp1_mipi_isr(rkisp1);
> > +	cap_ret = rkisp1_capture_isr(rkisp1);
> > +	isp_ret = rkisp1_isp_isr(rkisp1);
> > +	mipi_ret = rkisp1_mipi_isr(rkisp1);
> > +
> > +	if (isp_ret == IRQ_NONE && cap_ret == IRQ_NONE && mipi_ret == IRQ_NONE)
> > +		return IRQ_NONE;

Another cosmetic change proposal:

	irqreturn_t ret = IRQ_NONE;
	...

	if (rkisp1_capture_isr(rkisp1) == IRQ_HANDLED)
		ret = IRQ_HANDLED;

	if (rkisp1_isp_isr(rkisp1) == IRQ_HANDLED)
		ret = IRQ_HANDLED;

	if (rkisp1_mipi_isr(rkisp1) == IRQ_HANDLED)
		ret = IRQ_HANDLED;

	return ret;

With or without it,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> >  
> >  	return IRQ_HANDLED;
> >  }
> > diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
> > index dc2b59a0160a..19ab0ed323aa 100644
> > --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
> > +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
> > @@ -1046,13 +1046,13 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
> >   * Interrupt handlers
> >   */
> >  
> > -void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
> > +irqreturn_t rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
> >  {
> >  	u32 val, status;
> >  
> >  	status = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_MIS);
> >  	if (!status)
> > -		return;
> > +		return IRQ_NONE;
> >  
> >  	rkisp1_write(rkisp1, status, RKISP1_CIF_MIPI_ICR);
> >  
> > @@ -1087,6 +1087,8 @@ void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
> >  	} else {
> >  		rkisp1->debug.mipi_error++;
> >  	}
> > +
> > +	return IRQ_HANDLED;
> >  }
> >  
> >  static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
> > @@ -1106,13 +1108,13 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
> >  	v4l2_event_queue(isp->sd.devnode, &event);
> >  }
> >  
> > -void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
> > +irqreturn_t rkisp1_isp_isr(struct rkisp1_device *rkisp1)
> >  {
> >  	u32 status, isp_err;
> >  
> >  	status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
> >  	if (!status)
> > -		return;
> > +		return IRQ_NONE;
> >  
> >  	rkisp1_write(rkisp1, status, RKISP1_CIF_ISP_ICR);
> >  
> > @@ -1148,4 +1150,6 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
> >  	 * Do the updates in the order of the processing flow.
> >  	 */
> >  	rkisp1_params_isr(rkisp1, status);
> > +
> > +	return IRQ_HANDLED;
> >  }
> > 

-- 
Regards,

Laurent Pinchart
