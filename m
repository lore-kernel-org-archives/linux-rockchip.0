Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29E7BC44512
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 17:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnqOuDmnh8uD05gY4VkKmWawZ/TkL5vsF3w/D5XTpVI=; b=UIkH+eMZQbrwPX
	4h8wqZ1yWq6IMvlDSV7NbLWmRNQSDl9wvzVzR6XK9RQEYMVALubFxhs/9Qz7p7Y3usdkJStDuSGTZ
	8M2VM/3TzQwFhTw4NIQJCnlvpd7nvQRPHdpi101ZxalUUgL6XRKjfNswZGFmsv/MB3p+nmSh83IID
	6hOY2zZFY7hAk7Z1Hh15knqmZWL/g2AbE1Ui5dBjkKF4ywmqo4lBCVmQDlEujlohDuj4EU6b807km
	n7swYBMAiUcj8FhvGeg9TwjX1q8sZG6xzgt1sQ62BTpi5QHNkaeHiGyp3VsvqZ9QrYe5AyDb/OtPI
	HIffcdNgJBNJC2UOHsxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkPs1-00000000H3S-0ViC;
	Thu, 16 Jul 2026 17:27:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkPrz-00000000H32-2Uat;
	Thu, 16 Jul 2026 17:27:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2C9704176F;
	Thu, 16 Jul 2026 17:27:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E35B11F000E9;
	Thu, 16 Jul 2026 17:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784222855;
	bh=C7Ri43wnBZH/LIFHL9jN4Nlw6bbCudsffErXi9BbAO8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ri0X19bMgazH6mxlzhILR3c+9vGgCmx10wcV51E0x5hNbOWjUdYU9uzFCj2OfLpD4
	 sneVATBmk1XNecfir3ZmxmHgRd+noU+ZdTkjz0PfjW+jj4+fz2HCmyVGLooBR9i7Fh
	 AIIX7nM4vFVyuOu8buayBGzoqSq1LgzktSS39odvxe1hhel+phBq+QBENykoH/WXNn
	 3C/0FLAcT8cb6c242npGzG/J0RUyOe55Nl5nVUluW+8Q0iGhXKSUXMyz2M6TTFQLX8
	 wvMbi4KVadUn618fubfEScJ8J+Rt6IXIlEd6FjKdku2OLBbObnZR2/FUDH/Em/sFvb
	 o2nqbINCuxuqw==
Date: Thu, 16 Jul 2026 12:27:34 -0500
From: Rob Herring <robh@kernel.org>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add ArmSoM CM5 and
 CM5-IO
Message-ID: <20260716172734.GA463528-robh@kernel.org>
References: <20260716065548.2466198-1-gahing@gahingwoo.com>
 <7e27ad59-0ffd-4323-9991-d00d69fde098@smtp-relay.sendinblue.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e27ad59-0ffd-4323-9991-d00d69fde098@smtp-relay.sendinblue.com>
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

On Thu, Jul 16, 2026 at 06:55:47PM +1200, Jiaxing Hu wrote:
> 
> Add compatibles for the ArmSoM CM5, an RK3576 compute module, and its
> CM5-IO carrier board.
> 
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)

Please don't send new versions so quickly. We all work 
different timezones and are busy. Krzysztof reviewed v1.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
