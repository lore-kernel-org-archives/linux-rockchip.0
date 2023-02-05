Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6280FC636CC
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Feb 2023 14:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+Op+1hohZkQXbjm//aXQOCT3snBmBeUwN9zPKcFlN8=; b=NmK882Z324H792
	al2hsQnkfMQl1cYzz3q0CK0ZAsvlsEBgWSvnIkqKee+hvDJ946uvkltBPeMblojDeTYhSyOk54coP
	LRXj4JcfAwe0XsL2+agz7r2eZwO/2QApSwe45DpVrknA3Q8+gJ6oGuNPTWaJ6nBKKnvWkQdtPJX+F
	Hb7eed6Vnfm6RpZ6k9jkvntk27oYJrXUGFlbExaZ1bDfUFVz5LGD/D1i6fIHkDcLTAUEIxKnPHB6g
	b5MMkDoaURh6lNwF7xOJ+Q8u9TNfbe545xDBF8zo3d8Mqg5qZ/IF49Lrz/8KJ6O+Q/Fhd+dcx+lyO
	JwInYgkFl6HHgRrQlG8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOfiQ-006OMc-OO; Sun, 05 Feb 2023 14:09:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOfiN-006OLu-T6; Sun, 05 Feb 2023 14:09:57 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pOfi4-00075Q-6S; Sun, 05 Feb 2023 15:09:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Robert Foss <rfoss@kernel.org>,
	dri-devel@lists.freedesktop.org,
	kyungmin.park@samsung.com,
	linux-kernel@vger.kernel.org,
	jernej.skrabec@gmail.com,
	hjc@rock-chips.com,
	philippe.cornu@foss.st.com,
	jonas@kwiboo.se,
	krzysztof.kozlowski+dt@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	alim.akhtar@samsung.com,
	neil.armstrong@linaro.org,
	robh+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	linux-rockchip@lists.infradead.org,
	inki.dae@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	devicetree@vger.kernel.org,
	andrzej.hajda@intel.com,
	linux-usb@vger.kernel.org,
	sw0312.kim@samsung.com
Subject: Re: (subset) [PATCH v6 01/17] dt-bindings: display: rockchip: convert rockchip-lvds.txt to YAML
Date: Sun,  5 Feb 2023 15:09:34 +0100
Message-Id: <167560616167.854266.15581661831063028156.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_060955_941955_8B3D32A0 
X-CRM114-Status: UNSURE (   7.98  )
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

On Thu, 22 Dec 2022 15:22:14 +0100, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> 
> [...]

Applied, thanks!

[01/17] dt-bindings: display: rockchip: convert rockchip-lvds.txt to YAML
        commit: d567ca6ed9fd5fe594bca5e29717ff9e9631efba
[02/17] dt-bindings: soc: rockchip: grf: add rockchip,lvds.yaml
        commit: cbfc73a3febdf14395ecdd738decd53835166662
[03/17] dt-bindings: display: dsi-controller: move clock-master property
        commit: a1b7455dc4a399a565353ceb7cce605b4b9db41a
[04/17] dt-bindings: display: bridge: snps,dw-mipi-dsi: fix clock properties
        commit: a90fa0adbeb07f11c08635364d206678d9e1b938
[05/17] dt-bindings: display: rockchip: convert dw_mipi_dsi_rockchip.txt to yaml
        commit: 0dac2102cf6baacba0d9d7804b0c163337f69839
[06/17] dt-bindings: display: bridge: convert analogix_dp.txt to yaml
        commit: 440112adadd3e273d2a2ff6e5d4b969ee03fda47
[07/17] dt-bindings: display: rockchip: convert analogix_dp-rockchip.txt to yaml
        commit: 9bb35d4c3230803345d5218676a7325b26823209

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
