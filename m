Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BC36C67861
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 14:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KOciq20/BbZkb5qzaFdWmTdCImFZfDCo7l50DZbAwg=; b=xfKhlptNYVClwn
	7VjWNdSTVS/ViKAqBpq/EJDSeRF44sKyBtuH7LKA6Rfu9YdLFGXxjZDf7jpt/ScT9isZvsFqwtiA+
	92hWNruldJNPw9hl0YujnQC3/RZ+woTv6w5RotSu6V1KT8vsC9wWrqM72zinK7HapRoqGCxFOwEtH
	HDrVaPHBtMVTw9KBFs1IWQCcQnqEnCbcEhfX+9zyv3JCGU8kCuEkkCiD0d8RO/LUZgWvjrDpF5oXR
	eyUrgJkmpaTY7LbaaeQwVvzJvvYIcL8PCM09IzM6Vdr38E33Cl32lm0GJEDVGOEgnMYUU220DjSwa
	u641pjTRxXKNssTOzNQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCBA-00000002LkH-1T2H;
	Tue, 09 Apr 2024 14:10:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruCB6-00000002LiQ-2cLs;
	Tue, 09 Apr 2024 14:10:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7227161720;
	Tue,  9 Apr 2024 14:10:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D895C433F1;
	Tue,  9 Apr 2024 14:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712671821;
	bh=RtpKssQ7PYeiAJ3GEdNaHrSqA0HBGDmGov7ORnE8Nc4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LwUUnW3ojXNgYPkYLjqkiICz7zyDcbZlhxHBdBEAjwXXEsy+ZQ4kNm7EjQH+1zCQW
	 AcLTpaLJxI2IZM8w1Yc3sHDJ4QX1iz5hj8/NHuV8/xaZb5z0JYi+apWiZtlUv1XIXe
	 iEYsvDUneoZ7BUeqCknL4aEm0S9QKJiVSYF6/hffwQp+3B00LhI4knFXKp4ScI5MLf
	 wq3gdCZ4+CbUM6NiF7cK/zjKeTHTttMGDjF1gIQV9bdhlZdFCNb85qOregvr1yJsym
	 UbivM4QkWGiljuyBAYHF3ZdqJktEen+xi6PQJVTNjbv8iZ8tZRw2qqMn1TYVV7WTG1
	 lNALSH57MswfA==
Date: Tue, 9 Apr 2024 09:10:19 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: rockchip,rk3399-pcie: add missing
 maxItems to ep-gpios
Message-ID: <171267181723.1101239.8302716507213877317.robh@kernel.org>
References: <20240401100058.15749-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240401100058.15749-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_071024_882979_499B7FFD 
X-CRM114-Status: UNSURE (   9.84  )
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


On Mon, 01 Apr 2024 12:00:58 +0200, Krzysztof Kozlowski wrote:
> Properties with GPIOs should define number of actual GPIOs, so add
> missing maxItems to ep-gpios.  Otherwise multiple GPIOs could be
> provided which is not a true hardware description.
> 
> Fixes: aa222f9311e1 ("dt-bindings: PCI: Convert Rockchip RK3399 PCIe to DT schema")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
