Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F12DBC35FE7
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Sep 2024 12:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4tCAWF8ZqXR6auhxna9hR1CkI9HbgGzj45CLG5ksYI=; b=Z0V9SnGWnJNLBR
	XwuWPrtZOiWUY4mLCtiKy5G6K/Bj5HYCLe65M+/Jf/syZmwhhDvjrUxc73LptKAdmX0kbb5Y7hJ5E
	Y+AFOlq07L9ILBnmT0O4xHw1OGiV2Ds3N27YU9NDjTuO+QWnjkl/1OtFFhIfeO47dc82mwsHNHW+4
	X8AEnh5/VfQOrl+5Wn8sLMzc3dRnPyeJ1FQ2fJE596vwKL9lqCtwHX4is1H2P+rQ/6P6hjM3M1bpG
	d9KeZ3jN6WCMI7vU1EWC6Oc5CpfdOGNRyAqL18q9kW7zFd3HhKagAParTgIIS/rkykoD+FP6T9YYa
	Jq/zd3ibwuHaVF2HPRAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spoYp-000000025GN-12RS;
	Sun, 15 Sep 2024 12:41:03 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spoXj-000000025A6-1O48;
	Sun, 15 Sep 2024 12:39:56 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-374ca7a10d4so2360789f8f.3;
        Sun, 15 Sep 2024 05:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726403993; x=1727008793; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zAJvtt6cCaAPu3t5jkNa8gI7ECPeAAidmTEnPEphaJs=;
        b=ESv5N1OXpQV+QV4HJ+WrQtiRJSjXVophXKNuLwVk8OFvggRii8WwbraLDtItJ+Uo96
         YSJJsdhWwl5J6UEtnUn8jsf7Pf/MoOJaM8SbcNkusTSxSG6zAjESm9Sl86ILRjlvGVEZ
         auKULgrb0auHd0SNh1/+ACd0ZKBKUAtMsNgN+dSs6NaOoaa42+1bGcbowahi3wPot1DG
         42Ac2H8sib6jZokF4JnW35FtG5bRZ+GmvnngcM81HtlKIVOdeaNpFrNme/jIkvSbAMp0
         U634cMavYe9jNDV+37Gyd8T0PZwrRcWNTeip1YKDaAEmd3VEdPMJZPO4Cj2y17Og2KeV
         1kpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726403993; x=1727008793;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zAJvtt6cCaAPu3t5jkNa8gI7ECPeAAidmTEnPEphaJs=;
        b=Em5rUIrWYhDfWEsb8s8zJ7HS6B8Ny+OKnVuMwFejmYndsbrrMqt7q8XIeRsjPmQRha
         tkHrvv2Pb7Tf5v4QJ5OLnwGg/KecCPeU0UQQywxhlNgjQBNdCfhpNcqI8YaaiWaVPck6
         FAUqP3y322Rw4foNQcIPGFT5WOzIbzzA2ip7BYtgkaV9s9MJ28vfpgnFY5fe76t/N2XH
         kjQuWWgfGP9LGKMdjHNXRoD533oP/YatdZWZ8MHDCNl+GNYhnlUwuRENc3FD8uwKzhzs
         7QmEXvzBHpXZtsiEYpnj6Z4hkMg/WQV8vyof7fGyHN9ZNb9q+2bKAVhFZ3ym4amTRjIR
         d8uw==
X-Forwarded-Encrypted: i=1; AJvYcCUNdl3gyVnxdut20vYSbAfZ+S0Vf8CTtdnpbyghpu+Rc+zTT9vQdv0PwbHd6jjjxeC13APW5/75At+NWyCssrM=@lists.infradead.org, AJvYcCW580Ap0WM+2kUA76VFA4irQhaWfi1IeLm1biYw4pndrNV9OSptGGojDCoEgewLzdN7AT8zOwU/TUw/mZMtv+Ni@lists.infradead.org
X-Gm-Message-State: AOJu0YyjsX7t9EHNsKsOfcmpQuFizHPZXRXmpcR0edtFODNye3w8oPRU
	GHxucC+X5YjtrNZWk8eC8+IVELugiADZJWtiW1vbvFiB+M9sSRKZ
X-Google-Smtp-Source: AGHT+IHBPPBKefp8NRK/dgswYdOSXCV8qCsyXvN01NXfuxQbDklw/gSHxJdtyH6/9QHf15El0OwTqA==
X-Received: by 2002:a5d:5e0b:0:b0:378:e8cd:71fa with SMTP id ffacd0b85a97d-378e8cd72fbmr2497222f8f.39.1726403993391;
        Sun, 15 Sep 2024 05:39:53 -0700 (PDT)
Received: from void.void ([141.226.169.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e72e4a46sm4599867f8f.14.2024.09.15.05.39.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 05:39:53 -0700 (PDT)
From: Andrew Kreimer <algonell@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Andrew Kreimer <algonell@gmail.com>,
	Matthew Wilcox <willy@infradead.org>
Subject: [PATCH] drm/rockchip: Fix a typo
Date: Sun, 15 Sep 2024 15:39:43 +0300
Message-Id: <20240915123943.105118-1-algonell@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_053955_393059_CE7500BC 
X-CRM114-Status: GOOD (  10.86  )
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

Fix a typo in comments.

Reported-by: Matthew Wilcox <willy@infradead.org>
Signed-off-by: Andrew Kreimer <algonell@gmail.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.h b/drivers/gpu/drm/rockchip/cdn-dp-reg.h
index 441248b7a79e..c7780ae3272a 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-reg.h
+++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.h
@@ -77,7 +77,7 @@
 #define SOURCE_PIF_PKT_ALLOC_WR_EN	0x30830
 #define SOURCE_PIF_SW_RESET		0x30834
 
-/* bellow registers need access by mailbox */
+/* below registers need access by mailbox */
 /* source car addr */
 #define SOURCE_HDTX_CAR			0x0900
 #define SOURCE_DPTX_CAR			0x0904
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
