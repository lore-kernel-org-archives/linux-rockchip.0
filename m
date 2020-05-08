From: Emil Renner Berthing <emil.renner.berthing-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v0 1/1] spi: spi-rockchip: add support for spi slave_mode
Date: Fri, 8 May 2020 15:42:39 +0200
Message-ID: <CANBLGcwAhOHVBUrwLat_60D=wwKkXP2==fazQEeJNuB-CizZLQ@mail.gmail.com>
References: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
 <20200508083729.5560-2-chris.ruehl@gtsys.com.hk> <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: linux-spi-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Chris Ruehl <chris.ruehl-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>
Cc: Jack Lo <jack.lo-CR359r9tUDPXPF5Rlphj1Q@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-spi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Chris,

On Fri, 8 May 2020 at 15:13, Emil Renner Berthing
<emil.renner.berthing-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> If you do something like this you won't need the temporary num_cs variable:
>
> if (of_property_read_u32(np, "num-cs", &master->num_chipselect))
>     master->num_chipselect = 1;

Sorry, that should be of_property_read_u16, since num_chipselect is a u16.

/Emil
