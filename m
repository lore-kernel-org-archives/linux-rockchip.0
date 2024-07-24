Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A363C3DA61
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jul 2024 08:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hpREi2mscHYbLzs4gVv8Ia3JPdREOlzkq2eWvbFME2k=; b=bAvgkx+gOt4XJPWSZ169XntT0k
	nbe4QuYP9903amU7uLtmTT7eLojItJQoR+a3BrJjrIIosH1yRT1G7N9IN4xdu2LO3GUFuns+Ykxen
	ZMFJC/n6OFsUFHjKsLFEAJiUcz2LWMiuC8Zho4U1hoyL0TnMmmMOmVrCx09/N4sz0Y1cjnvxkxGqg
	a1XciYFyUVpZ5BVJVZ6OoYiofvwSBzMiG5+ErlLiuob5nN3xnIpgYr6HaiqTRnjvUDHEwTi70fxtr
	FyotLGfLEyiwhiAJoQ0RelKx15bZ09aq2ZhcyTgXrnhF3U8U+MAZdFC2t3iTW+nUtGPdVhZECXKDz
	Pbt7cCMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXk8-0000000EpBc-0oHp;
	Wed, 24 Jul 2024 08:53:04 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWXk4-0000000EpAh-3qQd
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jul 2024 08:53:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721811175;
	bh=9Q/j7zV2dHwZumpwXXSykRV+/pUuN3AcSk7kD6teegA=;
	h=Date:To:Cc:From:Subject:From;
	b=1w430ibWGDifLMIcp7iMYufETAQz3j2unkZ9rcphwozH9IA0WAEwmHKMp+WEYk6xZ
	 at+DtXg3eQsFiNe/oCSILnVJiexazN4JKk6k4M0NtMW12syewpWvVxKq8rH8v3xTW4
	 sKSydcrS7BZ186jQRgll0eGdE8JYqSg8VxH50qOZK4eGrvJr91+RkcvQhzxg8zBvNj
	 mc9uuh/yPolxXaP1nFj2ONepZnB2RAgZZE8KSNGGSkNlNu8dtCv4EtM7YOuvQSTfsN
	 oPN/LhAEFP1y0QrauZW6xbLUCZZ3EbBRWYkySlZvaKjt2RlBr+b87IP+ZPXrfeTlcf
	 +5TCtvfyP1wcQ==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B40E83780BC2;
	Wed, 24 Jul 2024 08:52:52 +0000 (UTC)
Message-ID: <3e267d0c-fde4-4533-b001-6ab7d7c03546@collabora.com>
Date: Wed, 24 Jul 2024 14:22:50 +0530
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
 Guilherme Alcarde Gallo <guilherme.gallo@collabora.com>,
 Deborah Brouwer <deborah.brouwer@collabora.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
Subject: drm-ci: flaky tests for rockchip driver testing
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_015301_136626_C29998C5 
X-CRM114-Status: UNSURE (   3.83  )
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

There are some flaky tests reported for rockchip driver testing
in drm-ci.

=== rockchip rk3288 ===
# Board Name: rk3288-veyron-jaq
# Failure Rate: 100
# IGT Version: 1.28-gf13702b8e
# Linux Version: 6.10.0-rc5
kms_cursor_legacy@flip-vs-cursor-atomic

=== rockchip rk3399 ===
# Board Name: rk3399-gru-kevin
# Failure Rate: 50
# IGT Version: 1.28-gf13702b8e
# Linux Version: 6.10.0-rc5
kms_bw@linear-tiling-1-displays-2560x1440p
kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic
kms_flip@dpms-vs-vblank-race-interruptible
kms_flip@flip-vs-absolute-wf_vblank-interruptible
kms_flip@flip-vs-wf_vblank-interruptible
kms_setmode@basic
kms_bw@connected-linear-tiling-1-displays-2560x1440p 


Will add these tests in 
drivers/gpu/drm/ci/xfails/rockchip-rk3288-flakes.txt and 
drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt 
(https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/gpu/automated_testing.rst#n70)

Please could you have a look at these test results and let us know if 
you need more information. Thank you.

Regards,
Vignesh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
