Return-Path: <SRS0=OM03=ON=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B15CC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 22:25:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6C6760F56
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Sep 2021 22:25:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B6C6760F56
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1n9rncDfTj4t2NmvLnJ2OV20ytucPOnkKT+3U1wHpk=; b=pDJ8GLYRaf00Uv
	6uviKf23xMvqzA7KBS8lIinWr8SjY8EKmuMEgpD0cZRUTr68C9w5J1eJDb8FFQAustoWhuHysKrm8
	YKP/Q+LMGxi7x7ey7ZBz6BwAkB6GxhXtJrfh+Mu1iNYBbrUwNazk+N0PJkktkmEX3QA6IBmE5Qelv
	m2sGYvyURgYKI98dmxbOEwysDUAAhzKMdb4B6/CRJHSlLFY5J7K7t16Bn3XSlVaB7I9VDANbbFTDS
	ORXsjJDcuLBuI2n1lspxTrGRT1RNUHXmnwUPAaYJd0tl6VbSLM6mOMk+e2G+VNkF5GMFwBD860B9E
	kdwxS1Z7sWjL84mKLewA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTX9O-00Ch7B-RI; Thu, 23 Sep 2021 22:25:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTX9L-00Ch6R-QZ; Thu, 23 Sep 2021 22:25:04 +0000
Received: from p5b1274d2.dip0.t-ipconnect.de ([91.18.116.210]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mTX9H-0008Vh-2u; Fri, 24 Sep 2021 00:24:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: fix LDO_REG4 / LDO_REG7
 confusion on rk3368-lion
Date: Fri, 24 Sep 2021 00:24:57 +0200
Message-Id: <163243587941.2556919.15754379297611690432.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210922230429.2162535-1-heiko@sntech.de>
References: <20210922230429.2162535-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_152503_913683_432CD8C1 
X-CRM114-Status: UNSURE (   8.51  )
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

On Thu, 23 Sep 2021 01:04:27 +0200, Heiko Stuebner wrote:
> LDO_REG7 is used for generating VCC_18.
> LDO_REG4 is not connected to anything - delete it.

Applied, thanks!

[1/3] arm64: dts: rockchip: fix LDO_REG4 / LDO_REG7 confusion on rk3368-lion
      commit: 3bd7f3ef3b0f34aefcd09e2e834bbee868179b09
[2/3] arm64: dts: rockchip: define iodomains for rk3368-lion
      commit: 0ed6b51dfde601c8b815a81aab701cd8965c5b12
[3/3] arm64: dts: rockchip: add phandles to muxed i2c buses on rk3368-lion
      commit: 5a73d7ca7f7a64144e03ef0fc8eb6f8e5ea54df3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
