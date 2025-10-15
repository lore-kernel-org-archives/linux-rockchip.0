Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0140ECCD193
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 10:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBnEZv48jlEQ2yo2uh4ZOn9x/HUSzuwjt2fwaHiuXA0=; b=d1dqWb19b/FtGK
	jSM2pUs0H2WjYMAknpO1/HRpjh5eL0AE9fDwTDLmGhrmeiUycccr+5o4+s/749jE8bIwA2SVmj0bf
	giNv0LAJOXxADuqXNihbmw3uHq01Md4k7nXW0dJbG+HVr6A5KoggCuJCa93bHZT+p3fbjNZYcYE1Z
	f7b8rsyuEU+h+HJDqj5IVpCadSeYe1g2ekTvx7/WPwfCtD37KQ5gU/XwOR+17MAE6hiuVeW+BSvlH
	r0cjuY67IDZLG84GtKWpQ0dI7xdnQC/tIJGOTnFuix2DY3JsUyXg5aBS/E+EcFmcnMEpFWS71N7Hk
	M3yxbN6JbSp+UGLt3z1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yLh-00000001Dd0-35VK;
	Wed, 15 Oct 2025 10:03:13 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yLe-00000001DcO-3jEi
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 10:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760522588;
	bh=vIUSMXrHYo6IVAXXMlf2z2QqzqoJqcv9TqtH8rYDitE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=P8jstF9EFj1pRwbRbKvsomEZszhzzmqa/emjO22fMo3rkEfP5JsJ5N1N4ZpP/NswI
	 D17peeUodI2Qo1oJinpW1/CbABku69oUBKLoSXrnZBuiwxQ3OOvmM43QD8/UbUNVE9
	 r5/C1Fbytwz4q2HA5fTewQdJW0bvRyHP6kjpElWDxJiDCaUQdf7291XkG1n8rFAomC
	 bkX/PltyOWoolKBd9X2MSes74NZWXhZHwoiXVCb3HCZElbLxtyY2Xx968D9F9Z0NRP
	 99RxlnNhhstChFTilT1r8aC/xw0JRWM2s8Lh81FJgNnZJftCM3AXfhO/rZt2taTSQF
	 bftZTKi8vPQCw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 93E8E17E00A3;
	Wed, 15 Oct 2025 12:03:07 +0200 (CEST)
Message-ID: <7291eff3-b259-4209-b150-cb220abc01ec@collabora.com>
Date: Wed, 15 Oct 2025 13:03:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/bridge: dw-hdmi-qp: Fix spurious IRQ on resume
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20251014-rockchip-hdmi-suspend-fix-v1-1-983fcbf44839@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20251014-rockchip-hdmi-suspend-fix-v1-1-983fcbf44839@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_030311_235358_575C07D7 
X-CRM114-Status: UNSURE (   8.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10/14/25 7:00 PM, Sebastian Reichel wrote:
> After resume from suspend to RAM, the following splash is generated if
> the HDMI driver is probed (independent of a connected cable):
> 
> [ 1194.484052] irq 80: nobody cared (try booting with the "irqpoll" option)
> [ 1194.484074] CPU: 0 UID: 0 PID: 627 Comm: rtcwake Not tainted 6.17.0-rc7-g96f1a11414b3 #1 PREEMPT
> [ 1194.484082] Hardware name: Rockchip RK3576 EVB V10 Board (DT)
> [ 1194.484085] Call trace:
> [ 1194.484087]  ... (stripped)
> [ 1194.484283] handlers:
> [ 1194.484285] [<00000000bc363dcb>] dw_hdmi_qp_main_hardirq [dw_hdmi_qp]
> [ 1194.484302] Disabling IRQ #80
> 
> Apparently the HDMI IP is losing part of its state while the system
> is suspended and generates spurious interrupts during resume. The
> bug has not yet been noticed, as system suspend does not yet work
> properly on upstream kernel with either the Rockchip RK3588 or RK3576
> platform.
> 
> Fixes: 128a9bf8ace2 ("drm/rockchip: Add basic RK3588 HDMI output support")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

LGTM, hence

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
