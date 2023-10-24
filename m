Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47637C25B47
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 19:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWkAxv3zOcZ58wgk7QQFe/9n7Y0ZJUUne7+M6kcP5Oo=; b=t1mgtiGngTQJUz
	dUD1Z/7xD3O5fn8ZZ7bYdJJvkWKiYaHlazd3La9AoDzrN9pnQNBmweXsgdb7aynNfjmWCEfSYhIoy
	zxsN2JjbqPWawB5XkUHPw8ViPQJuhGckuW0/3/bIPuYgyZJp4rvMa4rLoAfJKfvkPasb3di1+2EPh
	X6ugyuUp81iNqGDjktdJFdD0i3XAim3FXTvjxVymBAQt2+3qE5FTH4DHLf5nmt+EXrcs1xl0Us+w5
	bjpPAkacwLjU5uBvBT1z5x6+dBQ4R4bKpixjPa39vjwgFk8Rk9GpOoDkNjnBVTJTGy3Vzr37uFCah
	30v+uYpTzOwXkQgyB5sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNOI-00Am3v-33;
	Tue, 24 Oct 2023 19:48:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNOG-00Am3G-2i
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Oct 2023 19:48:37 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qvNO9-0007MI-0s; Tue, 24 Oct 2023 21:48:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org,
	Andy Yan <andyshrk@163.com>,
	jonas@kwiboo.se,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	s.hauer@pengutronix.de,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	sebastian.reichel@collabora.com,
	hjc@rock-chips.com
Subject: Re: [PATCH v3 0/4] Add more format for vop2 driver
Date: Tue, 24 Oct 2023 21:48:25 +0200
Message-Id: <169817682321.1800793.10899847189695496583.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018094122.2475668-1-andyshrk@163.com>
References: <20231018094122.2475668-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_124836_877127_973BE43E 
X-CRM114-Status: GOOD (  11.46  )
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

On Wed, 18 Oct 2023 17:41:22 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> This is a preparation for the upcoming support for rk3588 vop.
> 
> Patch 1 make the bpp calculation covery more format
> Patch 2 remove formats that are unsupported by cluster windows
> Patch 3 add more formats
> Patch 4 is a format table rename
> 
> [...]

Applied, thanks!

[1/4] drm/rockchip: fix vop format bpp calculation
      commit: 45ad07c7053df0b67e13d8deb574920d11651fb2
[2/4] drm/rockchip: remove the unsupported format of vop2 cluster window
      commit: 01d5a75370a60c3a8d691347ae6ebb2a9f8dc44a
[3/4] drm/rockchip: Add more format supported by vop2
      commit: bfd8a5c228fa3bb97884f77529c09e8745da08b9
[4/4] drm/rockchip: rename windows format for vop2
      commit: 215737e37d07ade8952048339e37aec6c6f82223

I've adapted the patch subjects slightly to match the current
  drm/rockchip: vop: ...
  drm/rockchip: vop2: ...
formats.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
