From: ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: [PATCH v3 2/9] rockchip: mpp: rkvdec: rbsp
Date: Wed, 10 Apr 2019 20:42:19 +0800
Message-ID: <20190410124226.8612-3-ayaka@soulik.info>
References: <20190410124226.8612-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190410124226.8612-1-ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
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
Cc: paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, joro-zLv9SwRftAIdnm+yROfE0A@public.gmane.org, Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, jernej.skrabec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

It is a bit writer.

Signed-off-by: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/staging/rockchip-mpp/rkvdec/rbsp.c | 96 ++++++++++++++++++++++
 drivers/staging/rockchip-mpp/rkvdec/rbsp.h | 30 +++++++
 2 files changed, 126 insertions(+)
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/rbsp.c
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/rbsp.h

diff --git a/drivers/staging/rockchip-mpp/rkvdec/rbsp.c b/drivers/staging/rockchip-mpp/rkvdec/rbsp.c
new file mode 100644
index 000000000000..3fbc50e9bca1
--- /dev/null
+++ b/drivers/staging/rockchip-mpp/rkvdec/rbsp.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2012 Vista Silicon S.L.
+ * Copyright (C) 2019 Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm-generic/errno-base.h>
+#include <linux/kernel.h>
+#include <linux/types.h>
+
+#include "rbsp.h"
+
+int rbsp_init(struct rbsp *rbsp, void *buf, int size, int bit_pos)
+{
+	if (!buf)
+		return -EINVAL;
+	if (DIV_ROUND_UP(bit_pos, 32) >= size)
+		return -EINVAL;
+
+	rbsp->buf = buf;
+	rbsp->size = size >> 2;
+	rbsp->pos = bit_pos;
+
+	return 0;
+}
+
+static inline int rbsp_read_bit(struct rbsp *rbsp)
+{
+	int shift = rbsp->pos % 32;
+	int ofs = rbsp->pos++ / 32;
+
+	if (ofs >= rbsp->size)
+		return -EINVAL;
+
+	return (rbsp->buf[ofs] >> shift) & 1;
+}
+
+static inline int rbsp_write_bit(struct rbsp *rbsp, int bit)
+{
+	int shift = rbsp->pos % 32;
+	int ofs = rbsp->pos++ / 32;
+
+	if (ofs >= rbsp->size)
+		return -EINVAL;
+
+	rbsp->buf[ofs] &= ~(1 << shift);
+	rbsp->buf[ofs] |= bit << shift;
+
+	return 0;
+}
+
+int rbsp_write_bits(struct rbsp *rbsp, int num, int value)
+{
+	int shift = rbsp->pos % 32;
+	int ofs = rbsp->pos / 32;
+
+	if (ofs >= rbsp->size)
+		return -EINVAL;
+
+	if (num + shift >= 32) {
+		u32 lbits = 32 - shift;
+		u32 hbits = num + shift - 32;
+
+		rbsp->buf[ofs] &= ~(((1 << lbits) - 1) << shift);
+		rbsp->buf[ofs] |= value << shift;
+
+		value >>= (32 - shift);
+		rbsp->buf[ofs + 1] &= ~(((1 << hbits) - 1));
+		rbsp->buf[ofs + 1] |= value;
+	} else {
+		rbsp->buf[ofs] &= ~(((1 << num) - 1) << shift);
+		rbsp->buf[ofs] |= value << shift;
+	}
+
+	rbsp->pos += num;
+
+	return 0;
+}
+
+int rbsp_write_flag(struct rbsp *rbsp, int value)
+{
+	if (value)
+		return rbsp_write_bit(rbsp, BIT(0));
+	else
+		return rbsp_write_bit(rbsp, 0);
+}
diff --git a/drivers/staging/rockchip-mpp/rkvdec/rbsp.h b/drivers/staging/rockchip-mpp/rkvdec/rbsp.h
new file mode 100644
index 000000000000..d87c582bfd41
--- /dev/null
+++ b/drivers/staging/rockchip-mpp/rkvdec/rbsp.h
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2012 Vista Silicon S.L.
+ * Copyright (C) 2019 Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef _RBSP_H_
+#define _RBSP_H_
+
+struct rbsp {
+	u32 *buf;
+	int size;
+	int pos;
+};
+
+int rbsp_init(struct rbsp *rbsp, void *buf, int size, int bit_pos);
+int rbsp_write_flag(struct rbsp *rbsp, int bit);
+int rbsp_write_bits(struct rbsp *rbsp, int num, int value);
+
+#endif
-- 
2.20.1
