Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E819AC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9B5nRJ/gt9Q9YirrK3hQIfWlUpMSWmCrwXnCuGXlko=; b=PV6/hbAhepTg4v
	PNU/b1XvWGRFwkxJpHjI+1ImMBb0YpbGByoLiA/3MqL74KaQTPLGW0L+l210A3yQthQNSO9vJVeVo
	jJrS+DyOZxWdnF/jUHCM92MRmg5yHQjLLQaEjLyL4V6H4I5c/JYyVz5wp/9f07ZqGDEGBGHnk7pN4
	noRIvrmK9zFu2BiunoH6SEQzxAq31fGcqs35Cc6ZiGNSWetZcozyLJDkPRVGzvlq6TCNDZFeGnyBP
	MLEaSqVMVd3UkdkJUTOI8oNTsLgHNHY0x1SaUxoRRYjCOnGKOPRpP5YWkZwq9Yu7/lSRUDiasnKwK
	UpNllXe8nuS5tPolWKgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMif-00000005JNv-3tka;
	Thu, 02 Jul 2026 19:05:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMid-00000005JL3-3Xlv
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 19:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YM10bWk7ozQ9L2TuOTBeXiPeB+VzxyDTkuM6KbeNy4c=; b=ZJSNehEHBgcLndFk/PMh5u1Qxn
	4X/EoksDs2WxSC78qRFiZEsH7FEOyJqvPt4B+8Cb9duA9nJpF7NWW5TMJJgHZHwnbH5ZhwFC6YA3H
	6MQnYxAUJLwDHaL1/Fma7zClWB4cgmuDn1rIAsn0Y7X+dIWXrQNxLVrAKNhEMWbI3UNyxb0M8+YAk
	PgiN2APXw7ahpdEZ6WS9dHU4/CwvUFZ13lO9HaI0oHESZp7SvwTigMH6PGV73aCtr/1W8/AuaJkDO
	3IURByQD46Es45O+5nN/ZUo549lygp4IXuh2/XRqidogSNiWxF8h43Vu1i6UY/7RhsfV701vgIYqX
	k0a/9Bdw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add AP6275S support for 9Tripod X3568 v4
Date: Thu,  2 Jul 2026 21:04:50 +0200
Message-ID: <178301901892.3838694.4252144428502765127.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260701185657.4092955-1-coiaprant@gmail.com>
References: <20260701185657.4092955-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_120503_885130_B9AD70EA 
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


On Thu, 02 Jul 2026 02:56:56 +0800, Coia Prant wrote:
> Add the missing Broadcom Wi-Fi and Bluetooth child nodes for the
> 9Tripod X3568 v4 board.
> 
> The Bluetooth subnode is attached to uart8 with hardware flow control
> enabled via RTS/CTS pins.
> 
> The Wi-Fi subnode is connected via the sdmmc2 bus.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add AP6275S support for 9Tripod X3568 v4
      commit: 993555b5476cf02009c2ef5c21e8403baee945d1
[2/2] arm64: dts: rockchip: Replace deprecated 'gpio' property with 'gpios' for 9Tripod X3568 v4
      commit: 187e7567bfba38fc3759c0fbcd2886c5239ad415

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
