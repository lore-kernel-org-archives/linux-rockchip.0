From: Yakir Yang <ykk@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: rk3036: enable the CLK_IGNORE_UNUSED flag
 for hclk_vio_bus
Date: Mon, 18 Jan 2016 18:44:16 +0800
Message-ID: <569CC200.1050504@rock-chips.com>
References: <1452858854-841-1-git-send-email-ykk@rock-chips.com>
 <1816378.OnNVlMiORS@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1816378.OnNVlMiORS@phil>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org



On 01/18/2016 03:14 AM, Heiko Stuebner wrote:
> Am Freitag, 15. Januar 2016, 19:54:14 schrieb Yakir Yang:
>> HCLK_VIO_BUS is the noc bus controller clock for display module,
>> due to it shouldn't belong to any driver, but we need it enabled,
>> so just mark it as the CLK_IGNORE_UNUSED flag.
>>
>> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> applied to my clk-branch for 4.6

Thanks  ;)

- Yakir
> Thanks
> Heiko
>
>
>


