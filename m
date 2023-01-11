Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A81EC5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yl1e1MhUnW1yJAOieJPG/DzNr/omrK2AWaaz2pfu8R0=; b=nLHK6PPcSowgo7
	S9v9RHOh5tULQdgUScD/zyP8j2ayvHd1fs40kjfwFGdw3RfvqcBSflBN9QcewU95LKSBhAZ4sCpR2
	FKpT9D/tJFoKrCORbhUjC8zaB0OqPC1vzpSo0nga/rWdN2LJqV4m+FAxgWZGY6FmK5B1okS1QNxYk
	oRXD7TiEr3Gukyetxzj9/5N5mZLRbxH2El1Ri1jnovxzR4FXAm+aMtzSOaUqs/Q0q2PNueelA8Qg9
	OnnJUhz84R44JtCKFWAyvx9whJmOzcv3MP1ZpyplqyRog88+xghrazSGPjJyfpynzAA+Mfv/8seQz
	Ggtob0HUWG7tsJ0lwnYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYgG-00AuPi-Iz; Wed, 11 Jan 2023 10:50:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYet-00AtXp-3x; Wed, 11 Jan 2023 10:48:40 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYem-0004Wz-J8; Wed, 11 Jan 2023 11:48:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	piotr.oniszczuk@gmail.com
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Enable wifi module AP6398s for rk3566 box demo
Date: Wed, 11 Jan 2023 11:48:24 +0100
Message-Id: <167343400177.2680857.5962541148894893657.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221229115111.3899793-1-andyshrk@163.com>
References: <20221229115043.3899733-1-andyshrk@163.co> <20221229115111.3899793-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024839_203674_7F992C72 
X-CRM114-Status: GOOD (  10.52  )
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

On Thu, 29 Dec 2022 19:51:11 +0800, Andy Yan wrote:
> There is a AP6398s wifi/bt module on this board.
> Fix the sdmmc1 dt node to make wifi work.
> 
> Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
> 
> 

Applied, thanks!

[2/2] arm64: dts: rockchip: Enable wifi module AP6398s for rk3566 box demo
      commit: 3eb403e4014e2db8b00acb147c0bf0abb2df15e2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
