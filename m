Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2FA7CCFA1F
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 12:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eX4NlfR0H3OpLvVBJojGuSMfPgG1Q7oqw+GoS3c3VwI=; b=nGxWPCAuY5kc+OYsztxCEVeXoY
	ZSIO7XXsnF0IWlWoE63i5e24pY6jtWJCCUPa64LtkHttND/Auby+fGatrvxIOYphA41vurfDIdYGG
	zOka1dbyQ168ACMoYGqpReclwM70MqNXoWv6q7frp06/0mjG/YSJDATCeTSZEh2B/nMGWR4RYWsDG
	kv+KGRu3KL7ILBEzfxlwrfF5b8pSUtPPAlkNjrfXjIcMA85FjWwSYJcn7g+/iDIMC/nl2W6TWI2NH
	Eb8OJSFnWcJ/ov/viA/AGNESO9jF60VH+faiPRgAjRP46laplpnSqYIeooLUQn/k166AuvgauRAxP
	qu2q8xYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGz6W-0000000FRNq-2PHp;
	Thu, 06 Nov 2025 12:28:40 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRZC-0000000CVoU-32x3
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 07:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734418825;
	bh=ta6/RfirTMv6/TmEdMRAfKedVPrY5UfkkZ9TaGPE3gs=;
	h=Date:To:Cc:From:Subject:From;
	b=h3NIqfy6KEw9cxag/hB07uhrFPmmP/JIEsCAjglqx4YdEhEBB/DH1MyZLPfD4cOrQ
	 mwsq2PH6/ly5XXb8q9NgN0fxPATnJM8z6mGOl6HsBURBFnrKZIAJrawAmKNeJ8JQmx
	 0pX8H2WrqvQ8+Z1Dt3lEF2DDjE/L8csyD3scBlWpbebXpi6OVEXu/ztUz+p+08fM9C
	 uLel/2+2kO30x73PSHKAbRxnnp0w9iDsyiJdp8TDZi4DjEeLeiOs9nshhbdtwydIgf
	 hPpLJbBcHadhTt34zKSIiKADi4v0Rt3J+qCZtRyqMXQ0J3NTbShEyasBHnYVFkQhNk
	 QLt2KKEpT5w3Q==
