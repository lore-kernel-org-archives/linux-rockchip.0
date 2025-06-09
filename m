Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 217DBC5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 11:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKkeYyBtzcKmFHZPR4gF7E52pwH61bYgMWeNtw/M2v8=; b=ewYsSLVUZaCD+d
	panEmbuDlyuAy7nUWsX1aBnnCfoJre2gO4VggQyPOrCf3nFJvN4aAT1XtP0ZZmPY9x9hiNXWmQUej
	caekJy5xnRB99q7NI6vK938ajv5J7kniFs0bX7Ek8uw3L6qWlJ1/Juf8ldJLfKHOK/nUgcF9An2KY
	e09n1hf4plV9XRfB+snx2B0neV3W2RgzL0XF7zgUF9GJ7gaQ3yWGSK5pPWgZCmAaMYUW/yVzyrpSd
	5rFeLFFHzRQzW1f0+NOoq/A0rqEweBvxOGJTP5X+l58Q+pU8votG1pbXbcFiNN2ylssRCYGtiXgJo
	5j7PbkQU3ZYyHJy3VMMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOabX-000000041DX-3B0G;
	Mon, 09 Jun 2025 11:23:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOaPF-00000003zRt-45Ky;
	Mon, 09 Jun 2025 11:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Uaq+qcvYWlUE8XUYIRED91MXduBw3WkGvbeOZQWHwe8=; b=vWlm0hfFQvAZ4ds/uEeDbjWaat
	XR5U49qIIRZite3bg3zaaf0uCZZoFqFcwYAMTBM9+Oz0PsW382lkpfkC8EAiP21l++yLJEm/dtrRx
	nVePX3Why4KYJjymVanLD0iZL2r2qd3E4kIq550f0GknFw/5CsR0i3K9I8q4AhpljwyPHLR9ClxIR
	tzCCztkq0Yoanoqz3P/y/gRk3aj9Yn/nFv1WBEZ8mi4N7DxRMddGT0/frR+LZqWFOUMwt/v1ENOie
	GQ6EUmb91u9o78EWJSQlvbVqJV0u6ULGpKGuVxQk11NzN7fOPpZ+upbyUV7K3E2nUTVxxNC8WksLo
	9SXMvMdg==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOaPC-0006VT-VV; Mon, 09 Jun 2025 13:11:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: kever.yang@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: convert rk3562 to their dt-binding constants
Date: Mon,  9 Jun 2025 13:11:02 +0200
Message-ID: <174946744892.771907.16719729052078630169.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250510161531.2086706-1-heiko@sntech.de>
References: <20250510161531.2086706-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_041110_010482_7770AF1C 
X-CRM114-Status: UNSURE (   8.98  )
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


On Sat, 10 May 2025 18:15:31 +0200, Heiko Stuebner wrote:
> Now that the binding head has been merged, convert the power-domain ids
> back to these constants for easier handling.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: convert rk3562 to their dt-binding constants
      commit: 208e7e76fbc77775b760edeeb528318992c60595

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
