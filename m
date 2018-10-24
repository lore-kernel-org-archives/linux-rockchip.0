From: Derek Basehore <dbasehore@chromium.org>
Subject: [PATCH 0/6] Coordinated Clks
Date: Tue, 23 Oct 2018 18:31:26 -0700
Message-ID: <20181024013132.115907-1-dbasehore@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@vger.kernel.org
Cc: aisheng.dong@nxp.com, Derek Basehore <dbasehore@chromium.org>, heiko@sntech.de, linux-doc@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com, corbet@lwn.net, linux-rockchip@lists.infradead.org, mchehab+samsung@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

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
  clk: add pre clk changes support
  docs: driver-api: add pre_rate_req to clk documentation
  clk: rockchip: use pre_rate_req for cpuclk

Stephen Boyd (1):
  clk: Remove recursion in clk_core_{prepare,enable}()

 Documentation/driver-api/clk.rst |   7 +-
 drivers/clk/clk.c                | 484 +++++++++++++++++++++++--------
 drivers/clk/rockchip/clk-cpu.c   | 256 ++++++++--------
 include/linux/clk-provider.h     |  10 +
 4 files changed, 509 insertions(+), 248 deletions(-)

-- 
2.19.1.568.g152ad8e336-goog
