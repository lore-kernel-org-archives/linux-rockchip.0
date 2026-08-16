Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED48C5B572
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2026 11:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Spkj4OYJY83xu5+kUP3BOiIoRijg1dOM041/IYPNMq0=; b=qDpIBQ1UuOHwcw
	KpIHbZLj5TvcGg/gbroeUdLTL/2KHoRwsxEQkAcv0vVy5vkddeucI0Sl1Lv/VVZnhbOQCAaAynNjt
	oGaW0XV11OOeRKgMS8CYjfp0iBzz0FsPhw/Sq53jrygp/8PglWYY3ztEiCjuJ3LqHL9/U6gokkr9e
	S+2oiqB1oX8m7KiWA5Urk1KtYE+Z2Tv3Lju9QETAW7tPE//6fmOCDliPxHrwdop+4vW9GurShSK08
	1SLUroAK4JXK/70Eaw5UOsgrRpAUOYEl49ASqeL1Zo/MdIdfYCFjUo6pwwS8RR0bF4vU2mXyO9wGJ
	gCAQ66+lFcUz20g0JRTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvZJT-00000004jJQ-3oHw;
	Sun, 16 Aug 2026 11:46:03 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvZJR-00000004jIm-2sfH;
	Sun, 16 Aug 2026 11:46:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2CDF5BF955;
	Sun, 16 Aug 2026 14:45:44 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1786880757; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=jc96mxmG5lKaawG+ldy1b/MyHnPfRmSyj6w7fW+V8nE=;
	b=WGjL7sglgmjOlqBkToICXDxrXVgFe2epa5glSZBr561V5iYakoM4E5RDIzAGzqPXmDqHXT
	cs9ap10YICUaiQUVVtrNGlXxFoMd606h/RLNvaz92K4AQVJYykUA2FKCzi5v2oG14C0mhE
	Il2SZp2Iv8cwyF+OMPND3rn6YETClrPjYVAjG2d6ynFv1XBhaQNQMPjjhR2F9Hsb2uc3s8
	Q6I09PRlKwcMgmjNiIs5eS8WXp37I/YvvYluRogeaMu9aY5qfP5yrKqX7BMh/MhnBoMRsR
	GdLM5qFRFFqUXz2YCcyHQrkJgKJqm/JqdPnLDCQKsaY/pLfSooqWP0L9yvMtZQ==
From: Vladislav Leonov <vlad@zlab.su>
To: jic23@kernel.org
Cc: andy@kernel.org,
	dlechner@baylibre.com,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	nuno.sa@analog.com,
	sjg@chromium.org,
	vlad@zlab.su
Subject: Re: [PATCH] iio: adc: rockchip_saradc: Add support for RV1106
Date: Sun, 16 Aug 2026 14:45:44 +0300
Message-ID: <20260816114544.35502-1-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260815022036.7c47585e@jic23-huawei>
References: <20260815022036.7c47585e@jic23-huawei>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_044601_930145_6503D04A 
X-CRM114-Status: UNSURE (   4.66  )
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

Hi Jonathan,

Sent a separate patch for the dt-binding fix:

  https://lore.kernel.org/all/20260816113636.33635-1-vlad@zlab.su

Regards,
Vladislav

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
