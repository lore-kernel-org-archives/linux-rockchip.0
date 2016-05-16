From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 3/4] phy: rockchip-emmc: configure default output tap delay
Date: Mon, 16 May 2016 08:12:57 -0700
Message-ID: <CAD=FV=Xq3=B0NC7of-h_q8vCUDGz=33MU4vjY6EyQxQS+CC8=Q@mail.gmail.com>
References: <1463092986-61777-1-git-send-email-briannorris@chromium.org>
 <1463092986-61777-3-git-send-email-briannorris@chromium.org>
 <CAD=FV=WupNv+z86BgmR1n8bj+b6GKA5Ew7U9hgoAxV9dxF7gjQ@mail.gmail.com>
 <52567d92-d1d3-f089-65c2-a30f3a00386b@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <52567d92-d1d3-f089-65c2-a30f3a00386b-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Brian Norris <computersforpeace-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sun, May 15, 2016 at 9:15 PM, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Hi Doug,
>
>
> On 2016/5/14 6:25, Doug Anderson wrote:
>>
>> Hi,
>>
>> On Thu, May 12, 2016 at 3:43 PM, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> wrote:
>>>
>>> The output tap delay controls helps maintain the hold requirements for
>>> eMMC. The exact value is dependent on the SoC and other factors, though
>>> it isn't really an exact science. But the default of 0 is not very good,
>>> as it doesn't give the eMMC much hold time, so let's bump up to 4
>>> (approx 90 degree phase?). If we need to configure this any further
>>> (e.g., based on board or speed factors), we may need to consider a
>>> device tree representation.
>>
>>
>> As I understand it, this solves much the same problem as my patch in
>> <https://patchwork.kernel.org/patch/9085581/>, but for the eMMC port
>> on rk3399 (which doesn't use dw_mmc).  As argued in that patch and
>> also in the discussion from
>> <https://patchwork.kernel.org/patch/9030621/>, if we eventually end up
>> needing to put something in the device tree we need to be really
>> careful.  Specifically to get the exact right value here I think you
>> need to consider the input clock, speed mode, and any SoC-specific
>> delays differences between the clock and the data lines.  That would
>> imply that, if anything, the device tree data would only contain
>> information about the SoC-specific delay differences and all other
>> work to set this value would involve coordination between the PHY and
>> the SDHCI controller.
>>
>>
>> However, as also discussed previously, we don't appear to need to be
>> very exact about the value here.  It seems like setting this to 4 (~90
>> degrees?) is a much better starting point than leaving it at the
>> default of 0.
>
>
> The value, 4, is based on real silicon test observed from the
> oscilloscope, and of course it meets the requirement of speed modes.
> For arasan't phy, its phase is very accurate, so the real timing of
> the value you set almost won't vary too much for different Socs.
>
> So explicitly assigning 4 here looks sane currently except for crazy
> PCB layout...

Great to hear.  So we can probably just use your email as the basis of
the commit message?  How about this for the commit text then:

The output tap delay controls helps maintain the hold requirements for
eMMC.  The value, 4, is based on real silicon test observed from the
oscilloscope, and of course it meets the requirement of speed modes.
For arasan't phy, its phase is very accurate, so the real timing of
the value you set won't vary too much for different SoCs.

If / when we find an instance of a crazy PCB layout that needs a value
different than 4, we will figure out how to best specify that,
possibly using the device tree in some way.

-Doug
