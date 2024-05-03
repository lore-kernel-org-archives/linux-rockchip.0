Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F5B0C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 11:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYN57U7lrs67Zgfr7Zuo5ibe9PlVgRBCbqEPy2RHEXs=; b=I7fTOhluOqYyJa
	G5RyUWsRkhQFAvm+/1HkewcU3YjpQULmBJesuxxtY/vHG8JHBGibfrdNF4gwcJwEFVqWTsNjcYowU
	9DfZ/FeHFbX9moriBm2rox6zWgZgCbzr4rqpfazv3cWBkVfemDBaFp3A4L5g8SQQWNmq0mh+kYE0x
	EwGhwl3j49tCsc31Qe0ForO79Kaf1XR6o/4+0+c/vSTgePQi2HzEMgG1GdUFWZpWc6KKymcvYZpot
	UkoVxLoJPb5cuI+Kjkg1ntg8J8uvzup8NcBBuPGgvzMDYo7JD7U0HmCrZc6EXhZhVpyYejg+zBzRS
	F4Dqv995JRaMnXd0EOuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFr-0000000GHiP-0Dmf;
	Fri, 03 May 2024 11:39:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFc-0000000GHSU-1rnt;
	Fri, 03 May 2024 11:38:54 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2rFR-0000Tc-Tg; Fri, 03 May 2024 13:38:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	efectn@6tel.net
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable GPU on khadas-edge2
Date: Fri,  3 May 2024 13:38:23 +0200
Message-Id: <171473602994.3469033.12209087270295782183.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240501142241.98554-1-efectn@6tel.net>
References: <20240501142241.98554-1-efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_043852_553380_317B810C 
X-CRM114-Status: UNSURE (   8.01  )
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

On Wed, 1 May 2024 17:22:41 +0300, efectn@6tel.net wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Enable the Mali GPU node on Khadas Edge 2.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable GPU on khadas-edge2
      commit: 4aae6cdd61aa0daa2f01d1660be8f22b88b61929

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
