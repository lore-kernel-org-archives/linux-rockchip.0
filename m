From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: =?UTF-8?B?UmU6IFJlOiBbUEFUQ0ggdjcgMS84XSBkdC1iaW5kaW5nczogbXRkOiBEZXNjcmliZSBSbw==?=
        =?UTF-8?B?Y2tjaGlwIFJLM3h4eCBOQU5EIGZsYXNoIGNvbnRyb2xsZXLjgJDor7fms6jmhI/vvIzpgq7ku7bnlLFy?=
        =?UTF-8?B?b2JoZXJyaW5nMkBnbWFpbC5jb23ku6Plj5HjgJE=?=
Date: Thu, 16 Jul 2020 10:33:22 -0600
Message-ID: <CAL_Jsq+5pgsLNS5t=d2yzYukjXurr2B3pUdb_gejqwA7Tv-7mQ@mail.gmail.com>
References: <20200715090342.28339-1-yifeng.zhao@rock-chips.com>
 <20200715090342.28339-2-yifeng.zhao@rock-chips.com> <20200715175356.GA502928@bogus>
 <2020071610022540759717@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2020071610022540759717-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: devicetree <devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, vigneshr <vigneshr-l0cyMroinI0@public.gmane.org>, =?UTF-8?Q?HeikoSt=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, richard <richard-/L3Ra7n9ekc@public.gmane.org>, Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-mtd <linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-rockchip <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 15, 2020 at 8:04 PM =E8=B5=B5=E4=BB=AA=E5=B3=B0 <yifeng.zhao@ro=
ck-chips.com> wrote:
>
> Hi Rob,
>
> >On Wed, 15 Jul 2020 17:03:39 +0800, Yifeng Zhao wrote:
> >> Documentation support for Rockchip RK3xxx NAND flash controllers
> >>
> >> Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >> ---
> >>
> >> Changes in v7:
> >> - Fix some wrong define
> >>
> >> Changes in v6:
> >> - Fix some wrong define
> >> - Modified the definition of compatible
> >>
> >> Changes in v5:
> >> - Fix some wrong define.
> >> - Add boot-medium define.
> >> - Remove some compatible define.
> >>
> >> Changes in v4:
> >> - The compatible define with rkxx_nfc.
> >> - Add assigned-clocks.
> >> - Fix some wrong defineChanges in.
> >>
> >> Changes in v3:
> >> - Change the title for the dt-bindings.
> >>
> >> Changes in v2: None
> >>
> >>  .../mtd/rockchip,nand-controller.yaml         | 162 +++++++++++++++++=
+
> >>  1 file changed, 162 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/mtd/rockchip,nan=
d-controller.yaml
> >>
> >
> >
> >My bot found errors running 'make dt_binding_check' on your patch:
> >
> >/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd=
/rockchip,nand-controller.example.dt.yaml: example-0: nand-controller@ff4b0=
000:reg:0: [0, 4283105280, 0, 16384] is too long
> >
> >
> >See https://patchwork.ozlabs.org/patch/1329325
> >
> >If you already ran 'make dt_binding_check' and didn't see the above
> >error(s), then make sure dt-schema is up to date:
> >
> >pip3 install git+https://github.com/devicetree-org/dt-schema.git@master =
--upgrade
> >
> >Please check and re-submit.
>
> make ARCH=3Darm64 dt_binding_check DT_SCHEMA_FILES=3DDocumentation/device=
tree/bindings/mtd/rockchip,nand-controller.yaml
>   HOSTCC  scripts/basic/fixdep
>   HOSTCC  scripts/dtc/dtc.o
>   HOSTCC  scripts/dtc/flattree.o
>   HOSTCC  scripts/dtc/fstree.o
>   HOSTCC  scripts/dtc/data.o
>   HOSTCC  scripts/dtc/livetree.o
>   HOSTCC  scripts/dtc/treesource.o
>   HOSTCC  scripts/dtc/srcpos.o
>   HOSTCC  scripts/dtc/checks.o
>   HOSTCC  scripts/dtc/util.o
>   LEX     scripts/dtc/dtc-lexer.lex.c
>   YACC    scripts/dtc/dtc-parser.tab.[ch]
>   HOSTCC  scripts/dtc/dtc-lexer.lex.o
>   HOSTCC  scripts/dtc/dtc-parser.tab.o
>   HOSTCC  scripts/dtc/yamltree.o
>   HOSTLD  scripts/dtc/dtc
>   CHKDT   Documentation/devicetree/bindings/mtd/rockchip,nand-controller.=
yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.yam=
l
>   DTC     Documentation/devicetree/bindings/mtd/rockchip,nand-controller.=
example.dt.yaml
>   CHECK   Documentation/devicetree/bindings/mtd/rockchip,nand-controller.=
example.dt.yaml
> /home/yifeng/work/linux/Documentation/devicetree/bindings/mtd/rockchip,na=
nd-controller.example.dt.yaml: example-0: nand-controller@ff4b0000:reg:0: [=
0, 4283105280, 0, 16384] is too long
>
> I already ran the "make dt_binding_check" before submit this patch and fo=
und this issue.
> The dts examples is for RK3308, ARCH=3Darm64, and the reg define is corre=
ct.
> I thought there was something wrong with the check=EF=BC=8C or something =
configuration I missed.
> Please give me some suggestions.
>
>
> diff --git a/Documentation/devicetree/bindings/mtd/rockchip,nand-controll=
er.yaml b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.ya=
ml
> index 493705a55638..b9d7a8c79402 100644
> --- a/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/rockchip,nand-controller.yaml
> @@ -132,7 +132,7 @@ examples:
>      nfc: nand-controller@ff4b0000 {
>        compatible =3D "rockchip,rk3308-nfc",
>                     "rockchip,rv1108-nfc";
> -      reg =3D <0x0 0xff4b0000 0x0 0x4000>;
> +      reg =3D <0xff4b0000 0x4000>;

This is the right fix. Or you can define a parent node with cell sizes of 2=
.

The example is just an example and doesn't have to match exactly what
you do in the dts files.

>        interrupts =3D <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
>        clocks =3D <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
>        clock-names =3D "ahb", "nfc";
