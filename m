Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A07BDCE7AEB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 08:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYqQ1K5R/jEOfb4fBZFA3U1+PPDfNYaXUaJHxjf12kY=; b=vkwgfk53X2A4sC
	T28iFcoNs/ZBT7r5X1m8zHkGZ7ETgTfNh9b0lXF53cGrCkMFDOiiTaXhXETlF6HS3Pvd2AMePt1eR
	oJh20W+HxeiFEO49KUhSUJ16Y0OyVE0mxmxNQdRH5QqdnOPYdyWEzdiU6a25BZfQM//0YOeVTNmes
	pP5We48Wds1AYJk3fEpmnd7+NZCV6WeI61KTyO2IbNxfeV5jyZl7ZHMNwlG4bIXaWOL4yCHUkBu52
	2IwZ65Oiu/YTNrogxWa3k5U51aHp2+Ihu5rS9yHud1R0zH5kM0043FgeNrWjdw6rSjyEwrzfte/Es
	xssRNHWpvb0hj82bhmmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUgY-0000000BPkl-1qkH;
	Fri, 06 Sep 2024 08:51:18 +0000
Received: from mail-m1830.xmail.ntesmail.com ([45.195.18.30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smUW5-0000000BN7g-3Gmg;
	Fri, 06 Sep 2024 08:40:32 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.212.181])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 384107E01C9;
	Fri,  6 Sep 2024 16:40:08 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
Date: Fri,  6 Sep 2024 16:40:05 +0800
Message-Id: <20240906084005.74239-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240906045706.1004813-3-bigfoot@classfun.cn>
References: <20240906045706.1004813-3-bigfoot@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZHRkeVklJSEpMSRpCGUJOGFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVKQ0pZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVU
	tZBg++
X-HM-Tid: 0a91c67da43103a2kunm384107e01c9
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NUk6Ohw5ITIyNz4yCisvHRwN
	PAMwCh5VSlVKTElOTUpJS0tCSktJVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpJVUpDSllXWQgBWUFKTklINwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_014030_038618_872F5666 
X-CRM114-Status: UNSURE (   3.88  )
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

Hi Junhao,

> +      - description: Ariaboard Photonicat RK3568

This should match the model name.

> +        items:
> +          - const: ariaboard,photonicat
> +          - const: rockchip,rk3568
> +

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
