Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BE4BC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yUwxOGpPxtg556MhiHXdnf+tzhkcA1pbzGTxxs9m4aE=; b=dnViouuizPTarR
	96UwtcX7dFqUdL+c9lV7yov6H7113iphncqIL7hSBNmCgHoR1d6y3QeAT/+oOotKmkEj78NMrgmEj
	fJsoUVITDoIQPwYy0GcPBP8Fw8cQFZGgP401oAb87RJvWi0KMZIEV1UKvdilFWaa59MXLjN3zfz4+
	o8CPtT0DVyhZ0dhNusHMiQV2HSvO14auC1JBG5nCwCDx6kvp28ZnNsKd1107AOUHEKYn3lIv0/ypb
	Xj4wbtpLSQYJu2gJ0LzaXIY8qg7iz1amY7tyiYsrsn85PkckHMDOeT4lf/i60qrlZyjXf53zG2Itw
	/RxSdqexH30xCp6E56xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2ui-00Fc8Y-9K; Tue, 17 May 2022 19:31:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2uf-00Fc7V-GE
 for linux-rockchip@lists.infradead.org; Tue, 17 May 2022 19:31:22 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nr2ua-0004C1-3u; Tue, 17 May 2022 21:31:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 5.19 #2
Date: Tue, 17 May 2022 21:31:15 +0200
Message-ID: <5781991.QJadu78ljV@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_123121_590280_32BCA87B 
X-CRM114-Status: GOOD (  12.42  )
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

Hi Mike, Stephen,

please find below a pull-request converting a number of Rockchip
clock controllers to yaml, which shound go on top of the previous
pull request.

In the discussion Stephen had comments about the optional clocks, that
have a circular dependency (xin24m -> cru -> i2c -> rtc -> xin32k -> cru) .
After everyone put in their argument, the discussion itself just stopped.

I've picked up the conversion patches anyway, as this is the status-quo
in terms of modelling clocks on Rockchip, so the yaml conversion doesn't
change anything in either direction and just transforms what is in the
kernel right now into the yaml format which will improve devicetree checks
a lot and also reduce the number of warnings emitted by the checker.

So hopefully please pull :-)
Thanks
Heiko


The following changes since commit b21445db9818ccb9fa1c0ba81fd3705eb8d347e3:

  dt-binding: clock: Add missing rk3568 cru bindings (2022-05-14 12:40:41 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-clk2

for you to fetch changes up to 32a214cd8ccbc361319bcd00b0b1b05a6b53bc61:

  dt-bindings: clock: convert rockchip,rk3368-cru.txt to YAML (2022-05-17 21:05:43 +0200)

----------------------------------------------------------------
Conversion from txt to Yaml for a number of Rockchip
clock bindings.

----------------------------------------------------------------
Johan Jonker (8):
      dt-bindings: clock: convert rockchip,rv1108-cru.txt to YAML
      dt-bindings: clock: convert rockchip,rk3288-cru.txt to YAML
      dt-bindings: clock: convert rockchip,rk3188-cru.txt to YAML
      dt-bindings: clock: convert rockchip,px30-cru.txt to YAML
      dt-bindings: clock: convert rockchip,rk3308-cru.txt to YAML
      dt-bindings: clock: convert rockchip,rk3036-cru.txt to YAML
      dt-bindings: clock: convert rockchip,rk3228-cru.txt to YAML
      dt-bindings: clock: convert rockchip,rk3368-cru.txt to YAML

 .../bindings/clock/rockchip,px30-cru.txt           |  70 ------------
 .../bindings/clock/rockchip,px30-cru.yaml          | 119 +++++++++++++++++++++
 .../bindings/clock/rockchip,rk3036-cru.txt         |  56 ----------
 .../bindings/clock/rockchip,rk3036-cru.yaml        |  72 +++++++++++++
 .../bindings/clock/rockchip,rk3188-cru.txt         |  61 -----------
 .../bindings/clock/rockchip,rk3188-cru.yaml        |  78 ++++++++++++++
 .../bindings/clock/rockchip,rk3228-cru.txt         |  58 ----------
 .../bindings/clock/rockchip,rk3228-cru.yaml        |  74 +++++++++++++
 .../bindings/clock/rockchip,rk3288-cru.txt         |  67 ------------
 .../bindings/clock/rockchip,rk3288-cru.yaml        |  85 +++++++++++++++
 .../bindings/clock/rockchip,rk3308-cru.txt         |  60 -----------
 .../bindings/clock/rockchip,rk3308-cru.yaml        |  76 +++++++++++++
 .../bindings/clock/rockchip,rk3368-cru.txt         |  61 -----------
 .../bindings/clock/rockchip,rk3368-cru.yaml        |  78 ++++++++++++++
 .../bindings/clock/rockchip,rv1108-cru.txt         |  59 ----------
 .../bindings/clock/rockchip,rv1108-cru.yaml        |  75 +++++++++++++
 16 files changed, 657 insertions(+), 492 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
