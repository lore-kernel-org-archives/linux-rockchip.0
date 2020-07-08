From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/2] rockchip: Add SoC detection helper
Date: Wed, 8 Jul 2020 15:59:37 +0530
Message-ID: <CAMty3ZCPqLfGK0TeOo0w8BOW=OLks0beH4O1TpoCSb=+zxNUQg@mail.gmail.com>
References: <20200704091503.71121-1-jagan@amarulasolutions.com>
 <8dc5cfe2-b08b-a353-437c-89d806b956d7@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <8dc5cfe2-b08b-a353-437c-89d806b956d7@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Robin Murphy <robin.murphy@arm.com>, Suniel Mahesh <sunil@amarulasolutions.com>, Michael Trimarchi <michael@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jul 8, 2020 at 3:43 PM Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Hi Jagan,
>
>
>      This is all for rk3288, please just put it into rk3288.c instead of
> make a new cpu.h.

Yes, I have used cpu.h since rk3308 also has revision, if not to
consider than I will move to rk3288 specific.

Jagan.
