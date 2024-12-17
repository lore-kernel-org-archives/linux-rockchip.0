Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32649E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 06:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tSh+83GxzKcVTBzy9WjssYdaelX/Su4thLn0HGj/pLg=; b=E6Ljd7pdWsaWHmJyXp2MYcZtIU
	U9YCKUYBnGxho3+kLPs0lx2KSXnLU118CcDoWtfFz2y39jYFjhP90wo1rIi9iP3I1e7Rs/mLRiqfk
	6jxT1LAgrGosVGxAuK/Qm2SzYgic5s9iG0ZB9ODdaTVApCRo+rDr2Tjg3qV6SK2wfgQNbw/AlkkzU
	8loM271EUnrn+68NAue2gp8AnkznKMVXOsgy2RGYrntLt9Re+PM8bxR9BJGYskQsDL4a4V/1m/skS
	5uLEORHKwiKXxLUgWhzBNEEjocvUxlIjH2kXj70mlBRerLi7lZ1JJvVp2dVSsHq15cxDRyCaOl2pq
	mBfF0J6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNQkb-0000000CN33-3WnU;
	Tue, 17 Dec 2024 06:08:09 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNQkY-0000000CN2f-2QK4
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 06:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734415685;
	bh=ATEVJGoz0ILZTWYCW8qT9v08vX1HBM589QZGcFUDzLQ=;
	h=Date:To:Cc:From:Subject:From;
	b=pc9q7l8KGn3dvFI+47hV2KvuCmblQhSxX7pCH0skZEukRLMszW4WIRei7faZY/NoW
	 0rNDC+grROpxs5ZswY0djNd4tIUCCMA9+X2zmwnWzCuwl+JsQZZLY2VIEh8LgkUNDF
	 4SLF3Z9PPAJGYmyMmp7FOalExDl6E8Xpx3fg4UI0/b/+r/WsJzLyKsP/ic6hYkQ4bh
	 u+RmdhmOTYKr/edlhACsfBw+VOO+gEgxrLSIpO324Yf2gaFLcaiiUS/RLdOQpwrgp6
	 fdCLbY6aYtulx98NvZO7vR9i/DQeX2/NcMsCXSp7LpfcX8JzlIO0NNd694f9O8g7kp
	 Xj4nuY2rXJYhQ==
