Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D9DCA600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 15:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzw/31TKINeHXg5xWQFLtN5pmM5XuuxR5gqaDxp3z6A=; b=tfdgqsjs+Sz7CL
	jqeN14zb41mAH4mB6tOmcZIsAuGCldT0IZWheW/KnruaxYoR9Dw7+Oti1WoOpsjXMYvE0l60WKVA2
	PGuQkEV7f5+Vhd2OzuJHm+GNbZgXmfkPNsjMRajIOf1QNboKnon5uhDcHut0KGbrny4v+FR9Lyi3P
	0GcWDZb60RL2vVbsKn9IkFjmxD47xmBScLNrpk4RdYoQ+gT9B9gxQ5VQiIuTQ0p+80gwj0XlaXLu9
	ScIR6djrYav1vjiVchPLBsy8wu1+uuJW3v1t/NfSVIUOFIMPRrXq5FEvLp3okRlDXzLzofiUQWCF+
	H/xt/dID0aMAkdt+bKSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEpnC-00000004aeg-3tIR;
	Thu, 08 Oct 2026 15:12:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEpn9-00000004adF-30Vk;
	Thu, 08 Oct 2026 15:12:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vHpzv6iAx3FY+i4Ey0PY1RHcS/I7ApyfzhqLqWfAGOY=; b=Ch6IyZgKlEU0gTStzX8o3mvkYX
	ZnFzoheKscaDqzQ0XsbGFK8M0tbsMJbzj1AWxBVYyt+APc+k60NaUiklWo186+ETVUXpcdBrDFSGg
	yY3NpoVhuagYGmZIt9AZMnfBMevJXT/g5bn+a1j919jX/Uaa2twRkYpf7QVqALfOIcyh3RQ7M5OqT
	fVjzWC5hn+X/fbhvNlb+dPWUL4NnF+omS4K1vl62NG0gzEeqJMEU/1M0iR23KPyeCXayHT2EqvTaz
	9wQ4F9mvEVFUJnBiKaoQNpZSsE/GC8uOF9PKWlS6T6hFO0xxsVH+w6+MHOEeonOPKrhUN1xatIvvv
	tma/MDcw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: fix adc button voltage on Radxa E52C
Date: Thu,  8 Oct 2026 17:12:02 +0200
Message-ID: <179147232048.3420474.12269525015262029428.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260808100000.1518466-1-amadeus@jmu.edu.cn>
References: <20260808100000.1518466-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_081219_942437_2895E951 
X-CRM114-Status: UNSURE (   7.38  )
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


On Sat, 08 Aug 2026 18:00:00 +0800, Chukun Pan wrote:
> The ADC button voltage should be around 1.8 V, not 18 mV.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fix adc button voltage on Radxa E52C
      commit: 682baba589548b8f8df05e0a330b2ad2b8ada3e3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
