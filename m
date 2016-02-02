From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] soc: rockchip: power-domain: fix err handle while probing
Date: Tue, 02 Feb 2016 22:19:38 +0100
Message-ID: <50160822.GDSasZvf15@diego>
References: <1454314720-6391-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1454314720-6391-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Caesar Wang <wxt@rock-chips.com>, Kevin Hilman <khilman@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 1. Februar 2016, 16:18:40 schrieb Shawn Lin:
> If we fail to probe the driver, we should not directly break
> from the for_each_available_child_of_node since it calls of_node_get
> while iterating. This patch add of_node_put to fix the unbalanced
> call pair.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

applied to my drivers-branch for 4.6


Thanks
Heiko
