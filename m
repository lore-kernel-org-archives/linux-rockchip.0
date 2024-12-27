Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 843C6E77191
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3R4isJQYJrpXbkFo3Kw1ihvupBuhtgaW1WcS5BqdzqQ=; b=vaApVIOK4nP9ig
	SIMHONpoiWlV1qsKVMZCo1vRZ+WQII5mgDEDlRtZGXistOSZ3veU6u4AJUPshp7d3HM7Lg/EsGW18
	HplXN9r2m4B08zw0LEThMYfKRJldiWJ+4TJxPLdyHsvG6U8TlLg3HwaN4R3rK7CBlEKtHLOHeNBFl
	/pONBRTGjOLR8aBgXD9ZIScsbWDFuxWoVCayjYxukn/lnm3EK0ROUIqDo/QIFsPvTBbkaCAHXsZqN
	9jAQ+yTtY7iBaS6R5qjsAUJARrLGB8gzyNdUmSq+e4fEoSkm0B2FleKFXeufNmsqcEyF8ZRIktdei
	/gugZhmk7xUC2pkn7Amg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR534-0000000HIPh-0kKy;
	Fri, 27 Dec 2024 07:46:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR50F-0000000HHw5-0NLZ;
	Fri, 27 Dec 2024 07:43:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 83C6BA411F6;
	Fri, 27 Dec 2024 07:41:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 713DEC4CED0;
	Fri, 27 Dec 2024 07:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285402;
	bh=UpI1kDIDP+9wxN+lrRFVGk9iCMxhSweHXt23HZnkQJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RTfgVUPGvILnEsFCcoRqMLWP67xbeZfQ5AxICwJM5p5gNXIpmy6WVReFEwXMO/fim
	 Vk5DjqvVruX6zk2KA90RmE9AoWfZyEUl9n45OFMELB6hN9dF73mcPN340QRnql0uGn
	 suF6yCDL5bEhelQM+6X5YmeciVuYBwmlrut+IOjiT8Ch5aAU684PnzMgUw6WaMBTSA
	 3yvrKkqyHFftlk7Bo3Q1qRO4Vk1+ZfjdhULbrNJpPsy+je2xZYrE+B95NtEfbhOfev
	 XjBnFqvJE/izUqZ3ctWXFeTzpX2///ulmouwrueliBkrqOArupEQdJxx+/321v8yM9
	 PG6ttdkzMmC1g==
Date: Fri, 27 Dec 2024 08:43:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 08/17] dt-bindings: spi: Add rockchip,rk3562-spi
 compatible
Message-ID: <bq3jrw7r5wfzffosfh3eerngvqvd5lc6ilrnu6fstpxx5fmzm5@bdowzwie5qae>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-9-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-9-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_234323_192165_A1586D0F 
X-CRM114-Status: UNSURE (   7.60  )
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

On Tue, Dec 24, 2024 at 05:49:11PM +0800, Kever Yang wrote:
> Add rockchip,rk3562-spi compatible for rk3562.


This we see from the diff. Say something not obvious. Where is the
driver change? Why aren't the devices compatible?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
