Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96DCC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:22:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 450B4600D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:22:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 450B4600D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wO2CYbXXmB4jHQxWTiKCD1xn1bvZpE9fz/o/sjCY1Pw=; b=Kk+n/G8R/odT11GmHOXzNkawFP
	lJ1jjleeUiv/e37nxXplInnHJHs1eGMYcWFPNEFdfl41g1L5CNnelN4DwJVHrIcYfzVHTJ+D5Ozi6
	cu4lwvJoqFu9HGp3KdMRZInX8WYed6Q2dGkvTUQk70Sjbdp3HHuCXF/zmGfwEHUHCwExv1/kMJYkq
	nGtK0YAaThKFu99+bm52A0SvHHvGhEwSODLDimDXhBGxDw2Hb5VODNq4uc/mXnhX6KXKTIGQKn1RT
	4zcKOSEW9pnirEMoURsTpD2qU9KxbYCAfOVfWHBA+VrrwgCrG7Cfd5wNed3qwKUir+4TTHH6iNt6S
	ayPqGsOQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmxZ-00Dpag-75; Wed, 14 Apr 2021 21:22:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmur-00DooV-3q; Wed, 14 Apr 2021 21:19:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Z55R7ew9RrmSKfUTHbSEwYVWparxSnYf7XjT/Qh3Lhc=; b=iGi6KN0c/dVZElWFe4Wq8tkoFf
 MFammZz8q+jCJ0G5ugW4c9QYjzdej3uhwMUXO/18Ckl2LKbnjTeU0bQgYY1s9tGJ9mJ/9V9w9yWvQ
 27w/GMwEXfbSNcop3iu2XUoovWjyxCL3px6W6CZCHUqK1iK7Dafnw/UE6L2LDg5WXcyAgV2j1Tt9e
 c1sIuzphYZaltSqg+FXWMoep/4x1/GBXBiIprOfgrD5lx/0To6GoMJPM4JfTEg99Dw7dVYqusNS4s
 ilSTuutfVQjp/97EghODuXnStYBfhzyUChoIuhiIdCCs1Rp979u8wSyE0uXrWhm3rnBMK40Vr6/XF
 toFbHLEQ==;
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmuo-0086sH-OS; Wed, 14 Apr 2021 21:19:15 +0000
Received: by mail-ed1-x52e.google.com with SMTP id bx20so24275984edb.12;
 Wed, 14 Apr 2021 14:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z55R7ew9RrmSKfUTHbSEwYVWparxSnYf7XjT/Qh3Lhc=;
 b=N1o1pvV2iCE2a3kFZl3YOTR4PX8BQUpsJxX0GT20hTNld5JlWEVLQBBEeznqhVkdQM
 TPQjLKZiYyUit/faoox5r0BEciJErRg6Y17JVuhXjgjGWmpzaARE2YPP2FtVPJAeSfmd
 LD5y4r+vTuKjgSCOLFdUb+qyjUZRGydBOu5jlbi0QffxxlpgSKx1cBAj9bPUMLUlpr2/
 MRw97MWZN9b8a1oIDC4Mv2BQAFcO/vAWrkhQxGuB5LhLi0y8vf/BPr9KXGYRdKaZLTOo
 CrR0KjjT4KbN97nhdpN3H1ePtI9+4ks1Dvef1wQuQANb49mYMsuwCWXbA12+9cGfiM6v
 d2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z55R7ew9RrmSKfUTHbSEwYVWparxSnYf7XjT/Qh3Lhc=;
 b=P4SW1PyzlXvyRj6vmI3bQgWo0ZundB42NP0rkK+EbMvs3M0DJHpkbjvdq73Ps8ayBt
 fckQKEIJXD0267eZlp7Yz6h2KcdGvLQobO6ed8y9Qobro23VfcS0DwT+XUcKvXucEo5g
 ANMTGVgeIX9hLsHZF88vv7JpK4BW0bzoDKQm3sw+hT5SZ+KOatcqDjXFV81GEdxZzb2R
 +b1wdnqm/YhTnpufnza69yj/DgcWt7/Phkmickev1H6KTxaN5j2N8H21JepVNbLTkKgC
 77pT6H/egrC+rOJXV3k5PlML7VaQADE0wuHSQMvuy7MWINg0zHGAo1PeLHgt//fFy9pZ
 77lg==
X-Gm-Message-State: AOAM532u5sGKgWAvG3e77EQMfmo5MmVoYxIKEVIYFiBQYYaMbFae7gB8
 9TcRBKKYdneIW0kOLtlhTS8=
X-Google-Smtp-Source: ABdhPJzpuELtVpUNyBOZpoX7z2xjB0rRxkyFVN07R7UYqHcQdes7+16tCiBFNsJGGS3rlNKGtC0jMA==
X-Received: by 2002:a05:6402:31a9:: with SMTP id
 dj9mr211586edb.343.1618435153439; 
 Wed, 14 Apr 2021 14:19:13 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:13 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 08/11] dt-bindings: add power-domain header for RK3568 SoCs
Date: Wed, 14 Apr 2021 23:18:53 +0200
Message-Id: <20210414211856.12104-9-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141914_812211_6CBD2CAB 
X-CRM114-Status: GOOD (  12.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

According to a description from TRM, add all the power domains

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 include/dt-bindings/power/rk3568-power.h | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3568-power.h

diff --git a/include/dt-bindings/power/rk3568-power.h b/include/dt-bindings/power/rk3568-power.h
new file mode 100644
index 000000000..6cc1af1a9
--- /dev/null
+++ b/include/dt-bindings/power/rk3568-power.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RK3568_POWER_H__
+#define __DT_BINDINGS_POWER_RK3568_POWER_H__
+
+/* VD_CORE */
+#define RK3568_PD_CPU_0		0
+#define RK3568_PD_CPU_1		1
+#define RK3568_PD_CPU_2		2
+#define RK3568_PD_CPU_3		3
+#define RK3568_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RK3568_PD_PMU		5
+
+/* VD_NPU */
+#define RK3568_PD_NPU		6
+
+/* VD_GPU */
+#define RK3568_PD_GPU		7
+
+/* VD_LOGIC */
+#define RK3568_PD_VI		8
+#define RK3568_PD_VO		9
+#define RK3568_PD_RGA		10
+#define RK3568_PD_VPU		11
+#define RK3568_PD_CENTER	12
+#define RK3568_PD_RKVDEC	13
+#define RK3568_PD_RKVENC	14
+#define RK3568_PD_PIPE		15
+#define RK3568_PD_LOGIC_ALIVE	16
+
+#endif
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
