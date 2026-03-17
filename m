Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3746BFED9F6
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 17:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=El+Frr9M3QTxRRjBRw/eHgybQJ2R4gLjJDr469ndEUU=; b=friGUT8VtgV6Kl
	r6TJzoUTPFZJ1WAg1nORukIZ6/PRzGYXC10mVCu7q6PkBG90MlVdd0/Jn2nCBMvRhFMuokc6rMf+a
	WaNxCVb44QhfbJKCp+ahGZo0tTi7fRVtYRRN2kSzF4QFZ5bx1O7Y/6Hr9FIwp9wRe1gCpVdnQCIgW
	6JKMeiXa8LWSaShjrerVHy4FRHa6UD84/ZjOr4LVTcldIRwwszdCRuMR0lUBhjj/Mvb11ICZbEQ0C
	QJgq9OR/hxyAG5nvB/LrBEstwEZA3AwuQVVOD3LN1SWGEzG9wbRYu1PMc1f3nh5g7ERAuIXEuu8Uc
	VJlKD+uXfnW/zVWsv6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2YEH-00000006wdP-4605;
	Tue, 17 Mar 2026 17:29:17 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2YEE-00000006wd1-44VM
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 17:29:16 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 30D084E425F5;
	Tue, 17 Mar 2026 17:29:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EE1775FC9A;
	Tue, 17 Mar 2026 17:29:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E2CF910450651;
	Tue, 17 Mar 2026 18:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773768551; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cRVoOWLPKWuFETrlnWJFPl+sm1jQGU97ogkoEGJ4v04=;
	b=MKT7yYScc1mVn4B8hX7dotZvhbNzUqQvmXPtROurRqhVBUsCMYfakCzc0J6KJe1ebBJLin
	HDLgh9oyBoxLdEqyPMd0S0MtdwbDX208vMjJrQlhulkRFGIss/a4di4cSkwBw5ageIDUnY
	JAojp3Yjj5rdhgjbWc6wRK1giBdKK+uc/PIUYzKILfgxZiGcfIkGZpim8Yrhu0iEhd91TN
	kBaz0woJtsdIBE11VQGnpUOMfDErE0nyc2QQYVxJnyZ42msmsKHcIzs9i3ho4o62HllK3u
	G1I5cGBFUYcbP2LEwVHUMl4UwQYLmSqwcyKxv/t15Wr4bpYzLFZEgPMWwH6QrA==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Douglas Anderson <dianders@chromium.org>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20260228112822.4056354-1-christianshewitt@gmail.com>
References: <20260228112822.4056354-1-christianshewitt@gmail.com>
Subject: Re: [PATCH v2] drm/bridge: dw-hdmi-qp: fix multi-channel audio
 output
Message-Id: <177376854105.1901972.15709099301544999005.b4-ty@bootlin.com>
Date: Tue, 17 Mar 2026 18:29:01 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_102915_146119_C1121A24 
X-CRM114-Status: UNSURE (   7.00  )
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


On Sat, 28 Feb 2026 11:28:22 +0000, Christian Hewitt wrote:
> Channel Allocation (PB4) and Level Shift Information (PB5) are
> configured with values from PB1 and PB2 due to the wrong offset
> being used. This results in missing audio channels or incorrect
> speaker placement when playing multi-channel audio.
> 
> Use the correct offset to fix multi-channel audio output.
> 
> [...]

Applied, thanks!

[1/1] drm/bridge: dw-hdmi-qp: fix multi-channel audio output
      commit: cffcb42c57686e9a801dfcf37a3d0c62e51c1c3e

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
