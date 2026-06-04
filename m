Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C741CD6E6B
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QLwBlbQHwJtZ/lc4CCq5dpS7mWN/BGpRvlocMj/zL4=; b=h+NquNo8fsHQYO
	B8kjVdvMFTto3QpK7LdPCPyskdCWfCF9675u4on28I43E1D+Iz9QllA1u9SkOkfxtl+uZ5Me7GvJk
	wJWBREPtT3zXP7XIbKAc0vv0HE7JO3roXrdp8FwOJvYp//QixKr3DLSxi3Jq6x6sqDcsDkHgEQAz1
	VIMZ0a5OALi1u/0hGsExDZppuLIvG0ODu50U57i/Wz3qmDFqwvhmYXloeEJlIS+3twEnV5sOL0xqd
	Pvh+m+akirnY6o/SewpvnMapHqYcLW+RBbVlIOM2+CjFy3+j5bMhzOFDk8k2wW8u6vTpTmU2bS/7H
	jTfl8jnRA5GxFxdRzXDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VQ-0000000Gppl-1eJw;
	Thu, 04 Jun 2026 13:53:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VN-0000000GpkK-1rf9
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OH9hQQFNIkDpasnao4boz8/RAiMZ7MOKPgy4BqZR+6c=; b=ghbKDpPrDnAXb1aBdg29NSTBKg
	cMpanQilNYyYgyib8s9zSn4PTSY+CO7/tTtLDalfCR/qDhXxiWV5cMnKtHmmhUIx/7rpOXYcZN9rd
	8aNvB01xfO06LjPv7o6ZjVeT6PfvsaRmA12jkbxAnlTpWZ74JmsMEHn4HERnPPSq43XPfyvKTzRUU
	SH8OlRRFCzsmq/KM2Q2pJxV6ReHC0FeTlfWrU10uj/WELSUqDj/MGJ7pG4LwEykDPjs/xrS2zTL2+
	gD+wGX0wvzXGH8FXrdVn40APII9xvX+zKNpdNEVPlAJWzufp+oEz4CuA6OrkXeoyiRGGo8fIkBZWH
	QGIZjd+A==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VK-0000000EOrp-2ijD
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:04 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-45ef779c1c2so533131f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581181; x=1781185981; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OH9hQQFNIkDpasnao4boz8/RAiMZ7MOKPgy4BqZR+6c=;
        b=IFGfzLvCtHRXi0PxHye0PVEGL5yu1bwwh+/zJQq7g1W+9dPWKxSIHFN/os2e0eBa8y
         RiBD5WtbEEntQcyOLPA6txzX5vwlp9pfIG7zHsjRXsQk0eksxr6tGznhNTHGogXtOdv8
         mDJIJzUcG/wnjSuN5pccaNT6svvD4ljHyFV7QRtAX0BVbUS/9grkUSR0g3JY45gjt9lC
         kiUqsu7nSiXsgS2UFwK5Y/UTEFdCtyu6+hd4VpAswmuiMTnubAVjH355dZHw79qV8lKm
         YhOD4FeohdLKDGNSLwbtm3Db/gJ7eDnBv6ORolWyfVUFz43HDqYprFZTQJN46Apv+EOi
         owuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581181; x=1781185981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OH9hQQFNIkDpasnao4boz8/RAiMZ7MOKPgy4BqZR+6c=;
        b=m27nh5zL5lQxhrhVTk//J8fimcMlK8lQnuWMQlh0HjpKpLjrfvunjbrXK9e/HPq/jF
         SJviz3Zd2qPID1g/AfzIhBt3N0iAN3pkGCRprJsV0Eg6XzlqQ0gFyfffRby85uw8sSw4
         NJebM5rqp+JBsKLmGnzAKq+w2YjE9cR/8nrcAkC3V0PlOJJ1x0g3m0kEdw9l7b+izetg
         JUQrEv+gSKbg5AyBaQASM4UPUCnoKqqBA6nXzVP5yQTIs+XCxrXGKFHK7WabGdhTX0Hi
         LhYIFf3pw/2bortq29L5/VcRih8x/T1raZFh+Vlmcz/768T779EOdCFcOuE3pk1Z9gR4
         nt/g==
