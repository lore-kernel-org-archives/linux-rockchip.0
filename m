Return-Path: <SRS0=N5vj=LP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CF82C4743C
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 23:04:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C9EF60E0C
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jun 2021 23:04:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C9EF60E0C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPKWlqW69CbKZyXix6AGneJIaAmiarS7jwY7RQKeMKg=; b=R6ai4QCwByyMH+
	vjgESfi+nb2VfKOqod/NlvQmeceAIEBjvsRFM9D6XRoQNSQcwzsooQEe0xl6TEndTxjexKrBKTNio
	DK/c5KnWLDCAFKygyXZNdw2WOwdEaXy32MKMYiXs2ncfPV1e28KWp4JpLQUQLMG0x3ghdFUzEEprg
	Lfdel43KZ9CdrFVw6/kaa9SEv2HcjNjzr+zs89uOymr8RI5RlQj/o9Jvjaq8zwhLIYlKz3Oda1FeK
	RFYj5o78lpFK/wlWD22ovsuMGoMv6ikVi0SsvwCrIhLJ6ccqxwKCem8pSE/JogE4aUxL89wuOsTdV
	UWcMcUbq0v+8Wq+qdEyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvSxg-0052uP-Up; Mon, 21 Jun 2021 23:04:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvSxe-0052tP-AQ; Mon, 21 Jun 2021 23:04:11 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lvSxY-0000SO-3P; Tue, 22 Jun 2021 01:04:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-media@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Alex Bee <knaerzche@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 00/12] Add support for older Rockchip SoCs to
 V4L2 hantro and rkvdec drivers
Date: Tue, 22 Jun 2021 01:04:02 +0200
Message-Id: <162431663480.82957.13969853774662992128.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_160410_385181_3F98408C 
X-CRM114-Status: GOOD (  15.40  )
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

On Thu, 27 May 2021 17:44:43 +0200, Alex Bee wrote:
> this series adds support for older Rockchip SoCs (RK3036, RK3066, RK3188
> and RK322x) to the existing V4L2 video decoder/-encoder drivers - namely
> hantro and rkvdec.
> They can be used as-is or with very little modifications.
> 
> In preparation to that patches 1,8 and 9 add power-controller support for
> RK3036 and RK322x, since both drivers rely on pm. The drivers for them
> exist already in the common Rockchip pm driver, they just haven't be added
> to the device trees yet.
> 
> [...]

Applied, thanks!

[10/12] ARM: dts: rockchip: add vpu node for RK3036
        commit: 9d34d4aa896d00d398d799caa839a1494ba7c018
[11/12] ARM: dts: rockchip: add vpu nodes for RK3066 and RK3188
        commit: db3fc8fa0fcfa481cd8087c2ee068d1d1988c3a2
[12/12] ARM: dts: rockchip: add vpu and vdec node for RK322x
        commit: 36e9534dfcb5b09b919d2831d6a19aa3856b95a1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
