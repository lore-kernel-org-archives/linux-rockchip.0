Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C36C48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:27:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 430A761059
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:27:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 430A761059
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYODLt3KTRIgVDCwGO4p3w1RHu4rijkYPZrSr+ABDek=; b=XHP8AipKin1yAT
	+FE+qJZ6cmubw5rhOYK1hfXQQr+EDTxY6Bzc0DqzhoRyH6ESOXvxaNLd97sJCckcEylGJLbkOcVNx
	9Hxe06Sf5Xj8jNQo4OX4FN27ZNXQ7kvqsdh0x8DPPqSGsV4eKf7zpkoYdJQIyxvOlL0I4+Ie6W72J
	1u8c6QS1qF7zOhaRR69I6a3Ptp00SwHZz/A7m0GdZvRXr0T0jwlyb64g/c4u+BOv7LCg0Qg0JEeau
	zpU8D8hhjK4qUnDAh92qkmAoI1ce7DyWD/mnB490Te2KsTIUjxmrpkSEDfz0OZ1bywxs1Ipa10bR6
	PyEIZzathGQQoG2LoIQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsSxO-00Aj7Q-8f; Sun, 13 Jun 2021 16:27:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsSxL-00Aj5w-GK; Sun, 13 Jun 2021 16:27:28 +0000
Received: from p508fc96c.dip0.t-ipconnect.de ([80.143.201.108]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lsSxJ-0005DC-KL; Sun, 13 Jun 2021 18:27:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, paweljarosz3691@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: add labels to the timer nodes on
 rk3066a
Date: Sun, 13 Jun 2021 18:27:20 +0200
Message-Id: <162360159829.3586115.9536707519501339660.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210612184733.2331-1-jbx6244@gmail.com>
References: <20210612184733.2331-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_092727_566189_115E5F85 
X-CRM114-Status: UNSURE (   9.27  )
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

On Sat, 12 Jun 2021 20:47:33 +0200, Johan Jonker wrote:
> While the kernel doesn't care so much right now, boot loaders like
> u-boot need to refine the node on their side, so to make life easier
> for everyone add the labels to the timer nodes on rk3066a.

Applied, thanks!

[1/1] ARM: dts: rockchip: add labels to the timer nodes on rk3066a
      commit: 3fedcc636e28f6188b6bb126199eda031bc707f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
