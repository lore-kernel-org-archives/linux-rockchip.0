From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 1/2] Rockchip dts32 updates for 5.1
Date: Fri, 15 Feb 2019 14:36:18 +0100
Message-ID: <CAK8P3a37LmyvaOH21uHiVrB8YQ6R2LtOGONky2hqCK+9AUZuqw@mail.gmail.com>
References: <2570520.8EeqtpO5V7@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2570520.8EeqtpO5V7@phil>
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

On Fri, Feb 1, 2019 at 12:23 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> ----------------------------------------------------------------
> New board the Elgin-R1 based on the rv1108 soc and a number of small
> improvements for rv1108 as well. RK3066 got support for the core
> display components and the Edison tablet got its touchscreen added.
> Apart from that a wider fix to drop display-wp usage from places where
> it shouldn't be used, a pin fix for Edison and a cleanup to prevent
> rk3036 board from defining sound-dai-cells for core components in
> each board separately.


Pulled into arm/dt, thanks!

      Arnd
