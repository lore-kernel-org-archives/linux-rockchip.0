Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9D42CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaOf3qinpqhy7ko7uP0AL8b3Ts3+Jno788NrS7ZVsB0=; b=STwwhCc+NARfrt
	0B734b0srnHW3mQ7139B074HscPnxGScuGSN9T9we2PsLrfln0Ki9bwcxlCZwAx1dgplIhMukhLlx
	hMXm+AHb69+niaOH2v+zTrpOSl2uLLGiqLnn/FaIvOUsqk2KO1jh1tttMlQHxNHkPgR3UhN1d2Acy
	S7kaKhinQCGBhTTC3NTRONFPilx+LjHGUoBQF/gp9u9iG+5udXKpyP00DB0crQBfDJTLAjmPKsLqH
	UDPXCVSu/QgIPiIMEQXiUrr4rtXdaBHuyHrioHWtLaCxL3hQ6SDh/PkN+sY2fxsqmeHiNz0HiV3tH
	DM0VZ6/gcUKb8RxSUwLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snEFW-0000000GUhp-0DaK;
	Sun, 08 Sep 2024 09:30:26 +0000
Received: from mail-m6032.netease.com ([210.79.60.32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snEFS-0000000GUhB-19Ru;
	Sun, 08 Sep 2024 09:30:24 +0000
Received: from amadeus-Vostro-3710.lan (unknown [58.61.141.10])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 24CA27E011A;
	Sun,  8 Sep 2024 17:30:06 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: linux-arm-kernel@lists.infradead.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-rtc@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux@roeck-us.net,
	wim@linux-watchdog.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 0/9] Introduce Photonicat power management MCU driver
Date: Sun,  8 Sep 2024 17:30:02 +0800
Message-Id: <20240908093002.26317-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTU0dVk1KTkkfGUhOThodTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVSktZV1kWGg8SFR0UWUFZT0tIVUpLSUJNSEpVSktLVUtZBg
	++
X-HM-Tid: 0a91d0f81ae203a2kunm24ca27e011a
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PAg6HRw*KzIxATIoECo8PDRC
	TD0KCT5VSlVKTElOTENMQ0tNQ0JKVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPSlVKS1lXWQgBWUFKTE1NNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_023022_542252_10938B26 
X-CRM114-Status: UNSURE (   4.46  )
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

> Initial support for the power management MCU in the Ariaboard Photonicat
> This patch series depends on Add support for Ariaboard Photonicat RK3568 [1]

The official website says it's "Renesas RA2E1 cortex M23 ultra-low power MCU"
Perhaps renaming the 'Photonicat MCU' to 'Renesas RA2E1 MCU' would be better?

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
