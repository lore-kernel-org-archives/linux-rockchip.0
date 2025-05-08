Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F71C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 18:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5C/B31ICXUq+OxXinIDht70XUf6wFuq1kvGT/Gynj8=; b=rWEUPF4iSe4QsV
	FqpvLlS3Fv47cKkJ2sl/1vuIKQaccX1Av0TBxpgakMjrwEqihURfK3Fdji0n+fkY1xDy5QuRepl5i
	oG0D8A2Akg+Cks7KVf6Pj7RNH4DBK+xkRG0p8O8xrItYBPEywPHoZ0dpDdRAjnN3V2RBL1/RWlTo1
	L9Ge1lzzzvXDrVTOFpvTmItjdCaLhYLo0o3+cjCw3PaF/jis68h0gY+vkf7cHJLCMaeIq9lxs3xR0
	9bmw+DXtrwgKS7Jyapyy8zp5Vi5cOEvuLwkA8JJuGkocOddke0zDVjFKBC00CoIMQNulJ5FYsRLag
	plmW0pP91Tx6QQLEdFWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD68M-00000001Z91-2tdg;
	Thu, 08 May 2025 18:38:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD61P-00000001Y2P-0qQD;
	Thu, 08 May 2025 18:31:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=u475e6wk3oinD7Hx34bMlNEsryoVRoZB/USEIm+YT04=; b=kAv8EzUuouyROeSR7oSMpiHnrL
	zGUml4n/ONRxzhQQWIAYIIFRndZICsnVzI/G0pq/JekWOKMbJMHUH/9ucpoNJUqKYgOPYEPlqtGeI
	u2P2LUZCwhNAwTUkzGEb764DN+zOpeP1GjUNf8p+VTlRo9ORHQZUkixtZE79rMnEgO8rzCcbvyl6f
	KGHOYoAMg/CI/ToSeDN/Q515JqAztCnXyFEATSale840sI4vNhwgWiLeHF01YqrwMYqbaMwqpimdo
	F18c15+e6ck2zvsQwPtLER+DoUm+KYsd3Oq6Z3ZVdaYYL/cCvpkCCBdZ8MwvfCHBpzTUYZsiXuW1g
	Y2HjiK4g==;
Received: from [61.8.144.177] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD61L-0000vi-6F; Thu, 08 May 2025 20:30:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vasily Khoruzhick <anarsoul@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Update eMMC for NanoPi R5 series
Date: Thu,  8 May 2025 20:30:46 +0200
Message-ID: <174672902818.1927548.18144300752160466937.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250506222531.625157-1-pbrobinson@gmail.com>
References: <20250506222531.625157-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_113103_234586_F7C13BC8 
X-CRM114-Status: GOOD (  11.77  )
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


On Tue, 06 May 2025 23:25:28 +0100, Peter Robinson wrote:
> Add the 3.3v and 1.8v regulators that are connected to
> the eMMC on the R5 series devices, as well as adding the
> eMMC data strobe, and enable eMMC HS200 mode as the
> Foresee FEMDNN0xxG-A3A55 modules support it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Update eMMC for NanoPi R5 series
      commit: 8eca9e979a1efbcc3d090f6eb3f4da621e7c87e0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
