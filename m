From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Subject: Re: [PATCH v6 5/6] rockchip: Add Single boot image (with binman,
 pad_cat)
Date: Fri, 10 Jan 2020 12:42:03 +0300
Message-ID: <CAJs94EYEr82dv0_Wu_Y0XY=fA1kxvBt-Cav+vuR1MUA2U3811w@mail.gmail.com>
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
 <20200104083806.3930-6-jagan@amarulasolutions.com>
 <CAPnjgZ0u7E=KmiJodARvVFfVv+u0vdxCC1NN_2tnFNAMkp4NLw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAPnjgZ0u7E=KmiJodARvVFfVv+u0vdxCC1NN_2tnFNAMkp4NLw@mail.gmail.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Simon Glass <sjg@chromium.org>
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, U-Boot Mailing List <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>, Akash Gajjar <akash@openedev.com>
List-Id: linux-rockchip.vger.kernel.org

=D0=BF=D1=82, 10 =D1=8F=D0=BD=D0=B2. 2020 =D0=B3. =D0=B2 12:39, Simon Glass=
 <sjg@chromium.org>:
>
> Hi Jagan,
>
> On Sat, 4 Jan 2020 at 21:38, Jagan Teki <jagan@amarulasolutions.com> wrot=
e:
> >
> > All rockchip platforms support TPL or SPL-based bootloader
> > in mainline with U-Boot proper as final stage. For each
> > stage we need to burn the image on to flash with respective
> > offsets.
> >
> > This patch creates a single boot image component using
> > - binman, for arm32 rockchip platforms
> > - pad_cat, for arm64 rockchip platforms.
> >
> > This would help users to get rid of burning different
> > boot stage images.
> >
> > The new image called 'u-boot-rockchip.bin'
> > which can burn into flash like:
> >
> > =E2=82=B9 sudo dd if=3Du-boot-rockchip.bin of=3D/dev/sda seek=3D64
>
> How about adding the initial 64 blocks into the image too, so the seek
> isn't needed?
>

It will break partition tables on the target device.

> > This would support all rockchip platforms, except rk3128
> > since it doesn't support for SPL yet.
> >
> > Cc: Kever Yang <kever.yang@rock-chips.com>
> > Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> > ---
> >  Makefile                          | 14 ++++++++++++--
> >  arch/arm/Kconfig                  |  1 +
> >  arch/arm/dts/rk3036-u-boot.dtsi   |  2 ++
> >  arch/arm/dts/rk3288-u-boot.dtsi   |  2 ++
> >  arch/arm/dts/rockchip-u-boot.dtsi | 21 +++++++++++++++++++++
> >  include/configs/rockchip-common.h |  3 +++
> >  6 files changed, 41 insertions(+), 2 deletions(-)
> >  create mode 100644 arch/arm/dts/rockchip-u-boot.dtsi
>
> Regards,
> Simon



--=20
With best regards,
Matwey V. Kornilov
