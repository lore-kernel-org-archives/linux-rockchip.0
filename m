From: hl <huanglin821201@gmail.com>
Subject: Re: [PATCH v4 1/7] clk: rockchip: add clock flag parameter when
 register pll
Date: Fri, 5 Aug 2016 16:50:49 +0800
Message-ID: <57A45369.7020804@gmail.com>
References: <1469779021-10426-1-git-send-email-hl@rock-chips.com>
 <1469779021-10426-2-git-send-email-hl@rock-chips.com>
 <4870605.nd4Eof6Gm1@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4870605.nd4Eof6Gm1@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>
Cc: cw00.choi@samsung.com, tixy@linaro.org, dbasehore@chromium.org, airlied@linux.ie, mturquette@baylibre.com, typ@rock-chips.com, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 2016年08月05日 06:37, Heiko Stuebner wrote:
> Am Freitag, 29. Juli 2016, 15:56:55 schrieb Lin Huang:
>> From: Heiko Stübner <heiko@sntech.de>
>>
>> add clock flag parameter so we can pass specific clock flag
>> (like CLK_GET_RATE_NOCACHE etc..)to pll driver.
>>
>> Signed-off-by: Heiko Stübner <heiko@sntech.de>
>> Signed-off-by: Lin Huang <hl@rock-chips.com>
> applied to my clock branch for 4.9 after some minor edits on the commit
> message.
  I can not found your clock branch for 4.9, can you share me the patch 
ID, i want
cherry-pick it to my downstream branch.
>
> Thanks
> Heiko
>
>
