Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45E3EECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 04:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWKeDngeB1psCGJwu+65G0eE407VzbxON8LLKvaeVbs=; b=URNFXw6MgIdPK5
	LIcmQraamEPajqjFTVI5gk8NyEX1jqfIlen53NDZ+TQzq7J1wNBqlZFq2q0FQlCdTxSSHhN/QlezJ
	qstVW0J0Df58H6KYhipJlQQKjY0KiX5GTG7GkbjkZcTz1L0ZkoUnYj1PmANjCYtWFgSSpE6B6bhVg
	rw3wHKYObSVUF/ak3KOX12YlnmgzOg5J1fnpPSexzGkiLJt6EqcDCVyfraVLf2p0GDfNaqdR2lm4d
	apH1AFG/9Mf3JayyjDb1aVGRzdjmrmUvxRfIglHCtwrYCvZK8+57FR0nyvWtfp5GqWeOFvdNeU+KZ
	1lFj7osreQLgq8QrwLvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sns3B-0000000486S-2hJi;
	Tue, 10 Sep 2024 04:00:21 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sns37-0000000485X-2t41
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 04:00:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1725940809; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fOLWoiqRpJJzDPuCEgm+pcjdBnvLeZCYRpz9mx49sY7EKvQieaHe7evU/AxfCl46Eyx+YSqR8BDuXPWko9xeeybdKHx2N17EUIC75OQvxbR8IJHkPp02gdVend73vJhURpWZY9E97uo5e187D3dlhgsHFcHSFUQprMkal/Oxw+Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1725940809; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=6Tc/mF2U2wzvf3mrYJCr0yMdRenMZYLzl0u+t98aPv8=; 
	b=Ucfvrw77y8T7j8PLscpLldfpSQMDL49UdKhuWZtXaRTR+T7T7W1A9OYRNj0CKkZ/PQZYW3aoqvHzcGJI0122vDjKtIdq6nUrz5DXRC/V606OTLVJyk4KOi9UqatDu6UriH1THZ3ik1YSF9LAqrj+lDBkQpvlEfuhMZIKZX2kEoQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=vignesh.raman@collabora.com;
	dmarc=pass header.from=<vignesh.raman@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1725940809;
	s=zohomail; d=collabora.com; i=vignesh.raman@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:From:From:To:To:Cc:Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=6Tc/mF2U2wzvf3mrYJCr0yMdRenMZYLzl0u+t98aPv8=;
	b=TIqCd6Z9Cr0IjSYbrIUaKb49af0hUHGUlBXWiUbbOnvENcSzwHVkgUrzqzpfsU0e
	imf16ANSPWBZ0SAqxOAP0Fzf5+XQzGmpVA5FofFzWPzedtmSFs106Giw/ulQf7Vfgdt
	f9k6jpbv+r7xog2cw4cQT0et9P/t8S9djAA+H3A4=
Received: by mx.zohomail.com with SMTPS id 1725940808393866.7829529888131;
	Mon, 9 Sep 2024 21:00:08 -0700 (PDT)
Message-ID: <7505ac00-29ef-4ad9-8904-94b4c024c02b@collabora.com>
Date: Tue, 10 Sep 2024 09:30:01 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: drm-ci: flaky tests for rockchip driver testing
From: Vignesh Raman <vignesh.raman@collabora.com>
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
References: <3e267d0c-fde4-4533-b001-6ab7d7c03546@collabora.com>
Content-Language: en-US
In-Reply-To: <3e267d0c-fde4-4533-b001-6ab7d7c03546@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_210017_843592_B65F54BC 
X-CRM114-Status: UNSURE (   8.39  )
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

On 24/07/24 14:22, Vignesh Raman wrote:
> Hi Maintainers,
> 
> There are some flaky tests reported for rockchip driver testing
> in drm-ci.
> 
> === rockchip rk3288 ===
> # Board Name: rk3288-veyron-jaq
> # Failure Rate: 100
> # IGT Version: 1.28-gf13702b8e
> # Linux Version: 6.10.0-rc5
> kms_cursor_legacy@flip-vs-cursor-atomic
> 
> === rockchip rk3399 ===
> # Board Name: rk3399-gru-kevin
> # Failure Rate: 50
> # IGT Version: 1.28-gf13702b8e
> # Linux Version: 6.10.0-rc5
> kms_bw@linear-tiling-1-displays-2560x1440p
> kms_cursor_legacy@nonblocking-modeset-vs-cursor-atomic
> kms_flip@dpms-vs-vblank-race-interruptible
> kms_flip@flip-vs-absolute-wf_vblank-interruptible
> kms_flip@flip-vs-wf_vblank-interruptible
> kms_setmode@basic
> kms_bw@connected-linear-tiling-1-displays-2560x1440p
> 
> Will add these tests in 
> drivers/gpu/drm/ci/xfails/rockchip-rk3288-flakes.txt and 
> drivers/gpu/drm/ci/xfails/rockchip-rk3399-flakes.txt 
> (https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/Documentation/gpu/automated_testing.rst#n70)
> 
> Please could you have a look at these test results and let us know if 
> you need more information. Thank you.

There are some flaky tests reported for rockchip driver testing
in drm-ci.

=== rockchip rk3288 ===
# Board Name: rk3288-veyron-jaq
# Failure Rate: 100
# IGT Version: 1.28-ga73311079
# Linux Version: 6.11.0-rc2
kms_cursor_crc@cursor-offscreen-32x10
kms_cursor_edge_walk@64x64-left-edge
kms_flip@plain-flip-ts-check
kms_cursor_crc@cursor-alpha-opaque

=== rockchip rk3399 ===
# Board Name: rk3399-gru-kevin
# Failure Rate: 50
# IGT Version: 1.28-ga73311079
# Linux Version: 6.11.0-rc2
kms_flip@wf_vblank-ts-check

# Board Name: rk3399-gru-kevin
# Failure Rate: 100
# IGT Version: 1.28-ga73311079
# Linux Version: 6.11.0-rc5
kms_flip@dpms-vs-vblank-race
kms_bw@linear-tiling-2-displays-2160x1440p
kms_flip@flip-vs-expired-vblank


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
