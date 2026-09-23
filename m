Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35DEFC982EA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 09:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTp/FS8tYaQc6Kmfd70lYfDXao46wbxdTm9LbPZDeRA=; b=z0cYbShu4dC428
	QeJKG7dnOnrkRpQcd5sjmeZJepOQ6jpdIrDFgUX/fGGUdER4Txm0PEfvfWqA6DyT932YBDi536sH8
	krVp/XgFuaCsmLMD7QmsHWLhvlm8CkROUyTKHlrzv8Yq0W9zNkoZ0GGkLl/xqhgG8mlG8chc96Uo1
	ItFqQ+oqQ8UeCEOVM9U04LDte+t3qFRXMtoUlAhYYpkmOkoUhh0D3YrY0FJRNw/9f0cggvtqTx8pH
	UQioDRRnkdd0JgB9RPGuvLA9fvmNuwAh2Lk0vxEHbyU2WXG/lMagjbGkIKu+wWt3ss2+Xja1HIu7G
	yOgtLzt+2b7YcpYHXz1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Jgl-00000007ozF-2f2a;
	Wed, 23 Sep 2026 09:54:55 +0000
Received: from mout-p-201.mailbox.org ([2001:67c:2050:0:465::201])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9JgN-00000007ou8-0adn;
	Wed, 23 Sep 2026 09:54:32 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4hqXPG62HMzMkr7;
	Wed, 23 Sep 2026 11:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1790157266;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pNJQx7eG3HyvFQ0X0+FNFvV8AFm7jVjyATRQZ7QjHTw=;
	b=XvxsDhc6sDw6jWabjFnd7rqSASkwJCCSiyum0/HZmpONf/RR6qAw0RoMsDjXi++LHK59Tv
	9BpaDN5UqXUhgAF6ww8oO6sALQbqcjsH1xOCu/APUZpCtzpvmx9S6YLB28NUziOSEb6A6g
	2qw2Exsv9Q66x4Qtl18IxQ6kNp9/0QJztYuddLJZ6im/+9e2rfMgj4j3fWdyYLqYfMEnTS
	mVwgZ9L8vLDin/LbJ3YPyEXs6PPXLb15ll90PDhe2qwd9cdnRXZvfGHuTNro2Or923orFz
	7hewrAjOZO5jX7lK9NwMsmB8IavrCTgpIpF9FUVhDfimdykDuyqU89IX8p8MuQ==
Message-ID: <3b90b2c4-5acd-453b-8f9d-738370a52ddd@mailbox.org>
Date: Wed, 23 Sep 2026 11:54:17 +0200
MIME-Version: 1.0
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Leo Li <sunpeng.li@amd.com>, Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com>
 <588442c7-2589-4026-a8f8-e03f944318c3@mailbox.org>
Content-Language: en-CA
In-Reply-To: <588442c7-2589-4026-a8f8-e03f944318c3@mailbox.org>
X-MBO-RS-ID: 11646ef09ad52a70421
X-MBO-RS-META: ds7zdfw7ac3mtbp1kbr9duz934e1srq6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_025431_346032_2324DCF1 
X-CRM114-Status: UNSURE (   4.40  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gOS8yMy8yNiAxMTo1MSwgTWljaGVsIETDpG56ZXIgd3JvdGU6Cj4gCj4gRWl0aGVyIHdheSwg
c2hvdWxkIHRoZXNlIHJ1bGVzIGJlIGVuZm9yY2VkIGluIGRybV9hdG9taWNfY3J0Y19zZXRfcHJv
cGVydHk/CgpPciByYXRoZXIgaW4gYXRvbWljX2NoZWNrLgoKCi0tIApFYXJ0aGxpbmcgTWljaGVs
IETDpG56ZXIgICAgICAgXCAgICAgICAgR05PTUUgLyBYd2F5bGFuZCAvIE1lc2EgZGV2ZWxvcGVy
Cmh0dHBzOi8vcmVkaGF0LmNvbSAgICAgICAgICAgICBcICAgICAgICAgICAgICAgTGlicmUgc29m
dHdhcmUgZW50aHVzaWFzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
