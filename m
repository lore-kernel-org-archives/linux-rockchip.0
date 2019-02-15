From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 2/2] Rockchip arm64 devicetree fixes for 5.0
Date: Fri, 15 Feb 2019 13:42:48 +0100
Message-ID: <CAK8P3a0Oa4B_r3mAu6udmJPyKBnOwswTwOGsOuX0ruhfexqbxg@mail.gmail.com>
References: <7484850.KS8GUYnfXV@phil> <23121360.LiWTZRSn6P@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <23121360.LiWTZRSn6P@phil>
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

On Fri, Feb 1, 2019 at 12:14 PM Heiko Stuebner <heiko@sntech.de> wrote:
> ----------------------------------------------------------------
> Fix for new dtc graph warnings and a regulator fix for rock64.
>
> ----------------------------------------------------------------
> Dmitry Voytik (1):
>       arm64: dts: rockchip: enable usb-host regulators at boot on rk3328-rock64
>

Pulled into arm/fixes, thanks!

Note: since we always have only a single fixes branch, sending the
32-bit and 64-bit fixes together would be slightly easier.

      Arnd
