Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D34C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 07:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fih8g4V4oIlotiH62F06cPBsdpShHlFShfuzeX3odig=; b=1hKBemBFT5fTk2
	3D1aWhdOZG0SUZd0MFxdhMLIgRM8KKYGj7gwKONCeOgmFCfgCjNdWIjktrFcZZG1vo+dkuZR22Ldf
	xtdNQKvA9r65vOICCXtyP15STSNSEkyovnER4XYa7oSoJVpwf7wonI07xx5qnZ+R+mh3A1wUfxLB8
	7HbSRdrzkZxxIGWwR5ZuNInLLAnEmwQHjF8RAiZTivFAtW5cHFc1rVjQqoSuSVZ2f/7qm9UZ1QeWi
	5wMy58/5aGl72mfRM1ljjBDE73oH2j5/74BGfd3CALtRlOcZgZ+gsBpH11dzJDra+QexFne6fC+QP
	CjNYaUWDEwKTGu2j/CLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlQ4s-0006it-9f; Mon, 02 May 2022 07:02:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlQ4g-0006h6-Pn; Mon, 02 May 2022 07:02:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5ACD660C2E;
 Mon,  2 May 2022 07:02:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38F91C385A4;
 Mon,  2 May 2022 07:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651474944;
 bh=x3yGif9AvuXTPm5d4yUsySCr//SuwzJ1ykDGiwIPmeo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DDo54O/8SwurXXMQj1YTEu6OMLrs5YpUPMKVToa90dt05Bq62zbvNQm0fijdXzxts
 IFOFfn5KHm5VkV/12qs6D09w9bmwOAhuW2DPxUv3vKAibfbsLXawqSfLzzaHmEZC48
 r7UZsIJZ5/iG2SFoO9iLsKQeGjMCLW2mLlWnKjTvZhOgNHGnDTukDC3b+L/9kV2/Pj
 TpugTkl8MrbSf4GqlrY0WPhusyivQ0PD1/B3hO8jgVjdNj53r9rUIlzhnT83GWK378
 A/47NUMS5NNBXSq68tsceWy4ePgYto15xYQHbQt0hJdmvkWce6dMdWdVtkXCKwHbC8
 V7SByv9+di4AQ==
Date: Mon, 2 May 2022 12:32:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: kishon@ti.com, heiko@sntech.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Clean up some inconsistent
 indenting
Message-ID: <Ym+B/GVUqPOB09/H@matsya>
References: <20220421203038.4550-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421203038.4550-1-jiapeng.chong@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_000226_913176_94FC6D9A 
X-CRM114-Status: UNSURE (   6.57  )
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

On 22-04-22, 04:30, Jiapeng Chong wrote:
> Eliminate the follow smatch warning:
> 
> drivers/phy/rockchip/phy-rockchip-inno-usb2.c:1203
> rockchip_usb2phy_probe() warn: inconsistent indenting.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
