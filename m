From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 1/2] Rockchip dts32 fixes for 4.16
Date: Mon, 12 Mar 2018 15:34:42 +0100
Message-ID: <CAK8P3a21GKhqGX04u4p3B9ck-D4RPMqwcdsjJoteEM3p6Aoz0g@mail.gmail.com>
References: <22043255.iBjVuxpHK5@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <22043255.iBjVuxpHK5@phil>
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

On Mon, Mar 12, 2018 at 9:37 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> Hi Arnd, Kevin, Olof
>
> please find below some more fixes for 4.16 .
>
> I wasn't sure if dtc warning count as fixes, so feel free to ignore the
> arm32 part, but the arm64 changes are somewhat important as they
> fix usb and suspend regressions, so please pull

Pulled into fixes. This one is a bit of a grey area. It's something
that I'd just leave up to you as the downstream maintainer, and
I picked it up since you sent the pull request.

       Arnd
