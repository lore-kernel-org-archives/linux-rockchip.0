Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB936E7716A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 06:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gb2oWheFvNv8dY3CDG1i7nIjptZO1SpnVLpzuzzW2iM=; b=rMawCED9ONkT5EwOErA018NfI4
	JoCmcOGorhjFhz6TeZ1XpqTn3MAJRszr8HqLNv3IBpok6B6xeRcXjW5I6Y8j/xJfNQrbEUTyTmkme
	+4ekySUceeizflYVmhVc2EW+rN4IQOFT7Np7gzZF2kVZB4KXxb0lK73P8ZVaTejMqypNT1V4zyN/u
	U6ECTVtsnnObTSDy9kUzE5mzjibPRlxyX0wWLF3pnnRMUwBjSBA+97Cc+xoEYvCHBnDWzNgQ1ejDR
	vWt7RpjKXKIG1DxjV2SuCm7DPqXQdFRZ+di5x3mT5yfVaCgxyNgWrW1twEezAQzKQbNiB95dr+fs3
	aYSdCrJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNQfe-0000000CMZ3-3KdQ;
	Tue, 17 Dec 2024 06:03:02 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNQel-0000000CMVC-3959
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 06:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734415325;
	bh=lCU1aXMJ0kLeiqEbWov2MHIs3RJ0XBwmMuJMA5EqFRc=;
	h=Date:To:Cc:From:Subject:From;
	b=M03+S0dWES9KIMkxyEdNEWP0XqNJoki2YEfrJp/e30OPTgqk49KhJZUXmd8lNdRIH
	 D/rzbVuIfCTLTA0JnkcaGHr7oFNMfYQrOVI9zaEzoge8CtdZ6gcfTaWF5PpojUyTu/
	 LzErVdC6KFcdazz9mbPKAlq3Jbc+5O1j4enEbCFtwdjRwDzUzcznMMeGmJ2T9vlcBD
	 yJbeSFDlwixugVuxYg+w9f2wuUIuODmcA3xSwZeNn5gr8Dn5rs6KoA0+llamy4hR/s
	 WXKUVtCcOwSg1xoWDI0R6kzokx2IFXMMyRME0Pt3SVoNO4MjC6KxFfiwnV6HxrQvGs
	 /41PuURuisu/A==
