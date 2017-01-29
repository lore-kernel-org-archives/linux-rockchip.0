From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 2/3] Rockchip dts32 updates for 4.11 part1
Date: Sun, 29 Jan 2017 14:42:46 -0800
Message-ID: <20170129224246.GE3133@localhost>
References: <6458001.3c0YmcoF8y@phil>
 <1581407.91s7OzFVNJ@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <1581407.91s7OzFVNJ@phil>
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

On Sat, Jan 21, 2017 at 01:11:25AM +0100, Heiko Stuebner wrote:
> The following changes since commit 0c744ea4f77d72b3dcebb7a8f2684633ec79be88:
> 
>   Linux 4.10-rc2 (2017-01-01 14:31:53 -0800)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.11-rockchip-dts32-1
> 
> for you to fetch changes up to ec7c98ec9b8dd2c04ed75cad88e91eebedbb1a25:
> 
>   ARM: dts: rockchip: add soc-specific uart compatibles for rk3066/rk3188 (2017-01-19 17:04:44 +0100)
> 
> ----------------------------------------------------------------
> Bit of cleanup for the cortex-a9 uarts to have that soc-specific
> spare-compatible as all others have, conversion to gpio constants
> and addition of rk3288 qos nodes that need to be saved before a
> power-domain gets turned off.

Merged, thanks.


-Olof
