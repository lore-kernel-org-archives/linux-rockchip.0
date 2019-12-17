From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 5/6] drm/mediatek: Convert to use CMA helpers
Date: Tue, 17 Dec 2019 03:12:15 +0200
Message-ID: <20191217011215.GM4856@pendragon.ideasonboard.com>
References: <20191021214550.1461-1-robh@kernel.org>
 <20191021214550.1461-6-robh@kernel.org>
 <1cbca96c-19dd-1d15-949c-7fbcc15369b4@gmail.com>
 <CAL_JsqL6G=F45G+-QXF6T1269f9YquXfYtjoUkCpAoNartxM=Q@mail.gmail.com>
 <1571864784.19128.8.camel@mtksdaap41>
 <CAL_JsqJJ2ET2oCCkE=fqk7PWTWp3xiMRiMM_AmxRDws-NaKoOg@mail.gmail.com>
 <1571900577.27203.6.camel@mtksdaap41>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <1571900577.27203.6.camel@mtksdaap41>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Rob Herring <robh@kernel.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>, Sandy Huang <hjc@rock-chips.com>, Yannick Fertre <yannick.fertre@st.com>, Nicolas Boichat <drinkcat@chromium.org>, Kevin Hilman <khilman@baylibre.com>, Xinwei Kong <kong.kongxinwei@hisilicon.com>, Xinliang Liu <z.liuxinliang@hisilicon.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chen-Yu Tsai <wens@csie.org>, "James (Qian) Wang" <james.qian.wang@arm.com>, Ulrich Hecht <uli@fpond.eu>, Alexandre Torgue <alexandre.torgue@st.com>, Chen Feng <puck.chen@hisilicon.com>, "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel>
List-Id: linux-rockchip.vger.kernel.org

Hi Rob,

On Thu, Oct 24, 2019 at 03:02:57PM +0800, CK Hu wrote:
> On Wed, 2019-10-23 at 17:56 -0500, Rob Herring wrote:
> > On Wed, Oct 23, 2019 at 4:06 PM CK Hu wrote:
> > > On Wed, 2019-10-23 at 12:42 -0500, Rob Herring wrote:
> > > > On Tue, Oct 22, 2019 at 12:07 PM Matthias Brugger wrote:
> > > > > On 21/10/2019 23:45, Rob Herring wrote:
> > > > > > The only reason the Mediatek driver doesn't use the CMA helpers is it
> > > > > > sets DMA_ATTR_NO_KERNEL_MAPPING and does a vmap() on demand. Using
> > > > > > vmap() is not even guaranteed to work as DMA buffers may not have a
> > > > > > struct page. Now that the CMA helpers support setting
> > > > > > DMA_ATTR_NO_KERNEL_MAPPING as needed or not, convert Mediatek driver to
> > > > > > use CMA helpers.
> > > > > >
> > > > > > Cc: CK Hu <ck.hu@mediatek.com>
> > > > > > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > > > > > Cc: David Airlie <airlied@linux.ie>
> > > > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > > > Cc: linux-mediatek@lists.infradead.org
> > > > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > > > ---
> > > > >
> > > > > I tested this on my Chromebook with some patches on top of v5.4-rc1 [1], which
> > > > > work. If I add your patches on top of that, the system does not boot up.
> > > > > Unfortunately I don't have a serial console, so I wasn't able to see if there is
> > > > > any error message.
> > > >
> > > > Thanks for testing. I'm based on drm-misc-next, but don't see anything
> > > > obvious there that would matter. There are some mmap changes, but I
> > > > think they shouldn't matter.
> > > >
> > > > Did you have fbcon enabled? That may give more clues about where the problem is.
> > >
> > > There are priv->dma_dev for dma device, but it is not drm device. In
> > > mt8173.dtsi [1], there are mmsys device and ovl device, mmsys device is
> > > drm device and ovl device is mmsys's sub device which provide dma
> > > function, so ovl is the priv->dma_dev. I think your patch directly use
> > > drm device for dma operation and this would cause dma function fail.
> > > Please use priv->dma_dev for dma operation.
> > 
> > Right, thanks for catching that. Either we'll need to make CMA GEM
> > object have a struct device ptr or adjust the drm_device.dev to have
> > the necessary DMA setup.
> > 
> > One question though, why do you use CMA when you have an IOMMU? That's
> > not optimal as CMA size may be limited. Or you don't always have an
> > IOMMU?

Please note that the DRM GEM CMA helpers are misnamed, they use the DMA
coherent allocation API, and thus don't use CMA if the device is backed
by an IOMMU. They should really have been named DRM GEM DMA helpers.

> For all upstreamed mediatek SoC, all has IOMMU, so it does not need CMA.
> I think we use CMA just because we refer to other drm driver to
> implement mediatek drm driver and we misused CMA helper function but it
> works. I think we should change to more accurate implementation. If you
> want, you could modify it in this series.
> 

-- 
Regards,

Laurent Pinchart
