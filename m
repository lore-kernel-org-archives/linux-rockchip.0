From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL RESEND 2/4] Rockchip soc32 changes for 4.17
Date: Wed, 28 Mar 2018 17:15:13 +0200
Message-ID: <CAK8P3a2So56=yoxRXd1VQOz3AUZKXEgrWkFyE=VXsWY4_LzP+A@mail.gmail.com>
References: <12470502.BUvxkRrZk8@phil> <4643567.9MCT7BxVJK@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <4643567.9MCT7BxVJK@diego>
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
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Mar 28, 2018 at 5:08 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> The following changes since commit 7928b2cbe55b2a410a0f5c1f154610059c57b1b2:
>
>   Linux 4.16-rc1 (2018-02-11 15:04:29 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/
> v4.17-rockchip-soc32-1
>
> for you to fetch changes up to 03151b8989257bfcee6cfd5f06d9a4a06b781cf3:
>
>   ARM: rockchip: Set name of pmu regmap_config in smp code (2018-03-12
> 11:09:36 +0100)
>
> ----------------------------------------------------------------
> Fix for the legacy pmu-regmap in the smp-code to have a real name
> and therefore not create a dummy* entry in debugfs.
>
> ----------------------------------------------------------------
> Jeffy Chen (1):
>       ARM: rockchip: Set name of pmu regmap_config in smp code
>

Pulled into next/soc, thanks!

     Arnd
