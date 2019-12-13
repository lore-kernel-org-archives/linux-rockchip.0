From: Peter Geis <pgwipeout@gmail.com>
Subject: =?UTF-8?B?UmU6IHJrMzMyOC1maXJlZmx5IGRkcjQgdHBsIGluaXTjgJDor7fms6jmhI/vvIzpgq4=?=
 =?UTF-8?B?5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytrZXZlci55YW5nPXJvY2stY2hpcHMuY29tQGxpc3Rz?=
 =?UTF-8?B?LmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
Date: Fri, 13 Dec 2019 07:51:32 -0500
Message-ID: <CAMdYzYqjtxQqMHSbMPgHCE_Fd8Ps4grUmS0MiMgp7yWqr_xpKA@mail.gmail.com>
References: <CAMdYzYpbhAT5EfJv2SuC8GZE3q3juUXCwtbAX8SW9eXiC5AP2g@mail.gmail.com>
 <70b1e484-2909-8296-bbd7-3026bf3b576c@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <70b1e484-2909-8296-bbd7-3026bf3b576c@rock-chips.com>
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
Cc: u-boot@lists.denx.de, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Dec 12, 2019 at 10:22 PM Kever Yang <kever.yang@rock-chips.com> wro=
te:
>
> Hi Peter,
>
> On 2019/12/5 =E4=B8=8A=E5=8D=8810:19, Peter Geis wrote:
> > Good Evening,
> >
> > I am trying to get TPL/SPL working on the rk3328-firefly ddr4 4gb board=
.
> > I've pulled the ddr4 dtsi from the rockchip u-boot repository [0].
> >
> > Unfortunately I cannot get the ddr4 to detect correctly.
>
>
> Yes, the ddr4 support for rk3328 is missing now, we will update it some
> time later.
>
>
> Thanks,
>
> - Kever

Thank you for letting me know.
I'll be sure to test it for you when it lands.

>
> >
> > With the u-boot tpl, I get the following:
> > U-Boot TPL 2020.01-rc3-00072-g1a1bea82b2-dirty (Dec 04 2019 - 08:33:54)
> > data training error
> > row errordata training error
> > DDR4, 333MHz
> > BW=3D16 Col=3D10 Bk=3D4 BG=3D2 CS0 Row=3D17 CS=3D1 Die BW=3D16 Size=3D2=
048MB
> >
> > With the rk3328_ddr_333MHz_v1.16.bin, I get the following:
> > DDR version 1.16 20190528
> > ID:0x805 N
> > In
> > DDR4
> > 333MHz
> > Bus Width=3D32 Col=3D10 Bank=3D4 Bank Group=3D2 Row=3D16/16 CS=3D2 Die
> > Bus-Width=3D16 Size=3D4096MB
> > ddrconfig:19
> > OUT
> >
> > [0] https://github.com/rockchip-linux/u-boot/blob/next-dev/arch/arm/dts=
/rk3328-sdram-ddr4-666.dtsi
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >
> >
>
>
