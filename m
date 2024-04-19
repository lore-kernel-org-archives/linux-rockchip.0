Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9787CC04FF6
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 11:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uGNZyBvLpJAvNip2S/8xJ+9MeT7k3evOxqfm1YJybg=; b=q3NNZZbOQq0Won
	70ZtpN0F6QNOmHjhCRoUhltOzgFEpv0MDFEc8MTGGhP6dwtYLL8nxmsaZWtHb40eHIQiZ4jwOjErD
	vZkbgAM+ucOeZZ0iNnqTMtNgeYoADa0w7OcpmptuZ0JLCmgvEHMKiKsi6Y339nQvu1zl9TDXQOGzS
	vsrkT935kzycNYKReNwPSjbD8xnkQlRMhMxuyx5FTdUPjYTnTIryKR0TnfqqmwuLwXDtZfr+DtRvu
	yo0zHnHeDaFu+m6p4l2zhLvKCBVPqrWwzozqplvCsB4j3oQA1VOyTULf4P8ZZx/dqCWiQI2MjydYZ
	tq7bJdcT9K8f5hLU5dSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmH2-00000005R7s-2YHr;
	Fri, 19 Apr 2024 11:19:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxmGw-00000005R2b-3wzK;
	Fri, 19 Apr 2024 11:19:16 +0000
Received: from [213.70.33.226] (helo=phil.intern)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxmGl-0000RL-Hh; Fri, 19 Apr 2024 13:19:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	airlied@gmail.com,
	maarten.lankhorst@linux.intel.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	markyao0591@gmail.com,
	conor+dt@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	daniel@ffwll.ch,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 1/3] dt-bindings: display: add #sound-dai-cells property to rockchip dw hdmi
Date: Fri, 19 Apr 2024 13:18:57 +0200
Message-Id: <171352551023.2525344.13101791805180451568.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
References: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_041915_017663_E8222790 
X-CRM114-Status: UNSURE (   8.32  )
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

On Sat, 13 Apr 2024 17:38:05 +0200, Johan Jonker wrote:
> The Rockchip DWC HDMI TX Encoder can take one I2S input and transmit it
> over the HDMI output. Add #sound-dai-cells (= 0) to the binding for it.
> 
> 

Applied, thanks!

[1/3] dt-bindings: display: add #sound-dai-cells property to rockchip dw hdmi
      commit: e58414e44b5315230de829ed88a63611646907ac
[2/3] dt-bindings: display: add #sound-dai-cells property to rockchip rk3066 hdmi
      commit: 9be3eb5d6ee57662a22b56153c7ee39265685455
[3/3] dt-bindings: display: add #sound-dai-cells property to rockchip inno hdmi
      commit: b1ee6bd3ea954d081bfb1d5559ce3e78ef40443a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
