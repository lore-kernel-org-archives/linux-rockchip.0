Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1620C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 19:48:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4824261040
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 19:48:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4824261040
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a85rapoJYE6Q7lvS2SchQrkcI0IIUmsCE2tOsZWOp/A=; b=1N6coFaZRkpeLu
	sBS0NxU/LQWbNZZQP+1LzfX/qGHm81VrkbRqF0LeHL9O5VyjgpHlkhobvDUT96mL0aOPLpPk9HeEe
	+sTZDOD2EQxlFj8v8+FUlFrzNpojIOtoqYii6pl3l04XT2sG6PCpbWx0bw0lIPlhYUzPffUqG7pSA
	iztvKFjUCVgZFMtQ8eBMK4mQbhEdRU5KmJ24bUYJhpzxBbaCddC6DNDPDTBfPXjhIfVeS2CD5TNJV
	zwTveoO7uNYVRbhNx8CEqFfIXWxWNQSegND+ciFNCATRhLmwu7gJH+m1jXz63RDhSCwul3Vx33ZVA
	CU/QEDHLRRaq7oITqCvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbpey-00BDH0-KE; Sat, 16 Oct 2021 19:48:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbpew-00BDFy-73; Sat, 16 Oct 2021 19:47:59 +0000
Received: from p508fce7c.dip0.t-ipconnect.de ([80.143.206.124]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mbpes-0008HL-Gg; Sat, 16 Oct 2021 21:47:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add spdif node to rk356x
Date: Sat, 16 Oct 2021 21:47:50 +0200
Message-Id: <163441361289.438137.17829234976642322429.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211015111303.1365328-1-frattaroli.nicolas@gmail.com>
References: <20211015111303.1365328-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_124758_294877_6A37008B 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 15 Oct 2021 13:13:01 +0200, Nicolas Frattaroli wrote:
> This adds the spdif node to the rk356x device tree.

Applied, thanks!

I did a tiny bit of (alphabetical) sorting
(clocks about dma)

[1/2] arm64: dts: rockchip: add spdif node to rk356x
      commit: a65e6523e6dcf1dc4ea167ab78ca6fad01f16d91
[2/2] arm64: dts: rockchip: enable spdif on Quartz64 A
      commit: 7ab91acd3624de261d785e94cdfc01a703786e7a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
