Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6B2FC02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 11:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Js7LcstYGRAYuVhhagN4wFtFENX6nqOiruUMvQHP5mM=; b=EM0BoQqYQrfHuB
	bMOFfBPmv4ilr9e9QWS0sr2x9GYq2vs6GwuV7QXzkdOampYMabTmsLTpVb82N3e+AGuGNXbl2QiRd
	qA5YFslYLhrhyMC51h+fIr9zHowOtqYwkxI/b/wKO7fSJ6XScnqXoRvhXUbNJpSjXMxQ3HoZotF7G
	Y2v7ysTzSNy5iHWyycOiYMwqy6qvScxT3Eeg6h/u1RBpZYmmiVOaMVEVDJYbZ0xKw0Uqib6N/M8aA
	sPKGAreICJOh4d8ZMQukG7R+EGAUvrhJEhlxJodApLWvg+jIqm/UbdGHqaWa0At1BxPi2VlhD9pVV
	mHDzXJnxFEdXrKQKxHmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0Cs-000000069rh-0nWF;
	Thu, 06 Feb 2025 11:38:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfzcL-000000062sI-1awp;
	Thu, 06 Feb 2025 11:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=D3LmUU0Q2ZrkWgQMtaeBG5wHq/NIG8QQOgcqWRukFEE=; b=P5jy5GbfiFs3gAaSmJk3fFg8KL
	BxVlQzSQJ3e8uKC0XlMNvpmTSlouMRpg/Pq6RvmyYut4KOm4J35NmJrclON0aIk93bTF7X6XQlt5C
	W+pXfe3RGOLPfmul2IKSbuI3hgCrtK0LZThuJocj/Q1fUjhmzzdUg0SGITObA6gtMFsKGQUct6q0x
	pXbZ7ZP7FTnV8vQ0JBZDbZ001dxmT2gt2IXs2cMH9bOIiiim2OJV6AGoX42veLXLoL6PLU8S8lSMT
	yySLU/qsDmv0a2YlwBZVf0ZJ/Si78DRrtJw/QoRsJWPMZRqTPqunVrB8V1LUDK5u42iSWl2Ltk+h5
	zvMpoImw==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tfzc7-0008Kl-4B; Thu, 06 Feb 2025 12:00:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: (subset) [PATCH v7 0/2] Fix label name of hdptxphy for RK3588
Date: Thu,  6 Feb 2025 11:59:55 +0100
Message-ID: <173883958376.672361.2537697085076772562.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250206030330.680424-1-damon.ding@rock-chips.com>
References: <20250206030330.680424-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_030021_435103_81ACF9FB 
X-CRM114-Status: GOOD (  10.43  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 06 Feb 2025 11:03:28 +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=927102
> 
> The hdptxphy is a combo transmit-PHY for HDMI2.1 TMDS Link, FRL Link, DP
> and eDP Link. Therefore, it is better to name it hdptxphy0 other than
> hdptxphy_hdmi0, which will be referenced by both hdmi0 and edp0 nodes.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588 HDMI TX Controller
      commit: 81dde32e7266e7132076b886337bd29b4648e542

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
