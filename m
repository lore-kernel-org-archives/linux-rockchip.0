Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC3ADCD4F4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 14:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkPz85t08uSCfJ+aQB8EnItz8B4BKVMDLIuazqrspys=; b=ey/QgDP1wAl18q
	vzhQBBIvLfDvmE/MPz4WAWyORNk3c2wxLDanIoRYg4K+VO2wpFyAA5b1Ev6UwSRks6LqMgFXuEdx8
	5A2VqCmDancq261qaTpFRWmZUv3khgzVY90bN8SgFsibSBM526uy76MeGFR0crZRiITR0K2gwri4t
	lb/vTLan+CcoslFFqqRECIos/Gzr1Lux/ajGhZ9c4bOVdphLKxxo8SVOlklgVNi+H5MDzJjO9Zkng
	kyUOavTMOBXAZcIuadjndA7XR7DooBORQlBnJJRxx5MptTjXNpkxa6+PMfRxqALBFUtyYgJCpv7go
	MAqd5eDjZvTQWrYg8QOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOzMR-0000000G3eM-3fci;
	Mon, 18 May 2026 14:54:27 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOzMP-0000000G3cz-0gGe
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 14:54:26 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-488d2079582so22732355e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2026 07:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779116063; x=1779720863; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pC9TScL6CxIBlhr7Fs+T0Ee2cF3m9ksp0G13aaDD7mA=;
        b=guGHzgGuxKg2+cNn6KVSInJoTBAqPkEU6VwZ3tKgEcg80HTpkKO7lKrIN7lzaSFVZk
         nKY1cDQNZsvT+apIoOwtVfZp8SjU7BmRJKd9PCGv0Nw5J1WIL3Atba+DS770MDaoSKHC
         u2A32non+XZLeOSdrnYYNCVgerhRWi7/HeeRQbOcMib8rPK621Jbh8Gjpa5XvV+ROgAm
         YCfgKnac8gAspd8R/YLCSd0I65bURloaJBboPGCZQnrIGCd/LzOt/NVo/R3YfXXzyuhA
         ilVZUvRtR4U6Em40aofM6W2mRKTF/DHmvO78y1pM2JU7JFU8T+nR0YmfFqvJgQi7Jq3N
         wjrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779116063; x=1779720863;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pC9TScL6CxIBlhr7Fs+T0Ee2cF3m9ksp0G13aaDD7mA=;
        b=hIW5abcorR+8oEYt4D3fsZBx9DHbdhIHmjGrHEaKvvzE0pIiwXARvCK1G4BuxavB61
         VIYQpG+0vcJmiIotoyF2FiGjf+8qP6r800JQ/SJDIxFxp2vKuUOesEpFU9LkTE8YTJQw
         +JZLWowX4SuDfM75QQgD62tO4aGmLtMWUfjYgpdt3pTq6utpgQiqmLHfPgYfb6vbM3h4
         dAdlQ+KUGKxaiHGFR0j+778nLjEDYar8mngIL2l3i2tXkAg2U10QYNKMMNPxiBz6cquN
         LZp0nb85acs0cq4lmwQ9ZP8o5abWLbQcGrsk8q82LNOsuDsKiOghR1Uh2AZk4pxy0rDY
         QChg==
X-Forwarded-Encrypted: i=1; AFNElJ9gl/E1Y319AMUP4tiQ0QSxyh6mQCze3UJpPHGdVvSAAE76wmY0XH0gPI5FWLiG5MxGYmQFG6QkrR2gszzQCw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz23NmIoGkV6LOg14a3OvXCWIFpy/KycS/4obDS/aZo8Gu4X2nN
	a3BEckv8VPzhNdtFHYQ0MYaXRMAw74tqVRB1hyMnrWTKM+ieIswK8L4=