X-Forwarded-Encrypted: i=1; AFNElJ9ctrJSNhN/xlynrCxYNvUdGtg9+xfABpvG9zurGGVBcHbaAym2+fUiJyrbYLketyq2NZWUa+0vXK4P0qygAg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7goSoukeO7z8MnTnSLi/pQEJkjPb3B+xeU72sSFe+SDu61Ren
	mpOVMmcYMu/o9VCTdeOSzAX/SZwT/1C/dNdvxn3OsXIY7HH4cfp03kni
X-Gm-Gg: Acq92OGNDh8hhXNcLz3Nq67V49okF9q+LQz2N6k+doyzjpiPp+nDgHI81zxNoY2WPqL
	B6WJwab6oI0mrVwqMc9h8sgrTmWi6x15xfWikoUmTh+OO3Vjd/Xb7Q1vxNHfS7/qmiaJ8EnN7ek
	oXiiS3igtfXGzs4JCR7SaTWB0p1S/IPYX/073wRYlBDm66MoinZaqjQgaJuvmcCxU/Bpq3br2+q
	ffTMH8k4xtx5Qj/cDy+DpnipTwzzaReUyfaipibbvUF9xwch04SMIg/RXZjAAWknEY2xzcC8Rh/
	FAKLsxO7ugqLBd+Mb+Os3gAkMfaLfDQUPAZXYPx/ZefdwQa28EW6Uh3XP/pzb2S4j9UpaV7m9vO
	2jLmK7nRjAKgRpaktxujh7wJ+i79auxTZZk9uVWLgDiRThyK4jFm9ef5Fb04uAJtwssE9SmpzGr
	fBzVn7qz/euvsPr47cAp2I8ZHaAkz8PsxJc/dDIkmf31PHS8vZfxTyXTdoDFx+K1M=
X-Received: by 2002:adf:eed2:0:b0:452:6aaf:76cb with SMTP id ffacd0b85a97d-4602178b717mr9418813f8f.1.1780581180807;
        Thu, 04 Jun 2026 06:53:00 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:53:00 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 4/9] accel: rocket: Reset the NPU before detaching the IOMMU on timeout
Date: Thu,  4 Jun 2026 13:52:50 +0000
Message-Id: <20260604135255.62682-5-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145302_818451_1DA48E13 
X-CRM114-Status: GOOD (  11.99  )
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

On a job timeout the NPU AXI master can be left wedged with
outstanding transactions. rocket_reset() detached the IOMMU group
before resetting the hardware, so iommu_detach_group() ->
__iommu_group_set_core_domain() asked the rk_iommu to stall and wait
for the in-flight transactions to drain. They never did, the stall
request timed out (-ETIMEDOUT) and the IOMMU core WARNed:

  WARNING: drivers/iommu/iommu.c:157 __iommu_group_set_core_domain
    iommu_detach_group
    rocket_reset
    rocket_job_timedout

Assert the core reset first: it quiesces the AXI master so the
following IOMMU detach completes cleanly. Move the detach after
rocket_core_reset() and out of the job_lock (it does not touch
in_flight_job).

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_job.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index ac51bff39833f..e25234261536b 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -364,14 +364,20 @@ rocket_reset(struct rocket_core *core, struct drm_sched_job *bad)
 		if (core->in_flight_job)
 			pm_runtime_put_noidle(core->dev);
 
-		iommu_detach_group(NULL, core->iommu_group);
-
 		core->in_flight_job = NULL;
 	}
 
-	/* Proceed with reset now. */
+	/*
+	 * Reset the NPU hardware before detaching the IOMMU. A timed-out job
+	 * leaves the NPU AXI master wedged; detaching the IOMMU then issues a
+	 * stall request that never drains and times out (warning in the IOMMU
+	 * core). Asserting the core reset first quiesces the master so the
+	 * detach completes cleanly.
+	 */
 	rocket_core_reset(core);
 
+	iommu_detach_group(NULL, core->iommu_group);
+
 	/* NPU has been reset, we can clear the reset pending bit. */
 	atomic_set(&core->reset.pending, 0);
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
