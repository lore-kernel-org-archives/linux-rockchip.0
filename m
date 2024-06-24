Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2748AC2BD05
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 10:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSQ+Ml3N5w2HfCWC0Qr9OLmmJ10wujLFfGtyfVMU2TQ=; b=BNBE7I/uIHH8k5
	sru/B18LzWAVNI0evuSDbvxeZ5E2iVOMGWsQdNi/cfQVXq4Eno0fyNmWzvomr/GFwn+RUtSV45Ifw
	0NVeiE4GpgU5Hp6naGXfNPRX9hla6tSjIYazQapOAJKtqBhiV4eohQuzjT/oSqVUVkTrMZkPeKS+M
	8Hc5nRgor2IIZAjwmohaJRef50V46VjyMeqp0XBt2pK0kxpIub82DwAboNO2Nz0xvvpE23drRRdKa
	arCeemiS+Vv/Gmd6EtcyH5RHN8yvGBzIgY75nan7YUKYSuTWLQ0mGmDAYI8Z02aQu/q/LyFZRrcHR
	XPw89F9BHtHy7ZIXGS1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLgVN-0000000GL5Y-0udo;
	Mon, 24 Jun 2024 10:00:57 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLgVK-0000000GL4H-2ILy
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 10:00:56 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:9890:8d4d:c2cd:951:5652])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 522757E01AD;
	Mon, 24 Jun 2024 18:00:22 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	chris.obbard@collabora.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
Date: Mon, 24 Jun 2024 18:00:19 +0800
Message-Id: <20240624100019.80529-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
References: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSU1JVktMSx1ISUwYTxkYH1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUJDQktBQx9PH0EYSRgfQUJOSkFOTU5JWVdZFhoPEh
	UdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQY+
X-HM-Tid: 0a9049b0812d03a2kunm522757e01ad
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mk06NBw*IjNMDTMOTB4rVjov
	PRNPChNVSlVKTEpCSUlISUlJQklDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBQkNCS0FDH08fQRhJGB9BQk5KQU5NTklZV1kIAVlBSk5NQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_030054_798491_9F008273 
X-CRM114-Status: UNSURE (   5.01  )
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
> I see, I'll remove fixes tag in v2.
> btw, is this change reasonable(acceptable)?

I think there's no problem and it's acceptable. It would be better
if you could give examples of flash chips that might be used.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
