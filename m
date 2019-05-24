From: Eduardo Valentin <edubezval@gmail.com>
Subject: Re: [PATCH] Revert "thermal: rockchip: fix up the tsadc pinctrl
 setting error"
Date: Thu, 23 May 2019 19:20:43 -0700
Message-ID: <20190524022042.GA1936@localhost.localdomain>
References: <20190522141236.26987-1-heiko@sntech.de>
 <CAD=FV=UxwqkHpsxXhEHrQDY6MtymeT3Gn_G4Q5xSh6pZVWTRHA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAD=FV=UxwqkHpsxXhEHrQDY6MtymeT3Gn_G4Q5xSh6pZVWTRHA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Linux PM <linux-pm@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, zhangqing <zhangqing@rock-chips.com>, Enric Balletbo Serra <eballetbo@gmail.com>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, May 22, 2019 at 08:34:34AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 22, 2019 at 7:12 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > This reverts commit 28694e009e512451ead5519dd801f9869acb1f60.
> >
> > The commit causes multiple issues in that:
> > - the added call to ->control does potentially run unclocked
> >   causing a hang of the machine
> > - the added pinctrl-states are undocumented in the binding
> > - the added pinctrl-states are not backwards compatible, breaking
> >   old devicetrees.
> >
> > Fixes: 28694e009e51 ("thermal: rockchip: fix up the tsadc pinctrl setting error")
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> >  drivers/thermal/rockchip_thermal.c | 36 +++---------------------------
> >  1 file changed, 3 insertions(+), 33 deletions(-)
> 
> In case it helps with the urgency, there are lots of people who have
> all independently needed to identify which commit stopped their boards
> from booting mainline or broke temperature reading.  I'm aware of at
> least these reports:
> 
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Enric Balletbo Serra <eballetbo@gmail.com>
> Reported-by: Vicente Bergas <vicencb@gmail.com>
> Reported-by: Jack Mitchell <ml@embed.me.uk>
> Reported-by: Douglas Anderson <dianders@chromium.org>
> 
> I can confirm that my board boots again after this revert, thus:
> 
> Tested-by: Douglas Anderson <dianders@chromium.org>

I see. I can collect this revert if that is what unblocks you guys.

Elaine, do you mind checking why these pinctrl changes are causing
boot issues?
