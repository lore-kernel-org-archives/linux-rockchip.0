Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 150ECE7716A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 05:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5zG//GAatVn6OJjqGKfzs7qcV9fNoaVQ485JA/oKUNg=; b=lGML1Cxm9r97KQzb2JQHH5AdVs
	fF8CWzRaOmvbNyp4WTIp7mokcuFMysR5cljzLoL+VjIxORBUnO4N2Qi4FUAb/XOO/PtHSF9AvYUMj
	PQyKc8OtvcX8t5uzl+oI3G+VW3xtl6VoSvBkiVh1zgGc00owhd34Ymlj84uA6OgdCBJ5rDb0coAzR
	ESDZQMnA2nhluWBR72RjZ/GBdF56BONXKzvfkvLEg0HjK7FAjLL3kCKEt+fMIB6WEw4dnvh4ZezET
	YVQUZ+5iPYzRBH+eUCpY220GoSQdhAnUTFEyBaWbwpHzxkFHa40F2S4FUqF1WUuP/FuXUMHt2gPQI
	OJBmg/6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNQPU-0000000CLBK-3rtg;
	Tue, 17 Dec 2024 05:46:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNQCu-0000000CIoP-1zt3
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 05:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734413598;
	bh=W/PU8T/7ShhBL/FEseZ8HPr/Bd2LMLqqB167+txVBig=;
	h=Date:To:Cc:From:Subject:From;
	b=LGXHpmIE4KJ4+eZhSN9MYvhD4yAUnbtbtT9n7uuQ/m0ejYxgm1b5mWI7KQVbA1yif
	 /uvJOUFwYUxZS/45bUOa7IZq2A72ngUWMc1926DzatxNbnZuejgONnMsyUiutXTKBQ
	 JeEBP0sqFVWJR5PxcBCd1x+aRv1HrTWssa2QyjM1RsfaBJypytMJjFNu6dA+fvqbsW
	 Q+llvNKTDlrsEr4+kvcNy6Y66axFmPyX23JhoxV3CdyRhvDkqFnDqxihS4DA5Xpht1
	 Xh4xe253WJtNL/uV/lK5lJ5ZaDJAmPHSO5iykw0IgTBbBs1XbwWwcv+XW8qT8V39XJ
	 5lgwlrLg23x4Q==
