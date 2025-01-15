Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8457AC02180
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jan 2025 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbtsDIHlRUbUBXYp4s9x9T4meAqkXnALRovGpBxvBYA=; b=lOxosc9/yxf8hV
	JDNYXAFn6rYioadKpbP8tv0+jk+iuTasY3ACyJmLGCkaVsFqW9FiqMt8FKbtcbEYujdsqhRThuBa6
	WNrxwjywcf697XGayCDsBiCJtGNsLOGfssyH9bKf8aLLcKLu9H/v3jnwvpnulcUUwOTV5qC68nCHu
	vkqD8jPkpTBkB+HKgbzBr7ke5hgd8OeUsdM5vD2lk5Ebl1qUxstlr9VyOTKs/MqPJOcZFypEE4p0r
	xbk/s0smZ3K/jt4m7Pl2AZZFMrlASRoQ1mq2MsF1HwKshiPBl8mV9Vz+TW8nqIK+PunzlBEcM5eK/
	lv+8j1A/VOYzB9Qpe4bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXuZk-0000000AZRJ-3y2U;
	Wed, 15 Jan 2025 04:00:16 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXuZf-0000000AZPr-2RgX;
	Wed, 15 Jan 2025 04:00:14 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.212.126])
	by smtp.qiye.163.com (Hmail) with ESMTP id 8b92a360;
	Wed, 15 Jan 2025 12:00:06 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	heiko@sntech.de,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	p.zabel@pengutronix.de,
	vkoul@kernel.org
Subject: Re: [PATCH v2 1/1] phy: rockchip: naneng-combphy: compatible reset with old DT
Date: Wed, 15 Jan 2025 12:00:03 +0800
Message-Id: <20250115040003.29306-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <df8e0ff8-355b-4c18-9349-0f04ae16e01b@kwiboo.se>
References: <df8e0ff8-355b-4c18-9349-0f04ae16e01b@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGkJKVhgaH08aGR4fS0lDGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVKSU1ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVU
	tZBg++
X-HM-Tid: 0a94681e573303a2kunm8b92a360
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjY6HQw6HzITOU4oED8fDkMd
	ED8KCj1VSlVKTEhNQkpITUtMSElCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpJVUpJTVlXWQgBWUFITE83Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_200011_846150_3A890522 
X-CRM114-Status: UNSURE (   5.11  )
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

Hi,
> The commit fbcbffbac994 ("phy: rockchip: naneng-combphy: fix phy reset")
> broke backwards compatibly with old DTs and has already been backported
> breaking i.e. PCIe and USB on Rockchip RK356x boards on stable and
> longterm kernels.

The dts changes have been merged into v6.13-rc7,
maybe it can be sent to linux-stable.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
