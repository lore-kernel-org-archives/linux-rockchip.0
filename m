From: Derek Basehore <dbasehore@chromium.org>
Subject: [PATCH v2 0/6] Coordinated Clks
Date: Mon,  4 Mar 2019 20:49:30 -0800
Message-ID: <20190305044936.22267-1-dbasehore@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com, heiko@sntech.de, aisheng.dong@nxp.com, mchehab+samsung@kernel.org, corbet@lwn.net, jbrunet@baylibre.com, Derek Basehore <dbasehore@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

v2 changes:
-Unrolled recursion in unprepare/disable for
"clk: Remove recursion in clk_core_{prepare,enable}()"
-Fixed issue with "clk: fix clk_calc_subtree compute duplications"
-Fixed bug with too few allocated clk_change structs in
"clk: add coordinated clk changes support"
-Further cleaned up patches

Here's the first set of patches that I'm working on for the Common
Clk Framework. Part of this patch series adds a new clk op,
pre_rate_req. This is designed to replace the clk notifier approach
that many clk drivers use right now to setup alt parents or temporary
dividers. This should allow for the removal of the
CLK_RECALC_NEW_RATES flag and the implementation of a better locking
scheme for the prepare lock.

Derek Basehore (5):
  clk: fix clk_calc_subtree compute duplications
  clk: change rates via list iteration
  clk: add coordinated clk changes support
  docs: driver-api: add pre_rate_req to clk documentation
  clk: rockchip: use pre_rate_req for cpuclk

Stephen Boyd (1):
  clk: Remove recursion in clk_core_{prepare,enable}()

 Documentation/driver-api/clk.rst |   7 +-
 drivers/clk/clk.c                | 659 +++++++++++++++++++++++--------
 drivers/clk/rockchip/clk-cpu.c   | 256 ++++++------
 include/linux/clk-provider.h     |  10 +
 4 files changed, 642 insertions(+), 290 deletions(-)

-- 
2.21.0.352.gf09ad66450-goog
