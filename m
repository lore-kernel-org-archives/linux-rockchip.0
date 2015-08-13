From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v5 2/2] pinctrl: rockchip: only enable gpio clock when it setting
Date: Thu, 13 Aug 2015 16:11:38 +0200
Message-ID: <CACRpkdYYdqm+CfejMA6yrDheNA=3H13zsW2XuKqqYDRNMS=07w@mail.gmail.com>
References: <1439287924-6988-1-git-send-email-hl@rock-chips.com>
	<1439287924-6988-2-git-send-email-hl@rock-chips.com>
	<CACRpkda0FXz1dpdS-wLRNmkt1KBESMyCWKMMa0ArH9Z-L=i_sw@mail.gmail.com>
	<2167165.ooWgarx4Ov@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <2167165.ooWgarx4Ov@diego>
Sender: linux-gpio-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Lin Huang <hl@rock-chips.com>, Doug Anderson <dianders@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Aug 13, 2015 at 2:37 PM, Heiko St=C3=BCbner <heiko@sntech.de> w=
rote:

>> Patch applied with Doug's test tags etc.
>
> did you  also take the first patch?
>
> Aka bot should probably stay together (hence Stephen's Ack for the cl=
ock
> change), as the dynamically controlling the gpio clocks exposes the
> pclk_pd_pmu.

OK wasn't obvious to me, patch 1/2 applied to the pinctrl tree now.

Yours,
Linus Walleij
--
To unsubscribe from this list: send the line "unsubscribe linux-gpio" i=
n
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
