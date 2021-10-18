Return-Path: <SRS0=X3cf=PG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E3A6C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 18:21:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 580B160F44
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 18:21:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 580B160F44
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4kD7zGlT7ELamI30R5CMepShiZYMVTObwRwCiQ6ASg=; b=Zll4bXGOxF4BUV
	p7DcbjDBf5KG9w2gun/NhokEM0eKmLXqXUCbxuM9iBWju2DrdXDubjQdJ/qpSNyldhCoAG2+Osbif
	OWX8C8axB9p1N4v73ye3tTGYGwyq3dDGo9hwdJKLchJgX2sKIe1Mn9WCzOYLEXMKdDYLhu3zrlLH/
	2LFPn/s2Q4hA3UsCQqRRXX5pVnbk/AY4FpoiSA9upmbhmcgK5IiL/wGxYtDcbfeK+NqIJJymuT+nQ
	xf9fpJfst/1TBozdK/fne/bLKUWgKDPDxaaKPCjokMunFMmBwdzWzyWgjiB6PTMyFxOhTfWXJeZ4S
	hAq1C/p3vtGwqKrP7F6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcXG9-00GmCc-Fl; Mon, 18 Oct 2021 18:21:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcXFx-00GmBU-7D; Mon, 18 Oct 2021 18:21:06 +0000
Received: from p508fdda9.dip0.t-ipconnect.de ([80.143.221.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mcXFo-0001cz-Ne; Mon, 18 Oct 2021 20:20:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, p.zabel@pengutronix.de,
 amitk@kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 rui.zhang@intel.com, linux-rockchip@lists.infradead.org,
 daniel.lezcano@linaro.org, linux-pm@vger.kernel.org
Subject: Re: (subset) [PATCH v2 1/4] dt-bindings: thermal: allow more resets
 for tsadc node in rockchip-thermal.yaml
Date: Mon, 18 Oct 2021 20:20:55 +0200
Message-Id: <163458113680.651054.7196028816120992133.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930110517.14323-1-jbx6244@gmail.com>
References: <20210930110517.14323-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_112105_280247_C0BF6E88 
X-CRM114-Status: GOOD (  11.40  )
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

On Thu, 30 Sep 2021 13:05:14 +0200, Johan Jonker wrote:
> The tsadc node in rk356x.dtsi has more resets defined then currently
> allowed by rockchip-thermal.yaml, so fix that in the documentation.
> The driver now uses the devm_reset_control_array_get() function,
> so reset-names is no longer required, but keep it for legacy reasons.

Applied, thanks!

Fixed the patch subject to the regular prefixes.

[4/4] arm64: dts: fix resets in tsadc node for rk356x.dtsi
      commit: 5c9e66c6b75a754025c74bde7b7a6c52674d8aa1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
