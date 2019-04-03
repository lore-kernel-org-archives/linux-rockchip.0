From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Wed, 3 Apr 2019 11:39:38 -0700
Message-ID: <CA+ASDXMkWha7Lrf8TrDhyF2fXonPjqLKvyKFzVQthxDQUOp=kQ@mail.gmail.com>
References: <20190403160526.257088-1-dianders@chromium.org>
 <CA+ASDXN-4Ya6cK5wsmARXxP0bJCGpMkoyu1t_fS7hqVFKF0ZBw@mail.gmail.com>
 <20190403181415.GQ112750@google.com> <CAD=FV=UC6MpTgmir+nwUy4hWk8Vvz97M5G45=-r5JAg_=z6vQQ@mail.gmail.com>
 <20190403183010.GR112750@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190403183010.GR112750@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Doug Anderson <dianders@chromium.org>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>, Randall Spangler <rspangler@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 3, 2019 at 11:30 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> The worker is owned by this driver and supposedly we know what we are
> doing. Changing a member in the struct after calling complete() would
> likely be a bug anyway (though not necessarily a fatal one).

The work_struct is owned by the driver, but the *worker* is not. If we
haven't ensured the worker is totally done with the work_struct, then
we should not be freeing the struct. (i.e., we should not return from
the context where it was stack-allocated.)

Anyway, I think we've all agreed that this should be changed,

Brian
