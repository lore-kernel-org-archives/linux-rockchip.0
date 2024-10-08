Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DDBCEF14D
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 10:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lsAD0RycihX+Afn/KPmYjSTdfmBKfRDI1+XCupoYv48=; b=gfkZFvxDnXlB7j
	eCO6OZXfCgzLAuLeSk/vLnJdjL5WgShAysETIQu1h9EfkdUubVvHstohH1yTeizlkUlRV1BP5MYpJ
	DC2NsjpTqfWdk0SYJ9V48CtSiqmbU2hnedobb1Ky+ifiJs8qcvJ6Wa1EjXnKpM84eLwzU9FQpvmCI
	9k0uEpkFCQ3fGIVJjQw1t1DbA1XzNcHxHL81xccvYsg1dx/+9le9m20QNS5pJtHgAGejCp9DRzxDW
	8rf8RyQWP5OFFx9fxHkeLuTAeAy43qhWkVgYaKEkhK2Hciwj33/vM+GidlFfJfFHu7DqJmwi9ZP5x
	uNkmKk0jkqKF9Sz6kAUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7s8-00000005WNl-0vDm;
	Tue, 08 Oct 2024 10:55:20 +0000
Received: from out-178.mta1.migadu.com ([95.215.58.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy7s4-00000005WMB-05dq
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 10:55:18 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728384912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AGz7VCfXaXG3LvRwq27Msjm5+K1AK3Eq82mj4eAkW6Q=;
	b=Y/NbM2yml6SAoeDwHOd1GN/bYa2a3RWcQpati6LXD072IOFAPfEMH9caLPqAD9Mrj/gObo
	ko9wYNMPeVOh2r6jKdW/0dAMqzy8TiQgH85ZNCogV7CxBJIC3kNF644oWiiwvFqLNkjPsd
	6gl/a1c7aigMwXh2IMnc+v6zVz5rA7T7nVYhb8SyETAV/bM6KvAsI5LhSiIg155qSFxSJ1
	RZ2Ug/RodUWESI7mt6xXD2mG6UgUFDd8tKBDK1g43t+WzODptvoSD0D3t1Lt/g/IYjSMmk
	wuZ3Y1LB/+zS/NxVHGrAt0OxO274VZjmprD3MoR30HRqCr9IuOWENhjy0QreiA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 0/5] Drop deprecated 'rockchip' prefix from s-p-c PMIC property
Date: Tue,  8 Oct 2024 12:48:00 +0200
Message-ID: <20241008105450.20648-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_035516_786564_F46C46CE 
X-CRM114-Status: UNSURE (   4.62  )
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

Property 'rockchip,system-power-controller' was deprecated in commit
961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate rockchip,system-power-controller")

in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
replacement is (just) 'system-power-controller'.

Drop the 'rockchip,' prefix from the px30, rk33** and rk356x DT files
which still used the deprecated variant.

Diederik de Haas (5):
  arm64: dts: rockchip: px30: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3328: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3368: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk3399: Drop rockchip prefix from s-p-c PMIC property
  arm64: dts: rockchip: rk356x: Drop rockchip prefix from s-p-c PMIC property

 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
 arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-evb.dts              | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts     | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts   | 2 +-
 52 files changed, 52 insertions(+), 52 deletions(-)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
