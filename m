Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27159C10DCE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 15:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbjPAI1XqsPxgV3C9yFJp5JpPTWOOMw8yLtAzKa57Zo=; b=pJ5J0TZkSGrSMW
	sEAUlzWd3Ne7XA+ImoyaDsVVInKPT7Oq6mvrstEOzRr9T/iu3aDaQOOSOIXySLf9uJafgLTeWgXEl
	09UqYaXMISL5Y736527bNjnlekM+fpZu628o8Q2QBqKkzxUPBUoSiBJFyfjJWOKT4dABkFISKby4p
	7bRXewtuWDNRqWCOAl88lYr7dZedKnxsIFfRW1vIK2hBQdoN2JLzukN85onAkOK0fYdmk5NGsQUVB
	n4Z53vgmjaTjVo+cCUBxdj0ZTzytnWl7sxB//e2DQwTprJWh5HKhlI9LEvob7bgDXADhBY98UEEX0
	3k+vbHL6BPS7Ku94UnAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9SMy-00FsIK-06;
	Sat, 02 Dec 2023 15:57:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9SMv-00FsHv-1O;
	Sat, 02 Dec 2023 15:57:26 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9SMq-0002DL-9W; Sat, 02 Dec 2023 16:57:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	linux-pm@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	devicetree@vger.kernel.org,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/5] Add power-controller and gpu for RK3128
Date: Sat,  2 Dec 2023 16:57:18 +0100
Message-Id: <170153263025.376455.12737085983971621612.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202125144.66052-1-knaerzche@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_075725_490683_EA7B24C3 
X-CRM114-Status: GOOD (  14.39  )
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

On Sat, 2 Dec 2023 13:51:39 +0100, Alex Bee wrote:
> The first patch in this series fixes the pm-domain driver and adds
> power-domains which are currently missing. This touches the ABI which is
> not and was never used until now. Not all of them are used yet, but when
> the power-controller is added to the DT in patch 2 the ABI should not
> be changed again.
> Patch 3-5 are adding the the gpu compatible to dt-bindings, adding the gpu
> node and the respective operating points to SoC DT and finally enabling it
> for XPI-3128 board.
> 
> [...]

Applied, thanks!

[3/5] dt-bindings: gpu: mali-utgard: Add Rockchip RK3128 compatible
      commit: 5d86c15c3171c3ecebd84d53e30d9812b5591c84

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
