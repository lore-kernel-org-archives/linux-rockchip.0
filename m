Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F972C83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 07:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhXm3O8tLAowNJIPCLwdlfioAspHcVJb7Q48jV569E8=; b=QSjV31KMF8LeLg
	ID5Uv68xfvGfpc8zgj1DXXDc4twhIf/FmfOlJ0tCeSI4u3FIdBu/UEHJTGKM7QBXUHp3WRSTguDzV
	nrQCy5vPI6Qsek5pfrANTOILZX21Ic1xfuAd1dS2RRtgzF8pUBTA03WMak8DDaOzwP1ty0JNVhOFg
	o//kFN1/s69f592wnwCgTfywkhTppiZMR2WHySeU8Z47SAF51A9PxMFbWHVq3FvuSaacNDz4DVVGv
	7m28sMnjaHfoMS+p4HlqJ06p4G+hTWx59GKmOdF12CHIG+PS/5VHDZUsOiq3icOzHaM99BuWDucQW
	xioqjDqk7CpYwJk1L4kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucIu1-00000009Pd8-2Ow7;
	Thu, 17 Jul 2025 07:19:37 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucIcB-00000009MJb-121a;
	Thu, 17 Jul 2025 07:01:14 +0000
Received: from localhost.localdomain (unknown [119.122.214.181])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1c51d5e06;
	Thu, 17 Jul 2025 15:01:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: alchark@gmail.com,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	ziyao@disroot.org
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3528: Add CPU frequency scaling support
Date: Thu, 17 Jul 2025 15:00:06 +0800
Message-Id: <20250717070006.192765-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <b6f8f705-f661-46cf-9dda-6f18f8658622@kwiboo.se>
References: <b6f8f705-f661-46cf-9dda-6f18f8658622@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSB4dVk5NSEodTkIdS0IfTVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKT1VKQ0pZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVU
	pCS0tZBg++
X-HM-Tid: 0a98172fcc3d03a2kunm2d7d78618f0743
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nwg6Axw5IzE4EQMyDzVNPC4B
	LAMaCkNVSlVKTE5JTEhOTU1NTExMVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpPVUpDSllXWQgBWUFKTk9JNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_000111_465274_D7208533 
X-CRM114-Status: GOOD (  11.25  )
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

Hi Jonas,

> One possible difference here is that the actual CPU rate is controlled
> by a PVTPLL where TF-A will configure a osc ring-length based on the
> requested rate and Linux only configure the regulator voltage.
>
> I have no idea if the configuration made by TF-A will have any affect on
> power usage, but I suggest we keep all opp here because both TF-A and
> Linux is involved in configuring the CPU rate.
>
> The measured rate can typically be read from a PVTPLL status reg, it
> will be different depending on the ring-length, voltage and silicon
> quality for the rates >= 816 MHz.

Alexey suggested that we remove 408MHz, 600MHz and 816MHz from the
opp-table. Do you think it is acceptable to use 850mV for 1008MHz?

Thanks,
Chukun

--
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
