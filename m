From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 2/3] rockchip dts32 changes for 4.5, round 2
Date: Tue, 22 Dec 2015 13:07:31 -0800
Message-ID: <20151222210731.GB30172@localhost>
References: <2532363.CsR3D6sdor@diego>
 <2674601.aqagTnGkXk@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <2674601.aqagTnGkXk@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko St?bner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 21, 2015 at 02:24:13AM +0100, Heiko St?bner wrote:
> Hi Arnd, Kevin, Olof,
> 
> here is another pile of dts32 changes. Rockchip choose to support another
> of their Cortex-A7 socs in mainline, so we have a new dtsi for the rk3228
> and some other misc improvements described in the tag.
> 
> 
> 
> The following changes since commit 066111411101f6b020af1a7c752859a12476ba21:
> 
>   ARM: dts: rockchip: add gpio-ir-receiver to the R89 board (2015-12-04 20:01:27 +0100)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.5-rockchip-dts32-2
> 
> for you to fetch changes up to 94cf32b97bbb043b99e914aacff1a6d7833daf58:
> 
>   ARM: dts: rockchip: add the kylin board for rk3036 (2015-12-19 18:11:48 +0100)
> 
> ----------------------------------------------------------------
> Another new soc - the rk3228 quad-core cortex-a7, a new rk3036 board,
> support for the efuses on Rockchip socs and some improvements for
> rk3288 regulators.

Merged, thanks.


-Olof
