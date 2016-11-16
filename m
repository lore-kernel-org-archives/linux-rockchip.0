From: Archit Taneja <architt@codeaurora.org>
Subject: Re: [PATCH] drm/bridge: analogix_dp: return error if transfer none
 byte
Date: Wed, 16 Nov 2016 11:38:39 +0530
Message-ID: <46657d43-eed4-cd69-e5dc-110d78325bc1@codeaurora.org>
References: <1478168250-30858-1-git-send-email-jay.xu@rock-chips.com>
 <CAOw6vb+4RDNBq6bizCK51cAN56j8EZyszL9j_XkjNKqZ4UG-Ug@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAOw6vb+4RDNBq6bizCK51cAN56j8EZyszL9j_XkjNKqZ4UG-Ug@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sean Paul <seanpaul@chromium.org>, Jianqun Xu <jay.xu@rock-chips.com>
Cc: Dave Airlie <airlied@linux.ie>, =?UTF-8?B?546L5b6B5aKe?= <wzz@rock-chips.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Heiko Stuebner <heiko@sntech.de>, huangtao@rock-chips.com, Masahiro Yamada <yamada.masahiro@socionext.com>, dri-devel <dri-devel@lists.freedesktop.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On 11/15/2016 10:39 PM, Sean Paul wrote:
> On Thu, Nov 3, 2016 at 3:17 AM, Jianqun Xu <jay.xu@rock-chips.com> wrote:
>> Reference from drm_dp_aux description (about transfer):
>> Upon success, the implementation should return the number of payload bytes
>> that were transferred, or a negative error-code on failure. Helpers
>> propagate errors from the .transfer() function, with the exception of
>> the -EBUSY error, which causes a transaction to be retried. On a short,
>> helpers will return -EPROTO to make it simpler to check for failure.
>>
>> The analogix_dp_transfer will return num_transferred, but if there is none
>> byte been transferred, the return value will be 0, which means success, we
>> should return error-code if transfer none byte.
>>
>> for (retry = 0; retry < 32; retry++) {
>>         err = aux->transfer(aux, &msg);
>>         if (err < 0) {
>>                 if (err == -EBUSY)
>>                         continue;
>>
>>                 goto unlock;
>>         }
>> }
>>
>> Cc: zain wang <wzz@rock-chips.com>
>> Cc: Sean Paul <seanpaul@chromium.org>
>> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
>
> Reviewed-by: Sean Paul <seanpaul@chromium.org>

queued to drm-misc.

>
>> ---
>>  drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> index cd37ac0..303083a 100644
>> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
>> @@ -1162,5 +1162,5 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
>>                  (msg->request & ~DP_AUX_I2C_MOT) == DP_AUX_NATIVE_READ)
>>                 msg->reply = DP_AUX_NATIVE_REPLY_ACK;
>>
>> -       return num_transferred;
>> +       return num_transferred > 0 ? num_transferred : -EBUSY;
>>  }
>> --
>> 1.9.1
>>
>>

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
