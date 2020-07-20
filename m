From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 3/4] rtc: rk8xx: Add base support for the RK808 PMIC RTC
Date: Mon, 20 Jul 2020 16:23:40 +0530
Message-ID: <CAMty3ZAqC0o35c6pE4GuH+KPgzw2pZVaf0BMUdCyF8RRc-=NYA@mail.gmail.com>
References: <20200710155057.310168-1-jagan@amarulasolutions.com>
 <20200710155057.310168-4-jagan@amarulasolutions.com>
 <10af1b1e-489a-67a4-859c-3d02decd990b@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <10af1b1e-489a-67a4-859c-3d02decd990b@rock-chips.com>
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

On Sat, Jul 18, 2020 at 5:41 PM Kever Yang <kever.yang@rock-chips.com> wrot=
e:
>
> Hi Jagan,
>
> On 2020/7/10 =E4=B8=8B=E5=8D=8811:50, Jagan Teki wrote:
> > From: Suniel Mahesh <sunil@amarulasolutions.com>
> >
> > Rockchip RK808 PMIC provides an integrated RTC module. It is
> > commonly used with Rockchip SoCs. Add basic support to access
> > date and time.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Change for v4:
> > - rebase
> > - style fixes
> > - warning fixes
>
>
> Seems like the change request by Elaine in previous version does not
> update ?

Yes, It requires the additional function to add that feature. We are
still working on it in proper shape and thinking this series as
initial support. Can you push this so-that we can send that feature
before rc2 or rc3?

Jagan.
