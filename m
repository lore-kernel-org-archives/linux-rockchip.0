Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B4AC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:42:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD5F7613A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:42:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DD5F7613A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/63o6byRlkFdU7DbamNRdVpzKNMzq4bLvqot3lC9kLE=; b=xwH/CyNxeS+IOZ
	PZTVSGoFKkcan9WLFRex+LbS1If364ZZxH9TQ+d3nyEiJe1kj1qoz4iF5RMxQ9M3Go2D04C/WVbWo
	NErpPZ0LsZUQ9gcfiA5PLvdgGjX6b3P48xisjmuGZgeJPRUZLfgYQsRcJ+M9MgN9N8E92tYe3uqJx
	F+K214ZjXbnY2HmZNvq29iIK3abgX3kYuqIUk0j4xaStdgSZDDFRR1IqpDMXpdSNGCUADTAJPuo0i
	CWBdO/LWvLZF4Amto+nirOBrGOMzdXF22rpBc/nPiYxkpifvXSpECfGRZjW2YlrPOayOjnp37agrV
	h+bC+np8ZR4iE7eP9e+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIEuH-000KuM-3s; Mon, 23 Aug 2021 18:42:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIEtt-000Kpm-HG; Mon, 23 Aug 2021 18:42:26 +0000
Received: from dynamic-046-114-139-102.46.114.pool.telefonica.de
 ([46.114.139.102] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mIEtp-0002Jl-QA; Mon, 23 Aug 2021 20:42:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix GPU register width for RK3328
Date: Mon, 23 Aug 2021 20:42:13 +0200
Message-Id: <162974163915.2977894.9290643400538669916.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623115926.164861-1-knaerzche@gmail.com>
References: <20210623115926.164861-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_114225_635934_C88273E6 
X-CRM114-Status: GOOD (  11.49  )
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

On Wed, 23 Jun 2021 13:59:26 +0200, Alex Bee wrote:
> As can be seen in RK3328's TRM the register range for the GPU is
> 0xff300000 to 0xff330000.
> It would (and does in vendor kernel) overlap with the registers of
> the HEVC encoder (node/driver do not exist yet in upstream kernel).
> See already existing h265e_mmu node.

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix GPU register width for RK3328
      commit: 3f1c9b99f22c4784bd6f439a63bbf8a61c0335b1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
