Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33162CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhWDjfkSDC1dEYNAZdtIH24cb38GajXiCh+59w03hqQ=; b=GAkqwXMjJdnxwp
	mJ2jATbm7REcmVoT0iX1KdGL7AuY4iCbGGIOhqW98MpFMupeZdbPvV40jCQl/ZHs4JyeUEADX+sIM
	Aw6s0FoOkf37iXXIX3s/eRE2PMcy04oA3tMLUZq4jh5fKORVQQoa78f3koCJHDozonDRFos4RdGN3
	WSERCl2MAAcAoI+nwq0jaCzzS4YaGB3NuIggnw0d2foSo15m9YCkPWBRx8n/5fEjUoxJ/yFFw/Gf2
	tL7tVAd04kW66ElwHjkfK6C498sUfFW9h7Zheu5VhIrZeiYuyiIxifxEoEJ8Zm6vr4I1af7n+5iQs
	nxleeGQ4IQqvHo+5oszw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkS1-00000007o4h-3coc;
	Thu, 26 Sep 2024 09:06:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkFf-00000007lUG-0Kjg;
	Thu, 26 Sep 2024 08:53:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=h9TwpCiYQE/OwndpVtZUJ53LRBPCowtcZ116a9noSco=; b=rcXvHeWwNbuYXMVajDDGJpUi7Q
	ou+zZj0lfCgez/iMkZov75rYRHNDbfl4YigONPwXmdJe3WXLIDLRE6Vzrc52rF/SvU7idi+/227mN
	DLjkCjqPLrN0iiNgrkp5DUs/7gSBsRjn4Bm4enqMSon3+XFkHrSiBKA34mKxd/ycTucPudGShntS9
	h7MtKdBynJqRrHeKkMPplBcfwZ366puBPnkqTTam1B4WPzLkRmv/PhVTuTF9l4OrugrW/O04TVdml
	QHSllCuZKLbNk7ohWyhrkbwdx8cCZSdbfsuUegRZj57p+l2V6BD9J5JmnlHIlf5FqbYki0mgVkKoy
	b6qV/mRA==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1stkFZ-0001pw-W4; Thu, 26 Sep 2024 10:53:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: broonie@kernel.org, oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] spi: rockchip-sfc: Perform trivial code cleanups
Date: Thu, 26 Sep 2024 10:53:25 +0200
Message-ID: <2285557.3ZeAukHxDK@phil>
In-Reply-To: <251242bfc9c4fdc01d930f093022ce0c9481d58e.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <251242bfc9c4fdc01d930f093022ce0c9481d58e.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_015331_155222_28722421 
X-CRM114-Status: UNSURE (   7.79  )
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

Am Donnerstag, 26. September 2024, 10:38:13 CEST schrieb Dragan Simic:
> Perform a couple of trivial code cleanups, to avoid unnecessary line wrapping
> by using the 100-column width a bit better, and to drop a stray empty line.
> 
> No intended functional changes are introduced by these code cleanups.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
