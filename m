Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3DB1C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 10:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMLUcX2A7+Jjyk18EIM9+lMET637IUwB8EL96PiFHUU=; b=lmCZ5TGHo5B5Qw
	EcpiuxPcOF84lvfc2/aYtf6CCwBgCKwhnNNvrpB4knog+fYipQQJZyc+2QbT9UNL029p4qQWU6aBI
	MF9ITGwTwUj5M+W2GaaPc4EC7dvg4C7ARVHouLP5OZDbF7J8hH1RmpgTLD9lnIjEs0eP9cbqnBPHC
	N/OKHu301cdezz6FGVoHPFi14OTPgRgiJDELe5s40aelG8J+qNLpChgxwJMl6fakSJFNb3kEoXtuy
	1A+Y4XzW29Y6AVFx55tAW934hTt4tR67C8nzxGX4S1fkdbuwysL+YYOquNAay+4ONWq7gil8ibKpk
	+tkhQaWoMltMP4bWBM+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kr0-0000000621N-2Hbh;
	Tue, 30 Apr 2024 10:36:54 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1kqx-000000061zr-1uJy;
	Tue, 30 Apr 2024 10:36:53 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:6c50:5089:6cd8:506a:48e6])
	by smtp.qiye.163.com (Hmail) with ESMTPA id CEF5A7E015B;
	Tue, 30 Apr 2024 18:36:21 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: krzk@kernel.org
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add Radxa ROCK 3C
Date: Tue, 30 Apr 2024 18:36:15 +0800
Message-Id: <20240430103615.1626648-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <d6004beb-2e7d-4f26-a202-0c5baabd4023@kernel.org>
References: <d6004beb-2e7d-4f26-a202-0c5baabd4023@kernel.org>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSh0aVk8ZHx1CTR1LGUpMH1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0tBTRhOS0FOS0NCQU0YH0NBTktNGkFPQx5NWVdZFhoPEhUdFF
	lBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Tid: 0a8f2e93b0dd03a2kunmcef5a7e015b
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ohw6MBw*FjNLHBk5Fg1OSx8P
	NSIaCSNVSlVKTEpPT0xISENJT0NKVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTRhOS0FOS0NCQU0YH0NBTktNGkFPQx5NWVdZCAFZQUpDTk03Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_033651_691866_6980C3D0 
X-CRM114-Status: UNSURE (   7.43  )
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

>> The Radxa ROCK 3C is a similar board to the
>> Radxa ROCK 3A with the Rockchip RK3566 SoC.
>> Add devicetree binding documentation for it.

> For future:
>
> Please wrap commit message according to Linux coding style / submission
> process (neither too early nor over the limit)

Should I compress these three lines into two?

> There was some big renaming of these boards. I assume you are using
> correct naming?

According to the link below, the model name is now correct:
https://lore.kernel.org/lkml/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
