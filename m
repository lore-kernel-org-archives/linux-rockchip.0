Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62920C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 23:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYZ/fNtFxsFJA0b6C9MQtrw2wqeZbb4B0AFbpYBm9tg=; b=GrYOD3ozR7822d
	CUdCyMld2e3rQdc3IfDCvQgiovAVCOtINIjCBdWzlUiXRhdyWMXkASLoVrer3RnFlCQ/YL50E+vHy
	F321wux95QZmNKfkVtYPqDivbj50eSgRJxIT7Psm1uhcDQSHttS9eJbdfwvskS4TA3TtSL1RuwRk4
	VES91+uwAsOU3NMyO6dPj75kzxCqU+WiOoCSLUtgBhso4UiB5GAlkJ5ujP0OurLJwcY4oe9+m/2ml
	VyebHAwqdxejMYqHvIaKh0sBWl3epvxTf91zmVzYTILM8epBJCyaPOX3DSWfex5mLZ5Ey7HZyQtKS
	OTyGKnViTvAVtSQ0Oz3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf84X-000BIv-27;
	Wed, 22 Mar 2023 23:40:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf84U-000BHd-1Z;
	Wed, 22 Mar 2023 23:40:47 +0000
Received: from p508fd58e.dip0.t-ipconnect.de ([80.143.213.142] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pf84S-0005ZV-6s; Thu, 23 Mar 2023 00:40:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCHv1 1/1] arm64: dts: rockchip: rk3588: add cache level information
Date: Thu, 23 Mar 2023 00:40:41 +0100
Message-Id: <167952842629.1588125.8296865409085167461.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230317174102.61209-1-sebastian.reichel@collabora.com>
References: <20230317174102.61209-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_164046_523692_32F6C25C 
X-CRM114-Status: UNSURE (   7.28  )
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

On Fri, 17 Mar 2023 18:41:02 +0100, Sebastian Reichel wrote:
> Add missing, mandatory cache-level information for RK3588.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588: add cache level information
      commit: b37115b6534c4027df75854a44b485596d368171

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
