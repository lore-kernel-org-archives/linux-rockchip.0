Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4E7DC3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 14:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmK8mUNXQfHTj7L/Q7wYMvmgIEI7niO6h8HfISYxLHk=; b=SbNzmjfnQxp2gZ
	pl5cAD+QbJ0cC/4qxfzZpfYsUeX41IWBUt5ADzfFJ9guD5Gzy3lOJIwtZiMRW+BuqNfZOvp85Xwkg
	8rWf7uObLdH6pVHo7U7phGaSFWGbD16ryfafxtFbDaccTdb9ZPTI5+HEMHD5CcrqfNL5sxx8JyzhW
	YCAq2siLJzK+/eDNLD9vgoScT7jmST9HqklSeaivDd3q8lKHOC9gNySEPC6IQsiME6/mX0YukBIIj
	xI8ENC3yhghPKTVAsl48UVFPTiegLADApyCtfC0MR7G9hoUnY9tApJ78/mZJsEaNi1bz2soRYLun5
	CNwWhDRBzC2Xi3YjA8BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQpM1-000000044QE-1JKE;
	Mon, 08 Jul 2024 14:28:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQpLo-000000044Ni-25fb;
	Mon, 08 Jul 2024 14:28:21 +0000
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQpLa-0001Jx-3f; Mon, 08 Jul 2024 16:28:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add avdd supplies to hdmi on rock64
Date: Mon,  8 Jul 2024 16:28:02 +0200
Message-Id: <172044883544.1350787.9222264263996653684.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240704191919.38856-1-didi.debian@cknow.org>
References: <20240704191919.38856-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_072820_557459_F7C6D6F0 
X-CRM114-Status: GOOD (  11.45  )
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

On Thu, 4 Jul 2024 21:18:33 +0200, Diederik de Haas wrote:
> Pine64's Rock64 was missing the avdd supply properties on the hdmi node,
> causing the following warnings:
> 
>   dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
>   dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator
> 
> In the Rock64 Schematic document version 2.0 those supplies are marked
> as DVIDEO_AVDD_1V0 and DVIDEO_AVDD_1V8 respectively, but in version 3.0
> those are named HDMI_AVDD_1V0 and HDMI_AVDD_1V8, which is a bit clearer.
> In both versions those are connected to LDO3 and LDO1 respectively.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add avdd supplies to hdmi on rock64
      commit: dbdadc14b94e1c0326a430c1f84592a9b5c6b6d2

Added the Reviewed-by tag, but not the 2nd.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
