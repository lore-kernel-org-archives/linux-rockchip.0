Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABA65CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 15:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IldwpuINGOLkUJAuwpiWpLwwYtldrujvflNmGWpf4is=; b=D32Bki+GSiSssu
	cG4kjcD0LFPYmtdRHfY4MpeaHW1E9yd0yJVytyB2UhIgVGT0H6CVShDVGPpuSGOlFbWKbTmDPPeot
	cVfKmzd4b/K0JVEuoZhAslX9mGL0UoAsCXYK1cA2buyJJPNY6AD+NDrHZnzpPfFzsISB71rLeNqJd
	tcNqApEnPzhRYTV0Zv3RNHi2Td3qlYuhAj5bWXwT3hPBX3OxVsFwQBty5UBdBT6lRsqaQ7aL3HPpP
	ALGI72Qtm4d5oXYiUAD4QgLqLoILk/AXwr3tiBf/2vcwrzb9e+2ivMHfSFPX3DbqjIgqMfBU2cKqQ
	HmGfAv6Nk0bEpMzvrMzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzZY-00000007mOf-1jvj;
	Fri, 29 May 2026 15:56:32 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSzZL-00000007m3e-3elv
	for linux-rockchip@lists.infradead.org;
	Fri, 29 May 2026 15:56:21 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso122174945e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 08:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780070178; x=1780674978; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DXtmoRa4P06Ph2LHtyp4xqyCcrT4FMd0i5231H6kh7A=;
        b=TrAzcnusLAclwGxgo7DNMaSEXozYX8u4aQNToRONT+1QXckDhABzvMf152PPb+xUss
         QQrcDjpHNQ4GBtQCu22j1ZK2mOxeKnGlmMBoiPi4VwG/Gno9ar63dOgARy37SpRJR7IJ
         B4ZjQA40U4lLurIV4kYzOTfFWg43Skw/RwE2WhY3eW9KHpHjw6XjsijMlSLg7N/Xmtxk
         /TnB74g4On/UVPIs7bng48WHM8233j2LEwugrDOAv4VDIx1bsIGl08a/bCKKLypa4iJt
         N0eGUHxmmn603wYb0Lhs2cAXNXgcx7LShQivAjltBKOG3spDDQgYsF5nDbKWXBSC0Fou
         jVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780070178; x=1780674978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DXtmoRa4P06Ph2LHtyp4xqyCcrT4FMd0i5231H6kh7A=;
        b=MP94mRAgSzwGzp9pysIjNSEW+M8tCHPaDn3DzLnEDWUw1t2eP70nfW73pfXZypbGPi
         ryfvwcsoniAszHV2Am1r8Xo+50puEXwsoFueaUE68YSB1hanv3ubTzl9FRvYOFwcksqh
         dAgJzPDAvQcaT+V4PMvuDO+Ks+tPGcHFza2MNpim3nliUvvGc+a97uIaoJaVqSyQl64K
         hjQpEmE4SYplhxml5YkvktJphbe6uPWIDw/QlRJ54aYRzHoz4gNrqfm5qx6/lgiHhcxH
         XfgsdsFbWMLUBNOEpL1Bs6Tr/BeseCI5EHiKcpr6C6AF79N7F9QpaYRmUJRsLBES4hwi
         gYjA==
X-Forwarded-Encrypted: i=1; AFNElJ+QiqEzLxmmDJRGDxGiUMs5V1iXuCCc9ZZUsccqQ9OvmLpRt53dtkQakiz/DgFOQm+DTJ3Wz/hzzc30JEgrCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsE7PuLmwGT+I3uv9JXBCZMYpy8wbQCRFsAeXEajIVnntS2Q7E
	VLNv709+mupLZ+s62bXaKJab2y21tAeVb5pXzR2iHf+Tchz1yshEulce
X-Gm-Gg: Acq92OEOAc2TjnRWhTbWigc2nUIUlhF+4vgsaV7/swvS9xs7SFJhinGajUY4tJVPNF7
	CO3Xosuz7Nar872Gro0S+dzXJSW9LGEyHInRjpvUNypEINkhU4YFHKf/r18CTGWqEdOvCCXZV6v
	g/lBsGLeSUlvFaIft0CfQFpr+ZFLnfbi1Mmkj7vjr0N2ANg0EILIRjlxsqcNj+3vM+kU2FZC1Dx
	mfp8ESjnZvBvNoFOfflnbEjY5wCfnVYMaN5I0bGk2iQU0xf7RNz8V8PdBWOq6TykP0lTKuw9Bbg
	qy1FKzRbrrd5YDklm0/036ZVtHecJhqVpLpvKbspaHgvI6Z/nrjxScR77s5LDzyuDmRRoRSh1Na
	BnfOo1eZg+1wJyJNIeJbW7EIjF+ADUyO4qhEMyEs+rfJ65Zf4zdkKUcNJrDaw+9Xa2KFBX7XHrp
	/TdEq1U2vqEgiprIRZ+OvtzRlqBiAXaD0aJBq4m1tuWQeMmAQXvX6y/dTyKdiY7zVcvS8XRnuYk
	CV8Yr7vjL3IBuVRFAPQJU8oM/33GvktV/PyxviK
X-Received: by 2002:a05:600c:1382:b0:48f:e3e7:3d39 with SMTP id 5b1f17b1804b1-490a29e4449mr1171935e9.11.1780070177866;
        Fri, 29 May 2026 08:56:17 -0700 (PDT)
Received: from debian.tailb81abf.ts.net (2a01cb09e0354cc878d00097536575e1.ipv6.abo.wanadoo.fr. [2a01:cb09:e035:4cc8:78d0:97:5365:75e1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909cabfd6esm55150315e9.15.2026.05.29.08.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 08:56:17 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: rk3568-rock-3b: Enable NPU
Date: Fri, 29 May 2026 17:58:24 +0200
Message-Id: <20260529155824.3099831-5-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260529155824.3099831-1-midgy971@gmail.com>
References: <20260529155824.3099831-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_085619_912550_E3914D73 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Midgy BALON <midgy971@gmail.com>

Enable the RKNN core 0 and its IOMMU on the Radxa ROCK 3B by
overriding their status. The Rocket accel driver binds via the
rockchip,rk3568-rknn-core compatible.

The NPU is powered from vdd_npu (regulator already defined for OPP
table). The IOMMU node is also enabled so the rocket driver can manage
its own paging domain for user-mode submissions.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 3d0c1ccfa..d54229123 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -779,3 +779,12 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi_in_vp0>;
 	};
 };
+
+&rknn_core_0 {
+	npu-supply = <&vdd_npu>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
