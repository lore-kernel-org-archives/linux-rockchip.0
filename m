Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7EE5C54FB3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jun 2025 16:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyd4c/59R72ZsWX7w2or045HdBeFQLK1Go2QfH4d2xM=; b=lAwIQ/IH92Jc/d
	cA3Dz6nDOaAmGvqwdNtVI4GQobz8BATvBD54R/YTASJOGGMuD923NU/uTcpoVVjQuiQabt70Rmeh/
	UliXYqC5skTl9IFPbEqhcXgmFU/oRWziWQGLYJgJvS1VV5sw+w5myteIexHg9qxRSymOqjyq6FBzR
	MVeAvhXRyrIARF7Guo3kpeQZmKZR7UtYJOn1VVvP1P0Q+3bjJUW9z+QY+BGeQZNK6Y1oxkQEmx4G9
	AmullMwkw6FpaAtJki3MS0mOjbm/enl4VevnIlexQac4/33fzzScx6W55gUg/hENEa1Tk46q2eSw9
	yWNpAdF9fQ/Ge2XZR4xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM80c-00000007taC-1pXx;
	Mon, 02 Jun 2025 16:27:34 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM7tT-00000007sXE-0WEE;
	Mon, 02 Jun 2025 16:20:12 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1748881198; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PhNStYgLBPwpGKNbTZ0cGpXa2D1URHrfuCs/M96x3wUVSuOCMvTru7SuWHP0G2EQUGiT/6rJM0HgQTOU9ocAqEIk4XHvOlN9LfsYvtibQwWBimk/08HKdF2FSylUcIHGUbNPO+pdjKMK3JLvI5Ro3FhJjXzLIxeE6FNCLrL03vE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1748881198; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=qn6hkZ4dvueWK2yUfqDn0Lxg117xtWyawVMPwvD0KTI=; 
	b=ehrp0EKSMyO9N+xF9mngVANcUXtfFXb/CaSh6FvBIcEodfi4rEbFEZrV/Q/KqFlENE5ddewUbOHwpzWq0inqloKp6odgj+OJoZfOOy8xlJuijInt+VH0O4vzQk1zyghEvVrDXaBNpF/EyOYB83fkkz5sRuWb9OQpVAWeaVxRZ6M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1748881198;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=qn6hkZ4dvueWK2yUfqDn0Lxg117xtWyawVMPwvD0KTI=;
	b=Q73iPwH765q3Dckn8PEFgSbkM8DKWlkT+WEWPvVE2BWhgMJWHYvrnuArk5Ml5bik
	QxBPwOUQuDq7LczRoS05dEdLfro4L+xrFuQbtxdqqCqqCfneuE/P8v+Vg5lXnh+yihd
	w/zJYrNCkrCOtcC6YeZoQ0sFW9QxWWW2p+CwFdfU=
Received: by mx.zohomail.com with SMTPS id 174888119584653.46102599234996;
	Mon, 2 Jun 2025 09:19:55 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 02 Jun 2025 18:19:14 +0200
Subject: [PATCH v2 3/7] bitfield: introduce HI16_WE bitfield prep macros
MIME-Version: 1.0
Message-Id: <20250602-rk3576-pwm-v2-3-a6434b0ce60c@collabora.com>
References: <20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com>
In-Reply-To: <20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 William Breathitt Gray <wbg@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_092011_233598_A04742AC 
X-CRM114-Status: GOOD (  16.02  )
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
Cc: devicetree@vger.kernel.org, Leon Romanovsky <leon@kernel.org>, linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, linux-gpio@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Detlev Casanova <detlev.casanova@collabora.com>, Dave Ertman <david.m.ertman@intel.com>, kernel@collabora.com, Ira Weiny <ira.weiny@intel.com>, linux-arm-kernel@lists.infradead.org
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

Add two macros: FIELD_PREP_HI16_WE, and FIELD_PREP_HI16_WE_CONST. The
latter is a version that can be used in initializers, like
FIELD_PREP_CONST. The macro names are chosen to explicitly reference the
assumed half-register width, and its function, while not clashing with
any potential other macros that drivers may already have implemented
themselves.

Future drivers should use these macros instead of handrolling their own,
and old drivers can be ported to the new macros as time and opportunity
allows.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 include/linux/bitfield.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
index 6d9a53db54b66c0833973c880444bd289d9667b1..2b3e7cb90ccb5d48f510104f61443b06748bb7eb 100644
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
+ * FIELD_PREP_HI16_WE() - prepare a bitfield element with a write-enable mask
+ * @_mask: shifted mask defining the field's length and position
+ * @_val:  value to put in the field
+ *
+ * FIELD_PREP_HI16_WE() masks and shifts up the value, as well as bitwise ORs
+ * the result with the mask shifted up by 16.
+ *
+ * This is useful for a common design of hardware registers where the upper
+ * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
+ * register, a bit in the lower half is only updated if the corresponding bit
+ * in the upper half is high.
+ */
+#define FIELD_PREP_HI16_WE(_mask, _val)					\
+	({								\
+		__BF_FIELD_CHECK(_mask, ((u16) 0U), _val,		\
+				 "FIELD_PREP_HI16_WE: ");		\
+		((typeof(_mask))(_val) << __bf_shf(_mask)) & (_mask) |	\
+		((_mask) << 16);					\
+	})
+
+/**
+ * FIELD_PREP_HI16_WE_CONST() - prepare a constant bitfield element with a
+ *                              write-enable mask
+ * @_mask: shifted mask defining the field's length and position
+ * @_val:  value to put in the field
+ *
+ * FIELD_PREP_HI16_WE_CONST() masks and shifts up the value, as well as bitwise
+ * ORs the result with the mask shifted up by 16.
+ *
+ * This is useful for a common design of hardware registers where the upper
+ * 16-bit half of a 32-bit register is used as a write-enable mask. In such a
+ * register, a bit in the lower half is only updated if the corresponding bit
+ * in the upper half is high.
+ *
+ * Unlike FIELD_PREP_HI16_WE(), this is a constant expression and can therefore
+ * be used in initializers. Error checking is less comfortable for this
+ * version, and non-constant masks cannot be used.
+ */
+#define FIELD_PREP_HI16_WE_CONST(_mask, _val)				 \
+	(								 \
+		FIELD_PREP_CONST(_mask, _val) |				 \
+		(BUILD_BUG_ON_ZERO(const_true((u64) (_mask) > U16_MAX)) + \
+		 ((_mask) << 16))					 \
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
