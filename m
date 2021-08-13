Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EA73C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 08:52:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D12366104F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 08:52:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D12366104F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HEmTc0AvHjTzaqgPkLyChRGr9LQ6hLPCnXhJd0Erwg=; b=wtYy7ONFIq7EDp
	6Cv+6aX8SJQ5Prun5uHsRlSEy3erNZ8yBNeDRbhwcqXVI2ky776y11OEBGnx+aX/FPtMBPh8sHTFh
	MUmv33r8Ai9T2iQsfFLUOS1R1NCxY/flfMgTN5jNsSyUhhAjdc4qee8VD1+0gTqdwhd/1fVSI9R8V
	gw4yssXsIO9yh3ANnAmmL6WKY/nXQ7vz8yfl54pEaMFvhV34pIEkm+3yrsPeedKtD4UEj3+qc2HxO
	EHBEKmI8CjeEzjK4KtwnxNl1df74lXhJzPT6qqyddYm+e9lxqc4+RQ8UzPd53BayUAWjvz/aYpXXi
	ePis2EQcF3h0CtZTKcrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mESvJ-00CFzs-5b; Fri, 13 Aug 2021 08:52:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mESuu-00CFte-Hw; Fri, 13 Aug 2021 08:51:53 +0000
Received: from 82-99-180-238.static.bluetone.cz ([82.99.180.238]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mESun-00077D-Tt; Fri, 13 Aug 2021 10:51:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: add thermal fan control to
 rockpro64
Date: Fri, 13 Aug 2021 10:51:39 +0200
Message-Id: <162884469492.2596417.6101553398444696759.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210730151727.729822-1-pgwipeout@gmail.com>
References: <20210730151727.729822-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_015152_662148_398CF463 
X-CRM114-Status: GOOD (  12.31  )
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

On Fri, 30 Jul 2021 11:17:27 -0400, Peter Geis wrote:
> The rockpro64 had a fan node since
> commit 5882d65c1691 ("arm64: dts: rockchip: Add PWM fan for RockPro64")
> however it was never tied into the thermal driver for automatic control.
> 
> Add the links to the thermal node to permit the kernel to handle this
> automatically.
> Borrowed from the (rk3399-khadas-edge.dtsi).

Applied, thanks!

[1/1] arm64: dts: rockchip: add thermal fan control to rockpro64
      commit: 440f361af90acff36eb3d89c1f03debeab7b3fb8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
