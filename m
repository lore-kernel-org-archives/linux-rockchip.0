From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL] Rockchip dts32 fix for 4.18
Date: Sun, 15 Jul 2018 17:46:09 +0200
Message-ID: <1884349.WTgIHKSUBb@phil>
References: <1776596.Q4iCTXTKyP@phil>
 <20180714221105.u7gbyetcpjhlylfl@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180714221105.u7gbyetcpjhlylfl@localhost>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Olof Johansson <olof@lixom.net>
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 15. Juli 2018, 00:11:05 CEST schrieb Olof Johansson:
> On Wed, Jul 11, 2018 at 04:18:55PM +0200, Heiko Stuebner wrote:
> > Hi Arnd, Kevin, Olof,
> > 
> > please find below a one-patch pull fixing a new warning the updated dtc
> > in 4.18 found. So far no other regressions have been found in Rockchip
> > parts it seems. So please pull!
> > 
> > Thanks
> > Heiko
> > 
> > The following changes since commit ce397d215ccd07b8ae3f71db689aedb85d56ab40:
> > 
> >   Linux 4.18-rc1 (2018-06-17 08:04:49 +0900)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.18-rockchip-dts32fixes-1
> > 
> > for you to fetch changes up to cddb86833615d9550d7b3a1b65b71071784dae70:
> > 
> >   ARM: dts: rockchip: fix graph node unit address error from dtc (2018-06-17 09:31:34 +0200)
> 
> I took the liberty to declare this non-urgent and queued it up with next/dt
> instead for 4.19. It's just a warning and we're past rc4 so it seemed like
> a reasonable call. Let me know if it has actual functional impact/regression
> though.

no problem from my side, it's just dtc emiting the warning :-)

I just saw this the first time with 4.18-rc1, so it seems to stem from
a newer dtc and remembered that previous dtc fixes from Arnd or so
went in as fixes.

Heiko