X-Gm-Gg: Acq92OE5m8NAuIYz1TskLseDR8PgchcHotb6/0GN37XPgN7OAWKIDJPmz2EnO/diaDy
	ipo4pKKPRqpYFVCYWY+KESGjhb3nPnsYqSV7joYZlEEX2FTt4JzX0mC5HZJmqNL16/PFfyYap+u
	XUYYH5Y3fU5xdx8X7RgxinD0UrQOCd0/7fMWjL6IW8K0q1XZbp+J2osfQ7N5IwDvt4UWEL/uMhV
	Cb5YpasGo38Np1T2/MlyLTK5uInyAF1Q+A8GBfm138GC/u0E0E5AMePW3x3XD3P3KTjFvRnBOkN
	lsPEiKUMPHgBi2Kz69UeAG2N9QwwlixAdLB8cZXbiDxbfW35dvU+gTD8TbiIsiybT09QgH6kw1Z
	+zL5+gYyZwYp2b7zNmxXkuJ4HLXhUe8EG1Nrr8DHqr21b82K35Yod+iB9lKRrGdMnk4waBOBi04
	++sZGs85rS6LvejbqSugY3Z/pYz8iC71p+XO4W8ReIjANVCN04nHc1/bRKwT+OL2/QDovlcjohP
	gaXE4b7Y1Q=
X-Received: by 2002:a05:600c:821b:b0:488:b811:51c4 with SMTP id 5b1f17b1804b1-48fe6515831mr225383255e9.25.1779116062889;
        Mon, 18 May 2026 07:54:22 -0700 (PDT)
Received: from localhost.localdomain ([151.47.57.9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe53ab671sm261061285e9.1.2026.05.18.07.54.21
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 18 May 2026 07:54:22 -0700 (PDT)
From: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
To: jonas@kwiboo.se,
	detlev.casanova@collabora.com,
	nicolas.dufresne@collabora.com,
	hverkuil@kernel.org,
	mchehab@kernel.org
Cc: ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	stable@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] media: rkvdec: fix PM runtime teardown ordering in remove
Date: Mon, 18 May 2026 16:54:14 +0200
Message-ID: <20260518145414.64514-1-pavone.lawyer@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518105413.42147-1-pavone.lawyer@gmail.com>
References: <20260518105413.42147-1-pavone.lawyer@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_075425_219006_C4DF6E72 
X-CRM114-Status: GOOD (  13.06  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The current remove() path calls rkvdec_v4l2_cleanup() and
pm_runtime_disable() before pm_runtime_dont_use_autosuspend(), and
frees the empty IOMMU domain after that. With autosuspend still
armed when the domain goes away, the VDPU381 can be left in a dirty
state across module reload and suspend/resume cycles.

On RK3588 this surfaces as a VP9 inter-prediction bug: from the
second ALTREF frame onward, motion blocks decode with U=V=0 (BT.709
green), while intra and static blocks stay correct. Reordering the
teardown to dont_use_autosuspend() -> iommu_domain_free() ->
pm_runtime_disable() -> v4l2_cleanup() makes the symptom go away.

Tested on a Radxa Rock 5B+ (RK3588, 8 GB LPDDR5) with both the
libva-v4l2-request mpv pipeline and Chromium's V4L2 stateless
decoder. With the fix, 300 random pixel samples on VP9 Profile 0
clips at 1080p and 1440p match a libvpx software reference exactly
(worst delta 0). Without it, the same 1080p sample at frame 4,
pixel (960, 270) reads HW=(0,112,0) vs SW=(204,147,116). HEVC and
H.264 stateless decoding via mpv keep running on hardware with no
fallback.

Fixes: ff8c5622f9f7 ("media: rkvdec: Restore iommu addresses on errors")
Cc: <stable@vger.kernel.org>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Tested-by: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
Signed-off-by: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
---
Changes in v2:
 - Add Cc: <stable@vger.kernel.org>; media-CI flagged that the
   Fixes: target (ff8c5622f9f7) is present in the 6.17, 6.18, 6.19
   and 7.0 stable branches, so the fix should reach them too.
   Link to v1: https://lore.kernel.org/all/20260518105413.42147-1-pavone.lawyer@gmail.com/
   Media-CI report: https://linux-media.pages.freedesktop.org/-/users/patchwork/-/jobs/100124849/artifacts/report.htm

 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 6f5f0422d317..bb95b090a25b 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -2066,12 +2066,13 @@ static void rkvdec_remove(struct platform_device *pdev)
 
 	cancel_delayed_work_sync(&rkvdec->watchdog_work);
 
-	rkvdec_v4l2_cleanup(rkvdec);
-	pm_runtime_disable(&pdev->dev);
 	pm_runtime_dont_use_autosuspend(&pdev->dev);
 
 	if (rkvdec->empty_domain)
 		iommu_domain_free(rkvdec->empty_domain);
+
+	pm_runtime_disable(&pdev->dev);
+	rkvdec_v4l2_cleanup(rkvdec);
 }
 
 #ifdef CONFIG_PM
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
