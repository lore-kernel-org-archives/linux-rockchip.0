From: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: rockchip-vpu driver usability
Date: Fri, 25 May 2018 17:52:57 +0800
Message-ID: <5B07DCF9.2090709@rock-chips.com>
References: <20180524103431.63eog25qynr72ots@tarshish>
 <CAAFQd5DZkLoR3HCD74JdWQzg4XZ8Rmh9=DCgAhYX=7ue-iHDtA@mail.gmail.com>
 <20180524121824.fdtyjez3lc5pftfz@tarshish>
 <CAAFQd5Ap9v2-oyxZ8UK1bfsfEKd7K+=1erz+aK75SsLdd1SxHQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAFQd5Ap9v2-oyxZ8UK1bfsfEKd7K+=1erz+aK75SsLdd1SxHQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, myy-tmjzNUIc0P1+EYZtW95mkQ@public.gmane.org, alpha.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 05/25/2018 02:10 PM, Tomasz Figa wrote:
> On Thu, May 24, 2018 at 9:18 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
>
>> Hi Tomasz,
>
>> On Thu, May 24, 2018 at 08:46:35PM +0900, Tomasz Figa wrote:
>>> On Thu, May 24, 2018 at 7:34 PM Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org> wrote:
>>>> I'm trying to get the RK3288 VPU do h.264 encoding on the Tinkerboard
>>>> platform with latest mainline kernel. I found the v4l2 based
> rockchip-vpu
>>>> driver in the vendor kernel. But I could not get it work even in the
>>>> context of that kernel. Is this driver in usable state? If not, how
> far it
>>>> is from being usable?
>>>
>>> The driver in chromeos-3.14 kernel [1] is running in production on
> RK3288
>>> systems, while the one in chromeos-4.4 [2] on RK3399 systems.
>>>
>>> [1]
>>>
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-3.14/drivers/media/platform/rk3288-vpu/
>>> [2]
>>>
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.4/drivers/media/platform/rockchip-vpu/
>>>
>>> However, it doesn't implement a regular stateful V4L2 encoder API, since
>>> the hardware is stateless and does only part of the encoding. For other
>>> things, like bitstream generation and bitrate control, we have
> libv4l-based
>>> plugins for rk3288 [3] and rk3399 [4].
>>>
>>> [3]
>>>
> https://chromium.googlesource.com/chromiumos/third_party/libv4lplugins/+/master/libv4l-rockchip/
>>> [4]
>>>
> https://chromium.googlesource.com/chromiumos/third_party/libv4lplugins/+/master/libv4l-rockchip_v2/
>
>> This is interesting, thanks.
>
>> It looks like only v2 supports h.264 encoding. Does the v2 plugin work
> with
>> the rk3288?
>
> Hmm, looks like I missed the part about h264 in your original message (only
> noticed encoding). We didn't have a need to encode h264 on rk3288 devices.
> The need showed up only later when we were working on rk3399. This made
> both the driver and plugin for rk3288 lack h264 support.
>
> AFAICT the hardware programming interface differs between rk3288 and
> rk3399, so v2 might not work, but maybe you just need to reshuffle some
> registers.
>
> It's also possible that Rockchip has some code for it. Jeffy, do you know
> if there is h264 driver code and plugin for rk3288 available somewhere
> (based on the driver developed for Chrome OS 3.14 kernel)?
>

well, i do saw a h264e driver for rk3288 in cros kernel:
chromiumos/src/third_party/kernel/local/drivers/media/platform/rockchip-vpu# 
ls rk3288_vpu_hw_h264e.c

and the related struct defined in v2 plugin:
libv4l-rockchip_v2/libvepu/common/rk_venc.h:120:struct 
rk3288_h264e_reg_params {


>
>> A recent discussion on the linux-media list indicated that gstreamer and
>> libv4l2 are not a good match. Which application would you recommend for
> doing
>> h.264 encoding?
>
>>> Do you have any details on what was going wrong when you tried to "get
> it
>>> work even in the context of that kernel"?
>
>> I used the code from the 'develop' branch of the TinkerOS kernel source
>> tree[1]. I had to build the latest gstreamer version 1.14.0 to get the
>> v4l2h264enc plugin. On startup I got a lot of "must be set encoding output
>> size" error messages from try_fmt. Shortly after that I got a NULL
> dereference
>> BUG message.
>
>> But since you say that the driver does not implement the regular API, I
> can't
>> expect gstreamer native V4L2 code to work, right?
>
> Nope. GStreamer would be expecting the normal stateful encoder API.
>
>
>> [1] https://github.com/TinkerBoard/debian_kernel
>
>>>> Another option is to forward port the rockchip-vcodec shim driver for
> the
>>>> MPP
>>>> framework. I'm aware of Myy Miouyouyou's work[1] in this area. But
> this
>>>> driver
>>>> seems unusable as well. Testing v4.17-rc6, the PM code fails to
> enable the
>>>> video power domain (the hvec power domain enables correctly, though).
> The
>>>> error is:
>>>
>>>>     rockchip-pm-domain ff730000.power-management:power-controller:
> failed
>>> to get ack on domain 'pd_video', val=0x8021c
>>>
>>> Hmm, this looks like some problem with power domains. I don't think
> this is
>>> related to the codec driver itself. Could be something wrong with power
>>> domain driver or some data in device tree, such as power domain clocks.
>>>
>>>
>>>> With the TinkerOS provided kernel I managed to make the VPU encode to
>>> h.264
>>>> using the gstreamer MPP plugin. But I would rather not use that
> kernel if
>>>> possible, since that would mean backporting other v4l2 code that I
> need.
>>>
>>>> Do you have any other idea/direction for me to explore?
>>>
>>> I think you should be able to get our driver to work, but ideally we
> should
>>> create a proper stateless encoder API, based on V4L2 Request API,
> similar
>>> to what's being proposed for decoders.
>
>> Thanks for your detailed and helpful response.
>
> Well, not so helpful in the end. I feel like we could have done better with
> pushing this driver upstream. Hopefully the Request API finalizes soon and
> we can try to push this forward.
>
> Best regards,
> Tomasz
>
>
>
