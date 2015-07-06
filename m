From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] ARM: rockchip: fix broken build
Date: Mon, 06 Jul 2015 15:16:56 +0200
Message-ID: <4036727.VEeW9aB38c@diego>
References: <1436153843-27784-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1436153843-27784-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: fengguang.wu@intel.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.or, dianders@chromium.org, kever.yang@rock-chips.com, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 6. Juli 2015, 11:37:23 schrieb Caesar Wang:
> The following was seen in branch[0] build.
> 
> arch/arm/mach-rockchip/platsmp.c:154:23: error:
>     'rockchip_secondary_startup' undeclared (first use in this function)
> 
> branch[0]:
> git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
> v4.3-armsoc/soc
> 
> The broken build is caused by the commit
> (fe4407c0dc58215a7abfb7532740d79ddabe7a7a)
> 
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>

applied to the soc branch.

Hopefully that will teach me to not publish stuff before going to bed ;-)


Thanks
Heiko
