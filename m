From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 1/8] iopoll: Add dealy to read poll
Date: Fri, 1 May 2020 20:22:13 +0530
Message-ID: <CAMty3ZD91SkrjQFLtC6zkrP7YTyH=UMwFx=4_SraTvwjVu9HCA@mail.gmail.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
 <20200430070412.12499-2-jagan@amarulasolutions.com>
 <20200430144628.GU4468@bill-the-cat>
 <CAMty3ZA77GU+f=_J23m65=RwRY3L3bibqgdzZyLR_HBejfsoTg@mail.gmail.com>
 <20200430220644.GC4468@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200430220644.GC4468@bill-the-cat>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Tom Rini <trini@konsulko.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Patrick Wildt <patrick@blueri.se>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, May 1, 2020 at 3:36 AM Tom Rini <trini@konsulko.com> wrote:
>
> On Fri, May 01, 2020 at 02:33:17AM +0530, Jagan Teki wrote:
> > On Thu, Apr 30, 2020 at 8:16 PM Tom Rini <trini@konsulko.com> wrote:
> > >
> > > On Thu, Apr 30, 2020 at 12:34:05PM +0530, Jagan Teki wrote:
> > >
> > > > Some drivers and other bsp code not only poll the
> > > > register with timeout but also required to delay
> > > > on each transaction.
> > > >
> > > > This patch add that requirement by adding sleep_us
> > > > variable so-that read_poll_timeout now support
> > > > delay as well.
> > > >
> > > > Cc: Tom Rini <trini@konsulko.com>
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > >
> > > This (and 2/8) need to say what kernel commit you're taking this from,
> > > thanks.
> >
> > Linux supports sleep_us at the beginning where read_poll_timeout
> > supports, i.e. the reason I didn't add the sha1. If that works, I will
> > add the same sha1 and apply via my tree (since it has some SPI changes
> > dependency patch)?
>
> Yes, I think that sounds right, thanks!

Applied 1/8 and 2/8 to u-boot-spi/master
