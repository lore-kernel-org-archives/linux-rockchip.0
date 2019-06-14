From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add display nodes for rk322x
Date: Sat, 15 Jun 2019 01:05:27 +0200
Message-ID: <5617164.NpQ99z5SQI@phil>
References: <20190614165454.13743-1-heiko@sntech.de>
 <13456600.FWPkgmLa5g@phil> <20190614203610.959DA217F9@mail.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190614203610.959DA217F9@mail.kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Stephen Boyd <sboyd@kernel.org>
Cc: Justin Swartz <justin.swartz@risingedge.co.za>, mturquette@baylibre.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Stephen,

Am Freitag, 14. Juni 2019, 22:36:09 CEST schrieb Stephen Boyd:
> Quoting Heiko Stuebner (2019-06-14 12:33:12)
> > Am Freitag, 14. Juni 2019, 20:32:35 CEST schrieb Justin Swartz:
> > > On 2019-06-14 19:45, Stephen Boyd wrote:
> > > >> diff --git a/arch/arm/boot/dts/rk322x.dtsi 
> > > >> b/arch/arm/boot/dts/rk322x.dtsi
> > > >> index da102fff96a2..148f9b5157ea 100644
> > > >> --- a/arch/arm/boot/dts/rk322x.dtsi
> > > >> +++ b/arch/arm/boot/dts/rk322x.dtsi
> > > >> @@ -143,6 +143,11 @@
> > > >> #clock-cells = <0>;
> > > >> };
> > > >> 
> > > >> +       display_subsystem: display-subsystem {
> > > >> +               compatible = "rockchip,display-subsystem";
> > > >> +               ports = <&vop_out>;
> > > >> +       };
> > > >> +
> > > > 
> > > > What is this? It doesn't have a reg property so it looks like a virtual
> > > > device. Why is it in DT?
> > > 
> > > This is a virtual device.
> > > 
> > > I assumed it would be acceptable to it find in a device tree due to 
> > > binding documentation, 
> > > "Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt, 
> > > which states:
> > > 
> > > <quote>
> > > The Rockchip DRM master device is a virtual device needed to list all
> > > vop devices or other display interface nodes that comprise the
> > > graphics subsystem.
> > > </quote>
> > > 
> > > Without the "display_subsystem" device node, the HDMI PHY and 
> > > rockchipdrmfb frame buffer device are not initialized.
> > > 
> > > Perhaps I should have included this in my commit message? :)
> > 
> > As Justin said, that is very much common as the root of the components
> > that make up the drm device and pretty much common in a lot of devicetrees
> > for the last 5 years and longer ;-) .
> > 
> > Also gpio-keys also don't have a reg property ;-) .
> > 
> 
> Do you have a SoC node? If so, this virtual device should live in the
> root, away from the nodes that have reg properties and are thus in the
> SoC node.

no we don't have any soc node and that display-subsystem is really the
same on _all_ currently supported Rockchip socs ... has gone through
dt-reviews numerous times for multiple socs, so I'm somewhat
confident that we're not doing something terrible wrong.

Heiko
