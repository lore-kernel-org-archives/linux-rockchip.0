From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Thu, 11 Apr 2019 18:27:17 -0700
Message-ID: <CA+ASDXNmxspD_3p-BftgySn5mPSYvSTeEXkzNS9B+ReZho-Uyw@mail.gmail.com>
References: <20190403203137.203582-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190403203137.203582-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>, Randall Spangler <rspangler@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 3, 2019 at 1:32 PM Douglas Anderson <dianders@chromium.org> wrote:
> +static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
> +                                struct cros_ec_command *ec_msg,
> +                                cros_ec_xfer_fn_t fn)
> +{
> +       struct cros_ec_xfer_work_params params;
> +
> +       INIT_WORK(&params.work, cros_ec_xfer_high_pri_work);

Sorry for the late review, but this should have been
INIT_WORK_ONSTACK(). Should it be a new patch, or is this in a
non-rebasing tree yet?

Otherwise, looks fine to me:

Reviewed-by: Brian Norris <briannorris@chromium.org>
