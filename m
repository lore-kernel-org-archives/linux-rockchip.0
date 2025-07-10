Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0EA8C83F1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 11:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aKMXG0ckGReF/wU7SCBoERvSDieaHQYl6mkvJfqMB2k=; b=zfTysoXiDBUyti/CGkSBP5IM9s
	aqe81ptM9cXtQiVQy7rU3AlSfCoQ9Un4O7BHCvm5c2Yo8P+fpUCwhZW4eJxw0QCiSl50BNT6NoPAD
	GsS2dhjUE13iO4/ady6mlNk1WBWUtv6r/ErDdBbjfTyjjpvhZN1LucdMF8+Q4aJobysTfnlcDyBYX
	xlA/GSzmd9OufLY6eHPGrXMasQghskJjZrMU+6C/MEvviJe4jpnHgHgA860LBHkGz/pd3Yds4ceZ+
	6p1KjaOSDyPEl6Mvuvb4B70GYQ0fGiDMScksgoxRzkgkHvwuHQYZD2D99muXgDNj/LRsnKYu2Lrl+
	xzhjqFdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpUd-0000000Be5D-2oE6;
	Thu, 10 Jul 2025 11:31:11 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoEj-0000000BQTt-45yk;
	Thu, 10 Jul 2025 10:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1752142240;
	bh=YNOs0jcJynpyowq2UFhMzKMoID+UYnwq0H47JXr44/c=;
	h=Date:To:Cc:From:Subject:From;
	b=NiphkluzssVpA+iT+hdhzLnhO0fZ1L7Jj295xpuBabcirnOHIymSsYeo9k0wi5j37
	 7uhRJ4JetJeJ/v0N1NDVXKmS3o1LzIzEyntu9N/xUq0Edzlrz2H+KR5Hjx5oNHAOyD
	 xxklNLkxOJfFo7Uf1Og9gcXGi2ISH86UFr/rHyv/GvGlu8k+xqyVe3WWoGifIEkaOG
	 Fv8ApeKOmsvW7DkXAo0y8E3bn6rRj3j5zsjYo2umBPv3CtxnqUvY01xhhW2osFoAEG
	 aUDNLNwqymuP9UpEywA2t+NOWKeimkkoGAMjcIMeQGmNIFu3l+eQzsdrct1uaH6raY
	 RM295kUC3Ct0A==
Received: from [192.168.50.250] (unknown [171.76.82.69])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0706817E0286;
	Thu, 10 Jul 2025 12:10:36 +0200 (CEST)
Message-ID: <7b6e2e3b-2ea2-4cd7-92a5-68d23a63e426@collabora.com>
Date: Thu, 10 Jul 2025 15:40:07 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, Maxime Ripard <mripard@kernel.org>,
 tzimmermann@suse.de, Dave Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Stone <daniels@collabora.com>,
 Helen Mae Koike Fornazier <helen.fornazier@gmail.com>,
 sebastian.reichel@collabora.com, linux-arm-kernel@lists.infradead.org
From: Vignesh Raman <vignesh.raman@collabora.com>
Subject: drm-ci: rk3399-gru-kevin: flake in kms_color@gamma
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_031042_316431_124D91EB 
X-CRM114-Status: UNSURE (   4.35  )
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

There are some flake test reported for rockchip driver testing in drm-ci.

# Board Name: rk3399-gru-kevin
# Failure Rate: 60
# IGT Version: 2.1-g26ddb59c1
# Linux Version: 6.16.0-rc2
kms_color@gamma

