Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3D0AC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 20:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pI8leinTzekIKSpNCluKl7ws1n6ix70KtElcy++qA8E=; b=KPWxUZQczbmf6d
	NK5IcCv8EIQYnb8075AC1Oaqik/Ewcs78c7N0aa33nPUvh3legjQUwoSqx2PGr72PVyzPns46JVL/
	a3SqjXYpIm590p5gIpjgdB74sOmr1Na9w0L1449bUvIs/pfqTLxnzVErtE3lBnySLZSkkd9XHQy3J
	0TgUwi0WnWm60UjbSzx8/O+RM7woV3OxgZulv+HNme+vml/IPEWgJQUuD528HGix5zYj0j09t4/vk
	y1/mutpVrQ+NA9IeGJM8JVcpq3kM34QUpBNVv5OEGUnLS41ZgD90Ehz+nZYCQmcLisV2lc5S2VajK
	ZF7+uI+wrhDyIhA6AGWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqKWs-004sWf-V9; Sun, 15 May 2022 20:07:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqKWq-004sWD-O6; Sun, 15 May 2022 20:07:49 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nqKWh-00069N-AL; Sun, 15 May 2022 22:07:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Dan Carpenter <dan.carpenter@oracle.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>,
 kernel-janitors@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-arm-kernel@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] drm/rockchip: vop2: unlock on error path in
 vop2_crtc_atomic_enable()
Date: Sun, 15 May 2022 22:07:37 +0200
Message-Id: <165264524621.2584623.18007054358707398354.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <YnjZQRV9lpub2ET8@kili>
References: <YnjZQRV9lpub2ET8@kili>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_130748_805398_509626D6 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, 9 May 2022 12:05:05 +0300, Dan Carpenter wrote:
> This error path needs an unlock before returning.

Applied, thanks!

[1/1] drm/rockchip: vop2: unlock on error path in vop2_crtc_atomic_enable()
      commit: 98526c5bbe3267d447ddd076b685439e3e1396c6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
