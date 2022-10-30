Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0949CECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 20:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcWtqi4tJHtfsD+Y0DJq0mnvNsK7ZvH41irqN1QtWu4=; b=H7+Ew1Clw73Mgc
	jzDBk3tFymGy/+svcIV+y3YGpyMMmdShdoSaWu6Q699KrzbbbIGchGIvBMtSjMiNJfL8hzwKw02rg
	w7npoZwbYzwO6rWuRcdTTDDEQLUjThWRzSIHS7UUCCDJYn1KKCCf6MNtZ8I7UYtSdO+6irZ1yzSnf
	k/aIKcN2vZ3a6XE1Hb1QQoBYSe9EgnnKfnxybL66ve4ZSVWj2e6Am+XQ3x6ikLCmiwZ1ottMmTrWC
	dLAiU+iDFgNCBICmPfp5Krw+cY/If5Dev0HMyeKej+vwW8r72AmZ5YNdUQLSegxFqaNsHeDa7aXrF
	y7q6Gd+8LAO86EwbE8bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbY-002gQh-SO; Sun, 30 Oct 2022 20:08:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbW-002gOn-Kd; Sun, 30 Oct 2022 20:08:23 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opEbU-0005ci-OL; Sun, 30 Oct 2022 21:08:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: pgwipeout@gmail.com,
	Furkan Kardame <f.kardame@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3566 pcie2 node
Date: Sun, 30 Oct 2022 21:08:13 +0100
Message-Id: <166716040326.1678541.14378898255662960875.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221026172152.64513-1-f.kardame@manjaro.org>
References: <20221026172152.64513-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_130822_688761_A8081429 
X-CRM114-Status: GOOD (  10.30  )
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

On Wed, 26 Oct 2022 20:21:53 +0300, Furkan Kardame wrote:
> This patch adds nodes needed for pcie2
> to work on rk3566-roc-pc
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add rk3566 pcie2 node
      commit: 8ea13ce0800e3e3bf95da2424f87b649a6efecfa

I've adapted the patch subject to
    arm64: dts: rockchip: add pcie2 support for rk3566-roc-pc

Please make sure the patch subject matches the content
in future submissions :-) .

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
