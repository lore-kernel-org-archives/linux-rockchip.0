Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9038C3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 07:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfmlLFFIqpTiPAuhcUMpA2CJX1uxfvXHRgMn2VMmefo=; b=eh7x0uLYMN/ST7
	rG45ZQsZIxaV4yqIKpPeGDzBVV90H1cWhQrFbmEr6XPx2+N3BJVWZ4Q5swgFtc/5NmRlWtdpPzt8w
	A5drwOwKf0LVOs83fRrET9I5lrW+Apfz+92rb19i6rOJ8ln+ZI9tNfQOdipy1aYb5z5teys24RO/V
	8yS6sxe0eaq9SJ/yhTJZz8VuRGL/Opo8+uZpdjL09mdclkbt2/z/T8SraMyslOGecBdOdZ8MWIC3u
	KCOOOPXPv4znU5G+7/wYWlFKdvprWCgmldYdUxt47cjELoTJG5t//0fVWsqrIjZqmIAhM3Eqb3h9a
	I6TIueg+Qea7rN/HM8Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhMX-0000000E2hH-28ZX;
	Tue, 30 Jul 2024 07:33:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYhM5-0000000E2Xm-3q71;
	Tue, 30 Jul 2024 07:33:11 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYhLt-0004sW-JH; Tue, 30 Jul 2024 09:32:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Move RK3399 OPPs to dtsi files for SoC variants
Date: Tue, 30 Jul 2024 09:32:55 +0200
Message-Id: <172232476460.2326272.7433810952292381571.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <9417b5c5b64f9aceea64530a85a536169a3e7466.1721532747.git.dsimic@manjaro.org>
References: <9417b5c5b64f9aceea64530a85a536169a3e7466.1721532747.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_003309_968976_35BAAFD2 
X-CRM114-Status: GOOD (  10.64  )
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

On Sun, 21 Jul 2024 05:45:16 +0200, Dragan Simic wrote:
> Rename the Rockchip RK3399 SoC dtsi files and, consequently, adjust their
> contents and the contents of the affected board dts(i) files appropriately,
> to "encapsulate" the different CPU and GPU OPPs for each of the supported
> RK3399 SoC variants into the respective SoC variant dtsi files.
> 
> Moving the OPPs to the SoC variant dtsi files, instead of requiring the
> board dts(i) files to include both the SoC variant dtsi file and the right
> OPP variant dtsi file, reduces the possibility for mismatched inclusion and
> improves the overall hierarchical representation of data.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Move RK3399 OPPs to dtsi files for SoC variants
      commit: 296602b8e5f715d6a0ccdcd37d57170c2c81d5e4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
