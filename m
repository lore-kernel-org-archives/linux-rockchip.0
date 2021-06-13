Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54AAC48BCF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:27:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EAF961059
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:27:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4EAF961059
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dMkm9ngpRuEI+BX1md+ujU8NI/fUrn2G+xNTjPV260=; b=Hxhu7M0jebnYUm
	Ge33bebQvo/dvm7uv82mNAweQguOtVPESS6RY//gxQAUQlDOVCeA+zabuX4gLV2Alb0LyElx8I0mb
	yujlSWdqBvNy9swLK33cdTOUAr5jgOmorwY8I1DQXG7VQ+8cgjMf1szietmTa8vuJ4LbXjUJM502X
	cGDXhepHSySpi5DQXjdpW9xhFo0BkCvPMG0H6g30FOjsa32WRFwXyFwFQF6hLGFlSe9W8AWsTJBAI
	v7FCAth1+D6wffoAvYbmNCBdpy2yRo9nNIljFLN8j+FfiuH+RPCGkccHa9a5LlHrnSk4uELiwiFH+
	irySeh+BuiV1ZaSRKMlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsSxZ-00AjAh-GL; Sun, 13 Jun 2021 16:27:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsSxN-00Aj6K-8c; Sun, 13 Jun 2021 16:27:30 +0000
Received: from p508fc96c.dip0.t-ipconnect.de ([80.143.201.108]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lsSxK-0005DC-3b; Sun, 13 Jun 2021 18:27:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-rockchip@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 00/12] Add support for older Rockchip SoCs to
 V4L2 hantro and rkvdec drivers
Date: Sun, 13 Jun 2021 18:27:21 +0200
Message-Id: <162360159829.3586115.11354348703050146117.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_092729_329491_A78C9784 
X-CRM114-Status: GOOD (  14.77  )
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

Removed some unnecessary added empty lines and

Applied, thanks!

[08/12] ARM: dts: rockchip: add power controller for RK3036
        commit: 1a4eb37f3174d3a54e40392abcfbb9b3949948bb
[09/12] ARM: dts: rockchip: add power controller for RK322x
        commit: 623ba75a5d6b8e196a21f3ed36d26a5f6db459ce

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
