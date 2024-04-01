Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFE61CD1288
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 21:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrFXaPxs4Di3Wi4Iad/VtLgElIFtp0KPbYEUWVByYF8=; b=ubEvC4mv6S1JrZ
	9ljDyKjLcfi/BlWTr2zLmSXnIlMna/MfE7eTRNtyYGXbHcoSpIp+VZTrc49hvUcHwBEB2TprjvdLY
	3DxS++cBEhT8SXGnT6xNYZHforqdwgRD31pT9fcHdADVBCOto/YXWVqMd8+CoCPnbTgW7DzRfGtpb
	WrFWo+fgSvFDtQPVmwSAo2aT9ui8RH6cNPs2Uewn1+S4xj6rFvv+kNAzeX2TIVznkPjmEWZGSnN/h
	5LiaTAzG51SW1JL+DzicRser+0MFNCvgguGEJfClFEx2KXxJYQOS25ea6H/v92x/f/3tDRnfWxJ3g
	xKVsbGY6c4pAZrf8MhtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPdB-00000008wgg-0dp4;
	Mon, 01 Apr 2024 21:55:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPd5-00000008weE-2pac;
	Mon, 01 Apr 2024 21:55:48 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rrPcs-0008FL-EU; Mon, 01 Apr 2024 23:55:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	dsimic@manjaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable gpu on Cool Pi CM5
Date: Mon,  1 Apr 2024 23:55:29 +0200
Message-Id: <171200852040.1394042.3630896312135424469.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240330100134.3588223-1-andyshrk@163.com>
References: <20240330100134.3588223-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_145547_733565_B5817EC7 
X-CRM114-Status: UNSURE (   8.60  )
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

On Sat, 30 Mar 2024 18:01:33 +0800, Andy Yan wrote:
> Enable mali gpu node and add the board specific supply-regulator.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: Enable gpu on Cool Pi CM5
      commit: 3436ded09656f1f49e064c5e791656acf0dd25c5
[2/2] arm64: dts: rockchip: Enable gpu on Cool Pi 4B
      commit: 604552d0102c4260ef2561b8c84f849e43731678

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
