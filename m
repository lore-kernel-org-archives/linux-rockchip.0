Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 593BFC28B2E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 10:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek4RjahBVGC41kdjdFUISiEIaA4MGQ+Sl5whBB7n6b0=; b=iSX4dX6R07qy6S
	c0ZexHeXOiyL6euXywSIfxRMKPM+6b5gJJra2FhZUigwb7ObuFL23vJJ9XJdNaKf4KUM4dKpt9oC9
	FKjFlhuSwNGS/o/zvxo8YOweFP06He21qHF1303jD+12CCYKwBTraWqeifeZy46W1oP5tWp2NWqoJ
	v8kjqgmSIPoiMwbQNETbkW1ZDF6t7AND/4XzCDgNZ9Jw/AlWzg0T/8NWM6OCAXsQNxAiIgiA1sLnB
	ihqfTPimJLkEj9Sv1Wynchf+zbylNMG1spcacCiN7ob7k5FXv8KaYk5swUmjwTJbnHEyRwAR4k3Ru
	ctb2axV/FyWIfZwaNpsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trwW2-00000005FNP-03i4;
	Tue, 11 Mar 2025 10:07:14 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trwUP-00000005F7Q-0zqB;
	Tue, 11 Mar 2025 10:05:34 +0000
Received: from localhost.localdomain (unknown [119.122.215.89])
	by smtp.qiye.163.com (Hmail) with ESMTP id de30fc18;
	Tue, 11 Mar 2025 18:00:20 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: kever.yang@rock-chips.com
Cc: frank.wang@rock-chips.com,
	heiko@sntech.de,
	kishon@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	vkoul@kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 2/2] phy: rockchip: inno-usb2: add usb2 phy support for rk3562
Date: Tue, 11 Mar 2025 18:00:16 +0800
Message-Id: <20250311100016.841525-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241224094240.3817261-2-kever.yang@rock-chips.com>
References: <20241224094240.3817261-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTkpPVkkfQ0xJGkpNGkMYTFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVDQllXWRYaDxIVHRRZQVlPS0hVSktJT09PS1VKS0tVS1
	kG
X-HM-Tid: 0a9584a5ea7403a2kunmde30fc18
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NhQ6Hgw*NjJNCBkeHwk1Ny4w
	LxwKCTZVSlVKTE9KTUNMSUlJS0xPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpOVUNCWVdZCAFZQU9ITDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_030533_461423_5DB9FD78 
X-CRM114-Status: UNSURE (   4.99  )
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

> This adds vbus detection function control and make the below tuning
> to enhance the usb2-phy SQ for RK3562 SoC.
>  - enable pre-emphasis during non-chirp phase
>  - set HS eye height to 425mv
>  - turn off differential receiver by default to save power

This is implemented by the rk3562_usb2phy_tuning function. Since
this is missing, I think the commit message needs to be changed.

Thanks,
Chukun

--
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
