From: Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 0/1] Regression in rockchipdrm
Date: Wed,  8 Jan 2020 23:39:48 +0100
Message-ID: <20200108223949.355975-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
List-Id: linux-rockchip.vger.kernel.org

commit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changed
the datatype used for storing the display port data rate to u8.
A u8 is not sufficient to store the data rate, resulting in a crash due
to incorrect calculations.

This series resolves the issue by restoring the data types changed in
commit 2589c4025f13 to their original type.

Tobias Schramm (1):
  drm/rockchip: fix integer type used for storing dp data rate and lane
    count

 drivers/gpu/drm/rockchip/cdn-dp-core.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.24.1
