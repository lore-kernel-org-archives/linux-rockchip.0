Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE2A5D2C55D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 14:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9S9fA3XFQrjYzDBSssy829NzKwCLv/XfIVxly3Ry44=; b=iEHTDDlN6nM3Mq
	b3VRwJdJjLVYX3SVvvggm5ZILGM5cWiq27NcEDuagfswU23AmBp6/3V6oPggPtaL/tE05x+lJtR7C
	iaWk6dnInfPKPRNlTuLfgcpKvRPyN90PPRcMy40v+fnK7CDYA6sPnBFVN7O1olnW9r5jjOcRkUP5D
	nMQIFox6oTU+lQAgIl+uf5L9OBVH9OtOH5mCCG65hoqtvOzukjDp8HKbEGai+lSlgiXZea27d4MeZ
	ZdTx8JRdeF9I94D3RLyM51aoIWLbEcnHyUL1ZL6wHcP0hyYAfYz+Le+7waL+4AmSUWrg14xuUumH7
	74bYIGYhFlY5S1s2Gf1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3FhG-0000000B4Y5-13iz;
	Tue, 22 Oct 2024 14:17:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fcs-0000000B3pm-13Fg;
	Tue, 22 Oct 2024 14:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UxZ/LQTB5w+igQ3WZWFh8HXKq8DmKFsglx6Gq5shKmc=; b=H09xsRv5eft90VEFSHY0B7tjJP
	15SfPFxKyTP8k70hxWATAR5D3p+Y/a9u2pEDDAjjEEvuyz19mkt1U4sSbB3sioH2Dufij2vvx9CuV
	ZnPbBTyL8Qm45mEhuOgiv760AKZ4XFy9l0ylzVxJMK9/NVPTdvpksO8UY3A9AhyNNQB8VE7pWXXsQ
	7c5ujrp1uN88LDjmtpcgswUHtLzHdcFBK9aCPXzee9f5+n5oFBMBk7NtQV78z1P5O0cnJn3Oozfkz
	AjXnZv1lS49sD/aT5VaFpFoTiJCyaHo/hnu8t/NB7N6yS+PoU3alcu8sAcU13enAJerFM0tf7rdwv
	KK6L2BRQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fcp-00000008E5M-0zpP;
	Tue, 22 Oct 2024 14:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UxZ/LQTB5w+igQ3WZWFh8HXKq8DmKFsglx6Gq5shKmc=; b=QnMI8CyDwu219x6xL4nByl2Ch1
	WilKJ7www6+MbzER6ZkGZrPv3n9VWxLsZ6PPojNF0Di5rD9B+mxRfZHAksHM3x+mtXPdT2Gedl9bn
	Hs+6CXU9vJGQRFt4GxIDISIYNrg4V/HBg0+HA1kY49iZFzfNp40I1GJmEZ5dw6UfYTBRvyKgfcafs
	czN+DI1zPWH1vJWt0rVkw1s4Apl+hYUXM71oPtNIb2fn03eVPXI6aIw3d6bJfz4E7PSDQy355yN7A
	+pSxngw0+7Jwkc7JNGi0hn6s6SsmM6CEl6jN4nTaz3IE+GuCmU/q2r2jCf5MIZTNKw+V22iA+Ffz/
	Fks5qoyA==;
Received: from [213.70.40.217] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3Fcl-0005eb-RR; Tue, 22 Oct 2024 16:12:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCH v4 0/5] Binding and driver for gated-fixed-clocks
Date: Tue, 22 Oct 2024 16:12:28 +0200
Message-ID: <172960632904.1476617.15904648018389149552.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906082511.2963890-1-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_151243_484057_4B5D494A 
X-CRM114-Status: GOOD (  12.02  )
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

On Fri, 6 Sep 2024 10:25:06 +0200, Heiko Stuebner wrote:
> Rockchip boards with PCIe3 controllers inside the soc (rk3568, rk3588) have
> external oscillators on the board to generate the needed 100MHz reference
> clock the PCIe3 controller needs.
> 
> Often these clock generators need supplies to be enabled to run.
> 
> Modelling this clock has taken a number of shapes:
> - The rk3568 Rock-3a modelled the generator-regulator as "phy-supply" [0]
>   &pcie30phy {
>   	phy-supply = <&vcc3v3_pi6c_03>;
>   	status = "okay";
>   };
>   which is of course not part of the binding
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: rockchip: fix the pcie refclock oscillator on Rock 5 ITX
      commit: e684f02492f99d6f6f037a35a613607339cf8e8f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
