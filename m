From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 1/2] Rockchip soc changes for 4.3, part1
Date: Fri, 17 Jul 2015 10:38:13 -0700
Message-ID: <20150717173813.GM21691@localhost>
References: <2820374.NgluYWXZkW@diego>
 <8030973.PEt4S6scyC@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <8030973.PEt4S6scyC@diego>
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

On Fri, Jul 17, 2015 at 12:35:47AM +0200, Heiko St?bner wrote:
> The following changes since commit d770e558e21961ad6cfdf0ff7df0eb5d7d4f0754:
> 
>   Linux 4.2-rc1 (2015-07-05 11:01:52 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.3-rockchip32-soc1
> 
> for you to fetch changes up to cb8cc37f4d38d96552f2c52deb15e511cdacf906:
> 
>   ARM: rockchip: fix broken build (2015-07-06 11:46:08 +0200)
> 
> ----------------------------------------------------------------
> Some suspend improvements enabling the possibility to wakeup
> from usbphy events and a rework of how cpu cores are brought
> u? and down, as it was possible to produce lockups when
> hammering the cpu hotplug functions.

Thanks, merged.


-Olof
