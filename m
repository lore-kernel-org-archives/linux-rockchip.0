From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: split rk3399-rockpro64,
 for v2 and v2.1 boards
Date: Thu, 28 Nov 2019 22:53:03 +0100
Message-ID: <9133677.cKcSbgiQdr@phil>
References: <3fa2e3df-221b-99a8-796a-2e21f75cf706@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3fa2e3df-221b-99a8-796a-2e21f75cf706@web.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Soeren Moch <smoch@web.de>
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>, arm-linux <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 28. November 2019, 20:55:54 CET schrieb Soeren Moch:
> > On Thu, Nov 28, 2019 at 6:02 AM Katsuhiro Suzuki
> > <katsuhiro@katsuster.net> wrote:
> >> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
> >> v2.1 boards.
> >>
> >> Both v2 and v2.1 boards can use almost same settings but we find a
> >> difference in I2C address of audio CODEC ES8136.
> >>
> >> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
> >> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> >>
> >> ---

[...]

> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> new file mode 100644
> >> index 000000000000..183eda4ffb9c
> >> --- /dev/null
> If we add this as new file, should we sort handles and properties
> alphabetically, where it is not done yet?

I'm torn here ... on one side, doing missing sorting might be nice
on the other hand, there is the moving without functional changes
paradigm, which is generally nice to adhere to.

But I guess sorting would generally be ok.

> I'm not sure about all the exceptions that usually apply for rockchip
> devicetrees, status property at the end, also the pinctrl node?

In general I don't "enforce" the sorting, so don't reject patches but instead
just do sorting myself if necessary ;-).

The general rule-of-thumb for nodes we came up with during the rk3288-veyron
era is something like:

compatible
reg
interrupts
[alphabetical properties]
status

as this makes it somewhat easier to parse the core properties (compatible,
reg, ints, status] when scrolling through a devicetree :-) .

Pinctrl position is at the discretion of the dt author :-D .
Position at the end has just the advantage that a long pin-group list does
not get in the way so much.

> What about unused references, e.g. "fan"?

Don't change too much when moving stuff around :-)


Heiko
