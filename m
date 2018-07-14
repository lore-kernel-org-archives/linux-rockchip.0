From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 1/2] Rockchip dts32 updates for 4.19 round 1
Date: Sat, 14 Jul 2018 14:06:32 -0700
Message-ID: <20180714210632.hfbsaje4xvitnso4@localhost>
References: <2000491.bLgWuj0xar@phil>
 <1895379.zdtPBogyMs@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <1895379.zdtPBogyMs@phil>
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 11, 2018 at 04:28:59PM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> please find below the first part of Rockchip devicetree updates
> targetted at 4.19.
> 
> Biggest change from a volume point for both 32 and 64bit is of course
> the conversion to spdx tags. The conversion patches were available on
> the mailing lists for around 6 months, got some Acks, other key players
> already submitted new devicetrees with spdx tags and there were no
> complaints at all. So as this isn't even a license change but merely
> just a different form of boilerplate, I think that should be enough
> consensus for it.
> 
> Other than that we a new Gru board, some fixes for missing cooling
> device properties sound improvements for rk3399 and some odd fixes.
> 
> If nothing stands out, please pull!
> 
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit ce397d215ccd07b8ae3f71db689aedb85d56ab40:
> 
>   Linux 4.18-rc1 (2018-06-17 08:04:49 +0900)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.19-rockchip-dts32-1
> 
> for you to fetch changes up to f999d76a0011abfd814c8513a5e60a7eb9b9dac0:
> 
>   ARM: dts: rockchip: Add missing cooling device properties for CPUs on rk3288 (2018-06-18 12:31:52 +0200)

Merged, thanks!


-Olof
