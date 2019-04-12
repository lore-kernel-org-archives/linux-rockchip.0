From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v3] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Fri, 12 Apr 2019 11:23:19 +0200
Message-ID: <9fce8b1c-e277-2eeb-4b0d-e6b0e1851419@collabora.com>
References: <20190403203137.203582-1-dianders@chromium.org>
 <CA+ASDXNmxspD_3p-BftgySn5mPSYvSTeEXkzNS9B+ReZho-Uyw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CA+ASDXNmxspD_3p-BftgySn5mPSYvSTeEXkzNS9B+ReZho-Uyw@mail.gmail.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>, Douglas Anderson <dianders@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Simon Glass <sjg@chromium.org>, Guenter Roeck <groeck@chromium.org>, Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>, Randall Spangler <rspangler@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 12/4/19 3:27, Brian Norris wrote:
> On Wed, Apr 3, 2019 at 1:32 PM Douglas Anderson <dianders@chromium.org> wrote:
>> +static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
>> +                                struct cros_ec_command *ec_msg,
>> +                                cros_ec_xfer_fn_t fn)
>> +{
>> +       struct cros_ec_xfer_work_params params;
>> +
>> +       INIT_WORK(&params.work, cros_ec_xfer_high_pri_work);
> 
> Sorry for the late review, but this should have been
> INIT_WORK_ONSTACK(). Should it be a new patch, or is this in a
> non-rebasing tree yet?
> 

No need to resend, I'll do the modification myself and push again.

Thanks,
 Enric

> Otherwise, looks fine to me:
> 
> Reviewed-by: Brian Norris <briannorris@chromium.org>
> 
