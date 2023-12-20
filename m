Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18172C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:Subject:To:From:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XGyRlSJvveXeN1J1T1Fo1Qf042Fwt8U/zxbeoPBroEY=; b=sYjLC7jFM1yIAMpt2yO4wf9R2J
	llfWg8CB2obwg9fsBgVhLcZzfa1tEn4LMbVRV4jeKKo8Z2bfbJnqyRt7aZ6xfUtfRk/Pq+S5d6FGF
	inVIuu+FYQVbnOBDE6W5qbOHypu24+pS3J47vRLtto6QcLJy854KpclrIPlsCITbNEzTEKcfxKwy8
	9mE+i0+mCLrMnBsUBzOkpoXW0ArB+m+Tm673u4wwoXV6XZ26TPGGCCc8fqmzEQGcQbaFosBRdkyaU
	AG2PP5gw8rjKNYuDwu0uolLxDvvZHrDZxc9JYbHupbNl/PtxoAb8ZnLLandjrTADOGNvgmfzzMDIu
	fDzh5plQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFuKB-00H0gB-0D;
	Wed, 20 Dec 2023 11:01:15 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFuK7-00H0eQ-2M
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Dec 2023 11:01:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703070069;
	bh=I8w6PJkXNy6rGE5GGqTHbqFhMg1a+ToqNjIbCukuil0=;
	h=Date:From:To:Subject:Cc:From;
	b=KAhXTKbP5GZ808RucxdEt0Yi8apDhn2C0GdSuPTEeT0Fg62Jm6jhG6AsTx8AKuF+5
	 ma9qQC0aLRndsqZ+y8P3UcwHfpIMQ6AlJScqbjDcVJSYjrvpCMYJcOqTBG5oywNLgo
	 Dn5XMveGxiHAYWjhtm2HTZ5kbOkDhVKWbesjc/YSlgw3W7gKnKTznpqVrP/5bugDkB
	 Lz7hWvkIan9gFFKeEwyLOt+h1awLjdHPm/O5JOZmDThT5lDeTVzWblCrlM2qp/US88
	 o+HiNTfw1tKrp73p1RIZvoLrSravFrxoz5Btb3yffuEcGptaLsrihAWeUVEL+xcbfu
	 QIMAduUkoV1VQ==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E985B3781FED;
	Wed, 20 Dec 2023 11:01:05 +0000 (UTC)
Message-ID: <bdb53650-1888-30b8-93ee-2290d020af4a@collabora.com>
Date: Wed, 20 Dec 2023 16:31:02 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
To: hjc@rock-chips.com, heiko@sntech.de
Subject: Flaky tests for rockchip rk3288/rk3399
Cc: Helen Mae Koike Fornazier <helen.koike@collabora.com>,
 Daniel Stone <daniels@collabora.com>,
 David Heidelberg <david.heidelberg@collabora.com>,
 Guilherme Alcarde Gallo <guilherme.gallo@collabora.com>,
 Sergi Blanch Torne <sergi.blanch.torne@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_030111_929812_C0A99216 
X-CRM114-Status: UNSURE (   5.39  )
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

There are some flaky tests reported for rk3288 and rk3399 rockchip-drm 
display driver testing in drm-ci.

=== rockchip rk3288 ===
# Board Name: rk3288-veyron-jaq.dtb
# Failure Rate: 50
# IGT Version: 1.28-gd2af13d9f
# Linux Version: 6.7.0-rc3

Pipeline url:
https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/52974828
https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/52979524
https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/52933410

# Reported by deqp-runner
kms_cursor_crc@cursor-offscreen-64x21
kms_cursor_crc@cursor-offscreen-32x32

kms_cursor_legacy@flip-vs-cursor-legacy:
(kms_cursor_legacy:1366) CRITICAL: Test assertion failure function 
flip_vs_cursor, file ../tests/kms_cursor_legacy.c:1015:
(kms_cursor_legacy:1366) CRITICAL: Failed assertion: 
kmstest_get_vblank(display->drm_fd, pipe, 0) == vblank_start
(kms_cursor_legacy:1366) CRITICAL: error: 25330 != 25329
Received signal SIGSEGV.

# The below test shows inconsistency across multiple runs, giving
# results of Pass and Crash alternately.
kms_cursor_crc@cursor-size-change:
(kms_cursor_crc:1047) igt_pipe_crc-CRITICAL: Test assertion failure 
function igt_assert_crc_equal, file ../lib/igt_pipe_crc.c:112:
(kms_cursor_crc:1047) igt_pipe_crc-CRITICAL: Failed assertion: !mismatch 
|| igt_skip_crc_compare
(kms_cursor_crc:1047) igt_pipe_crc-CRITICAL: Last errno: 11, Resource 
temporarily unavailable
Received signal SIGSEGV.


=== rockchip rk3399 ===
# Board Name: rk3399-gru-kevin.dtb
# Failure Rate: 50
# IGT Version: 1.28-gd2af13d9f
# Linux Version: 6.7.0-rc3

Pipeline url:
https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/52978575
https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/52940368
https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/52933412
https://gitlab.freedesktop.org/vigneshraman/linux/-/jobs/52929703

# Reported by deqp-runner
kms_color@gamma
kms_cursor_legacy@cursorA-vs-flipA-toggle
kms_flip@dpms-vs-vblank-race
kms_flip@dpms-vs-vblank-race-interruptible
kms_flip@flip-vs-absolute-wf_vblank-interruptible
kms_flip@flip-vs-wf_vblank-interruptible
kms_flip@modeset-vs-vblank-race-interruptible
kms_pipe_crc_basic@compare-crc-sanitycheck-xr24
kms_setmode@basic

# The below test shows inconsistency across multiple runs, giving
# results of Pass and Fail alternately.
kms_cursor_crc@cursor-rapid-movement-32x10:
(kms_cursor_crc:1495) igt_fb-DEBUG: Test requirement passed: 
cairo_surface_status(fb->cairo_surface) == CAIRO_STATUS_SUCCESS
(kms_cursor_crc:1495) igt_core-INFO: Timed out: Opening crc fd, and poll 
for first CRC.

I will add these tests in 
drivers/gpu/drm/ci/xfails/rockchip-rk3288-display-flakes.txt and 
drivers/gpu/drm/ci/xfails/rockchip-rk3399-display-flakes.txt 
(https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/gpu/automated_testing.rst#n70)

Please could you have a look at these test results and let us know if 
you need more information. Thank you.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
