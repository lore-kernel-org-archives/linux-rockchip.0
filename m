Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08788C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 20:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4G54f3n9IU1pk6w08N4JeulUrKTfsEw14y6/E8JSok=; b=RJ3AnQ0hneBnjl
	PGqm4FjWnGQ0GqaXQGtf5uZmrAhYYLYIvmLLHt5WAmhuK+lk7au8hHutM6EKHKB+HtWrLPyPHul0l
	WoXPi10TSMekXLcG0c4X7D8oS+PwK0j4XrfN4KIHoygURiflUihJlKBM5WBPqMcAZ9cGtJ9sAGAFh
	2vc1Z63FSNoLqEDEZVbC+VJIIVXVxGbPqjYfdNTQvXhXUrjB7oY5bZ80nc2m9ZGYDaVNXY485rPi2
	MUf6c7jsLdbcWfG6pOY1vNItBiUhNrykC2adhrbltUSN7rMtX5TSyoAjipUnTCvCAeQkyg1iuvCQP
	Qnqbt7k8/KXLzlaMjpJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJIxJ-0000000CWjB-3LtV;
	Mon, 17 Jun 2024 20:27:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJIxC-0000000CWhn-00rO;
	Mon, 17 Jun 2024 20:27:52 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJIx2-0003YP-4q; Mon, 17 Jun 2024 22:27:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Jacobe Zang <jacobe.zang@wesion.com>
Cc: nick@khadas.com, efectn@protonmail.com, jagan@edgeble.ai,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jacobe Zang <jacobe.zang@wesion.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: rockchip: Add HDMI & VOP2 to Khadas Edge 2
Date: Mon, 17 Jun 2024 22:27:39 +0200
Message-ID: <28646794.czjnFlTdjD@diego>
In-Reply-To: <20240617071112.3133101-4-jacobe.zang@wesion.com>
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-4-jacobe.zang@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_132750_071296_80ABF15B 
X-CRM114-Status: UNSURE (   9.43  )
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

Am Montag, 17. Juni 2024, 09:11:10 CEST schrieb Jacobe Zang:
> Add the HDMI, VP, VOP nodes which HDMI function needs.
> 
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>

The rk3588's hdmi controller was just posted in a v1 and from
comments received it looks like it'll still take a bit of time before
that is ready to land. So this patch would also be for later.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
