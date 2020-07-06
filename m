From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH] arm64: defconfig: Enable REGULATOR_MP8859
Date: Mon, 6 Jul 2020 19:50:09 +0530
Message-ID: <CAMty3ZDDCeh29myiX7VC2QVZ-dMVDzW4uNNnTumD699is96pcg@mail.gmail.com>
References: <1582205259-15274-1-git-send-email-sunil@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1582205259-15274-1-git-send-email-sunil@amarulasolutions.com>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Markus Reichl <m.reichl@fivetechno.de>, Suniel Mahesh <sunil@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Thu, Feb 20, 2020 at 6:57 PM <sunil@amarulasolutions.com> wrote:
>
> From: Jagan Teki <jagan@amarulasolutions.com>
>
> RK3399 boards like ROC-RK3399-PC is using MP8859 DC/DC converter
> for 12V supply.
>
> roc-rk3399-pc initially used 12V fixed regulator for this supply,
> but the below commit has switched to use MP8859.
>
> commit <1fc61ed04d309b0b8b3562acf701ab988eee12de> "arm64: dts: rockchip:
> Enable mp8859 regulator on rk3399-roc-pc"
>
> So, enable bydefault on the defconfig.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Markus Reichl <m.reichl@fivetechno.de>
> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
> ---
> Note:
> This change set is applied on top of linux-rockchip, branch v5.7-armsoc/dts64.
> (git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git -b v5.7-armsoc/dts64)
> This change set was tested on ROC-RK3399-PC, an rk3399 based target.
> ---

Any update on this?

Jagan.
