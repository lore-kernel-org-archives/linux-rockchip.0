From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2 2/3] soc: rockchip: add driver handling grf setup
Date: Thu, 9 Mar 2017 15:28:54 -0800
Message-ID: <20170309232852.GA15605@google.com>
References: <20161115223900.30728-1-heiko@sntech.de> <7144543.znLMLUJXpB@phil>
 <CAOesGMj_RdxVDzirT97KLkXRsyVcFh3Z8jZLNjn0ehAv0Qhmhg@mail.gmail.com>
 <2206970.JAebETMOV6@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <2206970.JAebETMOV6@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Arnd Bergmann <arnd@arndb.de>, shawn.lin@rock-chips.com, Doug Anderson <dianders@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Olof Johansson <olof@lixom.net>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

To throw my unwanted 2-cents in:

On Mon, Feb 27, 2017 at 06:30:08AM +0100, Heiko Stuebner wrote:
> Am Sonntag, 29. Januar 2017, 16:41:46 CET schrieb Olof Johansson:
> > On Sun, Jan 29, 2017 at 3:36 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> > Or, if you're firmly deciding to keep updating kernel code for all
> > SoCs, could also just add one platform quirk file in
> > drivers/soc/rockchip with the postcore_initcall that matches toplevel
> > compatible per SoC, finds the device node, maps the address range,
> > sets the value.
> > 
> > That'll give you a place for other platform quirks, if they ever come
> > up. In one place, even if the other quirks might be in other register
> > ranges.
> 
> I would very much prefer going this route, as I really don't trust the GRF to 
> keep conforming to any devicetree binding (or anything at all) and this way, 
> stuff is completely reversable / redoable if the need arises (hopefully not) 
> and we don't have to live with an inadequate bindings forever :-) .

Agreed, FWIW (though I'm not sure why a top-level chip driver is better
than a GRF driver). Rockchip's GRF is basically "designed" (that's
probably not an accurate word) to need updating on every chip revision.
I'm also not very confident in any given binding around it. DT bindings
are notoriously hard to modify after they've been accepted, and I don't
see much actual value in foolishly codifying every bit of GRF in the
device tree bindings.

I think this pattern applies elsewhere too -- for instance, on the
Type-C PHY controller [1], which currently defies the above and instead
tries to list each GRF offset it needs in the DT; this is, IMO, quite
unscalable. We're already nearly breaking backward compatibility, and
we've only supported one SoC there!!

Brian

[1] https://patchwork.kernel.org/patch/9566079/
    [PATCH 3/4] phy: rockchip-typec: support DP phy switch
