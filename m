From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/2] Rockchip dts64 fixes for 4.16
Date: Mon, 12 Mar 2018 15:35:37 +0100
Message-ID: <CAK8P3a3ik5fjZM6qpXNFVgkJbgT_vAetbHLt+k=Zs1o++B_BAQ@mail.gmail.com>
References: <22043255.iBjVuxpHK5@phil> <304170820.2ZTNuuGKzZ@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <304170820.2ZTNuuGKzZ@phil>
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

On Mon, Mar 12, 2018 at 9:38 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> ----------------------------------------------------------------
> Pinctrl got a fix in 4.16-rc1, that exposed an issue with wifi-related
> pinctrl hogs on rk3399-gru-kevin that broke suspend. This gets fixed
> by moving the wifi pinctrl to the correct node.
> Also revert the usb3 phy-port enablement, as a missing feature in the
> type-c phy breaks usb on all non-gru rk3399 boards.

Pulled into fixes, thanks!

     Arnd
