From: Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH v2 0/1] Regression in rockchipdrm
Date: Thu,  9 Jan 2020 08:31:28 +0100
Message-ID: <20200109073129.378507-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, Tobias Schramm <t.schramm@manjaro.org>, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

commit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changed
the datatype used for storing the display port data rate to u8.
A u8 is not sufficient to store the data rate, resulting in a crash due
to incorrect calculations.

This series resolves the issue by restoring the data type changed in
commit 2589c4025f13 to their original type.

Thanks to CrystalGamma for identifying the commit causing the regression.

v2: Keep lane count as u8

Tobias Schramm (1):
  drm/rockchip: fix integer type used for storing dp data rate

 drivers/gpu/drm/rockchip/cdn-dp-core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.24.1
