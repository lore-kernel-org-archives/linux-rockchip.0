Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,PDS_TONAME_EQ_TOLOCAL_SHORT,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 152DDC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 10:06:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7BBC964EBD
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 10:06:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7BBC964EBD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5g6a6usrRyb3QlKiXBZRJ+8UP4Hx9lYsuhCi0kve7rI=; b=Yu3qM+FV3tGdSqrceu8ec1qzd
	JyWNU06KXp6tcHPwK4OrasaTrT0/VRe7w8oA03867itssFD5S3p3/Ut0IN+YXNvka9S+NS8HXEN7V
	u7QD6GTLjc/pvDt0iPurC0dbxcToSjCw9RNUenEqYUVUuoPDVsDSauWSj3sQ3drHUVGEqOJHBCmgb
	bHm6/yrTI1B8Xf/3kfzKkMnohQ2mpft0y60HkdybCA/ZLVogU6nVGY/Clvro/iFd06JPyspVM/Fl6
	zAHlBofGK5rXJQBxrSPz3TukenKh6Vmy1jA47Bsxi87VLg5GCRq9CH0IVc9KjEkNcuqMLziebhAld
	VTHIql9mw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLk7H-00FUC7-ES; Mon, 15 Mar 2021 10:06:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLk6p-00FU7i-3b; Mon, 15 Mar 2021 10:06:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D069E64EB3;
 Mon, 15 Mar 2021 10:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615802757;
 bh=zDsdLBuO+uBhHqwxgi/XFCMbI4kEx1bVVgCTA34RTUs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SKbX2BD65Mt+sXk5dNZBJo4IQJ2iTsZqD6orkzyvbm1wUTKklGKCClzx/KRo6Lp0d
 6EOW9vqUKosdpgvexPDNPB/BPmFEismKBEZqVPksCW14k3mTgFSc5qJmTcDoP+4ZMm
 EW3R72FnUtgvyCQC0ICQ3RUBDNJO/l5dCbCbj21faEw/RvpqZ1EvUhtqXfL0iHvTIT
 yGhlQcqvImitbwozvc1OgbChVxEodt4at3+cgslFH+TAoIrLg4T/E8TPata2W16kjX
 Zfs+t63ixvp9rdbZQri7VxnHUD33isESDvBLGTaDaBsCFBNggf+SAZP2WM/bwYVP1+
 C76+GQxOayAsw==
Date: Mon, 15 Mar 2021 15:35:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: angkery <angkery@163.com>
Cc: kishon@ti.com, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Junlin Yang <yangjunlin@yulong.com>
Subject: Re: [PATCH] phy: rockchip-typec: add missing of_node_put
Message-ID: <YE8xgRO+Dh6SOuDx@vkoul-mobl>
References: <20210216084847.1544-1-angkery@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216084847.1544-1-angkery@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_100559_492356_5AA806D7 
X-CRM114-Status: UNSURE (   5.36  )
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

On 16-02-21, 16:48, angkery wrote:
> From: Junlin Yang <yangjunlin@yulong.com>
> 
> Fix OF node leaks by calling of_node_put in
> for_each_available_child_of_node when the cycle returns.
> 
> Generated by: scripts/coccinelle/iterators/for_each_child.cocci

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
