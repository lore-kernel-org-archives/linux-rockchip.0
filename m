From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 1/2] second round of Rockchip dts64 changes for 4.14
Date: Thu, 24 Aug 2017 15:58:45 +0200
Message-ID: <CAK8P3a1Vq3R+QbhmWsYiPQWt8YNT2pzpRjED1jNTWkRY-YUVSQ@mail.gmail.com>
References: <4088347.CX4PhsiguF@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <4088347.CX4PhsiguF@phil>
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

On Thu, Aug 24, 2017 at 10:41 AM, Heiko Stuebner <heiko@sntech.de> wrote:
> Hi Arnd, Kevin, Olof,
>
> please find below some more Rockchip related changes, that hopfully can
> still make it into 4.14. Nothing overly exciting, just some more boards and
> new nodes.
>
> This also includes the core graphics support for rk3399 and the new sapphire
> board from Rockchip also includes working graphic support already.

Pulled into next/dt64, thanks!

> I was also able to get hdmi output on the rk3399-firefly, but as this was only
> yesterday I didn't want to rush changes to much, but might include it in a
> third round, if Linus does an -rc8. Otherwise it doesn't really hurt to wait
> one release.

I don't think there will be an -rc8, but please send it anyway once you feel
comfortable with it, we'll see if it works out on our end.

       Arnd
