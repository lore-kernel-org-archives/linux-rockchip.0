From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: introduce rk3399-op1 operating
 points
Date: Tue, 23 May 2017 08:57:01 -0700
Message-ID: <CAD=FV=XbUjuvt+ctm8Xw6JPqe7m4PdyZ1hm3Uast2+1+nJ=nPw@mail.gmail.com>
References: <20170523095109.7337-1-heiko@sntech.de>
 <20170523095109.7337-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20170523095109.7337-2-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, eddie.cai.linux@gmail.com, Brian Norris <briannorris@chromium.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Caesar <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, May 23, 2017 at 2:51 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> The OP1 is a rk3399 variant used in ChromeOS devices with a slightly
> higher frequency rating. Therefore introduce separate operting points,
> from the ChromeOS tree, for it and use it in Gru devices.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi     |   2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi | 145 +++++++++++++++++++++++
>  2 files changed, 146 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi

The numbers here match what's in the Chrome OS tree and those were all
approved by Rockchip.

One slight nit is that the descriptions these two patches together
make it look like this will be a no-op change for OP1 devices.  This
is not true.  After things were posted upstream there have been
several adjustments to the opp points in the Chrome OS tree.  Since
what you have currently matches the ToT Chrome OS tree, that should
mean that there's a net difference.  It would be nice to mention that
in the commit message.

Other than that small nit:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
