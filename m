From: ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: [PATCH v3 0/9] [WIP]: rockchip mpp for v4l2 video deocder
Date: Wed, 10 Apr 2019 20:42:17 +0800
Message-ID: <20190410124226.8612-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, joro-zLv9SwRftAIdnm+yROfE0A@public.gmane.org, Randy 'ayaka' Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jernej.skrabec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Randy 'ayaka' Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>

Although I really hate the bitstream construction in kernel and I think
many people realise its problems, I still take the advise from ndufresne to
release this version. This should be released in a early week but
I was sick that time.

After reviewed the documents from Rockchip and I have confirmed that with
some rockchip staff, those documents are not update to date. So you may
find some part is different comparing to official document.

The v4l2-request-test from bootlin won't work. Its slice data doesn't
have a start code which making it not a complete nal unit. And I found
its slice header information may not be correct. Even comparing to the
Big buck bunny's origin files, neither the slice data nor sequence
information matches.

I extracted a slice data from Rockchip mpp to verify my driver, it work
fine, you can find it on my github. I only verified the I slice now,
I have not verified P or B slice. Hopefully it would work.

I have the same problem with v4l2-request-test on HEVC as well so even
this version shipped with HEVC bitstream construction, I didn't know
whether it would work.

I need some time to prepare the userspace tool or it is really hard for
HEVC to write slice info manually.

Changlog
v3: add AVC support for rkvdec
v2: add MPEG-2 support for vdpu2
v1: inital version

Randy Li (7):
  staging: video: rockchip: add v4l2 decoder
  rockchip: mpp: rkvdec: rbsp
  [WIP]: rockchip: mpp: HEVC decoder ctrl data
  [TEST]: rockchip: mpp: support qtable
  [TEST]: rockchip: mpp: vdpu2: move qtable to input buffer
  arm64: dts: rockchip: boost clocks for rk3328
  arm64: dts: rockchip: add video codec for rk3328

ayaka (2):
  [WIP]: rockchip: mpp: H.264 decoder ctrl data
  [TEST]: rkvdec: spspps address alignment

 arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   32 +
 .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   32 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  112 +-
 drivers/staging/Kconfig                       |    2 +
 drivers/staging/Makefile                      |    1 +
 drivers/staging/rockchip-mpp/Kconfig          |   33 +
 drivers/staging/rockchip-mpp/Makefile         |   12 +
 drivers/staging/rockchip-mpp/mpp_debug.h      |   87 +
 drivers/staging/rockchip-mpp/mpp_dev_common.c | 1390 +++++++
 drivers/staging/rockchip-mpp/mpp_dev_common.h |  215 +
 drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c |  924 +++++
 drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c  |  607 +++
 drivers/staging/rockchip-mpp/mpp_service.c    |  197 +
 drivers/staging/rockchip-mpp/mpp_service.h    |   38 +
 .../staging/rockchip-mpp/rkvdec/avc-data.c    |  239 ++
 .../staging/rockchip-mpp/rkvdec/avc-data.h    |   40 +
 drivers/staging/rockchip-mpp/rkvdec/avc.c     |  259 ++
 drivers/staging/rockchip-mpp/rkvdec/cabac.h   | 3614 +++++++++++++++++
 drivers/staging/rockchip-mpp/rkvdec/hal.h     |   70 +
 .../staging/rockchip-mpp/rkvdec/hevc-data.c   |  208 +
 .../staging/rockchip-mpp/rkvdec/hevc-data.h   |   27 +
 drivers/staging/rockchip-mpp/rkvdec/hevc.c    |  169 +
 drivers/staging/rockchip-mpp/rkvdec/rbsp.c    |   96 +
 drivers/staging/rockchip-mpp/rkvdec/rbsp.h    |   30 +
 drivers/staging/rockchip-mpp/rkvdec/regs.h    |  377 ++
 drivers/staging/rockchip-mpp/vdpu2/avc.c      |  165 +
 drivers/staging/rockchip-mpp/vdpu2/hal.h      |   52 +
 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c    |  277 ++
 drivers/staging/rockchip-mpp/vdpu2/regs.h     |  670 +++
 include/uapi/video/rk_vpu_service.h           |  101 +
 30 files changed, 10072 insertions(+), 4 deletions(-)
 create mode 100644 drivers/staging/rockchip-mpp/Kconfig
 create mode 100644 drivers/staging/rockchip-mpp/Makefile
 create mode 100644 drivers/staging/rockchip-mpp/mpp_debug.h
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_common.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_common.h
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_service.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_service.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/avc-data.c
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/avc-data.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/avc.c
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/cabac.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/hal.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/hevc-data.c
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/hevc-data.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/hevc.c
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/rbsp.c
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/rbsp.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/regs.h
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/avc.c
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/hal.h
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/regs.h
 create mode 100644 include/uapi/video/rk_vpu_service.h

-- 
2.20.1
