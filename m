Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61554D26D94
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 19:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3ED8IoC4+MDR2gVRqG/xjFOLuNgkuv/E4KkjtjNSUI=; b=YAqP6dkgt4vC/K
	QJB3ygTnLZee+xdWR3IW4k7/lKQTO+h4rDWl00jPp8BnKXPmta1weotw3hAcRdBgNH3sDjRQprjOF
	OB1+RqCO6r6Jaq82QdwUjxJge9v1z2YxkyOS90YnZnEmkjKDPqE6LvYzhZEU2tF8YGXbxRH5tfsyf
	abb84PgmEQVCNKkxfMgQCoiylvSYyb5vHPC0xRwBAH5f+GGa2/28OWlRhKeYM0t0OYA02678ZqLn/
	Y8isTQA8LNtovIh6Vknru1vNC9xhfhz913YD95ESTbJp98MW/kNmOtGZlRecIRJfCd4ZpqWCl9083
	Cfz9X2uRd2gbec9m1UKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veI74-00000002wD6-3a2q;
	Fri, 09 Jan 2026 19:25:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veI72-00000002wCd-0ThN
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 19:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+24tglU3uRNfR8WBpyTeUFqEPV7UAKiBbfxKl2lF2eo=; b=EqSo1el8KT97vkoLiLwKnDxsAU
	SRwtc/OpfeAvG+rqYympG5yaWyUf3Yy4dMBKtBgm/P/Fu20Gv7tuwQpiUCFyxle+GdtxEalQGtlsP
	7vQb9MXRXEmYiDuv4hIoYIXXvBRdjnjhmPuLSu7AkFJZ4Gco7VnG5mD2sFbpAYuoibuFjDHioFNkB
	abjhG5J0tMatH75N/QbKHyV/VrxMBt83bc2gtTbar2r+QiiLuIij+4/x3S3AyA/uxN+OWZGiRN+qe
	7gMbA/Mrq+RrCE1ihwGz8dR81VM6rHzCi5mDm2lXBAeFTdoLP91HrVBEOjgy0mc+55SpLZXjm5HIc
	QQNRCvHw==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veI6y-001fmF-JC; Fri, 09 Jan 2026 20:25:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V3 0/3] Add HDMI for Gameforce Ace
Date: Fri,  9 Jan 2026 20:25:22 +0100
Message-ID: <176798671271.3432512.7495708105478828348.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_112532_154965_83D4C446 
X-CRM114-Status: GOOD (  10.69  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, Heiko Stuebner <heiko@sntech.de>, jonas@kwiboo.se, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, sebastian.reichel@collabora.com, mripard@kernel.org, andrzej.hajda@intel.com, jernej.skrabec@gmail.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 19 Nov 2025 16:55:23 -0600, Chris Morgan wrote:
> Add support for the micro HDMI port for the Gameforce Ace. This port does
> not have a HPD pin so it requires making changes to the HDMI controller
> to support this configuration.
> 
> Changes since v1:
>  - Simplified checking of no-hpd parameter and changed to
>    device_property_read_bool() function.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
      commit: db04f0d47dd1f18cf506a7dfa00035901be328a1
[2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
      commit: bafb6863dd8cea94e7dc2f90979b30292e8ea31c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