(kms_color:915) igt_pipe_crc-WARNING: Warning on condition all_zero in 
function crc_sanity_checks, file ../lib/igt_pipe_crc.c:475
(kms_color:915) igt_pipe_crc-WARNING: Suspicious CRC: All values are 0.
(kms_color:915) CRITICAL: Test assertion failure function 
run_gamma_degamma_tests_for_pipe, file ../tests/kms_color.c:787:
(kms_color:915) CRITICAL: Failed assertion: test_t(data, data->primary)
Dynamic subtest pipe-A-eDP-1 failed.
**** DEBUG ****
(kms_color:915) igt_kms-DEBUG: Test requirement passed: !(pipe >= 
display->n_pipes || !display->pipes[pipe].enabled)
(kms_color:915) igt_pipe_crc-DEBUG: Test requirement passed: dir >= 0
(kms_color:915) igt_pipe_crc-DEBUG: Test requirement passed: 
fstatat(dir, "crtc-0/crc/control", &stat, 0) == 0
(kms_color:915) DEBUG: Test requirement passed: pipe->n_planes >= 0
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display: eDP-1: set_pipe(A)
(kms_color:915) igt_kms-DEBUG: display: eDP-1: Selecting pipe A
(kms_color:915) igt_kms-DEBUG: display: eDP-1: set_pipe(None)
(kms_color:915) igt_kms-DEBUG: display: eDP-1: Selecting pipe None
(kms_color:915) DEBUG: Test requirement passed: 
pipe_output_combo_valid(data, p)
(kms_color:915) DEBUG: Test requirement passed: 
igt_pipe_obj_has_prop(primary->pipe, IGT_CRTC_GAMMA_LUT)
(kms_color:915) igt_kms-DEBUG: display: eDP-1: set_pipe(A)
(kms_color:915) igt_kms-DEBUG: display: eDP-1: Selecting pipe A
(kms_color:915) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_color:915) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=1, 
pitch=9600)
(kms_color:915) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_color:915) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_color:915) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=2, 
pitch=9600)
(kms_color:915) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_fb(59)
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_size (2400x1600)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_position(0,0)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_size(2400x1600)
(kms_color:915) igt_kms-DEBUG: display: commit {
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     Fixing up initial rotation 
pipe A, plane 0
(kms_color:915) igt_kms-DEBUG: display:     eDP-1: SetCrtc pipe A, fb 
59, src (0, 0), mode 2400x1600
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     Fixing up initial rotation 
pipe A, plane 1
(kms_color:915) igt_kms-DEBUG: display:     SetPlane pipe A, plane 1, 
disabling
(kms_color:915) igt_kms-DEBUG: display:     SetProp plane A.1 "rotation" 
to 0x1/1
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     Fixing up initial rotation 
pipe A, plane 2
(kms_color:915) igt_kms-DEBUG: display:     SetPlane pipe A, plane 2, 
disabling
(kms_color:915) igt_kms-DEBUG: display:     SetProp plane A.2 "rotation" 
to 0x1/1
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     Fixing up initial rotation 
pipe A, plane 3
(kms_color:915) igt_kms-DEBUG: display:     SetCursor pipe A, disabling
(kms_color:915) igt_kms-DEBUG: display:     MoveCursor pipe A, (0, 0)
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     Fixing up initial rotation 
pipe B, plane 0
(kms_color:915) igt_kms-DEBUG: display:     SetCrtc pipe B, disabling
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     Fixing up initial rotation 
pipe B, plane 1
(kms_color:915) igt_kms-DEBUG: display:     SetCursor pipe B, disabling
(kms_color:915) igt_kms-DEBUG: display:     MoveCursor pipe B, (0, 0)
(kms_color:915) igt_kms-DEBUG: display: }
(kms_color:915) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_fb(58)
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_size (2400x1600)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_position(0,0)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_size(2400x1600)
(kms_color:915) igt_kms-DEBUG: display: commit {
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     eDP-1: SetCrtc pipe A, fb 
58, src (0, 0), mode 2400x1600
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display: }
(kms_color:915) igt_pipe_crc-WARNING: Warning on condition all_zero in 
function crc_sanity_checks, file ../lib/igt_pipe_crc.c:475
(kms_color:915) igt_pipe_crc-WARNING: Suspicious CRC: All values are 0.
(kms_color:915) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_fb(58)
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_size (2400x1600)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_position(0,0)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_size(2400x1600)
(kms_color:915) igt_kms-DEBUG: display: commit {
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     eDP-1: SetCrtc pipe A, fb 
58, src (0, 0), mode 2400x1600
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display: }
(kms_color:915) igt_pipe_crc-DEBUG: CRC mismatch at index 0: 0xda5b != 0x0
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_fb(0)
(kms_color:915) igt_kms-DEBUG: display: A.0: plane_set_size (0x0)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_position(0,0)
(kms_color:915) igt_kms-DEBUG: display: A.0: fb_set_size(0x0)
(kms_color:915) igt_kms-DEBUG: display: eDP-1: set_pipe(None)
(kms_color:915) igt_kms-DEBUG: display: eDP-1: Selecting pipe None
(kms_color:915) igt_kms-DEBUG: display: commit {
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display:     SetCrtc pipe A, disabling
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: Test requirement passed: plane_idx >= 0 
&& plane_idx < pipe->n_planes
(kms_color:915) igt_kms-DEBUG: display: }
(kms_color:915) CRITICAL: Test assertion failure function 
run_gamma_degamma_tests_for_pipe, file ../tests/kms_color.c:787:
(kms_color:915) CRITICAL: Failed assertion: test_t(data, data->primary)
(kms_color:915) igt_core-INFO: Stack trace:
(kms_color:915) igt_core-INFO:   #0 ../lib/igt_core.c:2075 
__igt_fail_assert()
(kms_color:915) igt_core-INFO:   #1 ../tests/kms_color.c:785 
run_tests_for_pipe()
(kms_color:915) igt_core-INFO:   #2 ../tests/kms_color.c:1182 
__igt_unique____real_main1169()
(kms_color:915) igt_core-INFO:   #3 ../tests/kms_color.c:1169 main()
(kms_color:915) igt_core-INFO:   #4 [__libc_init_first+0x80]
(kms_color:915) igt_core-INFO:   #5 [__libc_start_main+0x98]
(kms_color:915) igt_core-INFO:   #6 [_start+0x30]
****  END  ****
(kms_color:915) igt_pipe_crc-WARNING: Warning on condition all_zero in 
function crc_sanity_checks, file ../lib/igt_pipe_crc.c:475
(kms_color:915) igt_pipe_crc-WARNING: Suspicious CRC: All values are 0.
(kms_color:915) igt_pipe_crc-WARNING: Warning on condition all_zero in 
function crc_sanity_checks, file ../lib/igt_pipe_crc.c:475
(kms_color:915) igt_pipe_crc-WARNING: Suspicious CRC: All values are 0.

Pipeline: https://gitlab.freedesktop.org/vigneshraman/msm/-/jobs/79872341

Please could you have a look at these test results and let us know if 
you need more information. Thank you.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
