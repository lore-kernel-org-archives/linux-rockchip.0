Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C883C19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 07:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/OGBeEdppAyDrqy0ZZxQKFBfXItjkV/Aaxogb0rda4=; b=tveuC8MN2Cw6Lo
	NWg1rsBZ1rAJgge5l7cQ0f1q+NZ4sm+CA6GxDhzhxmWudl6kaYRKcDx5bgOHyLr+lukNulaWINiog
	NjlIun4RLurHIClVBjIgsOmFw+kOAPlAzbEisJ+cBhi39sjl/xPC1lNilxluhac+OdHD1lTkpjbJN
	qRQVgPlpvHaak9x9Jq82hlwGG7mcMU0DjQnpV7kXQ9833HkP9XqD5VANV3SkUFz282Lx6wbZRAi/X
	1HeKVSkbgBepsNKIZZyMjFSMvlrr1Z60NDKswbuF0JdnP0bVASvoabcVlMNe5M+Sj2DDJjS+HL7Ef
	hafGC5UrEAVoq/RfT+cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqRqm-0000000DPR5-3Roq;
	Fri, 07 Mar 2025 07:10:28 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqRqk-0000000DPPH-0A9B;
	Fri, 07 Mar 2025 07:10:27 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:3300:bb12:a0a3:40d:e82f])
	by smtp.qiye.163.com (Hmail) with ESMTP id d4f8d463;
	Fri, 7 Mar 2025 15:10:22 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Subject: Re: [PATCH v2 8/8] arm64: dts: rockchip: Enable SD-card interface on Radxa E20C
Date: Fri,  7 Mar 2025 15:10:20 +0800
Message-Id: <20250307071020.756277-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <5a0a7ce1-1dfb-4d19-8a1e-0d89d177f5b8@kwiboo.se>
References: <5a0a7ce1-1dfb-4d19-8a1e-0d89d177f5b8@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTU4eVhlNHRkaTU9JHkMdGFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUhIS0tBGRlKSUEaSxpIQU9LH0EeQ0kdWVdZFhoPEh
	UdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQktLWQY+
X-HM-Tid: 0a956f70dd1003a2kunmd4f8d463
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NVE6Hjo6MDICHDcIIjULGjVC
	CAIKCT9VSlVKTE9KSEhKT0lISUNCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSEhLS0EZGUpJQRpLGkhBT0sfQR5DSR1ZV1kIAVlBT0NCNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_231026_273544_F28099DF 
X-CRM114-Status: UNSURE (   7.65  )
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
Cc: detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, amadeus@jmu.edu.cn, krzk+dt@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, ziyao@disroot.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

> On the E20C the sdmmc controller is routed to a microSD card slot mainly
> intended for use with microSD-cards and should normally not need SDIO.
> 
> What card/adapter do you have inserted in the microSD card slot that
> requires use of SDIO instead of just SD or MMC? What is the use case you
> have that requires removal of no-sdio on E20C?

I inserted an sdio wifi module (via sdcard adapter) for testing.
Just out of curiosity :)

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
