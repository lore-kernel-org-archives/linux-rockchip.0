From: Philippe CORNU <philippe.cornu-qxv4g6HH51o@public.gmane.org>
Subject: Re: [PATCH v3 3/6] drm/rockchip/dsi: correct Feedback divider setting
Date: Thu, 26 Oct 2017 09:44:14 +0000
Message-ID: <39862e7a-b03f-f5d9-54db-ff9aef294a9c@st.com>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
 <1508903463-7254-3-git-send-email-nickey.yang@rock-chips.com>
 <20171025075719.4tt7lomec5x7guon@art_vandelay>
 <20171026010946.GA33225@google.com>
 <c1f17f1e-6e4f-d44d-348e-43157474f3c9@codeaurora.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <c1f17f1e-6e4f-d44d-348e-43157474f3c9-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Content-Language: en-US
Content-ID: <6B19CD35E9DC7E4FBF0A93E0C88C1C3A-qxv4g6HH51o@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: "mark.rutland-5wv7dgnIgG8@public.gmane.org" <mark.rutland-5wv7dgnIgG8@public.gmane.org>, "hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "airlied-cv59FeDIM0c@public.gmane.org" <airlied-cv59FeDIM0c@public.gmane.org>, "zyw-TNX95d0MmH4t7mc0qhOs/Q@public.gmane.org" <zyw-TNX95d0MmH4t7mc0qhOs/Q@public.gmane.org>, Kristian Kristensen <hoegsberg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Nickey Yang <nickey.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "xbl-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <xbl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 10/26/2017 06:13 AM, Archit Taneja wrote:
> Hi,
> 
> On 10/26/2017 06:39 AM, Brian Norris wrote:
>> On Wed, Oct 25, 2017 at 03:57:19AM -0400, Sean Paul wrote:
>>> Archit asked a question about moving to
>>> dw-mipi-dsi
>>
>> That question made me think though: this approach seems backwards. It
>> seems like someone did copy/paste/fork, and then we're asking the
>> authors of the original driver to un-fork? It seems like this should
>> happen the other way around -- those trying to support a new incarnation
>> should have looked to try to abstract the original driver for their
>> uses first.
> 
> Yes, ST wanted to replicate rockchip's version of the mipi DSI driver and
> put it in their folder. If they did that, their KMS driver would have been
> the third driver to implement a third instance of the DW DSI controller 
> driver.
> Hisilicon and Rockchip being the other 2.
> 
> It was either that or attempt at a common DSI DW bridge driver. I suggested
> the latter.
> 
> The ST guys have abstracted out the PHY pieces, which they knew varied 
> between
> rockchip and ST. Ideally, they should have also tried to create a RFC 
> patch to
> make the rockchip driver use the bridge too. But they didn't do that, and
> the rockchip or hisilicon people were interested in even looking at it,
> even after I CC'ed them.
> 
>>
>> IIUC, that's exactly what Rockchip did for much of their Analogix eDP
>> code -- they reworked the Exynos DP driver to split common Analogix code
>> from any Exynos-specific bits.
> 
> I get that. I had hoped either ST or Rockchip guys would have done the 
> similar
> thing, but no one volunteered.
> 
>>
>> And actually, the current stuff in
>> drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c is completely unused. It
>> exports some functions, but I see no users of it. Is that intended? Is
> 
> The ST kms driver uses it:
> 
> drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> 

I confirm STM32 chipsets use the Synopsys dw dsi bridge driver.

I plan to improve this bridge driver by adding new features (see todos + 
dsi read, command mode with bta & gpio...).

For the first commit, I did my best to keep the source code as close as 
possible to the Rockchip version, in order to ease the port for Rockchip 
guys.

>> somebody already working on refactoring existing Rockchip code to use
>> this?
> 
> I don't know. If rockchip isn't interested in doing it, we can check with
> Philippe from ST if he can try creating a RFC that converts the rockchip
> driver to use the dw-mipi-dsi driver.

I am not really interested in doing this port for Rockchip (or Hisilicon 
or i.MX...) but happy to help anyone that wants to use the dw-mipi-dsi 
bridge driver :)

Many thanks,
Philippe :)

> 
> Thanks,
> Archit
> 
