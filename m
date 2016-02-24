From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 3/4] rockchip dts64 changes for 4.6
Date: Wed, 24 Feb 2016 13:52:12 -0800
Message-ID: <20160224215212.GM10126@localhost>
References: <1734524.3yNt5L3F1F@phil>
 <29700148.FpDzERqiyH@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <29700148.FpDzERqiyH@phil>
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

On Thu, Feb 11, 2016 at 03:52:40PM +0100, Heiko Stuebner wrote:
> Hi Arnd, Olof, Kevin,
> 
> some small 64bit devicetree changes for 4.6 that allow mmc tuning and
> use the newer wakeup-source property for the gpio-keys.
> 
> 
> Thanks
> Heiko
> 
> The following changes since commit 92e963f50fc74041b5e9e744c330dca48e04f08d:
> 
>   Linux 4.5-rc1 (2016-01-24 13:06:47 -0800)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.6-rockchip-dts64-1
> 
> for you to fetch changes up to e6f49b118f73a769ec51ed28a085e9dccd67f9a1:
> 
>   arm64: dts: rockchip: replace gpio-key,wakeup with wakeup-source property (2016-02-10 00:23:24 +0100)
> 
> ----------------------------------------------------------------
> Define the tuning-related mmc clocks and move from
> gpio-key,wakeup to the more generic wakeup-source property.

Merged, thanks.


-Olof
