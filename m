Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FFB3CD1297
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJ5OQrCTskqhouWlj7hv1LcBHo5REInPV5TtF2OGa84=; b=2urtQMNJ3FvuBb
	Ti1OYvOYFcLhP2Tnp8vsYDv3QpOVUURRSC+UYwjmYesHQu/eCfxPlWu+oovD6RI/o9cp4EPbpghfy
	iQ4Q8KYzTKaNVWiB7uAwYCjb2EEQlL520NKPZpiaqgcH0wDl0R7mF71nO+5wMlCtEHqTa/IWBvSim
	r568/87CJQHrkMIDfbEn+b7bB+HtdcCcUrhHOGbyCnbOSEqnrKoWyRKenx/MQ54X5AVjSprH525ZC
	0OW0UA/1DWZ5w/zo7oPnUkwLorEepxmIV1/8lrRu5o0rxarfbDzIBKRx17/reFcmu/fXwN77fu97v
	eLtn6TyLxAuFP83ujyrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQJb-000000059QL-2mad;
	Wed, 10 Apr 2024 05:16:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIu-000000058rf-2tCr;
	Wed, 10 Apr 2024 05:15:26 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIh-0008Ut-EM; Wed, 10 Apr 2024 07:15:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588s: Fix ordering of nodes
Date: Wed, 10 Apr 2024 07:14:59 +0200
Message-Id: <171272604791.1867483.14821084359814414350.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240406172821.34173-1-didi.debian@cknow.org>
References: <20240406172821.34173-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221524_807453_636B6991 
X-CRM114-Status: UNSURE (   9.45  )
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

On Sat, 6 Apr 2024 19:28:04 +0200, Diederik de Haas wrote:
> Fix the ordering of the main nodes by sorting them alphabetically and
> then the ones with a memory address sequentially by that address.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588s: Fix ordering of nodes
      commit: cbb97fe18e299ece1c0074924c630de6a19b320f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
