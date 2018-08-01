From: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [PATCH] drm/rockchip: Convert drm_atomic_helper_suspend/resume()
Date: Wed, 1 Aug 2018 18:13:47 +0530
Message-ID: <CAFqt6zZfLXuMUT75a3dWKeiCCmKZOfi=FdTeFRjcdFDZdfcRVQ@mail.gmail.com>
References: <20180731203430.GA30136@jordon-HP-15-Notebook-PC> <16141309.kTfAWOe8rM@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <16141309.kTfAWOe8rM@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: hjc@rock-chips.com, airlied@linux.ie, Ajit Linux <ajitn.linux@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Aug 1, 2018 at 6:03 PM, Heiko Stuebner <heiko@sntech.de> wrote:
> Hi Souptick,
>
> Am Dienstag, 31. Juli 2018, 22:34:30 CEST schrieb Souptick Joarder:
>> convert drm_atomic_helper_suspend/resume() to use
>> drm_mode_config_helper_suspend/resume().
>>
>> With this conversion, rockchip_drm_fb_resume() and
>> rockchip_drm_fb_suspend() will not be used anymore.
>> Both of these functions can be removed.
>>
>> Also, in struct rockchip_drm_private state will not be
>> used anymore. So this can be removed forever.
>>
>> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
>> Signed-off-by: Ajit Negi <ajitn.linux@gmail.com>
>
> the patch itself looks great, just a simple bookkeeping question.
>
> What role did Ajit play in creating the patch? If I remember correctly
> it is meant to be
> - 1st Signed-off: Patch-Author
> - 2nd Signed-off: E-Mail sender + patch possibly patch changes
> (optional of course if the same)
>
> So was this meant to be a Reviewed-by from Ajit?

We both are working together for these patches to
convert drm_atomic_helper_suspend/resume().
That's the reason to add his name in 2nd Signed-off
in all similar patches.

Is it a incorrect way to put 2nd Signed-off here ?
