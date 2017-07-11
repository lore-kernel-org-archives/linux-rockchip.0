From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 1/2] phy-rockchip-pcie: add set_mode callback
Date: Mon, 10 Jul 2017 22:20:32 -0700
Message-ID: <CA+ASDXOpPdk+mrVQxrDmhsL-SUNSnQ_CqGXuW-Vrh_D7Gh8jxA@mail.gmail.com>
References: <1497601068-181656-1-git-send-email-shawn.lin@rock-chips.com> <cea27b15-2c2d-a4a9-76f8-f4798c152101@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <cea27b15-2c2d-a4a9-76f8-f4798c152101@ti.com>
Sender: linux-pci-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-pci@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

On Mon, Jul 10, 2017 at 9:45 PM, Kishon Vijay Abraham I <kishon@ti.com> wrote:
> On Friday 16 June 2017 01:47 PM, Shawn Lin wrote:
> > phy_mode was added for switching USB mode purposely as
> > well as phy_set_mode API. However other types of PHY could
> > also have some miscellaneous setting/modes need to be
> > handled. This patch is gonna support this callback for
> > phy-rockchip-pcie and do some power-saving work there.
> > Note that we just stuff in some other values other that the
> > existing phy_mode and convert it in the coressponding driver
> > instead, otherwise we should extend the phy_mode again which
> > it doesn't make sense to add in new driver's specificed value.
> > Overall it looks fine to me as the controller's driver and the
> > phy's driver are paired so that the caller and the consumer should
> > be able to keep the value(mode) in consistent.
>
> I really don't prefer using an API other that what it is intended for. We have
> to come up with a better way for handling this.
>
> IIUC this patch sets unused lanes in idle mode? If yes, then can't we model
> each lane as a separate phy, so that we can power-on/power-off each lane
> independently.

I suggested the same to Shawn previously. I'm interested in seeing his response.

But personally I'm still not sure if that's the most accurate way to
describe this PHY, except for the fact that inevitably, most device
tree bindings get molded to match the related kernel APIs, rather than
the other way around. What if instead, we added an enum mode entry
that represents "finished link training", at which point the PHY would
then know it can power down the unused lanes (that's assuming the PHY
can figure that part out)?

Or if we did re-model this PHY, how are we supposed to handle backward
compatibility? Can the same PHY driver support 2 different of_xlate
methods? I guess we'd have to provide an implementation that sets the
driver up to behave completely differently based on the number of
#phy-cells?

Brian
