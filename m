From: Guenter Roeck <groeck@google.com>
Subject: Re: [PATCH v4 1/3] platform/chrome: cros_ec_spi: Move to real time
 priority for transfers
Date: Wed, 15 May 2019 10:02:12 -0700
Message-ID: <CABXOdTeCtwFSOvHbBTaSqjv0+rzfbc2mVm=PjtZgid_xRAwwtA@mail.gmail.com>
References: <20190515164814.258898-1-dianders@chromium.org> <20190515164814.258898-2-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190515164814.258898-2-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Boichat <drinkcat@chromium.org>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, May 15, 2019 at 9:48 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> In commit 37a186225a0c ("platform/chrome: cros_ec_spi: Transfer
> messages at high priority") we moved transfers to a high priority
> workqueue.  This helped make them much more reliable.
>
> ...but, we still saw failures.
>
> We were actually finding ourselves competing for time with dm-crypt
> which also scheduled work on HIGHPRI workqueues.  While we can
> consider reverting the change that made dm-crypt run its work at
> HIGHPRI, the argument in commit a1b89132dc4f ("dm crypt: use
> WQ_HIGHPRI for the IO and crypt workqueues") is somewhat compelling.
> It does make sense for IO to be scheduled at a priority that's higher
> than the default user priority.  It also turns out that dm-crypt isn't
> alone in using high priority like this.  loop_prepare_queue() does
> something similar for loopback devices.
>
> Looking in more detail, it can be seen that the high priority
> workqueue isn't actually that high of a priority.  It runs at MIN_NICE
> which is _fairly_ high priority but still below all real time
> priority.
>
> Should we move cros_ec_spi to real time priority to fix our problems,
> or is this just escalating a priority war?  I'll argue here that
> cros_ec_spi _does_ belong at real time priority.  Specifically
> cros_ec_spi actually needs to run quickly for correctness.  As I
> understand this is exactly what real time priority is for.
>
> There currently doesn't appear to be any way to use the standard
> workqueue APIs with a real time priority, so we'll switch over to
> using using a kthread worker.  We'll match the priority that the SPI
> core uses when it wants to do things on a realtime thread and just use
> "MAX_RT_PRIO - 1".
>
> This commit plus the patch ("platform/chrome: cros_ec_spi: Request the
> SPI thread be realtime") are enough to get communications very close
> to 100% reliable (the only known problem left is when serial console
> is turned on, which isn't something that happens in shipping devices).
> Specifically this test case now passes (tested on rk3288-veyron-jerry):
>
>   dd if=/dev/zero of=/var/log/foo.txt bs=4M count=512&
>   while true; do
>     ectool version > /dev/null;
>   done
>
> It should be noted that "/var/log" is encrypted (and goes through
> dm-crypt) and also passes through a loopback device.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Guenter Roeck <groeck@chromium.org>
