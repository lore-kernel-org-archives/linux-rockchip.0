Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7514E77188
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GK9KyFzUUcKS+QWs/7wmukWCFsr3mPlfvEvSSuUPXoo=; b=Kbk6H9ltNrT/DJ
	ow8Agaqk63AXTZjyQxTrz8+HckG1fRgXUcr7TE/Zb0QYon9sbKdNZmunF6rdT4ACmbr2Sa7tv/wIT
	NopFHroQ9wsOuyEpQrU7RH0ED7JWcoq1af94j3IQ4KhC7HfYbxLhWsRBCOAk7M0QZMdxXuoMBr2R6
	DAyYT85XeLUznn0xs3aZtxRslJRmq+PdZXoe46eYBGWzHtJOkleEustDPGJJLI4OZxMKVia3myvxh
	mbBqvmDTkUwE+wMmC+INdasuasxNUaLWqRdZsLEj6Mzudvjw2lm0nNN8EAe3bgbZUe0zVC71bJ/xZ
	K/k3JmJjc5eyjDHLXDuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQuBR-0000000GLQq-2BEa;
	Thu, 26 Dec 2024 20:10:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQuBP-0000000GLQC-0gZb;
	Thu, 26 Dec 2024 20:10:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uHADjZWdw1Z80SAwttCPxxV6YOm9qJgtYyMVsffjvCI=; b=zksnfj9QozQvXiGmR2GECQ7zAl
	0loT5RaZMAEbvYP6vpxMI0mZGboIXloa7UDtzZunpIoyEhkY7cNmybiPWrDENyQpx2kzAjFztTYfc
	Ruefs4RqBFgMzqt5hvsPCDdy+g7osrd/6emnKWmk9Z6OFB6yR1mSWuH+DLAKO3/A4ADabsNUVp0VQ
	P8yW3nHc1omD9KNlULUJjtra6fB771DckkT2d+960JZYBveuyTuhtLBl6WdzT//bJuIpNyV9/PBzL
	7buacJE/E0O/hSVFgzS5FqVO1LJCxM0LcPorggtEJQiTp6L6HQWmk3gS2V0rmeJPu9KMyLhCkrpr+
	i0JbxA3Q==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQuBI-0007A9-7q; Thu, 26 Dec 2024 21:10:04 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add HDMI1 node to rk3588
Date: Thu, 26 Dec 2024 21:10:03 +0100
Message-ID: <7380278.lOV4Wx5bFT@diego>
In-Reply-To: <20241226173530.37037-1-jagan@edgeble.ai>
References: <20241226173530.37037-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_121011_234413_CC89B40B 
X-CRM114-Status: GOOD (  13.51  )
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

Hi Jagan,

Am Donnerstag, 26. Dezember 2024, 18:35:29 CET schrieb Jagan Teki:
> HDMI1 Output is available RK3588 (not for RK3588S).
> 
> Add support for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Cristian already has a series open, adding hdmi1 support [0].

Also please note the dependency note on the hdptxphy 0+1 handling
patch series.


Heiko

[0] https://lore.kernel.org/linux-rockchip/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
