Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058A4C7EE33
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 11:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oDLenWcjcXjotQxnf+F4M8QoSN9LRlCUI6F7Vc1TYo=; b=uMCC8nE+i4msJF
	n/TRGvgkMSMmwmlNarPNcusihfT9Cor0IgxevY50ePgMKr3LXYQ//Kk3szkpj1uMS83Qsb5Df9B6+
	Tt3xYzu6OUV/MIPNlK9dMTqik4I9tgg3h9SSyIQhfetMJzozduNRHLKkKWySpjuPS+92YLH5lhny4
	AeS1ZQhtr7j3qDdR8faQ979xnawoipo2EwvQc5QC1SC12030QAQg8FFV9P7ZJLGeqTI2x9Y8Qexdw
	fbgZclm8JTL4CDohvdJrGbs97BuP83BL0/lDLMtYnBHiCiYzszDry3LVbVMN7nbSAodr8uL5VrDjp
	EzLVTaEMfZlP//jCo3ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdX1-00000001mbo-3UyM;
	Thu, 29 Aug 2024 11:41:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdWA-00000001mUu-0XaO;
	Thu, 29 Aug 2024 11:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vffnevxmTo7hNckZnJnx5YQo6t8J0qHcb2yiWeO+Uk8=; b=feW1dFfrXYN8IpusNEi38wBDIJ
	YMkD1E977vq8flu4X4fhhQZKsXFHHVh8xbj+MeTQ0RowQQjhEJa+V9g4oRfVtmvjH2ChBrrf+Xqfp
	zL+7IFauUGi7nfDkNXAUABAGsZp1Cc7RktJCOmVtVSDpWAP6RmryJ7+DVaa2zDbWHg2YiAAx/zdWy
	Bg/D1Uvl3vR78wVrypEm7fvoVLioqiBwEqVqmmDKOAirr+kZLZDxjA/8Fr1EIPzYPv7gZegwp8A5h
	dRt5QYzYb4sJuhhLTaeupPwMs1pXG8mof1J11YY1wzkW1kIb0tDVJcU6iMKvwiTtvx8edihTfFewb
	odxHuTkw==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjdW3-0003YD-Nm; Thu, 29 Aug 2024 13:40:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v5 2/3] mmc: dw_mmc-rockchip: Add internal phase support
Date: Thu, 29 Aug 2024 13:41:56 +0200
Message-ID: <2355828.22IY78Rhhi@diego>
In-Reply-To: <010201919996fdae-8a9f843e-00a8-4131-98bf-a9da4ed04bfd-000000@eu-west-1.amazonses.com>
References: <20240828152446.42896-1-detlev.casanova@collabora.com>
 <010201919996fdae-8a9f843e-00a8-4131-98bf-a9da4ed04bfd-000000@eu-west-1.amazonses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_044046_198812_4F1368D9 
X-CRM114-Status: GOOD (  13.88  )
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

Am Mittwoch, 28. August 2024, 17:24:55 CEST schrieb Detlev Casanova:
> From: Shawn Lin <shawn.lin@rock-chips.com>
> 
> Some Rockchip devices put the phase settings into the dw_mmc controller.
> 
> When the feature is present, the ciu-drive and ciu-sample clocks are
> not used and the phase configuration is done directly through the mmc
> controller.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Acked-by: Shawn Lin <shawn.lin@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
