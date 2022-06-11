Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71145C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 15:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTRopXdhLufe0qnH8mnO4GxB2yOgISRs2y1/5BTBsD0=; b=geYE9cUxBIMfWm
	hEsFTHcDRQ9r3kzMt60GKm8UFWSbbkka6aBmLkHY5KI6i0O925GliDRuQ5RIOAkWbJfyMIa6olBOa
	Pzd1Z+yb9IWTflMZZ3eVMfj/d2Zgru5ss+v6fz8xQwdRRJd3PPCAKDNMNIvtxjNWEjThqDTxeEw8j
	tTawgXv6KXVv/k8tX11k04V67OLTUL9+mZWzLvIsTYOw7cOxFf04n0YS2Rx2MaIxLhHA3xal0rpc0
	Roo+gc7JT29zjh6/ORPeIWzHqNdycPAswvemV3P9DNC79LSroqAQA1rlosfDQM8t+6yHclla6ylyi
	ZO0lS5yB32xkv8JBIVXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02ug-00DYfS-W0; Sat, 11 Jun 2022 15:20:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02ue-00DYdy-1N; Sat, 11 Jun 2022 15:20:33 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o02ua-00050J-Qd; Sat, 11 Jun 2022 17:20:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign RK3399 VDU clock rate
Date: Sat, 11 Jun 2022 17:20:27 +0200
Message-Id: <165496080836.1951920.11378861622467603485.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
References: <20220607141535.1.Idafe043ffc94756a69426ec68872db0645c5d6e2@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_082032_119810_771BA513 
X-CRM114-Status: GOOD (  10.74  )
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

On Tue, 7 Jun 2022 14:15:36 -0700, Brian Norris wrote:
> Before commit 9998943f6dfc ("media: rkvdec: Stop overclocking the
> decoder"), the rkvdec driver was forcing the VDU clock rate. After that
> commit, we rely on the default clock rate. That rate works OK on many
> boards, with the default PLL settings (CPLL is 800MHz, VDU dividers
> leave it at 400MHz); but some boards change PLL settings.
> 
> Assign the expected default clock rate explicitly, so that the rate is
> consistent, regardless of PLL configuration.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Assign RK3399 VDU clock rate
      commit: 2d56af33d4df94d2b76446ffc3e3654c42232f4b

      as fix for 5.19

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
