From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
Date: Fri, 14 Jun 2019 16:03:28 +0200
Message-ID: <4034618.A4UzVy7svI@diego>
References: <20190613192244.5447-1-ezequiel@collabora.com>
 <20190614155320.348d42af@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190614155320.348d42af-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Boris,

Am Freitag, 14. Juni 2019, 15:53:20 CEST schrieb Boris Brezillon:
> On Thu, 13 Jun 2019 16:22:44 -0300
> Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> 
> 
> > +static int vop_gamma_lut_request(struct device *dev,
> > +				 struct resource *res, struct vop *vop)
> > +{
> > +	resource_size_t offset = vop->data->gamma_lut_addr_off;
> > +	resource_size_t size = VOP_GAMMA_LUT_SIZE * 4;
> > +
> > +	/*
> > +	 * Some SoCs (e.g. RK3288) have the gamma LUT address after
> > +	 * the MMU registers, which means we can't request and ioremap
> > +	 * the entire register set. Other (e.g. RK3399) have gamma LUT
> > +	 * address before MMU.
> > +	 *
> > +	 * Therefore, we need to request and ioremap those that haven't
> > +	 * been already.
> > +	 */
> > +	if (vop->len >= (offset + size)) {
> > +		vop->lut_regs = vop->regs + offset;
> > +		return 0;
> > +	}
> > +
> > +	if (!devm_request_mem_region(dev, res->start + offset,
> > +				     size, dev_name(dev))) {
> > +		dev_warn(dev, "can't request gamma lut region\n");
> > +		return -EBUSY;
> > +	}
> > +
> > +	vop->lut_regs = devm_ioremap(dev, res->start + offset, size);
> > +	if (!vop->lut_regs) {
> > +		dev_err(dev, "can't ioremap gamma lut address\n");
> > +		devm_release_mem_region(dev, res->start + offset, size);
> > +		return -ENOMEM;
> > +	}
> 
> Can't we patch the resource just after calling plaform_get_resource()
> (and before calling devm_ioremap_resource()) so we don't have to add
> these devm_request_mem_region()+devm_ioremap() calls here?

The issue is that on the older rk3288 socs the vops memory map has
the mmu registers (which get mapped separately) in between the core
and lut registers.
