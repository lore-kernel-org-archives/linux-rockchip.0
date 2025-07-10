Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48A87C83F1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bk33oEP8LrpmZN5lUprDDLrrA1upNvAXGi8NLym+wO8=; b=ulTVEms/0UvSN9
	XTSkCH/k9ALHbDDP4sbNTcYL+DIYmyEqZZqU+qG8yf8+IWvCBLqa2mGcVLpqgK8J8y23u3GQ+baPN
	MsI6cjF5X6U5oYAJHHRUu27rx4kEDfNxu9le+ip033y9Q506784Xu0rV+8Zi+U37X7CmZG0UaUSeY
	JR2FKsiWK3hhXJSBXCV0sESQhJ8/Oi1S2SfApd7DKsOVZ7xfPYm9aRhonxrPP6lm0ls7wJYxD6grR
	sxVY1WN0wONPfDY6GoAa8W0b1BuxoEv481j5MbQJV4C9ikd2Hy9BNDvVk8DOv7tTWXbWGbla+hb6I
	2/apBUlZVlpVw7QWgi2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpG0-0000000Bbf7-2oc3;
	Thu, 10 Jul 2025 11:16:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnZ0-0000000BLFS-3Stc;
	Thu, 10 Jul 2025 09:27:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pQpm6dtBzU/F8AceyiLgn+Hz9N7iQXKzE8ZIvBelGik=; b=2CKFRSu0GzQRHXUr9+xU8MpduU
	LAYdGhy+1ryBZXMsgkghkUedsp1FFJqEEGsErsPc175ncTWS8V+cnqM0H/aklkyIQClYzEv5DqSFu
	sRcH0nyc8jHhjjXzWkIan/ei0c+9MM1nEbACBMm6TknxQOXW/bC3E6CDCWoPO7179zJmprHVlzopb
	/XduZjD9hdm+LRIKozpcHyjS2y9YnFJqRwntZ7gtJb4gqyzxcKOgwu9UU7iZ8Ry621/aG/Qpo5mVK
	OdGhUUU4pFWyl+kyHPPD7hhovFoCC6dijP+lyqlMlFpoNspV/CUiF0IYEAyQtapWYzVbitgkjU0ZE
	FugU+b5Q==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZnYn-0003fo-27; Thu, 10 Jul 2025 11:27:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	didi.debian@cknow.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable mipi dsi on rk3568-evb1-v10
Date: Thu, 10 Jul 2025 11:27:12 +0200
Message-ID: <175213961999.1887379.12088810918862744126.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250706113831.330799-1-andyshrk@163.com>
References: <20250706113831.330799-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_022734_861938_20BCB667 
X-CRM114-Status: UNSURE (   9.15  )
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


On Sun, 06 Jul 2025 19:38:24 +0800, Andy Yan wrote:
> Enable the w552793baa 1080x1920 dsi panel on rk3568 evb1.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable mipi dsi on rk3568-evb1-v10
      commit: 06b29cb849bc0437edd68373a1e8152f0bcd30e7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
