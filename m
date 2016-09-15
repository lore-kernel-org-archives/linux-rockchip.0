From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/2] soc: rockchip: fix probe error path in power-domain driver
Date: Fri, 16 Sep 2016 00:14:37 +0200
Message-ID: <1473977679-18649-1-git-send-email-heiko@sntech.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, tomeu.vizoso@collabora.com, wxt@rock-chips.com, rjw@rjwysocki.net, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

A recent change to generic power-domains revealed that the rockchip
driver cannot safely fail it's probe. Also pm_genpd_init creates a
situation where a probe error leads to the generic power-domains
accessing already freed data.

The reason for us finding this issue (holes in power-domain lists), will
get fixed in the generic power-domains, but the fixes below will only
work after the newly added genpd-removal code got merged.


Therefore I hope to remember to send the two patches below as fix after
4.9-rc1.

Alternatively Rafael could include them into his branch directly.


Heiko Stuebner (1):
  soc: rockchip: power-domain: use pm_genpd_remove in error cleanup

Tomeu Vizoso (1):
  soc: rockchip: power-domain: Handle errors from
    of_genpd_add_provider_onecell

 drivers/soc/rockchip/pm_domains.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

-- 
2.8.1
