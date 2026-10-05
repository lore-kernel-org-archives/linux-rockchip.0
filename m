Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8EF8CA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 19:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5WZruRubKHSJtIR/fr09gpcCze8eYoY8S6WJvuUH04=; b=0kzEcktYkyK33f
	lwDFqrTXUrfpRsiA95EdNptQ2QzbexT+aCpbMyJTuSEA3j3T524scKWYE2JvQoV3zZ9ZreuFBepAs
	jc5HcXG0ICaZTvcVOHesdXLUUDX9aJRsqTWW/EbGHfWNOklEUC5a+q8PL2fdVT2/xzgDBeC9Elk20
	s4xHeP57Qwy21w31Es418BkZoIUHLXT3YAiLC5UhsazHAWQNRGD2jwX3p4canrq08+ciGGNi3cCW8
	JtuYX3Oy43GZuR1wY7SRa/6TY4ouRvfHEf150muiXfr8yvBVG2s66Aijfa8ROJm1sXbJwRtQNdMk1
	s8QyvQeytQ5TEVkB32pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDo2X-0000000H2kQ-08I0;
	Mon, 05 Oct 2026 19:07:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDo1d-0000000H2eQ-2iRu;
	Mon, 05 Oct 2026 19:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0iMyjjmTU9UJGjFhBX4xQCZ5Or9tqnivx5Sft6lCQdU=; b=Rx5f9B679fWG3UMPXQv37ZDcYh
	FXDYTOydla9FqTuweIsT9Ucf8nWiV9Rdax+VMf+M6jGUiIrgkTtpxalCnZiXUB9TgEFM7d0si8h+S
	S79iGZTwJW+fq9orsPAx+UmFC9yUcMgzD0Ifa1MciCD1p4jcTJ7NCnFsWkFeYcIrryNXVRxkHw9a/
	iFDZyF7aHN/tcWi+1h9nt3dYM7aWzqAG+NmJb34iR9WpZZdk4CgwlWSLMCGYmNCE8HCdY3pXibNQ8
	ahniwyNzEliyvXZzO7ZN36hal9fTKuPb4UtDGbzTJvDPJeux4Fvhk+YSRgOCNoMW8zuK//CECU2+J
	Sp3CDumg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amin Gattout <amin.gattout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Riesch <michael.riesch@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add radxa camera 4k on rock 4d
Date: Mon,  5 Oct 2026 21:06:51 +0200
Message-ID: <179122712930.3317128.4716546981671475974.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260925-rock4d-cam4k-v1-1-c9519c794fb3@gmail.com>
References: <20260925-rock4d-cam4k-v1-1-c9519c794fb3@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_120701_691952_D038C638 
X-CRM114-Status: UNSURE (   9.17  )
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


On Fri, 25 Sep 2026 14:16:34 +0200, Amin Gattout wrote:
> Add a device tree overlay for the Radxa Camera 4K (featuring the Sony
> IMX415 image sensor) to be applied on the Radxa ROCK 4D camera
> connector. The camera connects to CSI HOST1 through the MIPI D-PHY0
> in full mode.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add radxa camera 4k on rock 4d
      commit: eea8ce042825cea71009cffc13bf564afaf7dbe4

moved the &csi* nodes to their alphabetical correct position
above &i2c5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
