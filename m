From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 17/33] media: add SPDX headers on Kconfig and Makefile
 files
Date: Tue, 31 Mar 2020 15:39:14 +0300
Message-ID: <20200331123914.GC4767@pendragon.ideasonboard.com>
References: <cover.1585651678.git.mchehab+huawei@kernel.org>
 <981eea64742859c63d8ab88c24b1b3380ee32dd2.1585651678.git.mchehab+huawei@kernel.org>
 <20200331120608.GB4767@pendragon.ideasonboard.com>
 <20200331122209.GA1627483@kroah.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200331122209.GA1627483@kroah.com>
Sender: linux-media-owner@vger.kernel.org
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, devel@driverdev.osuosl.org, Sakari Ailus <sakari.ailus@linux.intel.com>, Helen Koike <helen.koike@collabora.com>, Maxime Ripard <mripard@kernel.org>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, Philipp Zabel <p.zabel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Greg,

On Tue, Mar 31, 2020 at 02:22:09PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Mar 31, 2020 at 03:06:08PM +0300, Laurent Pinchart wrote:
> > On Tue, Mar 31, 2020 at 01:11:53PM +0200, Mauro Carvalho Chehab wrote:
> > > Most of media Kconfig/Makefile files already has SPDX,
> > > but there are a few ones still missing. Add it to them.
> > 
> > I think it's a good idea to state the license of each source file, the
> > patch looks fine to me. I've however been thinking about licenses for
> > build system files recently, and I'll hijack this thread a bit to ask a
> > question :-)
> > 
> > For a project like the Linux kernel, and especially for subsystems that
> > are covered by a single license, the choice is easy, we can apply the
> > same license to the build files. However, for a project that contains
> > components covered by different licenses (such as, for instance, an LGPL
> > library, a GPL application and a BSD plugin), how should the license
> > covering the build system files be selected ? I searched a bit for
> > guidance on this topic, and couldn't find much.
> 
> By "default" if there is no license on a file in the kernel tree, it
> falls under the GPLv2 license and we should explicity state it, like
> this patch does.
> 
> So this is fine, but if you want to license the build files some other
> way, that's good too, but do so when you add them to the tree, not at
> some later time when it could cause confusion :)

Thanks for your answer. I was hijacking the thread a little bit, the
question wasn't related to the kernel, but in this case to libcamera.
We've been wondering how to pick licenses for build files there, and I
thought fellow kernel developers may have valuable input on this topic.

-- 
Regards,

Laurent Pinchart
