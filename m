Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9C78C636C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 22:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+Ku8CTw57NmD4EpdseEazZji3ERsi6MU168ueYW0Xc=; b=17mMipcspCkgqK
	Nzy4KMPS1Sss4jkw8Xc/k9XGT1yWhf++7VcVHd4yxJ9PGG7hRL6OKV87y6yu0/7v3tDddWkia+IN/
	0yHMc/hzoeXHIG+J5VI063T5+FNw95P+bkI12XI7iwpGqgAwJQ0RAgPTLLtcyRzYnetktbToB+Fe3
	W2Mjk5HblGr0T3bgjXW7NKUul+OQbRSsEezoN2W6ABfJ1d0e/dRQy1Y5rkF9w164TplFCOII7ghH/
	08ZNBn4wkjl9vEba1uVsVUinavCYVjKHGFjjpULV9mF3OCXVncgQRtl78sGed2/VlyQR9RGU/sGKq
	JWjIxau0SUz4VWtvW8sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI7K-0000000H0HP-2VHj;
	Sun, 22 Feb 2026 22:39:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuI6p-0000000Gzuh-25IB;
	Sun, 22 Feb 2026 22:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HkoheiRsOgkGH0y6gauMEvPaM5M/sNlnyx5re4y4PJs=; b=gpaeyFySadCynK+2NX5d3KON33
	L95Z3MH8w0BPO8BTXwJxg5JcQmaqKkwslXa4Cb+4UX3aGg/vujLXU1HtWnsSpqeWdw9/yQQgFQ/uE
	ITNwh4ipkA1rq+y6vdWFmeHCwg3Bl23pOBNGEEfnWJhjwu4mjEAHz5F1Q1XC5QYtaYUCB+gTqZMKn
	WbFcS90JweO9+FwHt7WoFBXkrH6ttcdXxCkgzeCCTWbXCf8St4Lu3gFB+6ugPdlXwwhOZbZIhXJds
	1Y+BZiMc6V7/iyd2UwGEP6jG0h4DCk2TbHajeYUt9jVwsgZ4M14KeyAlf1QMYDCgS9y+rKB/TuY8h
	UHbSvr4Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: neil.armstrong@linaro.org,
	dianders@chromium.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	jesszhan0024@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/4] Properly support FriendlyElec HD702E
Date: Sun, 22 Feb 2026 23:39:11 +0100
Message-ID: <177179992303.1861430.2329914012385519373.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1769191673.git.robin.murphy@arm.com>
References: <cover.1769191673.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_143927_554150_AF1F73E6 
X-CRM114-Status: UNSURE (   8.95  )
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


On Fri, 23 Jan 2026 19:22:19 +0000, Robin Murphy wrote:
> v1: https://lore.kernel.org/linux-rockchip/cover.1767111804.git.robin.murphy@arm.com/
> 
> Changelogs in the patches - fingers crossed this is good to go now,
> thanks all for the acks and reviews.
> 
> Cheers,
> Robin.
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: rockchip: Move RK3399 eDP pinctrl to boards
      commit: 638fa970ac669e5d0fb2c5cc0bea3d4443299ac6
[4/4] arm64: dts: rockchip: Add overlay for FriendlyElec HD702E
      commit: 25afddad23b8e91fcff625756e51a805e288ab38

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
