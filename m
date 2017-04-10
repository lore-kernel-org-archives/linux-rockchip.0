From: Russell King - ARM Linux <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/2] drm: dw-hdmi: various improvements
Date: Mon, 10 Apr 2017 12:14:03 +0100
Message-ID: <20170410111402.GO17774@n2100.armlinux.org.uk>
References: <20170407141905.14147-1-romain.perier@collabora.com>
 <f0ff38c5-46f0-0702-ca68-ccebf5b8c910@codeaurora.org>
 <20170410100807.GN17774@n2100.armlinux.org.uk>
 <5b7e5643-e86d-37ac-e220-c81e34af13ba@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5b7e5643-e86d-37ac-e220-c81e34af13ba@baylibre.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Neil Armstrong <narmstrong@baylibre.com>
Cc: Archit Taneja <architt@codeaurora.org>, Romain Perier <romain.perier@collabora.com>, David Airlie <airlied@linux.ie>, Jose Abreu <Jose.Abreu@synopsys.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Apr 10, 2017 at 12:35:43PM +0200, Neil Armstrong wrote:
> Hi Russell,
> 
> Cross tree with media has already been done on this cycle with the
> dw-hdmi formats changes.
> 
> Nevertheless, please push your updated dw-hdmi cec patchset for tests
> and review based on the latest drm-misc-next and hverkuil's HPD notifier
> release.

You can get my current version at:

 git://git.armlinux.org.uk/~rmk/linux-arm.git cec-v18

As it's taken me over a week to validate both dw-hdmi and tda998x against
the latest version of Hans patches (despite me wanting to get it out to
Hans), I don't have the bandwidth to rebase it onto some other tree and
re-test at the moment.  As we're at -rc6 today, I doubt that'll happen
before the merge window, sorry.

-- 
RMK's Patch system: http://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line: currently at 9.6Mbps down 400kbps up
according to speedtest.net.