Received: from [192.168.50.250] (unknown [171.76.86.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0249B17E11E2;
	Tue, 17 Dec 2024 07:07:58 +0100 (CET)
Message-ID: <6fdaa97f-c1a5-4216-831f-dbb7c5f90498@collabora.com>
Date: Tue, 17 Dec 2024 11:37:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-rockchip@lists.infradead.org,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, Maxime Ripard <mripard@kernel.org>,
 tzimmermann@suse.de, Dave Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Stone <daniels@collabora.com>,
 Helen Mae Koike Fornazier <helen.koike@collabora.com>,
 Sergi Blanch Torne <sergi.blanch.torne@collabora.com>,
 Guilherme Alcarde Gallo <guilherme.gallo@collabora.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
Subject: drm-ci: rockchip: kms_bw@linear-tiling-1-displays-1920x1080p flake
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_220806_924120_0F660662 
X-CRM114-Status: UNSURE (   3.35  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Maintainers,

There are some flake tests reported for rockchip driver testing in drm-ci.

# Board Name: hp-11A-G6-EE-grunt
# Failure Rate: 100
# IGT Version: 1.29-g33adea9eb
# Linux Version: 6.13.0-rc2
kms_bw@linear-tiling-1-displays-1920x1080p

command: cd "/igt/libexec/igt-gpu-tools" && 
"/igt/libexec/igt-gpu-tools/kms_bw" "--run-subtest" 
"linear-tiling-1-displays-1920x1080p"
pid: 598
exit status: exit status: 98
stdout:
-------
IGT-Version: 1.29-g33adea9eb (aarch64) (Linux: 6.13.0-rc2-gc72a8c362509 
aarch64)
Using IGT_SRANDOM=1734342745 for randomisation
Opened device: /dev/dri/card1
Starting subtest: linear-tiling-1-displays-1920x1080p
Assigning pipe A to output eDP-1 with mode 1920x1080p
Stack trace:
   #0 ../lib/igt_core.c:2051 __igt_fail_assert()
   #1 ../lib/igt_pipe_crc.c:433 igt_pipe_crc_get_crcs()
   #2 ../lib/igt_pipe_crc.c:592 igt_pipe_crc_collect_crc()
   #3 ../tests/kms_bw.c:249 run_test_linear_tiling()
   #4 ../tests/kms_bw.c:287 __igt_unique____real_main264()
   #5 ../tests/kms_bw.c:264 main()
   #6 [__libc_init_first+0x80]
   #7 [__libc_start_main+0x98]
   #8 [_start+0x30]
Subtest linear-tiling-1-displays-1920x1080p: FAIL (1.009s)
stderr:
-------
(kms_bw:598) igt_pipe_crc-CRITICAL: Test assertion failure function 
igt_pipe_crc_start, file ../lib/igt_pipe_crc.c:387:
(kms_bw:598) igt_pipe_crc-CRITICAL: Failed assertion: pipe_crc->crc_fd != -1
(kms_bw:598) igt_pipe_crc-CRITICAL: Last errno: 5, Input/output error
Subtest linear-tiling-1-displays-1920x1080p failed.
**** DEBUG ****
(kms_bw:598) DEBUG: Test requirement passed: !(pipe >= num_pipes)
(kms_bw:598) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 && 
plane_idx < pipe->n_planes
(kms_bw:598) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 && 
plane_idx < pipe->n_planes
(kms_bw:598) DEBUG: Test requirement passed: data->output[0]
(kms_bw:598) DEBUG: Test requirement passed: !(physical && pipe >= 
data->connected_outputs)
(kms_bw:598) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=1920, 
height=1080, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_bw:598) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=1, pitch=7680)
(kms_bw:598) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_bw:598) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_bw:598) igt_kms-DEBUG: display: eDP-1: set_pipe(A)
(kms_bw:598) igt_kms-DEBUG: display: eDP-1: Selecting pipe A
(kms_bw:598) igt_kms-DEBUG: display: A.0: plane_set_fb(56)
(kms_bw:598) igt_kms-DEBUG: display: A.0: plane_set_size (1920x1080)
(kms_bw:598) igt_kms-DEBUG: display: A.0: fb_set_position(0,0)
(kms_bw:598) igt_kms-DEBUG: display: A.0: fb_set_size(1920x1080)
(kms_bw:598) INFO: Assigning pipe A to output eDP-1 with mode 1920x1080p
(kms_bw:598) igt_kms-DEBUG: display: commit {
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "MODE_ID" to 0x39/57
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "ACTIVE" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.0, fb 56
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_W" to 
0x7800000/125829120
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_H" to 
0x4380000/70778880
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_W" to 
0x780/1920
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_H" to 
0x438/1080
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "FB_ID" to 0x38/56
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_ID" to 0x26/38
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.1, fb 0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.2, fb 0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.3, fb 0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "MODE_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "ACTIVE" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: B.0, fb 0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: B.1, fb 0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     eDP-1: preparing atomic, pipe: A
(kms_bw:598) igt_kms-DEBUG: eDP-1: Setting property "CRTC_ID" to 0x26/38
(kms_bw:598) igt_kms-DEBUG: display: }
(kms_bw:598) DEBUG: Test requirement passed: !(ret != 0)
(kms_bw:598) igt_kms-DEBUG: display: commit {
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "MODE_ID" to 0x39/57
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "ACTIVE" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: Pipe A: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.0, fb 56
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_W" to 
0x7800000/125829120
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "SRC_H" to 
0x4380000/70778880
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_W" to 
0x780/1920
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_H" to 
0x438/1080
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "FB_ID" to 0x38/56
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "CRTC_ID" to 0x26/38
(kms_bw:598) igt_kms-DEBUG: plane A.0: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.1, fb 0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.1: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.2, fb 0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.2: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: A.3, fb 0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane A.3: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "MODE_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "ACTIVE" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: Pipe B: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: B.0, fb 0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.0: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     populating plane data: B.1, fb 0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "SRC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "FB_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:598) igt_kms-DEBUG: plane B.1: Setting property "rotation" to 0x1/1
(kms_bw:598) igt_kms-DEBUG: display:     eDP-1: preparing atomic, pipe: A
(kms_bw:598) igt_kms-DEBUG: eDP-1: Setting property "CRTC_ID" to 0x26/38
(kms_bw:598) igt_kms-DEBUG: display: }
(kms_bw:598) igt_pipe_crc-CRITICAL: Test assertion failure function 
igt_pipe_crc_start, file ../lib/igt_pipe_crc.c:387:
(kms_bw:598) igt_pipe_crc-CRITICAL: Failed assertion: pipe_crc->crc_fd != -1
(kms_bw:598) igt_pipe_crc-CRITICAL: Last errno: 5, Input/output error
(kms_bw:598) igt_core-INFO: Stack trace:
(kms_bw:598) igt_core-INFO:   #0 ../lib/igt_core.c:2051 __igt_fail_assert()
(kms_bw:598) igt_core-INFO:   #1 ../lib/igt_pipe_crc.c:433 
igt_pipe_crc_get_crcs()
(kms_bw:598) igt_core-INFO:   #2 ../lib/igt_pipe_crc.c:592 
igt_pipe_crc_collect_crc()
(kms_bw:598) igt_core-INFO:   #3 ../tests/kms_bw.c:249 
run_test_linear_tiling()
(kms_bw:598) igt_core-INFO:   #4 ../tests/kms_bw.c:287 
__igt_unique____real_main264()
(kms_bw:598) igt_core-INFO:   #5 ../tests/kms_bw.c:264 main()
(kms_bw:598) igt_core-INFO:   #6 [__libc_init_first+0x80]
(kms_bw:598) igt_core-INFO:   #7 [__libc_start_main+0x98]
(kms_bw:598) igt_core-INFO:   #8 [_start+0x30]
****  END  ****

Pipeline: https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/68246515

Please could you have a look at these test results and let us know if 
you need more information. Thank you.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
