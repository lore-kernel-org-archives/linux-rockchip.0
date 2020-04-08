From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: avoid unused variable warning
Date: Wed, 08 Apr 2020 16:38:30 -0300
Message-ID: <58f011c7bd67c886892ac98505b916cc95adf495.camel@collabora.com>
References: <20200408155325.2077345-1-arnd@arndb.de>
         <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
         <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAK8P3a1K5T2e2kAQMVi=ubPN3v4rYgtb9TaGC6evNXSUc4embQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Helen Koike <helen.koike@collabora.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Jacob Chen <jacob2.chen@rock-chips.com>, Shunqian Zheng <zhengsq@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>, Jacob Chen <cc@rock-chips.com>, Eddie Cai <eddie.cai.linux@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, Allon Huang <allon.huang@rock-chips.com>, Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, driverdevel <devel@driverdev.osuos>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 2020-04-08 at 21:08 +0200, Arnd Bergmann wrote:
> On Wed, Apr 8, 2020 at 7:56 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > On Wed, 2020-04-08 at 17:52 +0200, Arnd Bergmann wrote:
> > > When compile-testing with CONFIG_OF disabled, we get a warning
> > > about an unused variable, and about inconsistent Kconfig dependencies:
> > > 
> > > WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
> > >   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
> > >   Selected by [m]:
> > >   - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] &&
> > > (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])
> > > 
> > > drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
> > > drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
> > >   457 |  struct device_node *node = pdev->dev.of_node;
> > > 
> > > Simply open-coding the pointer dereference in the only place
> > > the variable is used avoids the warning in all configurations,
> > > so we can allow compile-testing as well.
> > > 
> > 
> > Hello Arnd,
> > 
> > Thanks for your patch.
> > 
> > I believe this is already fixed here:
> > 
> > https://patchwork.linuxtv.org/patch/62774/
> > https://patchwork.linuxtv.org/patch/62775/
> 
> Ok, sorry for the duplicate. I only tested on mainline from a few days ago,
> so I must have missed it getting merged in the meantime.
> 

No worries!

Those were was sent very recently, and won't be
merged any time soon :-)

Ezequiel
