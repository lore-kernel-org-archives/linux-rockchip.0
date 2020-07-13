From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 4/5] rockchip: Separate the reset cause from display
 cpuinfo
Date: Tue, 14 Jul 2020 01:27:22 +0530
Message-ID: <CAMty3ZDUZXamO5-H3t8TgXq23feiOh+wKK2s+npxEC9FzU6Z+Q@mail.gmail.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
 <20200618153948.218506-5-jagan@amarulasolutions.com>
 <3ecbc635-d430-3ee1-7656-3430b7b74f5b@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <3ecbc635-d430-3ee1-7656-3430b7b74f5b@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Kever,

On Sun, Jun 28, 2020 at 8:17 AM Kever Yang <kever.yang@rock-chips.com> wrot=
e:
>
> HI Jagan,
>
> On 2020/6/18 =E4=B8=8B=E5=8D=8811:39, Jagan Teki wrote:
> > reset cause is a generic functionality based on the soc
> > cru registers in rockchip. This can be used for printing
> > the cause of reset in cpuinfo or some other place where
> > reset cause is needed.
> >
> > Other than cpuinfo, reset cause can also be using during
> > bootcount for checking the specific reset cause and glow
> > the led based on the reset cause.
> >
> > So, let's separate the reset cause code from cpuinfo, and
> > add a check to build it for rk3399, rk3288 since these two
> > soc are supporting reset cause as of now.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
> > ---
> > Changes for v4:
> > - none
> >
> >   arch/arm/include/asm/arch-rockchip/cru.h |  2 ++
> >   arch/arm/mach-rockchip/Makefile          |  5 ++++-
> >   arch/arm/mach-rockchip/cpu-info.c        | 20 ++++++++++++--------
> >   3 files changed, 18 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm/include/asm/arch-rockchip/cru.h b/arch/arm/includ=
e/asm/arch-rockchip/cru.h
> > index 5eb17f9d55..317eb61049 100644
> > --- a/arch/arm/include/asm/arch-rockchip/cru.h
> > +++ b/arch/arm/include/asm/arch-rockchip/cru.h
> > @@ -31,4 +31,6 @@ enum {
> >
> >   #define MHz         1000000
> >
> > +char *get_reset_cause(void);
>
> Since you add a environment, you should use that instead of export
> get_reset_cause().

Yes we can read reset_reason env in SPL but there is a fundamental
issue with this, say the previous reset cause is RST so the env set to
RST. For next power-on reset the reset_reason still shows RST since it
was updated previously but the actual cause of the reset is POR.

Jagan.
