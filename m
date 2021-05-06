Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B170C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 17:55:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E7F16610F7
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 17:55:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E7F16610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QYxMWs/I1g8EbjG+Q6JRu9iXC1t6ZL0TnLyjdPgivrg=; b=CWtSkt8+84IcS8YWQKWuZ07o/R
	Sv+tu/RUxf3ghF4EwBn9tsQRC1VRXR4iyDCrEdMzwYiPW0TeskPGbu5ytC/WSkACGb0X13kPIvPMM
	5EgGiuQJBc2iM6bHxtSAjGLmPgIT1ONczprF6RMkD0mCcLo+0CcD5jTPI99VW+T4N5DqEubkZnJbF
	IyD0ZOX49xv0JX/5nGELXqdOoFczjUibjlMb+27dggOzSlOvP8jxHlI9WMgk7IOc6JVTnKbW0iUyU
	MzwPp/Lg/kyApcPprCMJa/ujB08/5esmM6oaq87OK+Xwm/o5sb1AXM4bwfvP5TFlax/GzAlpdOure
	rByhWbrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leiDz-004zGm-0Q; Thu, 06 May 2021 17:55:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leiDw-004zGa-ND
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 17:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=KCtyApeT3+4Vi4dAOpJwQFFgbOo8/qbnVO1sOKheRuQ=; b=3fKPXYZLSzGI/gwCsqQGpJanNb
 uByD4b+07qzaRYwF8gnhrhpfWP2RQGSwjejbPCOjPnoZnTZY6J8XQqntTlojqA01cSncwY17Y2kBA
 auqR32WyzW/PgjtuYZZilGo3zv+pDDNMTIkr+2Al1E/aV8peIzfTuUNd2cV5nKiN1YPyLU6AJyfRd
 yVmULdVkXSZyZMGmB03KPIhQXuY0AVWP/uctQ+p7m7VD8JddXHacNncu7Y82ydAb9vfxRTx0fpxFL
 jTfgX662cKNMHX9g4h/dU53aJtqohyt3GZ+vHm06mgefVuWf3dAtgh+iqoSvCvHKNthbPmMexqL5P
 9vrsuKqA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leiDt-006GhE-Vq
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 17:55:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 427831F43B7B
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>,
 Zhang Rui <rui.zhang@intel.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH v2 0/4] Rockchip thermal YAML and RK3568
Date: Thu,  6 May 2021 14:55:10 -0300
Message-Id: <20210506175514.168365-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_105542_196795_D0DF4F34 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

v2:
* Convert to YAML
* Fix rk322x.dtsi
* Add comments as suggested by Daniel

Ezequiel Garcia (3):
  ARM: dts: rockchip: Fix thermal sensor cells
  dt-bindings: thermal: convert rockchip-thermal to json-schema
  dt-bindings: rockchip-thermal: Support the RK3568 SoC compatible

Finley Xiao (1):
  thermal/rockchip: Support RK3568 SoCs in the thermal driver

 .../bindings/thermal/rockchip-thermal.txt     |  85 ------------
 .../bindings/thermal/rockchip-thermal.yaml    |  96 ++++++++++++++
 arch/arm/boot/dts/rk322x.dtsi                 |   2 +-
 drivers/thermal/rockchip_thermal.c            | 121 ++++++++++++++++++
 4 files changed, 218 insertions(+), 86 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
 create mode 100644 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml

-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
