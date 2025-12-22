Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 138F5E674AF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuhjvW9hyqpiGRXHd4yqfDswPxptE7qAVt/2tvl2tSU=; b=E4jMGdRgV1rhg7
	A6VcjQLFD2aLkx0wSrErGuwPStKsY7LlEt6ha4Oh7uMUnwPjIcUFKQgN8qeFxP9UzZQViRkl2IEre
	AWJgD/cbRmfwDOxULkVrxevQlv/Pf9NOQ6N2GME0ug4mbrZib65LamXKeSLP6deogboziy/Z5TvoT
	P/q7FVdCivI/3jACI6IDMOBOLyOffD6saM0fy1qS5BtCE4km4zR7/YgHiq3g06sI4XS8nIhJt1E0w
	kfAOBzPRyionPZBmheJj5tOkpD1vx6k4TqcuQf11BYIVGYw8hoRkY8MRfmDB29F8IwG6x3WcKeixi
	LoHDigBfm6UmT37HjSbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7o-0000000Dp30-43Mx;
	Mon, 22 Dec 2025 13:39:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7W-0000000DovT-2ItP;
	Mon, 22 Dec 2025 13:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=lvSBiA96XprMw9g2h8tGQlpLQ009YJWbOJNmgOafPrw=; b=LhKx4KgE7znEfNU2keSIk1ifK9
	5r7ywd1Wx4YpCyD9Yb01QmKS3WIHKuNVmFz+Y/JIicH800xux3gp4yjTXY9QQnK+xBz5HOrStmDwI
	EYXJ3OslKvkRntgOXGwUm9yxZsJbwvRsL52kmXNG8YUdWPPlc5HrOgefY32iLPUnFI+vPIAbTypPn
	v07Y0FUdgjPDtKjRD/T6Kt2LNv5qAs0DQ+ujCNmEuTmsCAlAG3bLDrD21x+NVm8WFuxsPA3gorWMh
	tJbfMW4fitsri2s5BKgCAInDfDh1uDWWkk4TUEHPnk+3F3b4lbb5lzH37ZdCv+G+SpyH3wUuorFSm
	pmEkS7Rw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfG2-0000000F3EI-2yTu;
	Mon, 22 Dec 2025 12:43:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lvSBiA96XprMw9g2h8tGQlpLQ009YJWbOJNmgOafPrw=; b=nCGqpI39LKtqphhROFziDhtyVc
	GWPuCUiaVQ2Q3jc8H8D3lgxnaILu7MI8V73RLHsGV7T1sTE4h0dmh8texUN4xwocGGzADjqL1dxhZ
	imEOWqgtSueNf670vuXLftf5G57PrMDrhCUyO9/ZvbgFn5qvDWrrNFNGQhTtPQVYx/WKW2u/jybYm
	LqrEbwnFGElRCRFtHAfEVUj/dCKaPiTSBC/GKbHmuQ8ye2EpVWlMhbkI2q/qC0Q6/pvDWV7ArdSfd
	3A9ce625BYeMa5u0BC1EFR6GaMtNBcpoM1LNQTLiQ/FrNfRw9VOHB8uHX7WyYgwD9D012gMEyMk5z
	vGm7wVgA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg7K-0005s2-Fa; Mon, 22 Dec 2025 14:38:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: remove rtc regulator for ArmSoM Sige5
Date: Mon, 22 Dec 2025 14:38:22 +0100
Message-ID: <176641067333.1648325.14071250323791790543.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251220100010.26643-1-amadeus@jmu.edu.cn>
References: <20251220100010.26643-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_124326_805763_73D72277 
X-CRM114-Status: UNSURE (   9.79  )
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


On Sat, 20 Dec 2025 18:00:08 +0800, Chukun Pan wrote:
> According to the schematic, RTC is powered by vcc_3v3_s3.
> The vcc_3v3_rtc_s5 regulator does not exist, remove it.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: remove rtc regulator for ArmSoM Sige5
      commit: 3fc7029d3009682b27be2fa2cd2269bc6f104c2e
[2/3] arm64: dts: rockchip: fix hp-det pin for ArmSoM Sige5
      commit: 341735d92ff868eb4c46beafb313d66f015809be
[3/3] arm64: dts: rockchip: enable saradc for ArmSoM Sige5
      commit: 3025d360f03515d3f6396a5cec339e776d62b2da

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
