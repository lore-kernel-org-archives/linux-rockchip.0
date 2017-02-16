From: Mark yao <mark.yao@rock-chips.com>
Subject: [GIT PULL] drm/rockchip: convert to drm_mm
Date: Thu, 16 Feb 2017 11:02:31 +0800
Message-ID: <58A51647.2040003@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0314811816=="
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
To: David Airlie <airlied@linux.ie>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

--===============0314811816==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi Dave<br>
    <br>
    After convert to drm_mm, rockchip arm64 platform can works with
    iommu, like rk3399. it's import patches for rockchip arm64 platform<br>
    <br>
    And these patches already have full reviewed, I hope these patches
    can be landed.<br>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <br>
    Best regards<br>
    <br>
    The following changes since commit
    13f62f54d174d3417c3caaafedf5e22a0a03e442:<br>
    <br>
      Merge branch 'drm-next-4.11' of
    git://people.freedesktop.org/~agd5f/linux into drm-next (2017-02-10
    10:13:30 +1000)<br>
    <br>
    are available in the git repository at:<br>
    <br>
    <br>
      <a class="moz-txt-link-freetext" href="https://github.com/markyzq/kernel-drm-rockchip.git">https://github.com/markyzq/kernel-drm-rockchip.git</a>
    drm-rockchip-next-2017-02-16<br>
    <br>
    for you to fetch changes up to
    1aa5ca6e3ec63aa5815d78646748e88a7ceb1c8e:<br>
    <br>
      drm/rockchip: Use common IOMMU API to attach devices (2017-02-15
    08:52:13 +0800)<br>
    <br>
    ----------------------------------------------------------------<br>
    Shunqian Zheng (1):<br>
          drm/rockchip: Use common IOMMU API to attach devices<br>
    <br>
    Tomasz Figa (1):<br>
          drm/rockchip: Do not use DMA mapping API if attached to IOMMU
    domain<br>
    <br>
     drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 101
    ++++++++++++++++++++++++++++-------------------------<br>
     drivers/gpu/drm/rockchip/rockchip_drm_drv.h |   6 +++-<br>
     drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 244
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------<br>
     drivers/gpu/drm/rockchip/rockchip_drm_gem.h |   8 +++++<br>
     4 files changed, 298 insertions(+), 61 deletions(-)<br>
    <br>
    <br>
    -- Ｍark Yao
  </body>
</html>


--===============0314811816==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0314811816==--
