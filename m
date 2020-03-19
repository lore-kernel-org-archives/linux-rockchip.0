From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v4 0/2] drm: lima: devfreq and cooling device support
Date: Thu, 19 Mar 2020 21:34:25 +0100
Message-ID: <20200319203427.2259891-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: yuq825@gmail.com, dri-devel@lists.freedesktop.org
Cc: airlied@linux.ie, daniel@ffwll.ch, linux-kernel@vger.kernel.org, tomeu.vizoso@collabora.com, robh@kernel.org, steven.price@arm.com, alyssa.rosenzweig@collabora.com, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, wens@csie.org, linux-pm@vger.kernel.org, Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Id: linux-rockchip.vger.kernel.org

This is my attempt at adding devfreq (and cooling device) support to
the lima driver.

Test results from a Meson8m2 board:
TEST #1: glmark2-es2-drm --off-screen in an infinite loop while cycling
         through all available frequencies using the userspace governor

     From  :   To
           : 182142857 318750000 425000000 510000000 637500000   time(ms)
  182142857:         0      1274      1274      1273      1279   5399468
  318750000:      1274         0      1274      1273      1272   5114700
  425000000:      1276      1274         0      1272      1271   5122008
  510000000:      1909      1273      1273         0       636   5274292
* 637500000:       640      1272      1272      1273         0   5186796
Total transition : 24834

TEST #2: glmark2-es2-drm --off-screen in an infinite loop with the
         simple_ondemand governor
     From  :   To
           : 182142857 318750000 425000000 510000000 637500000   time(ms)
  182142857:         0         0         0         0       203    318328
  318750000:        53         0         0         0        21     56044
  425000000:        27        18         0         0         2     34172
  510000000:        27         6        14         0         1     41348
* 637500000:        95        50        33        48         0   2085312


Changes since RFC v3 at [2]:
- fix devfreq init error handling and allow lima_devfreq_fini to be
  called multiple times (thanks Qiang)
- switch from atomic counter to a simple int which is only accessed
  under the devfreq spinlock (thanks Qiang)
- union lock areas in same function (thanks Qiang)
- select DEVFREQ_GOV_SIMPLE_ONDEMAND like panfrost does (thanks Qiang)
- move lima_devfreq struct to lima_devfreq.h (thanks Qiang)
- fix duplicate variable in lima_sched_pipe_task_done
- only call dev_pm_opp_of_remove_table if dev_pm_opp_of_add_table
  succeeded previously
- update copyright year to 2020
- rebased on top of drm-misc-next
- dropped RFC status

Changes since RFC v2 at [1]:
- added #cooling-cells to the dt-bindings (new patch #1)
- skip devfreq initialization when the operating-points-v2 property is
  absent
- call dev_pm_opp_set_regulators() so devfreq will actually manage the
  mali-supply regulator
- rebased on top of drm-misc-next-2020-02-21

Changes since RFC v1 at [0]:
- added lock to protect the statistics as these can be written
  concurrently for example when the GP and PP IRQ are firing at the
  same time. Thanks to Qiang Yu for the suggestion!
- updated the copyright notice of lima_devfreq.c to indicate that the
  code is derived from panfrost_devfreq.c. Thanks to  Chen-Yu Tsai  for
  the suggestion!
- I did not unify the code with panfrost yet because I don't know where
  to put the result. any suggestion is welcome though!


[0] https://patchwork.freedesktop.org/series/70967/
[1] https://patchwork.kernel.org/cover/11311293/
[2] https://patchwork.kernel.org/cover/11398365/


Martin Blumenstingl (2):
  dt-bindings: gpu: mali-utgard: Add the #cooling-cells property
  drm/lima: Add optional devfreq and cooling device support

 .../bindings/gpu/arm,mali-utgard.yaml         |   4 +
 drivers/gpu/drm/lima/Kconfig                  |   2 +
 drivers/gpu/drm/lima/Makefile                 |   3 +-
 drivers/gpu/drm/lima/lima_devfreq.c           | 234 ++++++++++++++++++
 drivers/gpu/drm/lima/lima_devfreq.h           |  41 +++
 drivers/gpu/drm/lima/lima_device.c            |   4 +
 drivers/gpu/drm/lima/lima_device.h            |   3 +
 drivers/gpu/drm/lima/lima_drv.c               |  14 +-
 drivers/gpu/drm/lima/lima_sched.c             |   7 +
 drivers/gpu/drm/lima/lima_sched.h             |   3 +
 10 files changed, 312 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h

-- 
2.25.2
