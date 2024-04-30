Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EFF7C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 05:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myk+zzFKzI5/xDkIiFPo6rTjQFfzTibqRYO1JHIBgnY=; b=IOXYqZrYtst1+3
	KjL8Km5O8XY92GM3AyYbltH5bzmNmNa+f5dIzg4RGH/8E3JMxrbKZwLZYrMKjakfzNY5tatdUL+4M
	xf8r2xepLLKa7DF5n194ALdbCCNzVaFa0PzXKte8JkG9O8Fgc2XXrQFxQuaHdlMTDqZL+NxZ8Fkry
	jD1bkRTT9Gw0KJSfme8/QSnjCt0eVY7vzSsOFa0iCXBHA7HexbYf6vdvqI9Cg9IJkpGX3xYUy6Cii
	ei8jvez+5+KqdMfI4FTvxLN83h0Kyjjt2UkpquJ1ydIvJU1Yt57GbfNT9dLTlqX48wZTxUBAGWRlh
	n7kTf5jjlfMQfofnB1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gGf-00000005AnU-00Uz;
	Tue, 30 Apr 2024 05:43:05 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1gGb-00000005AmX-0T9c;
	Tue, 30 Apr 2024 05:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=In-Reply-To:References:To:From:Cc:
	Subject:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=YW2t+Uyy5JF6+HVc5XVOdFTIDcJXXBz01l/hz5M5h+E=; b=RFzzKtqEIfkcbwU9s3vkm6rEkn
	z9kFRqXkyZlhK7yRyTDnWqG7sDyTDpsbL9QD81sD537u7yBvW7W4PDPFUDTtcWtLvA10vqahiOeXg
	UgafH36gq7N+sHSKNrQg4LMLMvhzOnOIHGzsAUDnTJEchrXtr0V50INDzB6osSVpZ6pL6ZZbWG12d
	qIxcnm6xb7Vc2ia0P7zZCJIJjMoSAlxekpO5bEL9PVaeNQuon1PbBPmQ+52b0ybFfi7wc5C8oPJh4
	qqQR6dt0+s3xhuGvPRdKy1kcfxOHgif1oX0kLR/LSmIStTSLVUppdvtQb006goD1dMKjn99UO3/FB
	UKnk4a5A==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1s1gGQ-000KCY-FG; Tue, 30 Apr 2024 07:42:50 +0200
Received: from [185.213.155.203] (helo=localhost)
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1s1gGP-000Opj-2L;
	Tue, 30 Apr 2024 07:42:49 +0200
Mime-Version: 1.0
Date: Tue, 30 Apr 2024 05:42:49 +0000
Message-Id: <D0X7UJELGST3.2IL1AFDJ89N07@folker-schwesinger.de>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
Cc: "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Rob Herring" <robh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
From: "Folker Schwesinger" <dev@folker-schwesinger.de>
To: "Chukun Pan" <amadeus@jmu.edu.cn>, "Heiko Stuebner" <heiko@sntech.de>
X-Mailer: aerc 0.17.0-118-g0a1af14fd916
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-3-amadeus@jmu.edu.cn>
In-Reply-To: <20240428123618.72170-3-amadeus@jmu.edu.cn>
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27260/Mon Apr 29 10:23:47 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_224301_461652_CDB50FE1 
X-CRM114-Status: UNSURE (   5.89  )
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

On Sun Apr 28, 2024 at 2:36 PM CEST, Chukun Pan wrote:
> [...]
> +&sdhci {
> +	bus-width = <8>;
> +	max-frequency = <200000000>;
> +	mmc-hs200-1_8v;

Out of curiosity, does this board also support HS400? From a very brief
look this board seems quite similar to Rock 4 series boards, that do
support HS400.

> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
> +	vmmc-supply = <&vcc_3v3>;
> +	vqmmc-supply = <&vcc_1v8>;
> +	status = "okay";
> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