Received: from [192.168.50.250] (unknown [171.76.86.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 982A117E1131;
	Tue, 17 Dec 2024 07:02:00 +0100 (CET)
Message-ID: <afa2d3bf-29f2-488d-8cc9-f30d461444b0@collabora.com>
Date: Tue, 17 Dec 2024 11:31:55 +0530
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
Subject: drm-ci: rockchip: kms_plane_multiple@tiling-none flake
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_220208_113182_D4E6B92C 
X-CRM114-Status: UNSURE (   3.29  )
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
# Failure Rate: 80
# IGT Version: 1.29-g33adea9eb
# Linux Version: 6.13.0-rc2
kms_plane_multiple@tiling-none

command: cd "/igt/libexec/igt-gpu-tools" && 
"/igt/libexec/igt-gpu-tools/kms_plane_multiple" "--run-subtest" 
"tiling-none"
pid: 260
exit status: exit status: 98
stdout:
-------
IGT-Version: 1.29-g33adea9eb (aarch64) (Linux: 6.13.0-rc2-g1f006005ebf8 
aarch64)
Using IGT_SRANDOM=1734349612 for randomisation
Opened device: /dev/dri/card1
Starting subtest: tiling-none
Starting dynamic subtest: pipe-A-eDP-1
Using (pipe A + eDP-1) to run the subtest.
Testing connector eDP-1 using pipe A with 3 planes for 1 iteration with 
seed 1734349612
Dynamic subtest pipe-A-eDP-1: SUCCESS (3.099s)
Starting dynamic subtest: pipe-B-eDP-1
Using (pipe B + eDP-1) to run the subtest.
Testing connector eDP-1 using pipe B with 3 planes for 1 iteration with 
seed 1734349615
Stack trace:
   #0 ../lib/igt_core.c:2051 __igt_fail_assert()
   #1 ../lib/igt_pipe_crc.c:433 igt_pipe_crc_get_crcs()
   #2 ../tests/kms_plane_multiple.c:372 run_test.constprop.0()
   #3 ../tests/kms_plane_multiple.c:505 __igt_unique____real_main488()
   #4 ../tests/kms_plane_multiple.c:488 main()
   #5 [__libc_init_first+0x80]
   #6 [__libc_start_main+0x98]
   #7 [_start+0x30]
Dynamic subtest pipe-B-eDP-1: FAIL (4.221s)
Subtest tiling-none: FAIL (7.354s)
stderr:
-------
(kms_plane_multiple:260) igt_pipe_crc-CRITICAL: Test assertion failure 
function igt_pipe_crc_start, file ../lib/igt_pipe_crc.c:387:
(kms_plane_multiple:260) igt_pipe_crc-CRITICAL: Failed assertion: 
pipe_crc->crc_fd != -1
(kms_plane_multiple:260) igt_pipe_crc-CRITICAL: Last errno: 5, 
Input/output error
Dynamic subtest pipe-B-eDP-1 failed.
**** DEBUG ****
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: plane_set_size (0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_size(0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_fb(0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_size (0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_size(0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: set_pipe(None)
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: Selecting pipe None
(kms_plane_multiple:260) igt_kms-DEBUG: display: commit {
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"MODE_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"ACTIVE" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.0, fb 0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"FB_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.1, fb 0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"FB_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display:     eDP-1: preparing 
atomic, pipe: None
(kms_plane_multiple:260) igt_kms-DEBUG: eDP-1: Setting property 
"CRTC_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display: }
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: set_pipe(B)
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: Selecting pipe B
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) DEBUG: Test requirement passed: 
!(!igt_plane_has_format_mod(plane, plane_format, plane_modifier))
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(width=128, height=128, 
format=AR24(0x34325241), modifier=0x0, size=0)
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(handle=3, pitch=512)
(kms_plane_multiple:260) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_plane_multiple:260) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: 
plane_set_position(214,735)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_fb(60)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_size 
(128x128)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_size(128x128)
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(width=2400, height=1600, 
format=XR24(0x34325258), modifier=0x0, size=0)
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(handle=4, pitch=9600)
(kms_plane_multiple:260) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_plane_multiple:260) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: plane_set_fb(61)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: plane_set_size 
(2400x1600)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_size(2400x1600)
(kms_plane_multiple:260) igt_kms-DEBUG: display: commit {
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"MODE_ID" to 0x39/57
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"ACTIVE" to 0x1/1
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.0, fb 61
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_W" to 0x9600000/157286400
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_H" to 0x6400000/104857600
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_W" to 0x960/2400
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_H" to 0x640/1600
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"FB_ID" to 0x3d/61
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_ID" to 0x33/51
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.1, fb 60
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_W" to 0x800000/8388608
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_H" to 0x800000/8388608
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_X" to 0xd6/214
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_Y" to 0x2df/735
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_W" to 0x80/128
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_H" to 0x80/128
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"FB_ID" to 0x3c/60
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_ID" to 0x33/51
(kms_plane_multiple:260) igt_kms-DEBUG: display:     eDP-1: preparing 
atomic, pipe: B
(kms_plane_multiple:260) igt_kms-DEBUG: eDP-1: Setting property 
"CRTC_ID" to 0x33/51
(kms_plane_multiple:260) igt_kms-DEBUG: display: }
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: plane_set_fb(0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: plane_set_size (0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_size(0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_fb(0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_size (0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_size(0x0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: set_pipe(None)
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: Selecting pipe None
(kms_plane_multiple:260) igt_kms-DEBUG: display: commit {
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"MODE_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"ACTIVE" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.0, fb 0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"FB_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.1, fb 0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_W" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_H" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"FB_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display:     eDP-1: preparing 
atomic, pipe: None
(kms_plane_multiple:260) igt_kms-DEBUG: eDP-1: Setting property 
"CRTC_ID" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: display: }
(kms_plane_multiple:260) INFO: Testing connector eDP-1 using pipe B with 
3 planes for 1 iteration with seed 1734349615
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: set_pipe(B)
(kms_plane_multiple:260) igt_kms-DEBUG: display: eDP-1: Selecting pipe B
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) DEBUG: Test requirement passed: 
!(!igt_plane_has_format_mod(plane, plane_format, plane_modifier))
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(width=128, height=128, 
format=AR24(0x34325241), modifier=0x0, size=0)
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(handle=3, pitch=512)
(kms_plane_multiple:260) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_plane_multiple:260) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: 
plane_set_position(1261,1440)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_fb(60)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: plane_set_size 
(128x128)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.1: fb_set_size(128x128)
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_kms-DEBUG: Test requirement passed: 
plane_idx >= 0 && plane_idx < pipe->n_planes
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(width=2400, height=1600, 
format=XR24(0x34325258), modifier=0x0, size=0)
(kms_plane_multiple:260) igt_fb-DEBUG: 
igt_create_fb_with_bo_size(handle=4, pitch=9600)
(kms_plane_multiple:260) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_plane_multiple:260) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: plane_set_fb(61)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: plane_set_size 
(2400x1600)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_position(0,0)
(kms_plane_multiple:260) igt_kms-DEBUG: display: B.0: fb_set_size(2400x1600)
(kms_plane_multiple:260) igt_kms-DEBUG: display: commit {
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"MODE_ID" to 0x39/57
(kms_plane_multiple:260) igt_kms-DEBUG: Pipe B: Setting property 
"ACTIVE" to 0x1/1
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.0, fb 61
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_W" to 0x9600000/157286400
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"SRC_H" to 0x6400000/104857600
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_W" to 0x960/2400
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_H" to 0x640/1600
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"FB_ID" to 0x3d/61
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.0: Setting property 
"CRTC_ID" to 0x33/51
(kms_plane_multiple:260) igt_kms-DEBUG: display:     populating plane 
data: B.1, fb 60
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_X" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_Y" to 0x0/0
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_W" to 0x800000/8388608
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"SRC_H" to 0x800000/8388608
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_X" to 0x4ed/1261
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_Y" to 0x5a0/1440
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_W" to 0x80/128
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_H" to 0x80/128
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"FB_ID" to 0x3c/60
(kms_plane_multiple:260) igt_kms-DEBUG: plane B.1: Setting property 
"CRTC_ID" to 0x33/51
(kms_plane_multiple:260) igt_kms-DEBUG: display:     eDP-1: preparing 
atomic, pipe: B
(kms_plane_multiple:260) igt_kms-DEBUG: eDP-1: Setting property 
"CRTC_ID" to 0x33/51
(kms_plane_multiple:260) igt_kms-DEBUG: display: }
(kms_plane_multiple:260) igt_pipe_crc-CRITICAL: Test assertion failure 
function igt_pipe_crc_start, file ../lib/igt_pipe_crc.c:387:
(kms_plane_multiple:260) igt_pipe_crc-CRITICAL: Failed assertion: 
pipe_crc->crc_fd != -1
(kms_plane_multiple:260) igt_pipe_crc-CRITICAL: Last errno: 5, 
Input/output error
(kms_plane_multiple:260) igt_core-INFO: Stack trace:
(kms_plane_multiple:260) igt_core-INFO:   #0 ../lib/igt_core.c:2051 
__igt_fail_assert()
(kms_plane_multiple:260) igt_core-INFO:   #1 ../lib/igt_pipe_crc.c:433 
igt_pipe_crc_get_crcs()
(kms_plane_multiple:260) igt_core-INFO:   #2 
../tests/kms_plane_multiple.c:372 run_test.constprop.0()
(kms_plane_multiple:260) igt_core-INFO:   #3 
../tests/kms_plane_multiple.c:505 __igt_unique____real_main488()
(kms_plane_multiple:260) igt_core-INFO:   #4 
../tests/kms_plane_multiple.c:488 main()
(kms_plane_multiple:260) igt_core-INFO:   #5 [__libc_init_first+0x80]
(kms_plane_multiple:260) igt_core-INFO:   #6 [__libc_start_main+0x98]
(kms_plane_multiple:260) igt_core-INFO:   #7 [_start+0x30]
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
