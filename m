From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 1/4] Rockchip driver updates for 4.18 round 1
Date: Tue, 15 May 2018 13:51:29 -0700
Message-ID: <20180515205129.krdwrceinbhs3zcq@localhost>
References: <2000491.bLgWuj0xar@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <2000491.bLgWuj0xar@phil>
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

On Tue, May 15, 2018 at 12:38:09PM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin Olof,
> 
> please find below and in the replies the main pull requests for Rockchip
> stuff for 4.18. Depending on timing there may or may not be a second
> round but so far I don't have anything big on the radar.
> 
> The signed tags should explain the individual contents, so please pull.
> 
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 60cc43fc888428bb2f18f08997432d426a243338:
> 
>   Linux 4.17-rc1 (2018-04-15 18:24:20 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.18-rockchip-drivers-1
> 
> for you to fetch changes up to 9e59c5f66c624b43c766a9fe3b2430e0e976bf0e:
> 
>   soc: rockchip: power-domain: Fix wrong value when power up pd with writemask (2018-05-14 11:53:26 +0200)
> 
> ----------------------------------------------------------------
> Fix for an issue introduced in 2016 where some powerdomains could only
> be turned off but not on again.

Merged, thanks!


-Olof
