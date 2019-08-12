From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v4 05/11] media: uapi: h264: Get rid of the p0/b0/b1
 ref-lists
Date: Mon, 12 Aug 2019 07:53:32 -0300
Message-ID: <d71d504c2c73af04ce7a92c27f2d33f101c0cdf5.camel@collabora.com>
References: <20190808103432.12062-1-ezequiel@collabora.com>
         <20190808103432.12062-6-ezequiel@collabora.com>
         <62750a74-f856-c927-72a3-17d1a2624550@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <62750a74-f856-c927-72a3-17d1a2624550@xs4all.nl>
Sender: linux-kernel-owner@vger.kernel.org
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2019-08-12 at 12:20 +0200, Hans Verkuil wrote:
> On 8/8/19 12:34 PM, Ezequiel Garcia wrote:
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > 
> > Those lists can be extracted from the dpb, let's simplify userspace
> > life and build that list kernel-side (generic helpers will be provided
> > for drivers that need this list).
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> > Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> > Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> > Changes in v4:
> > * Add R-b
> 
> ???
> 
> Nothing was added, left-over from some old version?
> 

Compared to v3, this version adds the Reviewed-by tags,
which is what the Add R-b means.

Sorry if that wasn't clear! :-)
