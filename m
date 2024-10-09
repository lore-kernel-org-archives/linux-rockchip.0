Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8614CCED611
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 23:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eutHleqNm2FyvGHIx5bbip3h0ulbNnp3Gn2QSQQmQGI=; b=tFLB1uakCU7Rck
	TF6LK5xQr5snVpNoOGuSb2kBsuAqRqMHi8YueW/hVKo6r+2hSQf2F06ISgJ9hB2d8qkXBOxOzPWPs
	uvIkPoZtfYKFmeGjLzuNs94zi5d5YJPOJq0xFsfqrP5Qy9o/xAdA8AwIgmRFVIG7EiXkrah7P6bAt
	Po7Zc2YaAJ6Nq1aMv4NdbrRhwlaRwGLHKZLm7gWRmnjCwqKTlujkrLWl+YImMH8dk/OsAKyY0lrKQ
	r4AObV7JKI7kUO54RnCfRmBvTZBio+CIA2UvY3usMS1CvTVEOj7i78q3GZGompPADfy7WYAy8weSP
	j/MkuTNN8Te+riKKFjpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syfnJ-0000000B0Qp-0NL9;
	Wed, 09 Oct 2024 23:08:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syflx-0000000B0Ig-1s3o;
	Wed, 09 Oct 2024 23:07:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A29FB5C5E3E;
	Wed,  9 Oct 2024 23:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71ECBC4CED7;
	Wed,  9 Oct 2024 23:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728515232;
	bh=TVqBbA4LJPgAz/Pby5EMBMLAeg4R/vxfOcMu54Ul3Jw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=JnkJyJNnPY+0ghfQZ4QJ9EvBtSftcoN4JE/D32wIgEh4d4rCtfVTwsEFav18Grcgd
	 NcXQa0hSdOr2Qp8de9LL869NFm5qG3ta4pYQi+xtziEDirhSpkRiM6IANfKEHegLGp
	 0FZwBDap9uYdVbI4B8mqO6UQ4L0UwwWyoe0tQKnzHsCddFZC710f9jViOTaa5ND68r
	 9omC7QT5//79bpGqdcVsx4AYCYrTQOs/2m7Elpirpgi+xhs/1WWUjeyXJzOlDTpb8B
	 rrDWE8e9Bv6VMDEczGWfeQQe7Q59sAMFSr62t/mHtxlexUA1uu4DaegcIVGdfJdOXn
	 p3Srfap5Cg+fA==
Message-ID: <8e205197e157cd8ca77b7315887e2932.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240912133204.29089-2-ziyao@disroot.org>
References: <20240912133204.29089-2-ziyao@disroot.org>
Subject: Re: [PATCH] clk: rockchip: fix finding of maximum clock ID
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Yao Zi <ziyao@disroot.org>
To: Heiko Stuebner <heiko@sntech.de>, Michael Turquette <mturquette@baylibre.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Yao Zi <ziyao@disroot.org>
Date: Wed, 09 Oct 2024 16:07:10 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_160713_544757_7F1F94D8 
X-CRM114-Status: UNSURE (   7.10  )
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

Quoting Yao Zi (2024-09-12 06:32:05)
> If an ID of a branch's child is greater than current maximum, we should
> set new maximum to the child's ID, instead of its parent's.
> 
> Fixes: 2dc66a5ab2c6 ("clk: rockchip: rk3588: fix CLK_NR_CLKS usage")
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> ---

Applied to clk-fixes

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
