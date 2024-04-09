Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 772FAC67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 03:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JQuq1WwA2wlhwOre1ivaR/gtWsf8iQbBB96RXfbhRo=; b=PGX7zjDhS6s5XQ
	IdaqPNjtt0c6EOxkZoT4+zGlgR7TKLeXx1FoyZg0llpXPk87H+rC5KddephLQ0IgfjwJqk6ta1THF
	06qCexyrRZnS/u9Z4epHRETpkzG+CefFIPnGlb3gDIFJbXTFnGLoJMZ4pyfYNONHvJ/r03TZ+uX8c
	OG3c6Z+3XWrMXm7p2NtlaLqD5jB+LIHywpGuHAhoydiiDV8bqop9S4GFiVSKAF07u0CvV8dDY5+Gr
	xeH6H22kWQXvgyVKbTDlXp8iS6g4oQKiQk31Ligg/gQbq2F8XK9Se4XVw6mHfDu2aoGsmqRytEL5b
	w+JIPCrrfJLDqpQAV1rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru29y-000000009fg-18yt;
	Tue, 09 Apr 2024 03:28:34 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru29t-000000009eh-3bf7;
	Tue, 09 Apr 2024 03:28:32 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:8f70:2795:b738:b1bf:b2bc])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 304D97E0129;
	Tue,  9 Apr 2024 11:28:09 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for rock-3a
Date: Tue,  9 Apr 2024 11:28:05 +0800
Message-Id: <20240409032805.19682-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <fb57172e-2517-498c-9412-76f62929d24a@kwiboo.se>
References: <fb57172e-2517-498c-9412-76f62929d24a@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTUMaVh9JQxhJQ0wZHUhKTlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0pBQx1MS0FJTEJOQRlMSENBGUoZHUEZSRkYWVdZFhoPEhUdFF
	lBWU9LSFVKSktDSEhVSktLVUtZBg++
X-HM-Tid: 0a8ec0e61adb03a2kunm304d97e0129
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PS46UTo6PzMISiEJPBQUTSNP
	Kw4KCTFVSlVKTEpJTUhISUNCQ0NLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBQx1MS0FJTEJOQRlMSENBGUoZHUEZSRkYWVdZCAFZQUpOSEM3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_202830_131184_859B0262 
X-CRM114-Status: UNSURE (   5.76  )
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

> I think the on-board spi nor flash support 104/108/133 mhz
> so 50 mhz is wrong in any case.

Thanks, I tested 104MHz on linux and it works fine. As for
133 MHz, only MX25U12835FZNI-08G supports it. And I didn't
find it support 108MHz in the datasheet of MX25U12835F.

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
