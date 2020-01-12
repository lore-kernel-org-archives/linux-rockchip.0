From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH RFT v2 0/3] devfreq fixes for panfrost
Date: Sun, 12 Jan 2020 01:16:20 +0100
Message-ID: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io, steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, daniel@ffwll.ch, airlied@linux.ie, robin.murphy@arm.com, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, sudeep.holla@arm.com, Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Id: linux-rockchip.vger.kernel.org

These are a bunch of devfreq fixes for panfrost that came up in a
discussion with Robin Murphy during the code-review of the lima
devfreq patches: [0]

I am only able to test patch #1 properly because the only boards with
panfrost GPU that I have are using an Amlogic SoC. We don't have
support for the OPP tables or dynamic clock changes there yet.
So patches #2 and #3 are compile-tested only.


Changes since v1 at [1]
- added Steven's Reviewed-by to patch #2 (thank you!)
- only use dev_pm_opp_put_regulators() to clean up in
  panfrost_devfreq_init() if regulators_opp_table is not NULL to fix
  a potential crash inside dev_pm_opp_put_regulators() as spotted by
  Steven Price (thank you!). While here, I also switched to "goto err"
  pattern to avoid lines with more than 80 characters.

Known discussion topics (I have no way to test either of these, so I am
looking for help here):
- Steven Price reported the following message on his firefly (RK3288)
  board:
  "debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
  present!"
- Robin Murphy suggested that patch #1 may not work once the OPP table
  for the GPU comes from SCMI


[0] https://patchwork.freedesktop.org/patch/346898/
[1] https://patchwork.freedesktop.org/series/71744/


Martin Blumenstingl (3):
  drm/panfrost: enable devfreq based the "operating-points-v2" property
  drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
  drm/panfrost: Use the mali-supply regulator for control again

 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 44 +++++++++++++++++----
 drivers/gpu/drm/panfrost/panfrost_device.h  |  1 +
 2 files changed, 37 insertions(+), 8 deletions(-)

-- 
2.24.1
