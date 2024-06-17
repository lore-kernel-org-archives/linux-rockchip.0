Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2895BC27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 21:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRvZRiEQhtUzyEv8I/geuyWI6rAd90/jrdgEg0W2ik4=; b=GFkAbc+FpSVQ4z
	2m+2KgqFXwPNTVC023o+omMb5S0/UbrDpVYHX7iMXBRvpcVOYAPbacMerH9YjVvVHh+ij36hEtJNn
	CDuwWW6nUYU/fzPBW7X74GRi32FvSSNESkiJ68iv9LBjcfGuAuFIflUWP9Vj5IR8xmjqUJgSV1gxN
	t8e248x4yMtwjdQzIEiMT3sQOTxZdQBHSTjmM42RK2wC1T79mb6mfUFLmN5kmkLT4tVFm5Odc90nG
	LGQwOKQ5u1grcy1urBUix95BRKuVimPHDeV+T4uJlwtxoCENeI9hOIQAR3vL9AbJlxIFGzWb1gIpO
	wNjuDp4zzyOKJuttO6yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJgo-0000000CeQz-2Ssl;
	Mon, 17 Jun 2024 21:14:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJgk-0000000CeQC-1mH8;
	Mon, 17 Jun 2024 21:14:56 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJJgi-0004LG-SS; Mon, 17 Jun 2024 23:14:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3066a: add #sound-dai-cells to hdmi node
Date: Mon, 17 Jun 2024 23:14:50 +0200
Message-Id: <171865888527.3904644.13065331422044570412.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <8b229dcc-94e4-4bbc-9efc-9d5ddd694532@gmail.com>
References: <8b229dcc-94e4-4bbc-9efc-9d5ddd694532@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_141454_478710_7F6D5688 
X-CRM114-Status: GOOD (  10.22  )
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

On Thu, 13 Jun 2024 20:08:10 +0200, Johan Jonker wrote:
> '#sound-dai-cells' is required to properly interpret
> the list of DAI specified in the 'sound-dai' property,
> so add them to the 'hdmi' node for 'rk3066a.dtsi'.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3066a: add #sound-dai-cells to hdmi node
      commit: cca46f811d0000c1522a5e18ea48c27a15e45c05

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
