Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF070C3271E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 16:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wdEd+GKQdyJ8MQk4B9yWhsHXREQ61+PGlsmHsGAP4ds=; b=U5EhNtGqrdrzjU
	bJnsMyRqvZ67YIwdhx17/SLEUy0GgE1L3Vu0sKOkEdQlr82WLOlPhUsoJeVJdNl13GeLhZjQM4OJu
	ODTZFTear7OtomwnenGhpVpT4pfL95SNzk3whW0lITQiBLVgdXmfhRXtxxdDHkkyBk7rxNavSXmJu
	x/XmDefbQclF2QDXSsq28jgUBtTYOqLOLnwE6/8U7aZe7+EDJCt2Xc/ViuuMESDtcnKpMb6n/MwJ+
	Qvcxj15Cwbmqd2MOTtj/Z8kvcbCWWyOHQdkNJMCxYzC6v/v8+M/Llg2gGy5GE52XctMuld8u5VkGo
	qI3wS19pXtbWCC2B3LiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPlsp-0000000GQby-2Wka;
	Fri, 05 Jul 2024 16:34:03 +0000
Received: from out-180.mta0.migadu.com ([2001:41d0:1004:224b::b4])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPlsZ-0000000GQY7-0KuE
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 16:33:49 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720197221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FJ6n1XjUi/eyqCVrXLwkSveH/8hWoV86rGKiEPbK2Tc=;
	b=yiIaq9w+BI8XdSfmrn/mw3BrhdTEssvFxmhBQIQUWxqojvVPi7/Mvkbmaj90RBDg69oH/2
	N6eil8/4OaBOFrIlvkjZCvwhN2Z3EGNNp8+QaPNv10e11VwvQcZw47ultS2eOMcIxRJOp0
	h7EPX1x1PfJayO6dwVutWH4A3NJqrmRL9gKIFVRhj9NWHEk7cVnxF/KS8LZ1u6xWRK/dgq
	+yt/aT/RBI2y82DZ84bymyGHnoH5QxQZDYNbG4m5QPZ9yvCx+PO0Oz9YsXdhiEunb+jEB1
	I5egCnLhAS9zpFoKYLCnfSbl01MTOv25H8uALblUnpdZfaqcgV+2CiJbD/ITzw==
X-Envelope-To: mweigand@mweigand.net
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: didi.debian@cknow.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: macromorgan@hotmail.com
X-Envelope-To: andyshrk@163.com
X-Envelope-To: jagan@amarulasolutions.com
X-Envelope-To: amadeus@jmu.edu.cn
X-Envelope-To: f.kardame@manjaro.org
X-Envelope-To: michael.riesch@wolfvision.net
X-Envelope-To: wiagn233@outlook.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Maximilian Weigand <mweigand@mweigand.net>,
	Dragan Simic <dsimic@manjaro.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Furkan Kardame <f.kardame@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Shengyu Qu <wiagn233@outlook.com>
Subject: arm64: dts: rockchip: Add dma-names to uart-bluetooth rk3566 devices
Date: Fri,  5 Jul 2024 18:22:12 +0200
Message-ID: <20240705163004.29678-2-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_093348_072440_EDB4AE6D 
X-CRM114-Status: UNSURE (   4.81  )
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

This is a single patch which adds the dma-names property to the uart
node with a bluetooth subnode on Pine64's rk356x devices.

But that property can potentially be added to several other devices, but
I have zero familiarity with them or their community, so I choose not to
add it to those devices, but inform people via this cover letter.

The dts/dtsi files I found as potential candidates are:
- rk3566-anbernic-rgxx3.dtsi
- rk3566-box-demo.dts
- rk3566-powkiddy-rk2023.dtsi
- rk3566-powkiddy-x55.dts
- rk3566-radxa-cm3.dtsi
- rk3566-rock-3c.dts
- rk3566-roc-pc.dts
- rk3568-rock-3a.dts

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
