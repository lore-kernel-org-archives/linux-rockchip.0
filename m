Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A66D9C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 15:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFCcS/G9A9ClibDVWC0z36hge29lxrjH5FBRoG0o6z0=; b=yRz+/J9+us7XFi
	0dvwaVOsm5AvCoygalcmZKtaCCyJbJ2hbvdGg/XWxgX0OwJWpoKE2j6vXRy+qU5I99Kk2BziXx7nL
	/3cpHeQAtevMpe6cbVpGBnHZT6OdB97jC3rsx2qmjTHy2zXzs+Ozx/sfbPVOZi0N5qkD4YOLnVV2P
	rY3W1Xy5lLDM9C/51w7K4BKQfknwuBCs5FEeA+7EymObKKnkyI9B3QH4twpYJA7G+LEAP9Y97ywv3
	qY7gWZrkivhoXImhhz9/Wah7aiPcCuvncSTbRAxMem4xvtJS/G5cwp9BVG7YKQog4dpitI73lFO2+
	S6zomgfE2EFy1GY6Bc1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01Rl-00000009Fsi-15Zl;
	Thu, 25 Apr 2024 15:55:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s01Ri-00000009FsA-3EVB
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Apr 2024 15:55:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1763861E25;
	Thu, 25 Apr 2024 15:55:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C753C113CC;
	Thu, 25 Apr 2024 15:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714060537;
	bh=woh34Zfh+hR5xYcV0RBcFR/VdR4WG15pJy+WqY/T65g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YJUBjZJmQV10nx1Wgg0QbBr6zvJkxRVyF9PNWm4gv0r6XQZ5UNUzgRyhSV0ac/Aeo
	 3PMaKOBEe8YJT78zf53yWbdK927FNknXGm47HEa7WT9JEumUc9T8HzkWtSUjNfKabS
	 DoNR4skzi2bR7IH54O95JCmA3dUBMshw5c20wuUVapUmEI0FwrrFUv1+/AGl69qhUS
	 OGv1Bf1sXRTtwdf98UhFbN503k5JGsKCZdsy9qCZLAHqrKgOnm/Kv9YSeWmL2GG9RT
	 /JyjIIqhTGIH51jCc7fW50x0iz792OF89aphkydMthb+1zPgHNSzsS24Zc+5q0SUTq
	 YWDXsmh4RVtqw==
Date: Thu, 25 Apr 2024 10:55:35 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-pci@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH 02/12] dt-bindings: PCI: snps,dw-pcie-ep: Add vendor
 specific interrupt-names
Message-ID: <171406052389.2613162.7451488705380361367.robh@kernel.org>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
 <20240424-rockchip-pcie-ep-v1-v1-2-b1a02ddad650@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240424-rockchip-pcie-ep-v1-v1-2-b1a02ddad650@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_085539_145451_83662183 
X-CRM114-Status: GOOD (  12.69  )
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


On Wed, 24 Apr 2024 17:16:20 +0200, Niklas Cassel wrote:
> Considering that some drivers (e.g. pcie-dw-rockchip.c) already use the
> interrupt-names "sys", "pmc", "msg", "err" for the device tree binding in
> Root Complex mode (snps,dw-pcie.yaml), it doesn't make sense that those
> drivers should use different interrupt-names when running in Endpoint mode
> (snps,dw-pcie-ep.yaml).
> 
> Therefore, since "sys", "pmc", "msg", "err" are already defined in
> snps,dw-pcie.yaml, add them also for snps,dw-pcie-ep.yaml.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/snps,dw-pcie-ep.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
