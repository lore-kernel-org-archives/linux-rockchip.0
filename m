From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] rockchip: rk3288: Add OF board setup
Date: Wed, 8 Jul 2020 15:40:39 +0530
Message-ID: <CAMty3ZDQySh+bFg7kWVB69MX5Akpn_Gi3CSac8tbytWaT-2QjA@mail.gmail.com>
References: <20200702084820.35942-1-jagan@amarulasolutions.com>
 <d4688094-22bd-eae9-e121-4d8d63397e78@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <d4688094-22bd-eae9-e121-4d8d63397e78@rock-chips.com>
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>, Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 8, 2020 at 3:35 PM Kever Yang <kever.yang@rock-chips.com> wrote=
:
>
>
> On 2020/7/2 =E4=B8=8B=E5=8D=884:48, Jagan Teki wrote:
> > The new rk3288 revision rk3288w has some changes with respect
> > to legacy rk3288 like hclk_vio and usb host0 ohci.
> >
> > In order to work these on the same in Linux kernel update the
> > compatible the root compatible with rockchip,rk3288w before
> > booting.
> >
> > So, this support during of board setup code of rk3288.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Reviewed-by: Kever Yang<kever.yang@rock-chips.com>

Added v2 for this. please have a look

Jagan.
