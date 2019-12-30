From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 11/11] roc-rk3399-pc: Add SPI boot support
Date: Mon, 30 Dec 2019 13:22:42 +0530
Message-ID: <CAMty3ZA1u3-21QN4N6W=9Sq3n493BBBB2W_FzAEQC9aze4SoMg@mail.gmail.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-12-jagan@amarulasolutions.com>
 <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 30, 2019 at 8:35 AM Kever Yang <kever.yang@rock-chips.com> wrot=
e:
>
>
> On 2019/12/21 =E4=B8=8B=E5=8D=883:54, Jagan Teki wrote:
> > Add SPI boot support for ROC-RK3399-PC board.
> >
> > This would add separate config file
>
> What is the key reason to have a new separate config file? I think it
> would be much better
>
> to use the same defconfig, spi boot is one of features like other
> features, it should not need
>
> a separate config.

Problem is env, we don't have dynamic env pickup I guess, don't we?
