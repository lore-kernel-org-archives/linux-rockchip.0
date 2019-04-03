From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Wed, 3 Apr 2019 11:17:27 -0700
Message-ID: <CAD=FV=UC6MpTgmir+nwUy4hWk8Vvz97M5G45=-r5JAg_=z6vQQ@mail.gmail.com>
References: <20190403160526.257088-1-dianders@chromium.org>
 <CA+ASDXN-4Ya6cK5wsmARXxP0bJCGpMkoyu1t_fS7hqVFKF0ZBw@mail.gmail.com> <20190403181415.GQ112750@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190403181415.GQ112750@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Brian Norris <briannorris@chromium.org>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>, Randall Spangler <rspangler@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Apr 3, 2019 at 11:14 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> Each transfer has it's own work struct (allocated on the stack), hence
> a) does not occur. b) is still true, but shouldn't be a problem on
> its own.

Actually, it could be much worse _because_ it's on the stack.  The
worker could write something back to the work after the work has been
de-allocated.  That's bad.


> Anyway, using flush_work() as you suggested is the better solution :)

Yup, thanks!
