Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B146C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 11:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AChWjnQPPJTzY9doJsjkdY4t8vHRW47BDkGruCNq1E=; b=Vhqil+CU8Xdmv3
	EZ0yDvjFVIusiK8OWjqyl4T9qqBUmN2+RLDaJVsApuhuUXR/qHvinvGDhzWMv7yQDh7NOFCK1NF6B
	U4Wf/fYzVQ1DlHRkJPfgIkFmqiG3Y/s7/Sacf5B4AT0E+0R4XlkHRII3QYubUptK7vw0e58dMk4e7
	OYnypTo7nJDy5qKwWO0C67jMOrBdh0yG+RXzyChgz1KoCUyC2MrhWbFlKXztbZpr/PL8NRjgQFBF1
	md7y7RiXstVVxfoBJtKdyFJv0Aab0VXCiHaHOaRm23fAuzF2elk36d7X/WM7tzxzxw1BASaG0eyW0
	Y8Fy69QPTbuU0od5Di7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCw-0000000GxhC-2sag;
	Fri, 12 Apr 2024 11:36:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCg-0000000GxXT-1agj;
	Fri, 12 Apr 2024 11:36:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 60CCD62230;
	Fri, 12 Apr 2024 11:36:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB5DCC2BD11;
	Fri, 12 Apr 2024 11:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921781;
	bh=SKyjWHd+tVc2A4+hwCP2t2bgzxmSvGBlmggLzxosv+M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qIaWQ8NczYgf3PaOoQztrWP5AuN5wOvfXJhhIg6YZtgW1Skk8AdSOjylb3cXZHUIB
	 ZDdbd/xFz7yyqlT0P5p3dbKggDcmVufHALGjG9ao9i1eXs0iX4GyFE87lPVOqwH9gM
	 MS5OLIBWPZ2FlGtXcbSDUDaVp9ofmr+66rZUO0k99Qbxupl+UmMi8rdTxvnwKvIOKy
	 /YQTba3t/JlY0s0R3nBHyobijKuaNfd7hSnp2sY3keILfr5QwOosI/uDpTn4HA0kn/
	 k20BpRch0BosRVCOzPx5dWNSEocHxNId5Vvab/xCJgPSdAJSYJcaPH/n0y24ohlC3X
	 PhKdp29SfzZrA==
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>, 
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com
In-Reply-To: <20240408225109.128953-1-sebastian.reichel@collabora.com>
References: <20240408225109.128953-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCH v5 00/10] RK3588 USBDP support
Message-Id: <171292177636.599803.10340214164260431529.b4-ty@kernel.org>
Date: Fri, 12 Apr 2024 17:06:16 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_043622_960200_8327A8B6 
X-CRM114-Status: UNSURE (   9.36  )
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


On Tue, 09 Apr 2024 00:50:27 +0200, Sebastian Reichel wrote:
> This adds Rockchip RK3588 USBDP PHY support, which is used for two of the three
> USB3 controllers in the RK3588 (the third one uses a different PHY, which is
> already supported). The USBDP PHY offers USB3 dual-role and DisplayPort. The
> driver and bindings being upstreamed contains the DP parts, but only USB3 has
> been tested by me (upstream does not yet have a DRM DP bridge driver for this
> platform).
> 
> [...]

Applied, thanks!

[01/10] dt-bindings: phy: add rockchip usbdp combo phy document
        commit: a75d8056e9fefa82ca2bd75a32febc44411cc5c0
[02/10] phy: rockchip: add usbdp combo phy driver
        commit: 2f70bbddeb457580cef3ceb574506083b9272188

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
