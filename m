Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 975D9C88E50
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 06:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UAcD+g5EJGTvl5vD7JIJK3B3lEzPcueh3V9ac9T6UA=; b=kEOkUoeQIlQjih
	7qmsp6tB2GuhJSi7EEtXBYmYHX/tNDgvo8kWx6pd2d5QvyQnWN6Ocz6aW59Rg78bK3qne1AtvMHXm
	7nd8ud6lB7fMONwGo4OfM9PrVJ98yW+GfyvYUfn1xLaIe/5g1M0OwBrn5d72SMqUDrfGdw2a/Op6L
	6uL2wFAwfT+C5PQRM/p6gZHPDP666FlEvWAPSMP0pEnWunFUchJ8vimd+VXWKLwGw+CWR8qIFWP/2
	im0Ajit4B/YCX6AhtWNY9u1SeZUxW+YFlw4afAicnBlbKMWKTY9aYQvgxSWWxK2q6o2Iv3m9CzgZS
	QTIOatXjRMWpaODCghdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x60MY-00000002ShW-1N7r;
	Mon, 14 Sep 2026 06:40:22 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x60MT-00000002SgZ-2VUA;
	Mon, 14 Sep 2026 06:40:21 +0000
Received: from Vostro-3710.. (unknown [14.220.232.127])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4da3ed05c;
	Mon, 14 Sep 2026 14:40:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: devnull+hystericaldragons.proton.me@kernel.org
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	diederik@cknow-tech.com,
	heiko@sntech.de,
	jensenhuang@friendlyarm.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	razor1702@gmail.com
Subject: Re: [PATCH v4 4/4] arm64: dts: rockchip: Follow the DTS coding style in the NanoPi RK3528 devicetrees
Date: Mon, 14 Sep 2026 14:40:00 +0800
Message-Id: <20260914064000.2409837-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260911-r28s-upstream-v4-4-fb6c85f226d4@proton.me>
References: <20260911-r28s-upstream-v4-4-fb6c85f226d4@proton.me>
MIME-Version: 1.0
X-HM-Tid: 0aa09ea4f22e03a2kunm37188d382a2ce1
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGk0ZVkxKHR9LGUhOTh1KTVYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpJTFlXWRYaDxIVHRRZQVlPS0hVSktISk
	5MTlVKS0tVSkJLS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_234017_856824_2950A60F 
X-CRM114-Status: UNSURE (   4.18  )
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

> -		pinctrl-names = "default";
>  		pinctrl-0 = <&led1>, <&led_sys>;
> +		pinctrl-names = "default";

I don't think this change is useful.
Most devices are sorted this way:

pinctrl-names = "default";
pinctrl-0 = <&xxx>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
