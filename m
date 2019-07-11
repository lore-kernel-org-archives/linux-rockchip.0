From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v6 0/3] drm/panel: simple: Add mode support to devicetree
Date: Thu, 11 Jul 2019 13:34:52 -0700
Message-ID: <20190711203455.125667-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Thierry Reding <thierry.reding@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Sean Paul <seanpaul@chromium.org>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Boris Brezillon <boris.brezillon@collabora.com>, mka@chromium.org, Rob Herring <robh+dt@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

I'm reviving Sean Paul's old patchset to get mode support in device
tree.  The cover letter for his v3 is at:
https://lists.freedesktop.org/archives/dri-devel/2018-February/165162.html

v6 of this patch is just a repost of the 3 DRM patches in v5 rebased
atop drm-misc.  A few notes:
- I've dropped the bindings patch.  Commit 821a1f7171ae ("dt-bindings:
  display: Convert common panel bindings to DT schema") has landed and
  Rob H said [1] that when that landed the bindings were implicitly
  supported.
- Since the bindings patch was dropped I am assuming that Heiko
  can just pick up the .dts patches from the v5 series.  I
  double-checked with him and he confirmed this is fine.  Thus I
  have left the device tree patches out of this version.

There were some coding style discussions on v5 of the path but it's
been agreed that we can land this series as-is and after it lands we
can address the minor style issues.

[1] https://lkml.kernel.org/r/CAL_JsqJGtUTpJL+SDEKi09aDT4yDzY4x9KwYmz08NaZcn=nHfA@mail.gmail.com

Changes in v6:
- Rebased to drm-misc next
- Added tags

Changes in v5:
- Added Heiko's Tested-by

Changes in v4:
- Don't add mode from timing if override was specified (Thierry)
- Add warning if timing and fixed mode was specified (Thierry)
- Don't add fixed mode if timing was specified (Thierry)
- Refactor/rename a bit to avoid extra indentation from "if" tests
- i should be unsigned (Thierry)
- Add annoying WARN_ONs for some cases (Thierry)
- Simplify 'No display_timing found' handling (Thierry)
- Rename to panel_simple_parse_override_mode() (Thierry)
- display_timing for Innolux n116bge new for v4.
- display_timing for AUO b101ean01 new for v4.

Changes in v3:
- No longer parse display-timings subnode, use panel-timing (Rob)

Changes in v2:
- Parse the full display-timings node (using the native-mode) (Rob)

Douglas Anderson (2):
  drm/panel: simple: Use display_timing for Innolux n116bge
  drm/panel: simple: Use display_timing for AUO b101ean01

Sean Paul (1):
  drm/panel: simple: Add ability to override typical timing

 drivers/gpu/drm/panel/panel-simple.c | 171 ++++++++++++++++++++++-----
 1 file changed, 139 insertions(+), 32 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog
