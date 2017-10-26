From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3 3/6] drm/rockchip/dsi: correct Feedback divider setting
Date: Thu, 26 Oct 2017 14:32:05 -0700
Message-ID: <20171026213204.GA55212@google.com>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
 <1508903463-7254-3-git-send-email-nickey.yang@rock-chips.com>
 <20171025075719.4tt7lomec5x7guon@art_vandelay>
 <20171026010946.GA33225@google.com>
 <c1f17f1e-6e4f-d44d-348e-43157474f3c9@codeaurora.org>
 <39862e7a-b03f-f5d9-54db-ff9aef294a9c@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <39862e7a-b03f-f5d9-54db-ff9aef294a9c@st.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Philippe CORNU <philippe.cornu@st.com>
Cc: Archit Taneja <architt@codeaurora.org>, Sean Paul <seanpaul@chromium.org>, Nickey Yang <nickey.yang@rock-chips.com>, "mark.yao@rock-chips.com" <mark.yao@rock-chips.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "hl@rock-chips.com" <hl@rock-chips.com>, "zyw@rock-chips.com" <zyw@rock-chips.com>, "xbl@rock-chips.com" <xbl@rock-chips.com>, Kristian Kristensen <hoegsberg@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

(correction zyw's email ".comg" is not a TLD!)

Hi,

On Thu, Oct 26, 2017 at 09:44:14AM +0000, Philippe CORNU wrote:
> On 10/26/2017 06:13 AM, Archit Taneja wrote:
> > On 10/26/2017 06:39 AM, Brian Norris wrote:
> >> On Wed, Oct 25, 2017 at 03:57:19AM -0400, Sean Paul wrote:
> >>> Archit asked a question about moving to
> >>> dw-mipi-dsi
> >>
> >> That question made me think though: this approach seems backwards. It
> >> seems like someone did copy/paste/fork, and then we're asking the
> >> authors of the original driver to un-fork? It seems like this should
> >> happen the other way around -- those trying to support a new incarnation
> >> should have looked to try to abstract the original driver for their
> >> uses first.
> > 
> > Yes, ST wanted to replicate rockchip's version of the mipi DSI driver and
> > put it in their folder. If they did that, their KMS driver would have been
> > the third driver to implement a third instance of the DW DSI controller 
> > driver.
> > Hisilicon and Rockchip being the other 2.

I hadn't noticed Hisilicon's version. That's an unfortunate start :(

> > It was either that or attempt at a common DSI DW bridge driver. I suggested
> > the latter.
> > 
> > The ST guys have abstracted out the PHY pieces, which they knew varied 
> > between
> > rockchip and ST. Ideally, they should have also tried to create a RFC 
> > patch to
> > make the rockchip driver use the bridge too. But they didn't do that, and
> > the rockchip or hisilicon people were interested in even looking at it,
> > even after I CC'ed them.

I see. At least the current code from Philippe isn't that big, and it is
indeed fairly similar.

But I still think the way to get cooperation upstream is to enforce it;
so there was a 3rd option to the above -- don't merge *any* new driver
without posting at least an attempt to unify the existing drivers.

> >> IIUC, that's exactly what Rockchip did for much of their Analogix eDP
> >> code -- they reworked the Exynos DP driver to split common Analogix code
> >> from any Exynos-specific bits.
> > 
> > I get that. I had hoped either ST or Rockchip guys would have done the 
> > similar
> > thing, but no one volunteered.

:(

Nickey, can you confirm that you or someone on your team will look at
utilizing the common driver? Please reply to this email thread before
sending another version of this series.

> >> And actually, the current stuff in
> >> drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c is completely unused. It
> >> exports some functions, but I see no users of it. Is that intended? Is
> > 
> > The ST kms driver uses it:
> > 
> > drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
> > 
> 
> I confirm STM32 chipsets use the Synopsys dw dsi bridge driver.
> 
> I plan to improve this bridge driver by adding new features (see todos + 
> dsi read, command mode with bta & gpio...).
> 
> For the first commit, I did my best to keep the source code as close as 
> possible to the Rockchip version, in order to ease the port for Rockchip 
> guys.

That's nice to see, even if it still isn't ideal.

> >> somebody already working on refactoring existing Rockchip code to use
> >> this?
> > 
> > I don't know. If rockchip isn't interested in doing it, we can check with
> > Philippe from ST if he can try creating a RFC that converts the rockchip
> > driver to use the dw-mipi-dsi driver.
> 
> I am not really interested in doing this port for Rockchip (or Hisilicon 
> or i.MX...) but happy to help anyone that wants to use the dw-mipi-dsi 
> bridge driver :)

Well, see my comments above. Your "interest" is obviously in merging
code to support your own IP, but the community can *make* it your
interest by requiring you do the unification before your code goes
upstream. Apparently that's not the policy here though.

Brian
