From: Romain Perier <romain.perier@gmail.com>
Subject: Re: [PATCH v2] clk: rockchip: Add pclk_peri to critical clocks on RK3066/RK3188
Date: Sat, 5 Sep 2015 18:12:08 +0200
Message-ID: <CABgxDo+0qN5GJdCNpQi4g_CdW67PvxsogMseRoAa5cuAbWk1wQ@mail.gmail.com>
References: <1440322357-2621-1-git-send-email-romain.perier@gmail.com>
	<CABgxDo+otZrYoqTNK-ea=L6Dsd5p_b_MFCi4H4XJZZ25PV_qnA@mail.gmail.com>
	<CABgxDoLgqfzO-Sb_rKHe=-GuMaKWMihHhktx6sDSM6M=Q+Koaw@mail.gmail.com>
	<20150904162402.GN15099@codeaurora.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20150904162402.GN15099@codeaurora.org>
Sender: linux-clk-owner@vger.kernel.org
To: Stephen Boyd <sboyd@codeaurora.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-clk@vger.kernel.org, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Michael Turquette <mturquette@baylibre.com>
List-Id: linux-rockchip.vger.kernel.org

Np,

Yes it would be nice to take it for -rc1, because I think that 4.3
won't boot without this fix


Regards,
Romain

2015-09-04 18:24 GMT+02:00 Stephen Boyd <sboyd@codeaurora.org>:
> On 09/04, Romain Perier wrote:
>> Hi all,
>>
>> just a reminder, I sent this patch two weeks ago, rk3xxx-based
>> platforms still need it, it fixes a freeze during boot.
>
> Sorry I thought that Linus W was going to pick this up? If not,
> we can take it through clk tree as a fix for -rc1.
>
> --
> Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
> a Linux Foundation Collaborative Project
