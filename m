From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 2/5] rk3399: spl: Print SPL banner after relocation
Date: Fri, 10 Jul 2020 15:49:27 +0530
Message-ID: <CAMty3ZDi4DRQX+RWmJqaRxpiBQvF2OUUoqLEphOz165g=9RX2Q@mail.gmail.com>
References: <20200618153948.218506-1-jagan@amarulasolutions.com>
 <20200618153948.218506-3-jagan@amarulasolutions.com>
 <0a2a47aa-e2e2-ea0e-bcf4-7a1137cc6129@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <0a2a47aa-e2e2-ea0e-bcf4-7a1137cc6129@rock-chips.com>
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

On Sun, Jun 28, 2020 at 8:26 AM Kever Yang <kever.yang@rock-chips.com> wrot=
e:
>
> Hi Jagan,
>
> On 2020/6/18 =E4=B8=8B=E5=8D=8811:39, Jagan Teki wrote:
> > Usually printing the SPL banner varies between architecture
> > or board codes.
> > - Some would print before relocation at the end board_init_f
> >    for making sure all initialization prior to this would happen
> >    properly. if at all there is a requirement for serial init,
> >    that happens properly since it prints all after that.
> > - Some would print after relocation at the spl_board_init for
> >    making sure all initialization prior to relocation would
> >    happen properly. Also debug uart on these cases would be
> >    available before relocation. So debug support is available
> >    in before and after relocation.
> >
> > Rockchip SPL is following formar step to print the banner at
> > the end of board_init_f.
> >
> > To support various custom use cases in SPL like leds, environment,
> > board detections later options like printing the banner after
> > relocation would be a better option.
>
> I don't agree, the banner is tell people we are in SPL now, we should
> print it as soon as
>
> possible,  if any of step like led, env, relocate and etc fails, then
> user can not see anything,
>
> they don't event know if we have get into SPL. The update of leds and
> env does not depends
>
> on banner print.

It is unsafe or sometimes won't work if we do leds, env at _f due to
memory availability. Since we have debug uart at _f and moving spl
banner to relocation will make the debug available possible in
relocation code.

Jagan.
