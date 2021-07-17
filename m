Return-Path: <SRS0=BK9L=MJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 410FCC636CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 21:52:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6554610A5
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 21:52:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B6554610A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ix3gqCfUnPqB215HhiUuhCp5v78HZoXwkUcAa2PDIf4=; b=GyUicUhKNT0jxN
	f+3hTuq0bB6x+D+Ij5GiRLHpFRiJv5tI0lmyN+Q03r5DOlDHWbunNpppdwB8M++G+2LLx5lZCUNr7
	Lnfx+rcx7dodB59MjdWeElO5ndDpgzKX5o1+yGwF9H4p4GDuMADlTHJgR24ZqvuFvwNlFWNUnxjY9
	xV20j+okX5IDYl0m4cNr/YPGpaWTggWt6gwb27n79xZK5mGO3cgdRC5oGRRhHYT5iNP/ugG3qlaXg
	Cb5UH7UAxj2kF7d8bZGfjrZUZQ9XFFUQ2ekzadAUWPU4EdXFPpQ61McFjJNfRP4rju7t8ZfHnyfJf
	epb7gzcx1fFGBSz0iw8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4sEk-0074jR-1E; Sat, 17 Jul 2021 21:52:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4sEO-0074gA-Td
 for linux-rockchip@lists.infradead.org; Sat, 17 Jul 2021 21:52:22 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4sEI-0006yf-VN; Sat, 17 Jul 2021 23:52:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Simon Xue <xxm@rock-chips.com>,
	Jonathan Cameron <jic23@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 robh+dt@kernel.org, Lars-Peter Clausen <lars@metafoo.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add saradc node for rk3568.dtsi
Date: Sat, 17 Jul 2021 23:52:12 +0200
Message-Id: <162655869103.853863.1889773070801652177.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210705012610.3831-1-xxm@rock-chips.com>
References: <20210705012610.3831-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210717_145221_029380_383F2BF1 
X-CRM114-Status: UNSURE (   7.59  )
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

On Mon, 5 Jul 2021 09:26:10 +0800, Simon Xue wrote:
> 


Applied, thanks!

[1/1] arm64: dts: rockchip: add saradc node for rk3568.dtsi
      commit: 3d3377027027b3f5a7447bc147fb9dfabfad9369

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
