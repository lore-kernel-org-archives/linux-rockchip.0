Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B5CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 19:48:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EDE2A6115C
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 19:48:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EDE2A6115C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MyKvZTyhayCcPlDpiv6zf+5GcZqLW17Y9BEGaxTWmU=; b=YGbeQD0+CV+LjB
	CBTgwknJ+Gh1TqmTfXbIKNE4nQADnPKYBB1iTGtE/wtvO0OFKLpvnQane7ebl3OmtwKWEbonIaAvP
	q0/Qlcn5x39T/g8YuYY6syup8/D058jVAko572rxGkjY4w1ucPYSuiVsFY6AbQ3s++RdZFf+pvZOS
	WZczqOpWL+R8v+do1U3PSBSe3ug/cfdZYdcA5olBZdA6qmM85EpeRYYtbeIuARKIQiha/EgpJBRkh
	hXQEsEOiR90jfwXYIeCR4XXmPDruS7U9yiEVg3oevKmmAKeaGPMp+1v8eDFPNRVtfTnGOtdzTC+BA
	BuG5EU5fUbAc4pxEwbUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbpey-00BDGv-3t; Sat, 16 Oct 2021 19:48:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbpew-00BDFz-6z; Sat, 16 Oct 2021 19:47:59 +0000
Received: from p508fce7c.dip0.t-ipconnect.de ([80.143.206.124]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mbpes-0008HL-Q4; Sat, 16 Oct 2021 21:47:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>, lee.jones@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: arm: rockchip: add rk3368
 compatible string to pmu.yaml
Date: Sat, 16 Oct 2021 21:47:51 +0200
Message-Id: <163441361289.438137.1214531874214547127.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210925090405.2601792-1-heiko@sntech.de>
References: <20210925090405.2601792-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_124758_295450_D3C3A129 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, 25 Sep 2021 11:04:03 +0200, Heiko Stuebner wrote:
> Add the compatible for the pmu mfd on rk3368.

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: add rk3368 compatible string to pmu.yaml
      commit: fff963f4ec42ae78ae03aae4bab9c709460bdf36
[3/3] arm64: dts: rockchip: add powerdomains to rk3368
      commit: b394e70cdcabec1249db3555779c890456ee7ce5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
