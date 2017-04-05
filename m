From: jeffy <jeffy.chen@rock-chips.com>
Subject: Re: [PATCH v2 7/9] drm/rockchip: Force disable all crtc when unload
Date: Wed, 05 Apr 2017 18:25:06 +0800
Message-ID: <58E4C602.4090302@rock-chips.com>
References: <1491046529-4310-1-git-send-email-jeffy.chen@rock-chips.com> <1491046529-4310-8-git-send-email-jeffy.chen@rock-chips.com> <CAKMK7uFzpk0VNr-hdeKKxB0Ur+qC7ZWe-EwyzqcudABdjQZXfQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAKMK7uFzpk0VNr-hdeKKxB0Ur+qC7ZWe-EwyzqcudABdjQZXfQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Brian Norris <briannorris@chromium.org>, Douglas Anderson <dianders@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chris Zhong <zyw@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Daniel,

On 04/03/2017 03:58 PM, Daniel Vetter wrote:
> On Sat, Apr 1, 2017 at 1:35 PM, Jeffy Chen <jeffy.chen@rock-chips.com> wrote:
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>> index a5d83cb..5dbf011 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
>> @@ -246,6 +246,7 @@ static void rockchip_drm_unbind(struct device *dev)
>>          rockchip_drm_fbdev_fini(drm_dev);
>>          drm_kms_helper_poll_fini(drm_dev);
>>
>> +       drm_crtc_force_disable_all(drm_dev);
>
> This will result in a WARN_ON in latest drm-next because rockchip is
> atomic, and this helper is for legacy kms drivers. You want to use
> drm_atomic_helper_shutdown here.
> -Daniel
>
oops, thanx for the notice.
