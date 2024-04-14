Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CADAEC04FFE
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 15:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/3KjxMgTs7wiEUEtqvxZ/Bb9EhxFo2+CsjHDtfqSaSA=; b=pg6V/f5FhSyagE
	IdS5w0jgli1QypPns1y3cxZSPPANL+dSQm3U+sjbO5ePwgvS+WGe05AjmkFdHjhvL6SwXXuzb0vOG
	agPvS4VxSY1GW7uZ2G0K7iESFFEJcVxHgpZaT67OtKVbQgapqni05FK7ohnZruEzQxOyjqeasywEx
	HNfad+jBf/9yfHkZ9nHHetl/D0RDJZG9/oL82RYisNJWjyRvk6LA7BBddom69lV2DjNGbpd3yl6I2
	/CqOS39ziBb8eGJiLtWy90EwJc5gCKVutfgL6/FMC7H1qURNsCOURD7aI35ufkd3Tj4KplENnr7S0
	c380kIARUzSQESiQ8r0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw1Wk-00000005i8K-3Yl1;
	Sun, 14 Apr 2024 15:12:18 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw1Wd-00000005i4w-3vzR
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 15:12:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1713107504;
 bh=gMlj6yQsVpAUf4c5FKz3DvGcpLcTW6AorW4VMtzn7yQ=;
 b=zQ4/z8U0/SA/vAgWXYIYHJqKOt4NdcbiFlR/uh0/F1/tR6+yqVccKGe0oWnlScohrZ2B6Z2w8
 ltDEfEy7+bNXoY0HFSWuef6RniTFMKSLyVrx0pDCsZWnzEOJNi7td2VksUsOWxoOKrN4JW299p3
 NFYV1IbKE8qo0ORWv/vKuQ5FGQuXYhHp3PkyqnBiv8da+XpZIAnRbrJstK5KAqGD+pVEVjFsRL7
 2Y6olQlJmNhX29Ctw+u67fl/dqwFtCgGWtAK8hBxyafkNWS6A8aJvAoZuUDw2CPrAIiQv0JdkJV
 vxBMQk9RvYqFrTvB5fccagVZPtm3Q9Si0rbpmuDLhN0A==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Sun, 14 Apr 2024 15:11:26 +0000
Message-ID: <20240414151135.1774981-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 661bf22e99ce03c87699d717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_081212_632043_B262DD47 
X-CRM114-Status: UNSURE (   8.20  )
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

This series adds initial support for the Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Schematic for ZERO 3W and ZERO 3E can be found at:
https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf

Changes in v2:
- Collect acked-by tag
- Add to Makefile
- Add patch to fix #sound-dai-cells warning

Jonas Karlman (3):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E
  dt-bindings: display: rockchip,dw-hdmi: Fix #sound-dai-cells warning

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 .../display/rockchip/rockchip,dw-hdmi.yaml    |   4 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
 .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
 6 files changed, 523 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
