Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8CE8C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 15:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=noxwjRA2FxtKQPUUzPrrd2rpvsIbkuGsemtcBOyg+/s=; b=Om9A+W0iKSuNEc
	hQxBKvpCnAZ91vHXUsGyU6uXFfb6H6JTqCCDRl5viey1eLYqICupw6OXDZ7oeiGGIBbFJ/DWoPSWW
	i1lQHs29aFXmYcmS9O8y2UTicUnQhXsTWjyYvNkEFstY5a9VzVqbotauxtj68BcZsN2eWuNIUHf7G
	Sx+6L/laYb0kUM/YZq5lhGCPuCSUoG4pjbcE8KJWibLm6zHIKhyRXL5/Ddf7Qaba6Ts48wU5uBtHb
	Ok+8IgtUWHW4yfkD7RWk1ydzwlijyAda63zGKDHgfgqa6QoC1pEftmZruXKy+tLt3tf6AJR59pWuD
	vTn5X9X/FMuiD+qUk5pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw4X-00000007ZEf-1dp4;
	Sun, 12 Jul 2026 15:26:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw4V-00000007ZDo-3293;
	Sun, 12 Jul 2026 15:26:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B9C556004E;
	Sun, 12 Jul 2026 15:26:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E7C81F000E9;
	Sun, 12 Jul 2026 15:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783869982;
	bh=x2V9TkUu02mZtF/pb/M+ixilm2tIOgotOavTOjYTCdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=O1AN929U+LEOp44PdbRDXDwN/N+AhfZMW1rCySoCXZRYSQwjVrj53cfqq3Eg/qSt3
	 tQBWlfqdjDmAuAf7r5hZMPESFNDp+9xJRkRj171sOG818SuHhDIzveei/liHDJ4olz
	 cVg73H6KAI9eYsPGsq2hmOOYdcOXOu9oQy/k7bA27X+m7cgkm/wIm4nyS/J3TdTf1x
	 bMb5Dq2jkzurzq+rU4tes6/v2Ra9cp4hq06uowAPnx8DN6MRHimv5FxB8ttxxdAPId
	 sNFkJ/nxDdkruowawrz0tm2pwtAoSn/WRifX32TcJM5gSCfDgvnLHkIN5tCWby1SnW
	 gcFjGUZJ3HmwA==
Date: Sun, 12 Jul 2026 17:26:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Guenter Roeck <linux@roeck-us.net>, Jamie Iles <jamie@jamieiles.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH 08/12] dt-bindings: watchdog: snps,dw-wdt: Add RV1106
 compatible
Message-ID: <20260712-reasonable-unselfish-oyster-aea7a5@quoll>
References: <20260706195818.3906949-1-sjg@chromium.org>
 <20260706195818.3906949-9-sjg@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260706195818.3906949-9-sjg@chromium.org>
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

On Mon, Jul 06, 2026 at 01:58:04PM -0600, Simon Glass wrote:
> Add the compatible for the watchdog of the Rockchip RV1106, which is
> compatible with the Synopsys DesignWare watchdog.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
