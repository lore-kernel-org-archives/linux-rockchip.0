Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED35C761A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 13:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SnErNvi0nndZSO2PXDBGwyk+S7wzMGsQMKivKRe4RvE=; b=fMoyB89I1VhjFz
	P2PMOdawmfbYK0aju8FdLi/2UKA1yBHONqo+fBrHY2+YibhfGQrebH5LyQVYephdRnu4A/rwpTr5O
	auTYi7gSvfkXq07YXNu8f/vsvJj0SSN8P/T4sqIGec7QXUCuUeyz2TYBNPGCzXfTh/o11w8D3z0Bf
	6TRkIWdnWtwZMaUpkveCROvdwmt5poCKaxdBU2jqROuQ0y6UU88H2tHr2cT4no+CUGwW+kg/VPDzj
	Edzb66kXJqPD4ZEXxLVWNdmQAiqeBXGxRrb2/aeBAROIc+HiVSeNRhRL5mqNJRyu+H49VUDAWPgb0
	TBRGeKEH2l47Gfq5BGHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piFCC-007bZK-29;
	Fri, 31 Mar 2023 13:53:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piFC1-007bWg-24;
	Fri, 31 Mar 2023 13:53:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 13D0F62940;
	Fri, 31 Mar 2023 13:53:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDBC9C433D2;
	Fri, 31 Mar 2023 13:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270804;
	bh=iobnNx/k4Sc2xMbYMQJiH+DrwwFFMu9MAZjj3G/BEow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a4SmCF/0mzYQdQsMPReJLAifywz8g/9ccxuuOc1zINTi9oWXgfjZXskwB+h6Q1+9U
	 kRPzZtTwMFZ9VzXer4L2cmi5Q9JtH7bgugAkEbvxfphndLHu69CmyzZm+qpNQem4Tf
	 x2ZwXLfgcKWeXkh9uIlQbedWp71McJMkSI07P1J/jcRMN0x42NV4eULjpXvJ4HBZ4C
	 4gESQ3fKOPHhAYILMfymW9G7D5oAW6JG2AifhtQfSF7Xkr7m0Pe0q1MmmyKIKnL+M5
	 P5pXXoxDc5uH7pEaFq4X9A74IlcMTvvJnWU9AIpGWOMTHUWzkkQN7nSCV+6hHbZYo2
	 ypHyZgTPOOuRQ==
Date: Fri, 31 Mar 2023 19:23:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: kishon@kernel.org, heiko@sntech.de, nathan@kernel.org,
	ndesaulniers@google.com, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH] phy: rockchip-pcie: remove unused phy_rd_cfg function
Message-ID: <ZCbl0Aa7gtvXZ/58@matsya>
References: <20230321122503.1783311-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230321122503.1783311-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_065325_737167_3313BFB6 
X-CRM114-Status: UNSURE (   7.01  )
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

On 21-03-23, 08:25, Tom Rix wrote:
> clang with W=1 reports
> drivers/phy/rockchip/phy-rockchip-pcie.c:122:19: error:
>   unused function 'phy_rd_cfg' [-Werror,-Wunused-function]
> static inline u32 phy_rd_cfg(struct rockchip_pcie_phy *rk_phy,
>                   ^
> This function is not used, so remove it.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