Received: from [192.168.50.250] (unknown [171.76.86.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C03B117E12AC;
	Tue, 17 Dec 2024 08:00:20 +0100 (CET)
Message-ID: <7a1b888f-d7db-4ed7-96cd-3975ace837fb@collabora.com>
Date: Tue, 17 Dec 2024 12:30:16 +0530
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
Subject: Re: drm-ci: rockchip: kms_flip@flip-vs-absolute-wf_vblank flake
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_230026_925126_62A02774 
X-CRM114-Status: UNSURE (   3.68  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 06 Nov 2025 04:28:36 -0800
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

# Board Name: hp-11A-G6-EE-grunt
# Bug Report:
# Failure Rate: 100
# IGT Version: 1.29-g33adea9eb
# Linux Version: 6.13.0-rc2
kms_flip@flip-vs-absolute-wf_vblank

command: cd "/igt/libexec/igt-gpu-tools" && 
"/igt/libexec/igt-gpu-tools/kms_flip" "--run-subtest" 
"flip-vs-absolute-wf_vblank"
pid: 1137
exit status: exit status: 98
stdout:
-------
IGT-Version: 1.29-g33adea9eb (aarch64) (Linux: 6.13.0-rc2-g1f006005ebf8 
aarch64)
Using IGT_SRANDOM=1734349644 for randomisation
Opened device: /dev/dri/card1
Using monotonic timestamps
Starting subtest: flip-vs-absolute-wf_vblank
Starting dynamic subtest: A-eDP1
   2400x1600: 60 266666 2400 2448 2480 2564 1600 1603 1613 1733 0x48 0xa
Expected frametime: 16663us; measured 16660.9us +- 46.199us accuracy 0.83%
Stack trace:
   #0 ../lib/igt_core.c:2051 __igt_fail_assert()
   #1 ../tests/kms_flip.c:1434 run_test_on_crtc_set.constprop.0()
   #2 ../tests/kms_flip.c:1829 run_test()
   #3 ../tests/kms_flip.c:2078 __igt_unique____real_main2001()
   #4 ../tests/kms_flip.c:2001 main()
   #5 [__libc_init_first+0x80]
   #6 [__libc_start_main+0x98]
   #7 [_start+0x30]
Dynamic subtest A-eDP1: FAIL (1.704s)
Starting dynamic subtest: B-eDP1
   2400x1600: 60 266666 2400 2448 2480 2564 1600 1603 1613 1733 0x48 0xa
Expected frametime: 16663us; measured 16662.9us +- 39.823us accuracy 0.72%
Stack trace:
   #0 ../lib/igt_core.c:2051 __igt_fail_assert()
   #1 ../tests/kms_flip.c:1434 run_test_on_crtc_set.constprop.0()
   #2 ../tests/kms_flip.c:1829 run_test()
   #3 ../tests/kms_flip.c:2078 __igt_unique____real_main2001()
   #4 ../tests/kms_flip.c:2001 main()
   #5 [__libc_init_first+0x80]
   #6 [__libc_start_main+0x98]
   #7 [_start+0x30]
Dynamic subtest B-eDP1: FAIL (1.582s)
Subtest flip-vs-absolute-wf_vblank: FAIL (3.315s)
stderr:
-------
(kms_flip:1137) CRITICAL: Test assertion failure function calibrate_ts, 
file ../tests/kms_flip.c:1454:
(kms_flip:1137) CRITICAL: Failed assertion: 3 * stddev / mean < 0.005
Dynamic subtest A-eDP1 failed.
**** DEBUG ****
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=1, 
pitch=9600)
(kms_flip:1137) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=2, 
pitch=9600)
(kms_flip:1137) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_flip:1137) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_flip:1137) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_flip:1137) igt_kms-INFO:   2400x1600: 60 266666 2400 2448 2480 2564 
1600 1603 1613 1733 0x48 0xa
(kms_flip:1137) DEBUG: No stale events found
(kms_flip:1137) INFO: Expected frametime: 16663us; measured 16660.9us +- 
46.199us accuracy 0.83%
(kms_flip:1137) CRITICAL: Test assertion failure function calibrate_ts, 
file ../tests/kms_flip.c:1454:
(kms_flip:1137) CRITICAL: Failed assertion: 3 * stddev / mean < 0.005
(kms_flip:1137) igt_core-INFO: Stack trace:
(kms_flip:1137) igt_core-INFO:   #0 ../lib/igt_core.c:2051 
__igt_fail_assert()
(kms_flip:1137) igt_core-INFO:   #1 ../tests/kms_flip.c:1434 
run_test_on_crtc_set.constprop.0()
(kms_flip:1137) igt_core-INFO:   #2 ../tests/kms_flip.c:1829 run_test()
(kms_flip:1137) igt_core-INFO:   #3 ../tests/kms_flip.c:2078 
__igt_unique____real_main2001()
(kms_flip:1137) igt_core-INFO:   #4 ../tests/kms_flip.c:2001 main()
(kms_flip:1137) igt_core-INFO:   #5 [__libc_init_first+0x80]
(kms_flip:1137) igt_core-INFO:   #6 [__libc_start_main+0x98]
(kms_flip:1137) igt_core-INFO:   #7 [_start+0x30]
****  END  ****
(kms_flip:1137) CRITICAL: Test assertion failure function calibrate_ts, 
file ../tests/kms_flip.c:1454:
(kms_flip:1137) CRITICAL: Failed assertion: 3 * stddev / mean < 0.005
(kms_flip:1137) CRITICAL: Last errno: 22, Invalid argument
Dynamic subtest B-eDP1 failed.
**** DEBUG ****
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=3, 
pitch=9600)
(kms_flip:1137) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_flip:1137) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=4, 
pitch=9600)
(kms_flip:1137) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_flip:1137) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_flip:1137) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_flip:1137) igt_kms-INFO:   2400x1600: 60 266666 2400 2448 2480 2564 
1600 1603 1613 1733 0x48 0xa
(kms_flip:1137) DEBUG: No stale events found
(kms_flip:1137) INFO: Expected frametime: 16663us; measured 16662.9us +- 
39.823us accuracy 0.72%
(kms_flip:1137) CRITICAL: Test assertion failure function calibrate_ts, 
file ../tests/kms_flip.c:1454:
(kms_flip:1137) CRITICAL: Failed assertion: 3 * stddev / mean < 0.005
(kms_flip:1137) CRITICAL: Last errno: 22, Invalid argument
(kms_flip:1137) igt_core-INFO: Stack trace:
(kms_flip:1137) igt_core-INFO:   #0 ../lib/igt_core.c:2051 
__igt_fail_assert()
(kms_flip:1137) igt_core-INFO:   #1 ../tests/kms_flip.c:1434 
run_test_on_crtc_set.constprop.0()
(kms_flip:1137) igt_core-INFO:   #2 ../tests/kms_flip.c:1829 run_test()
(kms_flip:1137) igt_core-INFO:   #3 ../tests/kms_flip.c:2078 
__igt_unique____real_main2001()
(kms_flip:1137) igt_core-INFO:   #4 ../tests/kms_flip.c:2001 main()
(kms_flip:1137) igt_core-INFO:   #5 [__libc_init_first+0x80]
(kms_flip:1137) igt_core-INFO:   #6 [__libc_start_main+0x98]
(kms_flip:1137) igt_core-INFO:   #7 [_start+0x30]
****  END  ****
(kms_flip:1137) igt_kms-CRITICAL: Test assertion failure function 
kmstest_set_connector_dpms, file ../lib/igt_kms.c:2246:
(kms_flip:1137) igt_kms-CRITICAL: Failed assertion: found_it
(kms_flip:1137) igt_kms-CRITICAL: Last errno: 9, Bad file descriptor
(kms_flip:1137) igt_kms-CRITICAL: DPMS property not found on 53

Pipeline: https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/68249818

Please could you have a look at these test results and let us know if 
you need more information. Thank you.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
