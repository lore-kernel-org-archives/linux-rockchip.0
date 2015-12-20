From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v3 7/8] clk: rockchip: fix usbphy-related clocks
Date: Sun, 20 Dec 2015 14:39:15 +0530
Message-ID: <5676703B.90300@ti.com>
References: <1447968149-10979-1-git-send-email-heiko@sntech.de>
 <1447968149-10979-8-git-send-email-heiko@sntech.de> <566FF0F0.6080803@ti.com>
 <80597401.Y78Rj8FshV@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <80597401.Y78Rj8FshV@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org
Cc: hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, arnd-r2nGTMty4D4@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Saturday 19 December 2015 10:51 PM, Heiko St=FCbner wrote:
> Hi Kishon,
> =

> Am Dienstag, 15. Dezember 2015, 16:22:32 schrieb Kishon Vijay Abraham I:
>> On Friday 20 November 2015 02:52 AM, Heiko Stuebner wrote:
>>> The otgphy clocks really only drive the phy blocks. These in turn
>>> contain plls that then generate the 480m clocks the clock controller
>>> uses to supply some other clocks like uart0, gpu or the video-codec.
>>>
>>> So fix this structure to actually respect that hirarchy and removed
>>> that usb480m fixed-rate clock working as a placeholder till now, as
>>> this wouldn't even work if the supplying phy gets turned off while
>>> its pll-output gets used elsewhere.
>>>
>>> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>>> Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>
>> I saw you've given your Acked-by in a previous version of this patch.
>> Do you want me to take this in linux-phy tree?
> =

> from my POV, this series should probably go through your tree in one go, =
as =

> this patch depends on the newly exposed clocks from the previous patch. S=
o to =

> keep bisectability, it should most likely stay together.

I agree. But I can't take another subsystem patch without getting a clear n=
od
from the maintainer. I'll wait till tomorrow for Turquette to give his Acke=
d-by.

Thanks
Kishon
