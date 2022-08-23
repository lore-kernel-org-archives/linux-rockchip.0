Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D942EC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1AFuZnRiQFrCDPUfuWTN7cmVfkaoJpirXUl536FWv0=; b=Xg1uslm3LPx3td
	nAlfOCXOM4yUMXMK9O2icsZoCuMv+WuqU0DADZH0lcIQmNvPTAbwjEgECw6UWgd79OJvvxbnyCJ5J
	E+Z4a7gK3QLKjZ62EG9aQg+RfpjgbfaxzoREKuJ4FDIQ/MQxzXTR1iWfTNyWyrZHWDhG/bq4DJej7
	Xn4WgVKNYx3c5Ol8FFgxKZWbSE0R0wsCiCF8y9RHviL4X3Eu/Wa+d3dHWYuL4s8qSSm76Kx7CzPkK
	w2lLTqW+iZMfidMiCD1Q3solsbBSXQlhofQG/BJC9uDWaadr9lkJJb8DinRXip8iDkcx2LseKz6Zk
	wcmNFnBC1gjzxOZ7ittg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTF2-005yZE-KB; Tue, 23 Aug 2022 12:42:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT9Y-005vqs-2P; Tue, 23 Aug 2022 12:37:11 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQT9R-0004gV-28; Tue, 23 Aug 2022 14:37:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Frank Wunderlich <linux@fw-web.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix upper usb port on BPI-R2-Pro
Date: Tue, 23 Aug 2022 14:36:58 +0200
Message-Id: <166125820548.1301371.18431687974347062281.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220821121929.244112-1-linux@fw-web.de>
References: <20220821121929.244112-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_053708_191101_BBE5D7F5 
X-CRM114-Status: UNSURE (   9.71  )
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

On Sun, 21 Aug 2022 14:19:29 +0200, Frank Wunderlich wrote:
> - extcon is no more needed in 5.19 - so drop it
>   commit 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ")
> - dr_mode was changed from host to otg in rk356x.dtsi
>   commit bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd
>     operation of usb_host0_xhci in rk356x")
>   change it back on board level as id-pin on r2pro is not connected

Applied, thanks!

[1/1] arm64: dts: rockchip: fix upper usb port on BPI-R2-Pro
      commit: 388f9f0a7ff84b7890a24499a3a1fea0cad21373

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
