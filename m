Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FAE2C7EE33
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 11:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3zpGfR9bXXE7Q3Yv2bAJ90xwxeOoOc5Ci/YSApngtA=; b=u6HpSfKo/Sl4Aq
	NoRC+b6XAmGAkYe5AXAN+4yL7Ll6B17jLFMvKN3K5d1R1X85mMC2lIDnKv8ibctdSIGQh6UOzavX1
	RL9GbXbrhdk7qlx7bpS7CxuU4M9jxH4Hk/aSldyrbeYZmEZWAh17GVAs8gs9eAKXkWmMdPaqr7gCH
	VkkKZZJaveV0PG4jpdp/5/h9MfyAd8FuGqwCzmQrt3ZsLqL0LqekZf1wS3uvBoP+V6eDWn1lewwaI
	Q9LdK+5g6ApEcFpZ6SnrfdgnBU7aJa1t2dZGLDxNPnKYnVpqJaFWS2bF56/O1S4JHXLkE80nJQ0zi
	O1N743DNBRA4NGMsxFSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdbq-00000001njN-4BWy;
	Thu, 29 Aug 2024 11:46:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdaD-00000001nOE-26XL;
	Thu, 29 Aug 2024 11:44:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gdByyqrCMFgvacml27hDR8W7NQ3IgtrPsJfsE4eZigg=; b=aZPie9rtcXdbXkwle6SCZTKH7r
	jJT9vHeo6ufTOb1p87fdlh9GnlmJmfJQI1B4ArG1rXnUzTum91aV8Ur01xRSGJPXjnP6eth1G0dDi
	qj4psiqCE1Cr6konc/etNLycu97bJarFiCRn5CVnrauoWpeqm9uTh0kUJmw/a4kHf4A343vtoS3ma
	EtWuwVFrBrhc116dWH2P9zzZQgQOkJGjXZ/nOruMiPwmrGOCW/grHGSo63VFQ19ENf74G+w0oYOs0
	OW22AEU+YQgCezC4fe48VeGsT62KxmcYODOStqBnU+Fh/ceHxgpfJmoCYZS8ZbiZWeH1S1ib1WDaR
	LkbqeonA==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjda7-0003a1-7p; Thu, 29 Aug 2024 13:44:51 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v5 3/3] mmc: dw_mmc-rockchip: Add support for rk3576 SoCs
Date: Thu, 29 Aug 2024 13:46:05 +0200
Message-ID: <1746696.izSxrag8PF@diego>
In-Reply-To: <010201919997044d-c3a008d1-afbc-462f-a928-fc1ece785bdb-000000@eu-west-1.amazonses.com>
References: <20240828152446.42896-1-detlev.casanova@collabora.com>
 <010201919997044d-c3a008d1-afbc-462f-a928-fc1ece785bdb-000000@eu-west-1.amazonses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_044457_569944_C798F47C 
X-CRM114-Status: GOOD (  10.88  )
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

Am Mittwoch, 28. August 2024, 17:24:56 CEST schrieb Detlev Casanova:
> On rk3576 the tunable clocks are inside the controller itself, removing
> the need for the "ciu-drive" and "ciu-sample" clocks.
> 
> That makes it a new type of controller that has its own dt_parse function.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
