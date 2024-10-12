Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4955CF256E
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 17:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s5UH0XCefY4HbbqCxm/qMZypyn7MezTdJFr/cVsqQLg=; b=ul4s1f2OQcni0u
	AGqfx0mf/wVyBRq6GzNGZIPBj460Uqg7UxzVSE+DeA1QLBLl0kkBGKRoPE+rtmv5Sj2qPfbRfWKpL
	0xO7nEWEU0eHATiahtERczio27kAIR0m20cljwcG1HJWG8+aCD64IS6c8p9zy1zz0hTgazWak8vZd
	XkH5PcEMItFCbNQvBYLjIXmnGY3+86TYpx7TEBoBNo3CukrF4WfbV80zuqTPqPJ49+Y02OJYU89aP
	XLfGWqqRyECY6omWkkqZbRo9y1V7Gg2fI90OYYV+SXRk5b2tu/P7KinqzV7DV09WbtCIqBCWz0dq0
	CoA7TE0Z5uO+mfdAz3jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szfah-00000001Wyk-0qub;
	Sat, 12 Oct 2024 17:07:43 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szfXq-00000001WW4-1lCj;
	Sat, 12 Oct 2024 17:04:48 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728752680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=iM3UE8DQe02WAdlGsdyyi6qgsRCUdBbEF5+N10Dhsd0=;
	b=cylJN7TPl6anhfCNNFwta7cxiuu7tDHpjk5QkhyU+VPsd3/GOGi7uAf2Uc6XnXXSg0fL5F
	lKEK1SY1ZhmYrQweEsPCcSnhNOPESvRo4QHaq1E7c8xg2uQqTPoplE+S6GLzOBGPJA3C8T
	O7DwbIyi4+zOsyKlom+pcz3TIhxWWQTdn93CPaN7xQnqoeA0lBgcXoPQjDpZEQmf/Pj+Vf
	DnFzc9bCrA8Fbd3U4dON0evcTf6Xrw7cr6vX/73M3JyKYIOfv1vZOeEM8qrN13zge6C8DE
	U04nbhNP3o0ETT7utXNl9Hm0GENZoaNJwr4duP09Q9kabQBNkrws98ffMa027g==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH 0/3] Update, encapsulate and expand the RK356x SoC dtsi files
Date: Sat, 12 Oct 2024 19:04:33 +0200
Message-Id: <cover.1728752527.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_100446_993045_8F1905D9 
X-CRM114-Status: UNSURE (   8.47  )
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

This series tackles the Rockchip RK356x SoC dtsi files in a few different
ways.  First, it updates the lower and upper voltage limits and the exact
voltages for the Rockchip RK356x CPU OPPs, using the most conservative
per-OPP values for different SoC bins.  This is rather similar to the
already performed adjustment of the GPU OPP voltages. [1]

Next, this series prepares the RK356x SoC dtsi files for per-variant OPPs,
with the RK3566T being the first new RK356x SoC variant to be introduced.
This follows the approach used for the RK3588 SoC variants. [2]

Lastly, this series introduces new SoC dtsi for the RK3566T variant, which
is capable of operating at the CPU and GPU OPPs/frequencies lower than the
"full-fat" RK3566 variant's.  The RK3566T is found on some of the already
supported boards and rather importantly, this stops the CPU cores and the
GPU from being overclocked on these boards.

[1] https://lore.kernel.org/linux-rockchip/cover.1719763100.git.dsimic@manjaro.org/T/#m786f0e0a45377d29aea826f05c95b5052a8bb3d9
[2] https://lore.kernel.org/all/9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org/T/#u

Dragan Simic (3):
  arm64: dts: rockchip: Update CPU OPP voltages in RK356x SoC dtsi
  arm64: dts: rockchip: Prepare RK356x SoC dtsi files for per-variant
    OPPs
  arm64: dts: rockchip: Add new SoC dtsi for the RK3566T variant

 .../{rk3566.dtsi => rk3566-base.dtsi}         |   2 +-
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     |   2 +-
 .../boot/dts/rockchip/rk3566-rock-3c.dts      |   2 +-
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 116 ++++++++++++++----
 arch/arm64/boot/dts/rockchip/rk3566t.dtsi     |  90 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 113 ++++++++++++++++-
 .../{rk356x.dtsi => rk356x-base.dtsi}         |  81 ------------
 7 files changed, 294 insertions(+), 112 deletions(-)
 copy arch/arm64/boot/dts/rockchip/{rk3566.dtsi => rk3566-base.dtsi} (95%)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566t.dtsi
 rename arch/arm64/boot/dts/rockchip/{rk356x.dtsi => rk356x-base.dtsi} (96%)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
