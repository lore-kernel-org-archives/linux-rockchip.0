Return-Path: <SRS0=cCFl=KE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA60C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:55:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 989B7613D0
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:55:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 989B7613D0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=quFFimssboj9jmy4orw65RMyUmonSePVOURDqMstGDU=; b=B4vQNRoXUVCc0UzUsUjI1vvL+
	k8f2Si5tBPkrjNqFhIwPnrbx1exeoqV2TGTfnNtlYiZgsbT4B10902Z0HUzsm6hEgZIwd0y5wXgXb
	FgPYF8bXTiEYLPn6MhYfzNcdbdO0VkdUOk8lxnWtqN7BaI+IbbWsKW2GzKznvLLhy0vMLJzkWg6sh
	rDCByreCJW4DizY65YB0zPOJD7XQZpB81NpRmIR2EJx1aKYvMq3SBJ4D/F9sP+NoouGkg0nCpB9mK
	2asHXlm2tRDUwcraUznzItLt+AWAxKvGkFk16rLyoKx5B7+Q9LaDNDYk5My+9GfnynRgB+95UYssc
	naFqovz9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftGh-00CY1a-Oe; Sun, 09 May 2021 23:55:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGe-00CY0Z-2M; Sun, 09 May 2021 23:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=WBUtewqkqnBykAWU9a68ou9kuwYflfkEp8B+jkXI3ko=; b=r9Ubnc/HmsdT5MfJZ0RW3ybQcb
 OtZEfi/2oq29HAreTJ2gZqpsE/UC32ajIqbsSzvOjb36xD/6SDv5VxEd11U1ni0MCZnj9+628B+Ax
 cKtPrmtKA2bMQly6cxYCEJzvYJmomhRsAoEXfCJhuXbeKUX2nhuFtdLu3AO5Yv4Ypg4IaRZxvbUJu
 W+UWbXCwCl3csVy7lIpwGkkDOIiIWu6mMSJ72D29HgUpePN37HR+m6UO/50GN5IHrQiVaqi71F/mh
 /X9FEGtT1DcpP6KdNQazMcWUr6vvV3G3PkhoTGIehw93bEMLaND5Fu33XIjiKbTOVKPDZ7IM1Yelt
 bbPn6Tdw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGb-008A0s-Hb; Sun, 09 May 2021 23:55:22 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftGU-0007y6-PJ; Mon, 10 May 2021 01:55:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Robinson <pbrobinson@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Use only supported PCIe link speed
 on rk3399
Date: Mon, 10 May 2021 01:55:08 +0200
Message-Id: <162060449718.1266480.9690323192320155631.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210413141709.845592-1-pbrobinson@gmail.com>
References: <20210413141709.845592-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_165521_606035_70F7DFB6 
X-CRM114-Status: GOOD (  10.26  )
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

On Tue, 13 Apr 2021 15:17:09 +0100, Peter Robinson wrote:
> The max link speed supported by the rk3399 is already set in the
> rk3399.dtsi file so don't set unsupported link speeds in device
> specific DTs. This is the same fix as 642fb27.

Applied, thanks!

[1/1] arm64: dts: rockchip: Use only supported PCIe link speed on rk3399
      commit: 954d5986afa50c178ea7554e6abdd611d08f5ade

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
