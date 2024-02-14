Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 429A3C4829A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3yIQfl6ZJvZSiCmuGQcGG+2+frcBFio7QUBHwqb2mj4=; b=v9RDRcIAo5XHNj
	YmROvUCwVwobsMgwZ6bsafL6M5eSKbHt6jV8wD9dpPox4u+ff7kIPqzbiWjMijRReRYNI8cLsWyc7
	dNauWMTnbNJVXOVE2y2iy56zEPXKOvBuJ3nH0Jv7ZGzbNi5ph3wnipiUovBuZxo2NUNg9unCztKoJ
	w0Fohju8JXkbYnh5DGAK2NT6WGUegikv2s1OLPLHbHSH/OMW+HgAN/+rZYg+4pHU4pAmbVAHbAbQe
	N7zP6kJ0pVLVCc7xywZKQFkmAvTjjClPbFtZny0ZM0hnqDeyrnBAQihCHgjNXqzNLj7ZPw1YmXjuU
	ghGwXZ3zf1+QZ2nxMvkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6Yl-0000000BkvK-3bFF;
	Wed, 14 Feb 2024 04:07:47 +0000
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6Yi-0000000BkuJ-32PE;
	Wed, 14 Feb 2024 04:07:46 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 9682D11400DB;
	Tue, 13 Feb 2024 23:07:42 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Tue, 13 Feb 2024 23:07:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1707883662; x=1707970062; bh=GMD1NKF1HH
	t+RaafvyimydvnSFyaZ2fb3JV7JnKUS70=; b=ebR+hSrTOh4SXfVdX9WXf5CCSH
	F1hfMdPYN320S4GnAUTMmQV/tAoTNgzdrL8o/7atBQs+JLHlnr4ECa+BKCyGZbXA
	/At99rhI8/S/bdOL3ncXP3FVwpkDH3qyEbVqmRa2Ws2SHEhauB/Q+G2jWDJ1jQZb
	0BpW1QFMlzrkinbqvbGcLyCQGr/MFeSUxx3chJdru6sdGl3+b0IfeJeMNXT+083m
	+dRwJA4Lio+Q7fk9YJTJB6HcvgbQFH9h4xaSbKmMplv5rIXf+ibpjEp2cDNYcyM8
	uZzhKTRIW2aQb0b6EBrLeQc8dKBZfiwySRun3o4BUVdEBdkDir+BvPxnnu+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1707883662; x=1707970062; bh=GMD1NKF1HHt+RaafvyimydvnSFya
	Z2fb3JV7JnKUS70=; b=HLb9vM5R23RtTQhnSenl8J0NO7Zfr7gCOR4ZU4kCS8IC
	AZbSytJtWZhK6SREcZpF0Usc5hhbgKqwu2WLTFw7XB4C5omYdxPza74VNHbW/YAt
	nFCjpZ+3I2AqTB1I+mihViyZf3aOjCXI8Y+gMivdlUw6gcnJ6MPPxH9xxPQvq6Wm
	crMYY8kunBZz6TUMddUZDQh7E+7g+k2O8fCu1R0Gpv0QVb0u6OB9D/PgJ5gyKHDN
	V9md3MAahGDt6kN3AXM+K2M9mSGjct37Ghc/0josdjLIfXdlD+sic+mrCgUycA4M
	n6iepWhZxfuEPS/IfNlUxbKYQ1eN03nfrWXnQd/CBw==
X-ME-Sender: <xms:jjzMZaIh425qthGnrtisE3LtQsIfyxwMZUNVZzQgNxWOqrTm4ROrWg>
    <xme:jjzMZSL6OgxAE3u2RL124CZEFrfLVOHGXBXyHIbcl-6CVzha9UNypDB-6hET7vWxB
    NEFZkxsKA>
X-ME-Received: <xmr:jjzMZatkjzzVThQer2AyBQ5TXqejeWyDwxfcP-7npb3bwDnIQv4AGPxHFHI60Rr2wTQJ5WslcRrb_av9tAs7MmdUQ4S2Zbzxeqc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfnuhhn
    nhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnhepud
    fhtdevueejjeejffeivefgtddugeefffevudfgteetheduveetheetgfeiiedtnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfhgvrg
    hthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:jjzMZfbqBvpkA_Mo_wpkQGRMDhbQSLe07kjK3pHRGKNgl1JxafZCJQ>
    <xmx:jjzMZRbTFtet1k3gmneSZ3XR9jm8oZjKuPS9UtYr5-IwkaZSkO7wgw>
    <xmx:jjzMZbBAjEMxE4OgBx8yd7vIl7yTh4XM-qG-DXO4pYSL_uuwUwDmQg>
    <xmx:jjzMZeTAi0zUkPBzcBlG9pHBUmE4wk2ZK6Crwf4rI2H-k4Ac3tJO3A>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 23:07:35 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 14 Feb 2024 15:07:32 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org
Cc: Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	Dragan Simic <dsimic@manjaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Fix vendor strings on Rockchip boards
Date: Wed, 14 Feb 2024 15:07:27 +1100
Message-Id: <20240214040731.3069111-1-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_200744_848152_1EC70071 
X-CRM114-Status: UNSURE (   8.60  )
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


A couple of rockchip boards incorrectly list their vendor as Rockchip
when they are in fact not manufactured by Rockchip.

Fix the vendor strings to correctly list the manufacturer


Tim Lunn (4):
  dt-bindings: arm: rockchip: Correct vendor for Orange Pi RK3399 board
  dt-bindings: arm: rockchip: Correct vendor for Banana Pi R2 Pro
  arm64: dts: rockchip: adjust vendor on Banana Pi R2 Pro board
  arm64: dts: rockchip: adjust vendor on orangepi rk3399 board

 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts  | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
