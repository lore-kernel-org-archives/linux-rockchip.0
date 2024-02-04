Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C50C4828F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Feb 2024 11:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X4l3fi5Jv7G35RTLNpgzSAORcT755aZKEoCG5KTTUIg=; b=UJPVkT0Svp6TJd
	Gc4G8MImCKdKWJK8dTCSefnyWmoUgZIWlldbs4KJjUFEoWYVs0Vu/pWoSaxM57eX0cRCY2cBjeKKE
	s++d6+ocPsW5imXdtslhlwhOyR52Ndkncy48IA6RklVkVx1vJY6D23Mp6paA4KNaEyGtdHuYX2uoy
	f5j8IKQbMb+bckOy7E5OsDV264FcMq66KmfhLKuUM1Pc0KslJro4o3uJRKROBoUDjm665wsC23jsR
	K60ENRrSsdlipowbGkeMUKGRURU987ksmBkzKcDlshR2NRCTyqHRhwvTNibR3chG9z480mF593BDW
	m3bnHrmvsoGjysEYFvYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaVN-00000000eHS-0eUb;
	Sun, 04 Feb 2024 11:17:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaVK-00000000eGW-3Zrw;
	Sun, 04 Feb 2024 11:17:44 +0000
Received: from [185.175.219.2] (helo=phil.fosdem.net)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rWaUq-00051V-9E; Sun, 04 Feb 2024 12:17:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Mark Yao <markyao0591@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	David Airlie <airlied@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Ondrej Jirman <megi@xff.cz>,
	Maxime Ripard <mripard@kernel.org>,
	Segfault <awarnecke002@hotmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Manuel Traut <manut@mecka.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Arnaud Ferraris <aferraris@debian.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Danct12 <danct12@riseup.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v4 0/4] arm64: rockchip: Pine64 PineTab2 support
Date: Sun,  4 Feb 2024 12:17:08 +0100
Message-Id: <170704542194.2517832.14847139781169519437.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
References: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_031742_917490_2DCA04F9 
X-CRM114-Status: GOOD (  12.39  )
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

On Sat, 27 Jan 2024 10:48:41 +0100, Manuel Traut wrote:
> This adds support for the BOE TH101MB31IG002 LCD Panel used in PineTab2 [1] and
> PineTab-V [2] as well as the devictrees for the PineTab2 v0.1 and v2.0.
> 
> The BOE LCD Panel patch was retrieved from [3]. The function-name prefix has
> been adapted and the LCD init section was simplified.
> 
> The PineTab2 devicetree patch was retrieved from [4]. Some renaming was needed
> to pass the dtb-checks, the brightness-levels are specified as range and steps
> instead of a list of values.
> 
> [...]

Applied, thanks!

[3/4] dt-bindings: arm64: rockchip: Add Pine64 PineTab2
      commit: 6a0a5a2a71b3e3c4ae1ee0b34a496cbf2d980832
[4/4] arm64: dts: rockchip: Add devicetree for Pine64 PineTab2
      commit: 1b7e19448f8fbeee23111795f67a003431c40b27

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
