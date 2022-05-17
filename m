Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55459C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 18:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVKQgaxHEJ3GwmgNgyikz+/8INpfnDNh9sO0jshYZhc=; b=fjggNLgwIj3jKM
	fJpgeZ9bK91dH/lTS2q92IbUyESVAyTGmJtTGyT8ksnAWgJNfag6TJwkYN7ANemVGEx+ehN2wAnar
	NcDg+UJsQcZ4nE4Xvw+AbDJSit+mjDYTGZP2bpVzvEvkvjm/icX/AVN0yVmTCLEvCdScZI0XN2QpM
	lzUa0eTjsStO/Q1Ak/TLwFXT2KY2xhdh91BPpIL69AAzxf6UnlcU74IMO1XqyeYVGomUhmIsP38m1
	4RQObO1bFTXljmxMT+kAuC8qWHtUxwcf48hopdprlCVl3j6w6lAiK4uNLkOCliDpVH7ebGqbWjMre
	WMXTz12p+mIRhIQSL61A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr1qQ-00FEoV-60; Tue, 17 May 2022 18:22:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr1qO-00FEmB-8e; Tue, 17 May 2022 18:22:53 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr1qJ-0003jU-Mh; Tue, 17 May 2022 20:22:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 kernel@pengutronix.de, Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/3] RK356x VOP2: Change register space names
Date: Tue, 17 May 2022 20:22:45 +0200
Message-Id: <165281160018.3114782.11789301841045790967.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220511082109.1110043-1-s.hauer@pengutronix.de>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_112252_339480_2FB9A435 
X-CRM114-Status: UNSURE (   9.90  )
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

On Wed, 11 May 2022 10:21:06 +0200, Sascha Hauer wrote:
> The VOP2 driver sitting in next uses named register spaces, but the
> binding lacks documentation for that. Add the missing documentation
> and while at it take the opportunity to rename the register spaces
> from too generic "regs" to "vop" and from "gamma_lut" to better looking
> "gamma-lut".
> 
> Changes since v1:
> - Fix dt_binding_check errors
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: rk356x: Change VOP2 register space names

applied as fixup to
[16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
        commit: 9b3c9f6e57ef26b8478da64e3d49d0438291a98a



Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
