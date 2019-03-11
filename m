From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] drm: rockchip: add shutdown function to poweroff VOP and
 HDMI TX
Date: Mon, 11 Mar 2019 19:14:27 +0100
Message-ID: <CA+z=w3W+OYgxwejgfbNLJzFP28seh5ij62imuCDAY9XP_V39fQ@mail.gmail.com>
References: <20190308183718.21409-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190308183718.21409-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Just found out that this was patched and reverted before.(lol)
The revert was 3 months ago for RK3399 boards, but other processors
like RK3066 are left without shutdown now.

What's the status for a fix?
Keep using the old patch for now?


drm/rockchip: shutdown drm subsystem on shutdown
https://patchwork.kernel.org/patch/10556151/

[for-4.20] Revert "drm/rockchip: Allow driver to be shutdown on reboot/kexec"
https://patchwork.kernel.org/patch/10714725/

2019-03-08 19:37 GMT+01:00, Johan Jonker <jbx6244@gmail.com>:
> When a MK808 TV-stick with RK3066 processor
> is given a poweroff command, the monitor doesn't turn blank,
> but freezes. The VOP and HDMI share the same power domain,
> so that means that both there clocks were never turned off.
> Fix the disable of the VOP and HDMI TX by adding an extra
> shutdown function that will unbind both drivers.
