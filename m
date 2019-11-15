From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v3 2/3] media: hantro: Support color conversion via
 post-processing
Date: Fri, 15 Nov 2019 17:10:59 +0100
Message-ID: <272dedf2cc25053475e9536b446b434f4754f62c.camel@pengutronix.de>
References: <20191113175603.24742-1-ezequiel@collabora.com>
         <20191113175603.24742-3-ezequiel@collabora.com>
         <1e1c7a0e3d25187723ccac1a8360b5aae9aed8cd.camel@pengutronix.de>
         <dc637b43a4ef4609f9200f3fc91ee76fef75f64a.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <dc637b43a4ef4609f9200f3fc91ee76fef75f64a.camel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Cc: kernel@collabora.com, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Boris Brezillon <boris.brezillon@collabora.com>, Chris Healy <cphealy@gmail.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On Fri, 2019-11-15 at 12:44 -0300, Ezequiel Garcia wrote:
> Hello Philipp,
> 
> Thanks for reviewing.
> 
> On Thu, 2019-11-14 at 10:48 +0100, Philipp Zabel wrote:
[...]
> > Why isn't PP enabled in prepare_run? Does this mean the first frame is
> > not post-processed?
> > 
> 
> No, because hantro_finish_run is called (despite its name)
> before the decoding operation is actually triggered.
> 
> I guess this hantro_finish_run name adds some confusion:
> prepare_run and finish_run should be something along
> start_prepare_run, end_prepare_run. 

Ah, ok then. I was confused because I just came from looking at coda-vpu 
code, where finish_run is a callback called after the device has
finished processing. Maybe I should rename that as well.

> And also, perhaps disabling the post-processor in prepare_run
> works just fine. I need to check that.

Ok.

[...]
> > > +#define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
> > > +	do { \
> > > +		if ((vpu)->variant->postproc_regs->(reg_name).base)	\
> > > +			hantro_reg_write((vpu), \
> > > +					 &(vpu)->variant->postproc_regs->(reg_name), \
> > > +					 (val)); \
> > > +	} while (0)
> > 
> > Why all these checks, are any of the register fields optional?
> > 
> 
> That was the plan. Perhaps now it makes less sense,
> but maybe it's safer this way, if it's extended?
> 
> OTOH, we might want to make sure the driver fails (or warns).

I think that would be better than silently ignoring them.

Although I don't quite see the point in repeatedly checking the presence
of mandatory register fields at runtime.

regards
Philipp
