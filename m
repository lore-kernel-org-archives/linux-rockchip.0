Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBBE8C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Un8w8llNtPuvpgje6YPsdAlT63FlJX/xMraUPp+b4hc=; b=FAllfv+JHo7u6L
	06/zLB8pDO4p4gx7weEDc44IoUUW1LABJIbmiVflqInByHdj4qjfLgwbxEUPmjT/YTLKOp2UzLSCe
	wTUQ+od/XD0vL4Up/1OQqm+Rv4SQodaKZrTrupWdjfex/NTCrnSAXNP/zdvJHsF9mmV0eS18CKj7C
	j8Gn/MdAk5vM6e+Suv/0Xdc/ZaCqQ5C7IH2Y0eJYPCtGU7LlNiEq2WC2CG1Y2JP5FvCTmlHkUfrYZ
	SWXB5C4AALBgR9saBHKUviyUZ555cGN8XSGg+41sf1lED+FJSXUJ6hs7GnPPTUvZVVQLlRYGH3RW+
	fOkDp0Y3iKNUVmIbGcPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPL0-00BZaj-GS; Mon, 17 Oct 2022 12:35:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKS-00BZJU-7o; Mon, 17 Oct 2022 12:34:50 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKO-00087p-Ld; Mon, 17 Oct 2022 14:34:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: keep I2S1 disabled for GPIO function on ROCK Pi 4 series
Date: Mon, 17 Oct 2022 14:34:40 +0200
Message-Id: <166601006788.173248.12317572419373244531.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220924112812.1219-1-naoki@radxa.com>
References: <20220924112812.1219-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053448_292326_580D01F9 
X-CRM114-Status: UNSURE (   9.51  )
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

On Sat, 24 Sep 2022 11:28:12 +0000, FUKAUMI Naoki wrote:
> I2S1 pins are exposed on 40-pin header on Radxa ROCK Pi 4 series.
> their default function is GPIO, so I2S1 need to be disabled.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: keep I2S1 disabled for GPIO function on ROCK Pi 4 series
      commit: 849c19d14940b87332d5d59c7fc581d73f2099fd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
