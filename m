Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21B6BEDE9AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 18:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWH4rF0Ip9Gd5BSHgpQKbn20RuvxKefsNlG2jGAlaNw=; b=kf6pYJkfG74C+Q
	7LtV8MG17xzxX3vSV2HK/rfxOgm+MOXZ8OZg+rojuNjb66JFaAiV8GYNcOQwAuVxN+2gEkQRYas5I
	z42RPbssn6ckgdwFCexbbJ+rz4riJb0VMM3Jkl0ImreJxijVqgcOer/m8A32W4DXDOW2qifB40wNM
	BQiPrC52LDBiY5M6ZX4SbI3uo/xOIUOA5x0kReeJlvkPU2WehCKRDa3FLmjmrT6H16+0njywJ40rO
	HoJ2MINCuo81Or7BY4YeyLbRm2Poz+rBVM5byraH4iebqnhJyU+t+8wazFwJcqZGsROdh7ZG+zYKF
	EKdkUxKxNDCleQ/sIypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Tl-00000006j31-0zC1;
	Tue, 10 Sep 2024 18:20:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Ti-00000006j2R-3iQh
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 18:20:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gqYeL+uQ8IfNvUhz5bkEnDyhpOy/MIoDCVXGyrUchP8=; b=io0B/oabjK/eKtPbO/ZPyAfsOz
	G1EtPG88uUIaHaM/tp3KON/XlE/fx9T1QloPsxey1KqLOM4TXZC4Qph4Shzoy2mq8en2xUR+zuFvV
	KOzWimEkrCSWruJT+014J7peEyMy8QX/d+iibnN4M48ffebW34aCdOU55y/AW+8ZAD8tsoraMTa+r
	Ws/VaGOiQTDxn/XVY4Z8exl1ohcxqplx35gIiy/JVUN5K1apDMFxYmlcsS6rT8A28YFZuLaWRu/96
	u7Vk09NpEGtq2j9owmXtMzodJSwb65z9Btx/upAOWfG4ntcT2RWdr8l7EHZohA8sV1RsIIFS74No+
	ttYjVC5g==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1so5Te-0007Jy-92; Tue, 10 Sep 2024 20:20:34 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 =?ISO-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v1 2/6] pmdomain: rockchip: cleanup mutex handling in
 rockchip_pd_power
Date: Tue, 10 Sep 2024 20:23:02 +0200
Message-ID: <4864529.A9s0UXYOmP@diego>
In-Reply-To: <20240910180530.47194-3-sebastian.reichel@collabora.com>
References: <20240910180530.47194-1-sebastian.reichel@collabora.com>
 <20240910180530.47194-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_112038_962462_9FF22ECA 
X-CRM114-Status: GOOD (  10.29  )
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

Am Dienstag, 10. September 2024, 19:57:11 CEST schrieb Sebastian Reichel:
> Use the cleanup infrastructure to handle the mutex, which
> slightly improve code readability for this function.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

I guess you could make the guard patch the 1st to not add and then
remove the mutex_unlock in the "forward errors" patch.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
