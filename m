Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 446BFC87FCF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 06:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nb+37a401vORr+Im2iypoULwZWel/DZX+ejMlQ27Wjg=; b=f002ARTX7Tg9+T
	gsBBnJoxkA/bIQXHms1yqU/CyrxReBL+DnA7OwZ2X/8l/bJFuqDbBj0sa+JkFcQdOHOLAsyyKtDSf
	QHwQv80hjvCr6MkEKspyk6byrjrlkICgq8X3ATuR1APyXfjdXMlYv4DPx9A9J9zOdSP4QsXb75hpB
	ZO8MyMOwqbGirihwQbnmSubq56R6/0IFs+iOpADImtnQjbekQYHq8M8WJ5Z2+W/Bz9C2vMCS6d8q/
	Ccc1jruKgHsj5EtWjfo/MOIXezWaW4njxBIAHZp+d/HUfj5EEw8JMI/OHJ+fSoimELdAqS0YLvDTC
	LkDzsYsWY3KcDpK3wfWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujuAx-0000000HNUI-1nlJ;
	Thu, 07 Aug 2025 06:32:31 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uju9N-0000000HNOZ-1xQl;
	Thu, 07 Aug 2025 06:30:55 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.212.7])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1e971c1a0;
	Thu, 7 Aug 2025 14:30:44 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: ziyao@disroot.org
Subject: Re: [PATCH v5 5/6] phy: rockchip: naneng-combphy: Add RK3528 support
Date: Thu,  7 Aug 2025 14:30:36 +0800
Message-Id: <20250807063036.480766-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250728102947.38984-7-ziyao@disroot.org>
References: <20250728102947.38984-7-ziyao@disroot.org>
MIME-Version: 1.0
X-HM-Tid: 0a98833990b803a2kunm2e2160d534958b
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZS09DVh0dSRhNTU1NTE9IQlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVMWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_233053_695435_6455DAB6 
X-CRM114-Status: UNSURE (   4.90  )
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
Cc: kishon@kernel.org, detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, amadeus@jmu.edu.cn, shresthprasad7@gmail.com, neil.armstrong@linaro.org, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

> Rockchip RK3528 integrates one naneng-combphy that is able to operate in
> PCIe and USB3 mode. The control logic is similar to previous variants of
> naneng-combphy but the register layout is apperantly different from the
> RK3568 one.

Is this a typo? apperantly -> apparently

Thanks,
Chukun

--
2.25.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
