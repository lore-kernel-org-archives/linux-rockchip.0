Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62401D2CE08
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 17:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=twJu96Iq5NStCFUpPR32qK/hUdqegG0Qa4MNeOhAthE=; b=0YxrQKTU90pYQp
	QK53FBBkTPHHcNDiLmz/ZmN06CHIOVY2iN5H1gXzrpg0gmlTp1rsDkuZQ12ZYh4WkiZfD2aRxUOqA
	FtRrRidJfI9f6gppcDdVB3ndK/LFkykRcU4WdPQhOtF6PkwOoVHZVlHPpz0ZJXUksigEPTLIEwG7C
	848JQhY9xlGrmhZLHl4xddPHP8Z0T/UQqn+zcJGV1pVWppm9ELco7AItDlIsl9Tw9ymy/Une3k1b0
	l4FHcMV4u+ivWrbsCfAcxQ40UK6Un/qG0qbUgPlND67o1A80wDSJ0H3CtY5yCgXLct1ruTuLkmf/3
	l5rbJRZAbQlfTQ4xJPsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3IRG-0000000Bbsc-0qpV;
	Tue, 22 Oct 2024 17:12:58 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3IAT-0000000BYgl-0nK0;
	Tue, 22 Oct 2024 16:55:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729616134;
	bh=l/4GnR/AR1YjPA5kz8XCl4dXCERTTJHmi26HUzyauoc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ckht6IRY4a08YCQR0i3IzQJYDMsYMppPznoonp+YNRAj2HFCf97fzEXlkKK0AoqtR
	 C0MdlEPO5RTWzxW1Dj/jLmpTmeG/yxQLBRBn4Ya92b/YcoaI3m0ssLt4dHB7bIiFtl
	 jtP8KMvEpEePmSoXynROEbfYeQ0DoPKFZ8jttozZgtbu1fx1VOW8I815mJIBUV6xwh
	 R85GmBRnSDbdEkoP0ofQ6ZrI0okq4+R2detGbt8obt8HVKfOEgZbU0HDw80CLd0hjT
	 xIq7Cly4k9AwwrLSZNK6IGzKwtA+MWO31p5Jzbk867x7ohHDxBQOOssfmZdC4dvT8h
	 4+RHhbsoYCscA==
Received: from [192.168.1.90] (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 617DA17E3693;
	Tue, 22 Oct 2024 18:55:34 +0200 (CEST)
Message-ID: <a928726e-c0c5-46f5-8ac6-323c8d16ea54@collabora.com>
Date: Tue, 22 Oct 2024 19:55:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] Enable HDMI0 on several RK3588 based boards
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
 <2a27ed62-305d-4d41-a43f-02f58bc22e2d@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <2a27ed62-305d-4d41-a43f-02f58bc22e2d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_095537_411248_8E38E50F 
X-CRM114-Status: GOOD (  15.16  )
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

On 10/22/24 7:29 PM, Marcin Juszkiewicz wrote:
> W dniu 19.10.2024 o 12:12, Cristian Ciocaltea pisze:
>> Since the initial support for the RK3588 HDMI TX Controller [1] has been
>> merged as of next-20241018, let's enable the HDMI0 output port for the
>> following boards: Radxa ROCK 5A & 5B, Rockchip RK3588 EVB1 V10, Xunlong
>> Orange Pi 5+.
> 
> I copied changes to FriendlyELEC NanoPC-T6 DT and booted 6.12-rc3 with
> your changes on LTS variant of the board.
> 
> With my SBC monitor it complained about resolution (10.5" 1366x768px):
> 
> rockchip-drm display-subsystem: [drm] *ERROR* vp0 Cluster0-win0
> actual_w[1366] not 4 pixel aligned
> 
> And monitor told me "no signal".
> 
> /sys/devices/platform/display-subsystem/drm/card1/card1-HDMI-A-1/modes
> lists all resolutions available.
> 
> Would be nice to see system going to next EDID resolution in such case.
> 1280x720px is 4px aligned.
> 
> 
> With my 34" 3440x1440px monitor it shown some output once. In resolution
> close to original one but 16:9 instead of 21:9 one. Anyway monitor
> behaved in "I do not like that signal" way - started blinking, had
> problems with displaying even from my desktop after.
> 
> 
> I got a feeling that 1920x1080px monitor landed on my "need to buy" list.

I'd suggest giving [1] or [2] a try and see if it fixes your display
issues.

The VOP2 support for rk3588 in mainline is not able to properly handle all
display modes advertised by the connected displays. We have a workaround
and I'm currently working on an upstreamable solution.

[1] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux
[2] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/tree/rk3588-hdmi-bridge-v6.12-rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
