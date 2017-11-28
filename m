From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3 3/6] drm/rockchip/dsi: correct Feedback divider setting
Date: Mon, 27 Nov 2017 16:29:39 -0800
Message-ID: <20171128002938.GA42258@google.com>
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
Cc: Archit Taneja <architt@codeaurora.org>, Sean Paul <seanpaul@chromium.org>, Nickey Yang <nickey.yang@rock-chips.com>, "mark.yao@rock-chips.com" <mark.yao@rock-chips.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "hl@rock-chips.com" <hl@rock-chips.com>, "zyw@rock-chips.comg" <zyw@rock-chips.comg>, "xbl@rock-chips.com" <xbl@rock-chips.com>, Kristian Kristensen <hoegsberg@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Oct 26, 2017 at 09:44:14AM +0000, Philippe CORNU wrote:
> On 10/26/2017 06:13 AM, Archit Taneja wrote:
> > On 10/26/2017 06:39 AM, Brian Norris wrote:
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

Ugh, this stuff is worse than I expected. I'm helping Rockchip along
with getting this rewritten, but there are some hiccups.

Among other things, the bridge driver is assuming it can set the
device's drvdata itself. This works because the STM MIPI driver is
simple, but the Rockchip one registers stuff via component_add(), and so
it *needs* to handle drvdata between probe() and bind()...but then the
"common" bridge driver is going to clobber it (dev_set_drvdata()).

Along the way, I'm noticing that the STM driver just steps around this
at times by referencing a static (!!) instance of its priv_data. See:

static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
{
	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
...


I might rewrite this, but it's not fun to have to fix somebody else's
fork for them...

Brian
