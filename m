From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 3/3] media: vidioc-enum-fmt.rst: clarify format preference
Date: Wed, 13 Nov 2019 14:56:03 -0300
Message-ID: <20191113175603.24742-4-ezequiel@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191113175603.24742-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: kernel@collabora.com, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Chris Healy <cphealy@gmail.com>, linux-kernel@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

It has been decided to use the ENUM_FMT index value
as a hint for driver preference. This is defined purposedly
in a very liberal way, letting drivers define what "preference"
means.

For instance, the Hantro VPU driver indicates additional
processing to output a given format, and thus implicates
more CPU usage, which is enumerated after native (non-processed)
formats.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 Documentation/media/uapi/v4l/vidioc-enum-fmt.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
index 399ef1062bac..8ca6ab701e4a 100644
--- a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
+++ b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
@@ -44,7 +44,9 @@ To enumerate image formats applications initialize the ``type`` and
 the :ref:`VIDIOC_ENUM_FMT` ioctl with a pointer to this structure. Drivers
 fill the rest of the structure or return an ``EINVAL`` error code. All
 formats are enumerable by beginning at index zero and incrementing by
-one until ``EINVAL`` is returned.
+one until ``EINVAL`` is returned. If applicable, drivers shall return
+formats in preference order, where preferred formats are returned before
+(that is, with lower ``index`` value) less-preferred formats.
 
 .. note::
 
-- 
2.22.0
