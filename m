Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48DC7C02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 11:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8RDXqvt9YhsgRgMtO5aLh1Qws/nA9SF6iFTHF8g9dSs=; b=5DERdJJQpHTUWG
	uQS51G+G3JOtGzcSWkuY80BBsBGxEkZTb0LHykxcG4fxjqxb9iwGnKQt+WapyEM9oRyFU/wIqz2TQ
	FeOygrB7xpMFY8P5GvMFQL8roGNK8mAxPbyqOk1ut4/guy3DZnRdtQa/XbNW/UyXoI5mf5R0vId9B
	jneb6oSRL2Tl5giZn2vgYKnlOUt5DngL3gl7jYaYD8tkDgTbRoK18nacoAImLxrN4/hnZchxMkJ4M
	bBHsd/FZL3tckIzlFUtGQB3VRrrdfKX9kvWCWhxHJfYauu7GpjJuan0lDV47dpSq+hEIKXDy+5QwE
	0vO9dIBEwS46pNjDA9VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thRsW-0000000HCMe-33cH;
	Mon, 10 Feb 2025 11:23:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thRYf-0000000H84w-0TG4
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 11:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XKDMM/Pr9XluX6rCXkrT2esbqxQEIXip+ExZYq7Gt+U=; b=v+yItCGHtv3UAc6RaelpyeySwY
	w02qeZSnxi5h9HmPlD2t94tDXOLHY+UBNtGNZ7OkW01po7JK+Fddmvign19MmSIKdNkk2fE5cKqND
	Cc0wI4zhmaiTR+I7QloDkBS65AQhpnpZoe65L2GITEanaTTV1r8S34cKFPWJkroWiwVdkCj4I+GpI
	unGzFZg6hIV+wXc6rLyiRV+Gr56ry/z7L65dSp7r6BFmG3eqZMzPqgyBRv0nFqL97caeadP9X6vdK
	Y7z4Zpv1vjjusFx+jjaVxqFy1BvaYq07vz1AQ5lbcJ9MAwsYvgEXPMBxG36YO4XfQOYf+JuEdeGnf
	jabO4Ahw==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thRYc-00016K-JC; Mon, 10 Feb 2025 12:02:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Update rockchip company name
Date: Mon, 10 Feb 2025 12:02:19 +0100
Message-ID: <173918533251.1059791.7850315164866493973.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20241205082258.857018-1-kever.yang@rock-chips.com>
References: <20241205082258.857018-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_030233_149848_76CC018A 
X-CRM114-Status: UNSURE (   7.19  )
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


On Thu, 05 Dec 2024 16:22:58 +0800, Kever Yang wrote:
> Rockchip company name has update to below name since 2021:
> Rockchip Electronics Co., Ltd.
> 
> 

Applied, thanks!

[1/1] dt-bindings: vendor-prefixes: Update rockchip company name
      commit: 73af358e1d4b14928a66300a09f887bfbad0c989

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
