From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 1/7] media: hantro: Set DMA max segment size
Date: Fri, 26 Jul 2019 00:41:48 +0900
Message-ID: <CAAFQd5BxQJBNqMnS1bCVXz-9+dCkw0g4xmiPLYgtVCJx_pbRPg@mail.gmail.com>
References: <20190725141756.2518-1-ezequiel@collabora.com> <20190725141756.2518-2-ezequiel@collabora.com>
 <1564069001.3006.1.camel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <1564069001.3006.1.camel@pengutronix.de>
Sender: stable-owner@vger.kernel.org
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jul 26, 2019 at 12:36 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> On Thu, 2019-07-25 at 11:17 -0300, Ezequiel Garcia wrote:
> > From: Francois Buergisser <fbuergisser@chromium.org>
> >
> > The Hantro codec is typically used in platforms with an IOMMU,
> > so we need to set a proper DMA segment size.
>
> ... to make sure the DMA-mapping subsystem produces contiguous mappings?
>
> > Devices without an
> > IOMMU will still fallback to default 64KiB segments.
>
> I don't understand this comment. The default max_seg_size may be 64 KiB,
> but if we are always setting it to DMA_BUT_MASK(32), there is no falling
> back.
>

DMA mask and segment size are two completely orthogonal parameters.
Please check https://elixir.bootlin.com/linux/v5.3-rc1/source/drivers/iommu/dma-iommu.c#L740
for an example of how the latter is used.

Best regards,
Tomasz
