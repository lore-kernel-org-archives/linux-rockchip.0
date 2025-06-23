Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87BCBC7EE32
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 19:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K3ZFKmfv3RVv2Uo5K+/CN88rMQFb68ObX7D99c1cyvA=; b=tK4hA2fcCJt+m/
	V87+W/6xTJzd1arkrzgogDMlHTZ00/X9ejDyt9zwnQiMf6rx4QoEdjeH+drY4dxXpdNOPHHHW6ddm
	lo/bx0NVAT8ygGWL4kJHrBPH9XzLM7BhsRLVeIoUY+sXY/4X7HhIKDYYbIwjMPTuSCmf6O0lsA62c
	atC8UGgQ8yFpdJae/ktv8o7aALoUp23kcPKvQeCO+EDlce2FsVza03KdZqavXGA/ftQw4BPm+QI5A
	R4g14rot1RBJih7+EF44PfIUAT/PRr6HdTa+JVqhHSN0/5PGMME/SjYCX+5Zz8He4LunobAY62KCq
	aRThjvw0DSALEisN1cTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTn3h-00000003pft-4AUR;
	Mon, 23 Jun 2025 19:42:25 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjh6-00000003Ljt-49np;
	Mon, 23 Jun 2025 16:06:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750694764; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UVao7uPKb2Ut1L2cDmAKFM6EvbHFJRJRhzjSiR3OU7fc8TAq2vkP//x2lQ85ZKZBnrA5ZVgLn0N3WshR5q/SArOMQGYWDUh+5uE+KqBTfH47mg4GP792rXUg54EEPruBFGpfYaJtIVmWKsnRj2HVLVTg3QXutP9eReD31SSLnCw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750694764; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=iE9yh19l2ifejmMUwyg2PaFSbh+ZLdHsr2HyVG2JpXE=; 
	b=KLSor59+fk9LAZCaS55LP3NyjRaHTxa/zZqVL8VBobubkrK3iPBj+8+i37q6pajVRKlhi3lxhM1Is3yWSOO/ZS4q9s69QbpU+PqcDL+6vZjdfvgD60O/8oi73A08mIUV4s/Mep7meA3flPLRRZOgnOcOdmH3/ClxT+jsoZisD4A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750694764;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=iE9yh19l2ifejmMUwyg2PaFSbh+ZLdHsr2HyVG2JpXE=;
	b=hJ5Aj3uplpiKDx8h+ipBhfmJ8l1L4DLklGLaMyLb/OlN2IOCKfQ8V2EB2YYC1xmx
	RHZkF2ydgekMX00dHgsDxXb7edfllVicyUHvbDYeR0hHsX+RzanXWqULQArOhAGqzNf
	7Oo23uvk7asskBGSDtkVzpYxYSbtt7c2S/JbgwPE=
Received: by mx.zohomail.com with SMTPS id 1750694762676661.9667739946736;
	Mon, 23 Jun 2025 09:06:02 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 23 Jun 2025 18:05:29 +0200
Subject: [PATCH v2 01/20] bitmap: introduce hardware-specific bitfield
 operations
MIME-Version: 1.0
Message-Id: <20250623-byeword-update-v2-1-cf1fc08a2e1f@collabora.com>
References: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
In-Reply-To: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_090653_059581_FAB79C77 
X-CRM114-Status: GOOD (  20.54  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hardware of various vendors, but very notably Rockchip, often uses
32-bit registers where the upper 16-bit half of the register is a
write-enable mask for the lower half.

This type of hardware setup allows for more granular concurrent register
write access.

Over the years, many drivers have hand-rolled their own version of this
macro, usually without any checks, often called something like
HIWORD_UPDATE or FIELD_PREP_HIWORD, commonly with slightly different
semantics between them.

Clearly there is a demand for such a macro, and thus the demand should
be satisfied in a common header file. As this is a convention that spans
across multiple vendors, and similar conventions may also have
cross-vendor adoption, it's best if it lives in a vendor-agnostic header
file that can be expanded over time.

Add hw_bitfield.h with two macros: FIELD_PREP_WM16, and
FIELD_PREP_WM16_CONST. The latter is a version that can be used in
initializers, like FIELD_PREP_CONST.

Suggested-by: Yury Norov [NVIDIA] <yury.norov@gmail.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 MAINTAINERS                 |  1 +
 include/linux/hw_bitfield.h | 62 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 41f13ccef4c84dcb1762c166553a2dc35704f211..8d2cf600d5cd722b5b08e81b6b24338fdc044240 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4187,6 +4187,7 @@ F:	include/linux/bits.h
 F:	include/linux/cpumask.h
 F:	include/linux/cpumask_types.h
 F:	include/linux/find.h
+F:	include/linux/hw_bitfield.h
 F:	include/linux/nodemask.h
 F:	include/linux/nodemask_types.h
 F:	include/vdso/bits.h
diff --git a/include/linux/hw_bitfield.h b/include/linux/hw_bitfield.h
new file mode 100644
index 0000000000000000000000000000000000000000..df202e167ce487122e4440962eacb2e44817ad9f
--- /dev/null
+++ b/include/linux/hw_bitfield.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2025, Collabora Ltd.
+ */
+
+#ifndef _LINUX_HW_BITFIELD_H
+#define _LINUX_HW_BITFIELD_H
+
+#include <linux/bitfield.h>
+#include <linux/build_bug.h>
+#include <linux/limits.h>
+
+/**
+ * FIELD_PREP_WM16() - prepare a bitfield element with a mask in the upper half
+ * @_mask: shifted mask defining the field's length and position
+ * @_val:  value to put in the field
+ *
+ * FIELD_PREP_WM16() masks and shifts up the value, as well as bitwise ORs the
+ * result with the mask shifted up by 16.
+ *
+ * This is useful for a common design of hardware registers where the upper
+ * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
+ * register, a bit in the lower half is only updated if the corresponding bit
+ * in the upper half is high.
+ */
+#define FIELD_PREP_WM16(_mask, _val)					     \
+	({								     \
+		typeof(_val) __val = _val;				     \
+		typeof(_mask) __mask = _mask;				     \
+		__BF_FIELD_CHECK(__mask, ((u16)0U), __val,		     \
+				 "HWORD_UPDATE: ");			     \
+		(((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) | \
+		((__mask) << 16);					     \
+	})
+
+/**
+ * FIELD_PREP_WM16_CONST() - prepare a constant bitfield element with a mask in
+ *                           the upper half
+ * @_mask: shifted mask defining the field's length and position
+ * @_val:  value to put in the field
+ *
+ * FIELD_PREP_WM16_CONST() masks and shifts up the value, as well as bitwise ORs
+ * the result with the mask shifted up by 16.
+ *
+ * This is useful for a common design of hardware registers where the upper
+ * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
+ * register, a bit in the lower half is only updated if the corresponding bit
+ * in the upper half is high.
+ *
+ * Unlike FIELD_PREP_WM16(), this is a constant expression and can therefore
+ * be used in initializers. Error checking is less comfortable for this
+ * version.
+ */
+#define FIELD_PREP_WM16_CONST(_mask, _val)				 \
+	(								 \
+		FIELD_PREP_CONST(_mask, _val) |				 \
+		(BUILD_BUG_ON_ZERO(const_true((u64)(_mask) > U16_MAX)) + \
+		 ((_mask) << 16))					 \
+	)
+
+
+#endif /* _LINUX_HW_BITFIELD_H */

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
