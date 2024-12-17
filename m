Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DCB7E7716A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 07:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aPSDUI0rDL378SZJZUxKrdURHAPM0BVs8tgE1qdP7ek=; b=dHuMDVdceX3Iv6d7cKnc7KHMKN
	Rk8BOMF/o3uM/avATQi/aPx1XSwtSA+8z8Ok7ReYpxLZ43xpEJkFmUePHBCLOZy7UO4UVTmjz+tdt
	7GL6onD18Evy6/wpqrYswXDEHQPJUAFn2hbQisyrrbR/9GcisbSJHO9Iz5Jp26h9s10z5WPc5QgRE
	7E00khU2BYOZkTe/KIa3Uk0iUozCodTpXlWWQNUJdH85bSLSFmetv0svks25nZBG1Y9NZygdvvlNE
	j48nMR7T3AbpqqPjYFlTZdAkv+TlgWoJhADoYhlO1RLSlCJjVfBKKzzIv2SF+2L0J8dplLr7gDnXz
	BSctKSvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRvK-0000000CZMu-3tNI;
	Tue, 17 Dec 2024 07:23:18 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNRnr-0000000CXw4-2y2Q
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 07:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734419734;
	bh=cLrL25gxNw+HqZe4FVyUrcKBfyRRwbF+59yDEgcg1jM=;
	h=Date:To:Cc:From:Subject:From;
	b=lZfP00lB3vY8UdLwlcxBMMYbtUatGKEiCXbyWZ+xIdNUcoFBdOpBP3NG2SngYOjNH
	 NrS7DmRtQoW5XGtzhJiiWkvPurQZfvN+pvjdjeFJWet7Mwvkk+xczu9ulrxfDnjfi2
	 WcrFdTMg3J3HWv7N3nWpTu6RL1kKa/1MrhLwrdFBQlnMPnYTRlvQbMW9IbGcSt31pd
	 eJfJ1Hi2RksKauodB57wdCWPLLqK4cEL2hv7m6/htT4Bpi9QwRnodOhbLKJipLsuov
	 a1csyFQqxvmUGeyiHL+7MDMQjpCK8za816EvFHpcmy9mWtgS4k+xKE9quLG23f9jf/
	 fWungsiDdUouQ==
