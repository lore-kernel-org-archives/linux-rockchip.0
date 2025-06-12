Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C67EC71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 19:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRQ/27qiAcharKpUEPxNCBTpEnts7bgb1Cchubj8T7w=; b=TZI+NBV1NSZ/H/
	d2BmS+qm6WCRq/Lt0iU9Wb9xNV/Xc2aswD/HNTduF9d8RPc1yCWcT/Y/QG3VpgFeLoW6C1HecU6JM
	qi9Z55TUPCT0mEQS3/2v2uQuCinR3QYOYpWVgTuHrypNYl6C8JP2ljHlZ+Nf7S18tMBH1HgO6r1fo
	dDJs2RQYluSBgvs6gcCgk/cFwprFVhi3JWmqnzG5Zjp5Nm2VGquz9zubEtEqnu0MNZXCPIUsZ3OO0
	lJLqunv+W7oVK/QmiOIneH7uDPbulwZsivwcmoDCnTsDCQHSCKvyg4V/0usgZA2yZyerGSdqfTG3f
	ZYe06kV8cJ0DcGZUtbqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnu0-0000000EON1-0Uan;
	Thu, 12 Jun 2025 19:47:56 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPn76-0000000E9uK-3qdq;
	Thu, 12 Jun 2025 18:57:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749754599; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VjTrVaWfz9jfeFDYITSFocj41PBevLpWCKD+yFugt6G1+9d/Hw9jBQso8N/gjAPvpi60iwOZlPdJti4Lm1c8Stdx7ZAV2s32I+igmfs7sfjSiZzNcOGemQ8U3YJi+genYO6P68iKZU887RanvFG2jmIT4EG6ifQWvG3TTwOzVmc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749754599; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=IjOHGVHF7xIfJfArpDhRS/Px27x14OeLJOrr4ltwi/o=; 
	b=Hv21Y4ICiKV6kkRup/0kBvaRTAUVqzMvXMTU7oOyjqRyNnKpWlnVTSU85nEPPqG4UtY6ATHj7UGqD9ilByEshaOxWumLRru0Myi5xN/KMure37YfQFtqQmaal02l69q9GpbUglMNHzB8ITpQ0V3kVy+XbtmczpJfHsjaGkX3vq4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749754599;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=IjOHGVHF7xIfJfArpDhRS/Px27x14OeLJOrr4ltwi/o=;
	b=DDS22aPhBDFhm0N/TbbfWtmcvGpPgih6ABqWtgdiQi1WLz5vBE40IBeFLnhixWy+
	XeH5bQ1OypUI3HKN9tCAk6z/OJYWnm4DYfBAd0Uz/qp47NLT/xrxRESq5KVRWH0tPYk
	0l1ydpt0eehm25ZaFWLKUMNlC9fEHBBWV4iUkEww=
Received: by mx.zohomail.com with SMTPS id 1749754596390629.9899321699246;
	Thu, 12 Jun 2025 11:56:36 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 12 Jun 2025 20:56:03 +0200
Subject: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
MIME-Version: 1.0
Message-Id: <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
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
X-CRM114-CacheID: sfid-20250612_115725_009976_043BECC4 
X-CRM114-Status: GOOD (  17.04  )
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
be satisfied in a common header file.

Add two macros: HWORD_UPDATE, and HWORD_UPDATE_CONST. The latter is a
version that can be used in initializers, like FIELD_PREP_CONST. The
macro names are chosen to not clash with any potential other macros that
drivers may already have implemented themselves, while retaining a
familiar name.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 include/linux/bitfield.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
index 6d9a53db54b66c0833973c880444bd289d9667b1..b90d88db7405f95b78cdd6f3426263086bab5aa6 100644
--- a/include/linux/bitfield.h
+++ b/include/linux/bitfield.h
@@ -8,6 +8,7 @@
 #define _LINUX_BITFIELD_H
 
 #include <linux/build_bug.h>
+#include <linux/limits.h>
 #include <linux/typecheck.h>
 #include <asm/byteorder.h>
 
@@ -142,6 +143,52 @@
 		(((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask))	\
 	)
 
+/**
+ * HWORD_UPDATE() - prepare a bitfield element with a mask in the upper half
+ * @_mask: shifted mask defining the field's length and position
+ * @_val:  value to put in the field
+ *
+ * HWORD_UPDATE() masks and shifts up the value, as well as bitwise ORs the
+ * result with the mask shifted up by 16.
+ *
+ * This is useful for a common design of hardware registers where the upper
+ * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
+ * register, a bit in the lower half is only updated if the corresponding bit
+ * in the upper half is high.
+ */
+#define HWORD_UPDATE(_mask, _val)					 \
+	({								 \
+		__BF_FIELD_CHECK(_mask, ((u16) 0U), _val,		 \
+				 "HWORD_UPDATE: ");			 \
+		(((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask)) | \
+		((_mask) << 16);					 \
+	})
+
+/**
+ * HWORD_UPDATE_CONST() - prepare a constant bitfield element with a mask in
+ *                        the upper half
+ * @_mask: shifted mask defining the field's length and position
+ * @_val:  value to put in the field
+ *
+ * HWORD_UPDATE_CONST() masks and shifts up the value, as well as bitwise ORs
+ * the result with the mask shifted up by 16.
+ *
+ * This is useful for a common design of hardware registers where the upper
+ * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
+ * register, a bit in the lower half is only updated if the corresponding bit
+ * in the upper half is high.
+ *
+ * Unlike HWORD_UPDATE(), this is a constant expression and can therefore
+ * be used in initializers. Error checking is less comfortable for this
+ * version.
+ */
+#define HWORD_UPDATE_CONST(_mask, _val)					  \
+	(								  \
+		FIELD_PREP_CONST(_mask, _val) |				  \
+		(BUILD_BUG_ON_ZERO(const_true((u64) (_mask) > U16_MAX)) + \
+		 ((_mask) << 16))					  \
+	)
+
 /**
  * FIELD_GET() - extract a bitfield element
  * @_mask: shifted mask defining the field's length and position

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
