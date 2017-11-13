From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: analogix_dp: Use mutex rather than spinlock
Date: Mon, 13 Nov 2017 11:01:17 +0800
Message-ID: <65e4cb05-a30c-ba42-ea9c-d7375a7d9769@rock-chips.com>
References: <20171004175346.11956-1-kernel@esmil.dk>
 <CAFqH_533DthnJxbFOG9kXdfM9d6i2x7A_CbpwQHmZ2r6_TeaVw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFqH_533DthnJxbFOG9kXdfM9d6i2x7A_CbpwQHmZ2r6_TeaVw@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo Serra <eballetbo@gmail.com>, Emil Renner Berthing <kernel@esmil.dk>
Cc: Heiko Stuebner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 2017年11月10日 20:07, Enric Balletbo Serra wrote:
> 2017-10-04 19:53 GMT+02:00 Emil Renner Berthing <kernel@esmil.dk>:
>> On the Samsung Chromebook Plus I get this error with 4.14-rc3:
>>
>> BUG: scheduling while atomic: kworker/3:1/50/0x00000002
>> Modules linked in:
>> CPU: 3 PID: 50 Comm: kworker/3:1 Not tainted 4.14.0-0.rc3-kevin #2
>> Hardware name: Google Kevin (DT)
>> Workqueue: events analogix_dp_psr_work
>> Call trace:
>> [<ffffff80080873b0>] dump_backtrace+0x0/0x320
>> [<ffffff80080876e4>] show_stack+0x14/0x20
>> [<ffffff8008606d38>] dump_stack+0x9c/0xbc
>> [<ffffff80080c6b5c>] __schedule_bug+0x4c/0x70
>> [<ffffff80086188c0>] __schedule+0x3f0/0x458
>> [<ffffff8008618960>] schedule+0x38/0xa0
>> [<ffffff800861c20c>] schedule_hrtimeout_range_clock+0x84/0xe8
>> [<ffffff800861c2a0>] schedule_hrtimeout_range+0x10/0x18
>> [<ffffff800861bcec>] usleep_range+0x64/0x78
>> [<ffffff8008415a6c>] analogix_dp_transfer+0x16c/0x340
>> [<ffffff8008412550>] analogix_dpaux_transfer+0x10/0x18
>> [<ffffff80083ceb14>] drm_dp_dpcd_access+0x4c/0xf0
>> [<ffffff80083cf614>] drm_dp_dpcd_write+0x1c/0x28
>> [<ffffff8008413b98>] analogix_dp_disable_psr+0x60/0xa8
>> [<ffffff800840da3c>] analogix_dp_psr_work+0x4c/0x90
>> [<ffffff80080bb09c>] process_one_work+0x1d4/0x348
>> [<ffffff80080bb258>] worker_thread+0x48/0x478
>> [<ffffff80080c11fc>] kthread+0x12c/0x130
>> [<ffffff8008084290>] ret_from_fork+0x10/0x18
>>
>> Changing rockchip_dp_device::psr_lock to a mutex rather
>> than spinlock seems to fix the issue.
>>
>> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
>> ---
>>   drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 14 ++++++--------
>>   1 file changed, 6 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> index 9606121fa185..d8f72d87ef08 100644
>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> @@ -72,7 +72,7 @@ struct rockchip_dp_device {
>>          struct reset_control     *rst;
>>
>>          struct work_struct       psr_work;
>> -       spinlock_t               psr_lock;
>> +       struct mutex             psr_lock;
>>          unsigned int             psr_state;
>>
>>          const struct rockchip_dp_chip_data *data;
>> @@ -83,21 +83,20 @@ struct rockchip_dp_device {
>>   static void analogix_dp_psr_set(struct drm_encoder *encoder, bool enabled)
>>   {
>>          struct rockchip_dp_device *dp = to_dp(encoder);
>> -       unsigned long flags;
>>
>>          if (!analogix_dp_psr_supported(dp->dev))
>>                  return;
>>
>>          dev_dbg(dp->dev, "%s PSR...\n", enabled ? "Entry" : "Exit");
>>
>> -       spin_lock_irqsave(&dp->psr_lock, flags);
>> +       mutex_lock(&dp->psr_lock);
>>          if (enabled)
>>                  dp->psr_state = EDP_VSC_PSR_STATE_ACTIVE;
>>          else
>>                  dp->psr_state = ~EDP_VSC_PSR_STATE_ACTIVE;
>>
>>          schedule_work(&dp->psr_work);
>> -       spin_unlock_irqrestore(&dp->psr_lock, flags);
>> +       mutex_unlock(&dp->psr_lock);
>>   }
>>
>>   static void analogix_dp_psr_work(struct work_struct *work)
>> @@ -105,7 +104,6 @@ static void analogix_dp_psr_work(struct work_struct *work)
>>          struct rockchip_dp_device *dp =
>>                                  container_of(work, typeof(*dp), psr_work);
>>          int ret;
>> -       unsigned long flags;
>>
>>          ret = rockchip_drm_wait_vact_end(dp->encoder.crtc,
>>                                           PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
>> @@ -114,12 +112,12 @@ static void analogix_dp_psr_work(struct work_struct *work)
>>                  return;
>>          }
>>
>> -       spin_lock_irqsave(&dp->psr_lock, flags);
>> +       mutex_lock(&dp->psr_lock);
>>          if (dp->psr_state == EDP_VSC_PSR_STATE_ACTIVE)
>>                  analogix_dp_enable_psr(dp->dev);
>>          else
>>                  analogix_dp_disable_psr(dp->dev);
>> -       spin_unlock_irqrestore(&dp->psr_lock, flags);
>> +       mutex_unlock(&dp->psr_lock);
>>   }
>>
>>   static int rockchip_dp_pre_init(struct rockchip_dp_device *dp)
>> @@ -381,7 +379,7 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
>>          dp->plat_data.power_off = rockchip_dp_powerdown;
>>          dp->plat_data.get_modes = rockchip_dp_get_modes;
>>
>> -       spin_lock_init(&dp->psr_lock);
>> +       mutex_init(&dp->psr_lock);
>>          dp->psr_state = ~EDP_VSC_PSR_STATE_ACTIVE;
>>          INIT_WORK(&dp->psr_work, analogix_dp_psr_work);
>>
>> --
>> 2.14.2
>>
> Right this patch fixes the issue for me too.
>
> Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>
>
>
Right, it's a bug using spinlock with sleep,

Pushed to drm-misc-fixes

Thanks.

-- 
Ｍark Yao
