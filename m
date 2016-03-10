From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: Cleanups and improvenments for pl330 v3
Date: Thu, 10 Mar 2016 14:02:41 +0300
Message-ID: <1457607764-30495-1-git-send-email-al.kochet@gmail.com>
References: <1455798674-10186-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1455798674-10186-1-git-send-email-al.kochet@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Vinod Koul <vinod.koul@intel.com>, Dan Williams <dan.j.williams@intel.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Caesar Wang <wxt@rock-chips.com>, Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Hello,
Here is v2 series of pl330 fixes. It is rebased again linux next-201603=
10.
The patches were tested on rk3188 radxarock.

>8 march 2016 =D0=B3., * 6:03, Vinod Koul <vinod.koul@intel.com> *:
>Overall this series looks okay, but can someone test this. I would not=
 like
>pl330 to be roken again

Bartlomiej, could you please test the patches on Samsung Exynos4412?
Dinh, could you please test the patches on SoCFPGA?
So I will add your name as Tested-by.

> 10 march 2016 =D0=B3., * 8:55, Caesar Wang <wxt@rock-chips.com> *:
> The above series patches will solve the I2S clic problem, right?

The patch "dmaengine: pl330: make cyclic transfer free runnable" fixes
sound click problem. So if you noticed sound clicks on your board,
please test the patches.

The patch "dmaengine: pl330: don't emit code for one iteration loop"
is simple improvement allows to save some bytes of pl330 MicroCode
buffer.

The patch "dmaengine: pl330: cleanup quirk pass code" is improvement
intended to hide struct pl330_dmac from low-level functions.
It partially revert changes introduced by 271e1b86e691 "dmaengine:
pl330: add quirk for broken no flushp".

[PATCH 1/3 v3] dmaengine: pl330: cleanup quirk pass code
[PATCH 2/3 v3] dmaengine: pl330: don't emit code for one iteration loop
[PATCH 3/3 v3] dmaengine: pl330: make cyclic transfer free runnable
