From: Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org>
Subject: Re: rockchip-vpu driver usability
Date: Wed, 4 Jul 2018 11:55:37 +0300
Message-ID: <20180704085537.vglkza6bwllx3573@sapphire.tkos.co.il>
References: <20180524103431.63eog25qynr72ots@tarshish>
 <CAAFQd5DZkLoR3HCD74JdWQzg4XZ8Rmh9=DCgAhYX=7ue-iHDtA@mail.gmail.com>
 <20180524121824.fdtyjez3lc5pftfz@tarshish>
 <CAAFQd5Ap9v2-oyxZ8UK1bfsfEKd7K+=1erz+aK75SsLdd1SxHQ@mail.gmail.com>
 <5B07DCF9.2090709@rock-chips.com>
 <20180702072458.gcvwf24m63u2zg4m@tarshish>
 <CAAFQd5Ddc2w7GdzWcSPBKbpnkc2KLAXePBEbSNjbkt9aNjhOAg@mail.gmail.com>
 <20180702145707.kogqcuuqqofyugoc@tarshish>
 <CAAFQd5CytjMN1ZvX27TGuHbfywbQ3Lmqh6UV6YJdgSouqQ_+8w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <CAAFQd5CytjMN1ZvX27TGuHbfywbQ3Lmqh6UV6YJdgSouqQ_+8w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Jeffy <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, myy-tmjzNUIc0P1+EYZtW95mkQ@public.gmane.org, Alpha Lin <alpha.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Tomasz,

On Tue, Jul 03, 2018 at 11:29:03PM +0900, Tomasz Figa wrote:
> On Mon, Jul 2, 2018 at 11:57 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
> > On Mon, Jul 02, 2018 at 04:30:52PM +0900, Tomasz Figa wrote:
> > > On Mon, Jul 2, 2018 at 4:25 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
> > > > I'm trying to build the v4l plugin stand alone. But in the repo I only 
> > > > see a Makefile.am file. I guess it integrates with the higher level 
> > > > build system of CromiumOS.
> > > >
> > > > Do you have any idea how to build this v4l plugin code stand-alone?
> > >
> > > It's supposed to be built as a part of v4l-utils
> > > (http://git.linuxtv.org/v4l-utils.git), which includes libv4l. We
> > > build it with 1.6.0, but I guess newer versions may work too.
> > >
> > > For reference, here's our ebuild (for Gentoo portage) to build it:
> > > https://chromium.googlesource.com/chromiumos/overlays/chromiumos-overlay/+/master/media-libs/libv4lplugins/libv4lplugins-9999.ebuild
> >
> > The rockchip plugin code refers to the 'config_store' field in v4l2_buffer and
> > v4l2_ext_controls. This requires a special version of videodev2.h that is in
> > the chromeos-4.4 kernel (featuring commits 3b6d3bc13e572 and 86be552490a2a).
> >
> > The code of libv4l2 also requires patching since it refers to the 'reserved2'
> > field of v4l2_buffer since before version 1.6.0.
> >
> > I could not find these patches in the libv4l2 ebuild[1]. Where can I find
> > them? Is there some other version of libv4l2 that the rockchip plugin builds
> > against?
> 
> The code is based on Chrome OS kernel headers [1], which are based on
> Chrome OS 4.4 kernel [2], which includes some downstream changes.
> 'config_store' comes from the V4L2 configuration store work in
> progress series by Hans Verkuil, which eventually evolved into what we
> know today as Request API (still not merged, though). The purpose of
> configuration stores was to bind specific V4L2 control values with
> particular buffers, since Rockchip encoder needs a number of low level
> encoding parameters for every frame [3].
> 
> Another caveat is that the encoder API we have implemented in that
> driver is just based on hardware registers (excluding the security
> sensitive registers, which the driver deals with directly). The plugin
> generates registers values and the driver just writes them to the
> hardware. This needs to be replaced with a proper stateless encoder
> API, based on Request API, which we're working on.

So to get the rockchip-vpu driver working with current kernel I need to also 
forward-port the embryonic Request API as well. I'll look into this.

Are you aware of any other dependencies?

The alternative for me is to back-port rkisp1 video capture driver to vendor 
provided 4.4 kernel so I can use the MPP shim driver. I hope to not get there.

The easiest option, of course, is to just wait for the Request API and the new 
codec driver. I'm not sure I can afford to wait though.

Thanks for your support in sorting that out.

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org - tel: +972.2.679.5364, http://www.tkos.co.il -
