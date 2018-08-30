From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v7 0/3] Add support rockchip RGB output interface
Date: Thu, 30 Aug 2018 10:28:16 +0200
Message-ID: <38391933.H7ebZMqo79@phil>
References: <1535512364-80764-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1535512364-80764-1-git-send-email-hjc@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>
Cc: seanpaul@chromium.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 29. August 2018, 05:12:41 CEST schrieb Sandy Huang:
> This patches add support rockchip RGB output, Some Rockchip CRTCs, like
> rv1108 and px30 can directly output parallel and serial RGB data to panel
> or to conversion chip.
> So add a feature-bit for vops to mark the ability for these direct outputs
> and add an internal encoder in that case, that can attach to bridge chips
> or panels.

I'm obviously ok with this series, but let's give it till monday or so
before applying to give people a bit longer to comment if necessary.


Heiko
