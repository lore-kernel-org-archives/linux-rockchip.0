From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] drm/rockchip: Allow driver to be shutdown on reboot/kexec
Date: Wed, 5 Dec 2018 10:00:47 -0800
Message-ID: <20181205180046.GA57043@google.com>
References: <20180805124807.18169-1-marc.zyngier@arm.com>
 <20181205030127.GA200921@google.com>
 <1693737.bVF0dcvACY@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1693737.bVF0dcvACY@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Marc Zyngier <marc.zyngier@arm.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Dec 05, 2018 at 03:11:03PM +0100, Heiko Stuebner wrote:
> Can you maybe give "drm/rockchip: shutdown drm subsystem on shutdown" [2]
> a try? When the underlying issue of rebooting surfaced we had 2 competing 
> solutions, so we at least don't reopen the issue, that people have problems
> rebooting?
> 
> drm-drivers seem to be short on shutdown handlers to peek at but this
> second variant mimics what tinydrm does in its shutdown
> (calling drm_atomic_helper_shutdown), so at least shouldn't be completely
> wrong.
> 
> 
> [2] https://patchwork.kernel.org/patch/10556151/

I tried the linked patch on Kevin and Scarlet with 4.20-rc5-ish, with
$subject reverted; I saw no warnings/complaints, and things worked OK.
Same with Kevin on 4.19.6.

I can't test on 4.4.y, since drm_atomic_helper_shutdown() doesn't exist
there.

I can provide a Tested-by to the original patch if you'd like. (I won't
provide it here, lest patchwork apply it to the $subject patch.)

Brian
