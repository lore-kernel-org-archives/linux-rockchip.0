From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [GIT PULL 2/2] Rockchip arm64 devicetree fixes for 5.0
Date: Fri, 15 Feb 2019 20:29:37 +0100
Message-ID: <1949580.EMc7zAnHbR@diego>
References: <7484850.KS8GUYnfXV@phil> <1707879.5psMmg8Cs2@diego>
 <CAK8P3a3+6RuTEo=C0jkdiBswHrrKCSoxvYi3r60j45Sn6rhL3g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CAK8P3a3+6RuTEo=C0jkdiBswHrrKCSoxvYi3r60j45Sn6rhL3g@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Arnd Bergmann <arnd@arndb.de>
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 15. Februar 2019, 20:19:50 CET schrieb Arnd Bergmann:
> On Fri, Feb 15, 2019 at 7:38 PM Heiko St=FCbner <heiko@sntech.de> wrote:
> > Am Freitag, 15. Februar 2019, 13:42:48 CET schrieb Arnd Bergmann:
> > > On Fri, Feb 1, 2019 at 12:14 PM Heiko Stuebner <heiko@sntech.de> wrot=
e:
> > > > ----------------------------------------------------------------
> > > > Fix for new dtc graph warnings and a regulator fix for rock64.
> > > > =

> > > > ----------------------------------------------------------------
> > > > =

> > > > Dmitry Voytik (1):
> > > >       arm64: dts: rockchip: enable usb-host regulators at boot on
> > > >       rk3328-rock64
> > > =

> > > Pulled into arm/fixes, thanks!
> > > =

> > > Note: since we always have only a single fixes branch, sending the
> > > 32-bit and 64-bit fixes together would be slightly easier.
> > =

> > No problem, I'll keep 32+64bit fixes together in the future.
> > I guess regular changes for the merge-window should continue
> > being separated, right?
> =

> Yes, unless they are logically connected. You can also have
> more than two DT pull requests if that makes a better split.
> Some SoCs have separate dt-bindings pull requests (shared
> with drivers), or split out stuff by SoC subfamily if it gets too
> big (probably not necessary for rockchips, which seem more
> uniform).

yeah, I think the split I had so far (dts32+dts64+drivers if necessary)
worked quite well so far, so I'll keep it :-)
