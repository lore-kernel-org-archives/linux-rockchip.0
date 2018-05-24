From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: rockchip-vpu driver usability
Date: Thu, 24 May 2018 20:46:35 +0900
Message-ID: <CAAFQd5DZkLoR3HCD74JdWQzg4XZ8Rmh9=DCgAhYX=7ue-iHDtA@mail.gmail.com>
References: <20180524103431.63eog25qynr72ots@tarshish>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180524103431.63eog25qynr72ots@tarshish>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, myy-tmjzNUIc0P1+EYZtW95mkQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Baruch,

On Thu, May 24, 2018 at 7:34 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:

> Hi Tomasz,

> I'm trying to get the RK3288 VPU do h.264 encoding on the Tinkerboard
platform
> with latest mainline kernel. I found the v4l2 based rockchip-vpu driver
in the
> vendor kernel. But I could not get it work even in the context of that
kernel.
> Is this driver in usable state? If not, how far it is from being usable?

The driver in chromeos-3.14 kernel [1] is running in production on RK3288
systems, while the one in chromeos-4.4 [2] on RK3399 systems.

[1]
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-3.14/drivers/media/platform/rk3288-vpu/
[2]
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.4/drivers/media/platform/rockchip-vpu/

However, it doesn't implement a regular stateful V4L2 encoder API, since
the hardware is stateless and does only part of the encoding. For other
things, like bitstream generation and bitrate control, we have libv4l-based
plugins for rk3288 [3] and rk3399 [4].

[3]
https://chromium.googlesource.com/chromiumos/third_party/libv4lplugins/+/master/libv4l-rockchip/
[4]
https://chromium.googlesource.com/chromiumos/third_party/libv4lplugins/+/master/libv4l-rockchip_v2/

Do you have any details on what was going wrong when you tried to "get it
work even in the context of that kernel"?


> Another option is to forward port the rockchip-vcodec shim driver for the
MPP
> framework. I'm aware of Myy Miouyouyou's work[1] in this area. But this
driver
> seems unusable as well. Testing v4.17-rc6, the PM code fails to enable the
> video power domain (the hvec power domain enables correctly, though). The
> error is:

>    rockchip-pm-domain ff730000.power-management:power-controller: failed
to get ack on domain 'pd_video', val=0x8021c

Hmm, this looks like some problem with power domains. I don't think this is
related to the codec driver itself. Could be something wrong with power
domain driver or some data in device tree, such as power domain clocks.


> With the TinkerOS provided kernel I managed to make the VPU encode to
h.264
> using the gstreamer MPP plugin. But I would rather not use that kernel if
> possible, since that would mean backporting other v4l2 code that I need.

> Do you have any other idea/direction for me to explore?

I think you should be able to get our driver to work, but ideally we should
create a proper stateless encoder API, based on V4L2 Request API, similar
to what's being proposed for decoders.

Best regards,
Tomasz


> Thanks,
> baruch

> [1] https://github.com/Miouyouyou/rockchip-vcodec

> --
>       http://baruch.siach.name/blog/                  ~. .~   Tk Open
Systems

=}------------------------------------------------ooO--U--Ooo------------{=
>     - baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org - tel: +972.52.368.4656, http://www.tkos.co.il -