Received: from [192.168.50.250] (unknown [171.76.86.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E8B5517E1073;
	Tue, 17 Dec 2024 06:33:13 +0100 (CET)
Message-ID: <f944dd08-c88c-49ae-aff0-274374550a93@collabora.com>
Date: Tue, 17 Dec 2024 11:03:11 +0530
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
Subject: drm-ci: rockchip: kms_bw@linear-tiling-1-displays-2160x1440p flake
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_213320_817344_D5F7B1B8 
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
# Failure Rate: 40
# IGT Version: 1.29-g33adea9eb
# Linux Version: 6.13.0-rc2
kms_bw@linear-tiling-1-displays-2160x1440p


command: cd "/igt/libexec/igt-gpu-tools" && 
"/igt/libexec/igt-gpu-tools/kms_bw" "--run-subtest" 
"linear-tiling-1-displays-2160x1440p"
pid: 1999
exit status: exit status: 98
stdout:
-------
IGT-Version: 1.29-g33adea9eb (aarch64) (Linux: 6.13.0-rc2-g1f006005ebf8 
aarch64)
Using IGT_SRANDOM=1734350415 for randomisation
Opened device: /dev/dri/card1
Starting subtest: linear-tiling-1-displays-2160x1440p
Assigning pipe A to output eDP-1 with mode 2160x1440p
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
Subtest linear-tiling-1-displays-2160x1440p: FAIL (1.093s)
stderr:
-------
(kms_bw:1999) igt_pipe_crc-CRITICAL: Test assertion failure function 
igt_pipe_crc_start, file ../lib/igt_pipe_crc.c:387:
(kms_bw:1999) igt_pipe_crc-CRITICAL: Failed assertion: pipe_crc->crc_fd 
!= -1
(kms_bw:1999) igt_pipe_crc-CRITICAL: Last errno: 5, Input/output error
Subtest linear-tiling-1-displays-2160x1440p failed.
**** DEBUG ****
(kms_bw:1999) DEBUG: Test requirement passed: !(pipe >= num_pipes)
(kms_bw:1999) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 && 
plane_idx < pipe->n_planes
(kms_bw:1999) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 && 
plane_idx < pipe->n_planes
(kms_bw:1999) DEBUG: Test requirement passed: data->output[0]
(kms_bw:1999) DEBUG: Test requirement passed: !(physical && pipe >= 
data->connected_outputs)
(kms_bw:1999) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2160, 
height=1440, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_bw:1999) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=1, pitch=8640)
(kms_bw:1999) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_bw:1999) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_bw:1999) igt_kms-DEBUG: display: eDP-1: set_pipe(A)
(kms_bw:1999) igt_kms-DEBUG: display: eDP-1: Selecting pipe A
(kms_bw:1999) igt_kms-DEBUG: display: A.0: plane_set_fb(55)
(kms_bw:1999) igt_kms-DEBUG: display: A.0: plane_set_size (2160x1440)
(kms_bw:1999) igt_kms-DEBUG: display: A.0: fb_set_position(0,0)
(kms_bw:1999) igt_kms-DEBUG: display: A.0: fb_set_size(2160x1440)
(kms_bw:1999) INFO: Assigning pipe A to output eDP-1 with mode 2160x1440p
(kms_bw:1999) igt_kms-DEBUG: display: commit {
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "MODE_ID" to 0x39/57
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "ACTIVE" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.0, fb 55
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_W" to 
0x8700000/141557760
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_H" to 
0x5a00000/94371840
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_W" to 
0x870/2160
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_H" to 
0x5a0/1440
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "FB_ID" to 0x37/55
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_ID" to 
0x26/38
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.1, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.2, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.3, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "MODE_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "ACTIVE" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: B.0, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: B.1, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     eDP-1: preparing atomic, pipe: A
(kms_bw:1999) igt_kms-DEBUG: eDP-1: Setting property "CRTC_ID" to 0x26/38
(kms_bw:1999) igt_kms-DEBUG: display: }
(kms_bw:1999) DEBUG: Test requirement passed: !(ret != 0)
(kms_bw:1999) igt_kms-DEBUG: display: commit {
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "MODE_ID" to 0x39/57
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "ACTIVE" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: Pipe A: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.0, fb 55
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_W" to 
0x8700000/141557760
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "SRC_H" to 
0x5a00000/94371840
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_W" to 
0x870/2160
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_H" to 
0x5a0/1440
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "FB_ID" to 0x37/55
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "CRTC_ID" to 
0x26/38
(kms_bw:1999) igt_kms-DEBUG: plane A.0: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.1, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.1: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.2, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.2: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: A.3, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane A.3: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "GAMMA_LUT" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "MODE_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "ACTIVE" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: Pipe B: Setting property "VRR_ENABLED" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: B.0, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.0: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     populating plane data: B.1, fb 0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "SRC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_X" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_Y" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_W" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_H" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "FB_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "CRTC_ID" to 0x0/0
(kms_bw:1999) igt_kms-DEBUG: plane B.1: Setting property "rotation" to 0x1/1
(kms_bw:1999) igt_kms-DEBUG: display:     eDP-1: preparing atomic, pipe: A
(kms_bw:1999) igt_kms-DEBUG: eDP-1: Setting property "CRTC_ID" to 0x26/38
(kms_bw:1999) igt_kms-DEBUG: display: }
(kms_bw:1999) igt_pipe_crc-CRITICAL: Test assertion failure function 
igt_pipe_crc_start, file ../lib/igt_pipe_crc.c:387:
(kms_bw:1999) igt_pipe_crc-CRITICAL: Failed assertion: pipe_crc->crc_fd 
!= -1
(kms_bw:1999) igt_pipe_crc-CRITICAL: Last errno: 5, Input/output error
(kms_bw:1999) igt_core-INFO: Stack trace:
(kms_bw:1999) igt_core-INFO:   #0 ../lib/igt_core.c:2051 __igt_fail_assert()
(kms_bw:1999) igt_core-INFO:   #1 ../lib/igt_pipe_crc.c:433 
igt_pipe_crc_get_crcs()
(kms_bw:1999) igt_core-INFO:   #2 ../lib/igt_pipe_crc.c:592 
igt_pipe_crc_collect_crc()
(kms_bw:1999) igt_core-INFO:   #3 ../tests/kms_bw.c:249 
run_test_linear_tiling()
(kms_bw:1999) igt_core-INFO:   #4 ../tests/kms_bw.c:287 
__igt_unique____real_main264()
(kms_bw:1999) igt_core-INFO:   #5 ../tests/kms_bw.c:264 main()
(kms_bw:1999) igt_core-INFO:   #6 [__libc_init_first+0x80]
(kms_bw:1999) igt_core-INFO:   #7 [__libc_start_main+0x98]
(kms_bw:1999) igt_core-INFO:   #8 [_start+0x30]
****  END  ****


Pipeline: https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/68249817

Please could you have a look at these test results and let us know if 
you need more information. Thank you.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
