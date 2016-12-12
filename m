From: Caesar Wang <wxt@rock-chips.com>
Subject: Re: [PATCH v3 1/5] thermal: rockchip: improve conversion error
 messages
Date: Mon, 12 Dec 2016 18:47:30 +0800
Message-ID: <84cc3087-8c81-4054-c941-949a12966d32@rock-chips.com>
References: <1480331524-18741-1-git-send-email-wxt@rock-chips.com>
 <1480331524-18741-2-git-send-email-wxt@rock-chips.com>
 <20161129015155.GA3329@localhost.localdomain>
 <20161129054728.GA64845@google.com>
 <20161130050420.GB27079@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-pm-owner@vger.kernel.org>
In-Reply-To: <20161130050420.GB27079@localhost.localdomain>
Sender: linux-pm-owner@vger.kernel.org
To: Eduardo Valentin <edubezval@gmail.com>, Brian Norris <briannorris@chromium.org>
Cc: heiko@sntech.de, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, smbarber@chromium.org, linux-rockchip@lists.infradead.org, rui.zhang@intel.com, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

在 2016年11月30日 13:04, Eduardo Valentin 写道:
> Hey,
>
> On Mon, Nov 28, 2016 at 09:47:29PM -0800, Brian Norris wrote:
>> Hi,
>>
> <cut>
>
>>>> +		       __func__, table.mode);
>>> Given that we are improving messages, would it be more informative to
>>> say that you have an invalid table mode?
>> I considered the mode and ID listing to go hand in hand, so it was the
>> whole table that is wrong. But it is just as well to say the "table
>> mode" is wrong.
>>
>> Maybe even better: "%s: unknown table mode: %d\n".
>>
> Yup, that works for me, even better.

Done.  Sorry for delay.

>> And I guess same answer for patch 4, where you had the same question.
> yes
>
>> Brian
>>
>>>> +		return -EINVAL;
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


