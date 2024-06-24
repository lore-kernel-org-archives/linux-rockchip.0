Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E19FFC2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtzGMTTnMZgpz0fPD2xTLwM333fcHYQM0LDWP1XXWG8=; b=TLyt9Jy2BwRuks
	0OLcdq7gx/+0q5a4ASPg+lConrIsW1JGDEGSCFyR4GQusWP/8+X5+ZNUpDuN5J9Z8Ppie4tMQxMxQ
	WNp68EOE8cJVmMyrFrh6fIt8sbPx9DdJx8vYIBqvv3JKYVCDzpqtj6pfLRS4Ujl/0TpN75Hc2LX0+
	3Ksd4Gl++uJ4v7WeNtq+WZMa2ed8oAl+iqDNtoGaaUBtMKG2HrTjyLZ3aYjdkcvs8Y7rnF66IfAck
	rzT7wuevnDPDgLt11SgJIv5uWYg1HfuRK7IsdKCwbi+pWvMogeXUGAbZ6SILbD0Mp2JxcEqGm/wap
	Y6sJWE0GBjYgmKDVxbpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmR7-0000000HSua-0aK1;
	Mon, 24 Jun 2024 16:20:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQg-0000000HSaq-2UfR;
	Mon, 24 Jun 2024 16:20:33 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQc-0001wn-4y; Mon, 24 Jun 2024 18:20:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Peter Robinson <pbrobinson@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable SPI flash on PinePhone Pro
Date: Mon, 24 Jun 2024 18:20:20 +0200
Message-Id: <171924573794.612064.17015120113364864391.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623204616.1344806-1-pbrobinson@gmail.com>
References: <20240623204616.1344806-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092030_726258_116595EE 
X-CRM114-Status: UNSURE (   9.62  )
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

On Sun, 23 Jun 2024 21:46:14 +0100, Peter Robinson wrote:
> The PinePhone Pro as SPI flash on board so enable the SPI
> interface and the flash.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable SPI flash on PinePhone Pro
      commit: c7f024956d9f35d8b305fe90fe33d7f15055ef25

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