Received: from [192.168.50.250] (unknown [171.76.86.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2656F17E1323;
	Tue, 17 Dec 2024 08:15:27 +0100 (CET)
Message-ID: <059545fa-65b1-4f5c-a13e-4d2898679f51@collabora.com>
Date: Tue, 17 Dec 2024 12:45:23 +0530
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
Subject: drm-ci: rockchip: kms_flip@modeset-vs-vblank-race-interruptible flake
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_231535_923554_98A32FBD 
X-CRM114-Status: UNSURE (   3.43  )
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

# Board Name: hp-11A-G6-EE-grunt
# Failure Rate: 20
# IGT Version: 1.29-g33adea9eb
# Linux Version: 6.13.0-rc2
kms_flip@modeset-vs-vblank-race-interruptible

command: cd "/igt/libexec/igt-gpu-tools" && 
"/igt/libexec/igt-gpu-tools/kms_flip" "--run-subtest" 
"modeset-vs-vblank-race-interruptible"
pid: 1263
exit status: exit status: 98
stdout:
-------
IGT-Version: 1.29-g33adea9eb (aarch64) (Linux: 6.13.0-rc2-g1f006005ebf8 
aarch64)
Using IGT_SRANDOM=1734350090 for randomisation
Opened device: /dev/dri/card1
Using monotonic timestamps
Starting subtest: modeset-vs-vblank-race-interruptible
Starting dynamic subtest: A-eDP1
   2400x1600: 60 266666 2400 2448 2480 2564 1600 1603 1613 1733 0x48 0xa
Expected frametime: 16663us; measured 16662.8us +- 8.128us accuracy 0.15%
Dynamic subtest A-eDP1: SUCCESS (7.351s)
Starting dynamic subtest: B-eDP1
   2400x1600: 60 266666 2400 2448 2480 2564 1600 1603 1613 1733 0x48 0xa
Expected frametime: 16663us; measured 16662.3us +- 28.697us accuracy 0.52%
Stack trace:
   #0 ../lib/igt_core.c:2051 __igt_fail_assert()
   #1 ../tests/kms_flip.c:1434 run_test_on_crtc_set.constprop.0()
   #2 ../tests/kms_flip.c:1829 run_test()
   #3 ../tests/kms_flip.c:2114 __igt_unique____real_main2001()
   #4 ../tests/kms_flip.c:2001 main()
   #5 [__libc_init_first+0x80]
   #6 [__libc_start_main+0x98]
   #7 [_start+0x30]
Dynamic subtest B-eDP1: FAIL (1.548s)
Subtest modeset-vs-vblank-race-interruptible: FAIL (8.928s)
stderr:
-------
(kms_flip:1263) CRITICAL: Test assertion failure function calibrate_ts, 
file ../tests/kms_flip.c:1454:
(kms_flip:1263) CRITICAL: Failed assertion: 3 * stddev / mean < 0.005
(kms_flip:1263) CRITICAL: Last errno: 4, Interrupted system call
Dynamic subtest B-eDP1 failed.
**** DEBUG ****
(kms_flip:1263) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_flip:1263) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=1, 
pitch=9600)
(kms_flip:1263) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_flip:1263) igt_fb-DEBUG: igt_create_fb_with_bo_size(width=2400, 
height=1600, format=XR24(0x34325258), modifier=0x0, size=0)
(kms_flip:1263) igt_fb-DEBUG: igt_create_fb_with_bo_size(handle=2, 
pitch=9600)
(kms_flip:1263) ioctl_wrappers-DEBUG: Test requirement passed: 
igt_has_fb_modifiers(fd)
(kms_flip:1263) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_flip:1263) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_flip:1263) igt_kms-INFO:   2400x1600: 60 266666 2400 2448 2480 2564 
1600 1603 1613 1733 0x48 0xa
(kms_flip:1263) DEBUG: No stale events found
(kms_flip:1263) INFO: Expected frametime: 16663us; measured 16662.3us +- 
28.697us accuracy 0.52%
(kms_flip:1263) CRITICAL: Test assertion failure function calibrate_ts, 
file ../tests/kms_flip.c:1454:
(kms_flip:1263) CRITICAL: Failed assertion: 3 * stddev / mean < 0.005
(kms_flip:1263) CRITICAL: Last errno: 4, Interrupted system call
(kms_flip:1263) igt_core-INFO: Stack trace:
(kms_flip:1263) igt_core-INFO:   #0 ../lib/igt_core.c:2051 
__igt_fail_assert()
(kms_flip:1263) igt_core-INFO:   #1 ../tests/kms_flip.c:1434 
run_test_on_crtc_set.constprop.0()
(kms_flip:1263) igt_core-INFO:   #2 ../tests/kms_flip.c:1829 run_test()
(kms_flip:1263) igt_core-INFO:   #3 ../tests/kms_flip.c:2114 
__igt_unique____real_main2001()
(kms_flip:1263) igt_core-INFO:   #4 ../tests/kms_flip.c:2001 main()
(kms_flip:1263) igt_core-INFO:   #5 [__libc_init_first+0x80]
(kms_flip:1263) igt_core-INFO:   #6 [__libc_start_main+0x98]
(kms_flip:1263) igt_core-INFO:   #7 [_start+0x30]
****  END  ****
(kms_flip:1263) igt_kms-CRITICAL: Test assertion failure function 
kmstest_set_connector_dpms, file ../lib/igt_kms.c:2246:
(kms_flip:1263) igt_kms-CRITICAL: Failed assertion: found_it
(kms_flip:1263) igt_kms-CRITICAL: Last errno: 9, Bad file descriptor
(kms_flip:1263) igt_kms-CRITICAL: DPMS property not found on 53

Pipeline: https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/68249817

Please could you have a look at these test results and let us know if 
you need more information. Thank you.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
