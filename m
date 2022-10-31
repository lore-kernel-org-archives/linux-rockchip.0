Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28E93FA3743
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 17:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ym0y72Fh+7FYD9Sq/xsXhZxJ1Ia1/BbyZZ/ePedoOH8=; b=C47kmH5PzAeVJn
	k1ZO4y2I0P8A5fUUA4jibhG/Io5kFotVqPBz0FW60SDPJoQbWwBCY4hvgnILydaybcpHkfZz7uIPC
	7pYtnKIzChN0P7uQcQDbyEmvFZnVkkAbrjEutm/ImF1OBJ4zVNaWztHTvzbZDzch4SO8Vb2ZW6nfJ
	pHeoza6jHyjRCmWSYZq+92++SgGycMV1+4TrDyYbJDt4rWlZ7QFwGgfOmi2C5cPjLbQDYM+LJ4j6G
	jjwx9A7S6mxch8FVPcegRZffNXs668u+hSlGxn7adgCVtvZsfIOhDQzTkTiHKgBdOj4txOPa+EgM7
	Plq9W5erQHcEUQGk9VfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwJ-00DVFY-Js; Mon, 31 Oct 2022 17:51:11 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwE-00DVAZ-Fo
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 17:51:10 +0000
Received: from jupiter.universe (dyndsl-095-033-157-181.ewe-ip-backbone.de [95.33.157.181])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 67D0766028C0;
	Mon, 31 Oct 2022 17:51:01 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667238661;
	bh=LclkUUUuQEL6XWTDbjHN/M93uQibLqIJXoKjFuEGbjU=;
	h=From:To:Cc:Subject:Date:From;
	b=hte6YTXwfWRFfuipTNvRM0vUkZH2ZsvcAYCJui+c/S6n+HrHHVWg+xvej9zswIsKY
	 0zlWBz1gIhd5V1E94rG6dEzcFNJyqTNew+8FCf6GbGZpOYWvd+EVSfJNf+baD99L/1
	 NmDCuTWbg65Ws5w6mt+VvHb/aDw943mCsEodJeh5u7Y677/cPPni1lDdCHIQrigCBq
	 sgIGBqxWTufrBHww9REvEqMiUQN+pAGq6qTFpBwJ8V/Sxxd3lRU6N0VvXCEHRlPLjJ
	 di2b7va07Wo+Nh12A8olWkxj7CoptG6dc+mrAwZ5tlytzg4PJHcgqUc9kF+yZ3T3F1
	 0Km0E2YJ0gylA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4B9214801B7; Mon, 31 Oct 2022 18:50:59 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/7] RK3588 Thermal Support
Date: Mon, 31 Oct 2022 18:50:51 +0100
Message-Id: <20221031175058.175698-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_105106_764717_599FEDE6 
X-CRM114-Status: UNSURE (   8.17  )
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

Hi,

This adds thermal support for the new RK3588(s) SoC
series. The series has been tested on the RK3588
EVB1 board.

Changes since PATCHv1:
 * https://lore.kernel.org/all/20221021174721.92468-1-sebastian.reichel@collabora.com/
 * Collect Reviewed-by/Acked-by
 * Use TRM channel info in commit message (Daniel Lezcano)
 * Add patch removing channel id lookup table (Daniel Lezcano)
 * Add patch allocating sensors array dynamiccaly (Daniel Lezcano)
 * I also added patches simplifying up the probe routine a bit

-- Sebastian

Finley Xiao (1):
  thermal: rockchip: Support RK3588 SoC in the thermal driver

Sebastian Reichel (6):
  thermal: rockchip: Simplify getting match data
  thermal: rockchip: Simplify clock logic
  thermal: rockchip: Use dev_err_probe
  thermal: rockchip: Simplify channel id logic
  thermal: rockchip: Support dynamic sized sensor array
  dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible

 .../bindings/thermal/rockchip-thermal.yaml    |   1 +
 drivers/thermal/rockchip_thermal.c            | 322 ++++++++++++------
 2 files changed, 226 insertions(+), 97 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
