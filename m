Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4F94C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 11:12:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D73861166
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 11:12:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D73861166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ulqFuRAesZ8FJE7HGsqjJF1I3YAxlOH00R9V9+zfLzg=; b=TiNUqMP8UcB0XNjijrVZdo1nVC
	5OtqjJQpIjCS3vlzAuJwtP4NTiBKA3mt3fm61a43h7iGVePGFusF6Z97tjdOm74BSYYcB4uZgWm84
	8fEO+Co0qLr98YVR+mNJwVykgGxklGjUb9PmUMngKGljq9O6kWbS1MzUTuv+LpUoPlLOItwFcG1Sl
	cV/3faEWvs//Xwt/G6H4wfOtg3/Ox63tLh5qE5ZSvamO0xpvIDhDDbzmPNXccyF50x9ATbDzO90x2
	B4emUNNfXdQ62ds34plfSidCjUMWUvETJ6M7FRsMaTVHotXzhFMQ2AT9fbmYPnOf7/mzVKygPdS6u
	MwLLwFvg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lebvH-0045kS-F1; Thu, 06 May 2021 11:12:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebvE-0045jl-5P
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 11:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=0inget51R4qXao72kJ86St/puq5b677OvoOojHKjdrI=; b=BREGyVucQCK0kb8vh376RyfLj4
 zfh4knRgLwJdwrjZfkWgREr1NMJ2qbNhoBSLUfSs6WQBuiaZDGU1SbGn3O1bkVgYQAwa/4HlIk4Yl
 BukQQ0tqGZMyGB549ti0Jed9U0a1fwCeII7faofz6mLibfk4uf/GDCQuVWTtv+vl1U59WvmRRRdKl
 jBWnWKRUruyt31G6U2oPgDKKXZV6v3AJjhf/RDl9pyA6+GzjVlTRNKsUfFO8opuCOMUmmGRzZuwmL
 6m5N+A/p8s5Es/E+1K+rTbzkhnXZCYPKWSueM5INAvdqW3Ok2bU4U9w/VnlzTRux4hFCKPRa7hDkd
 xZBT5bQA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lebv9-005yaq-QI
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 11:11:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8E5611F41E34
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH v2 0/3] Rockchip Timer DT binding YAML conversion
Date: Thu,  6 May 2021 08:11:33 -0300
Message-Id: <20210506111136.3941-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_041155_998829_4F81FCB6 
X-CRM114-Status: UNSURE (   8.29  )
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

Changes from v1:
* Fix the order of clock specifiers.

Ezequiel Garcia (3):
  arm64: dts: rockchip: add timer0 clocks on rk3368
  arm: dts: rockchip: Fix the timer clocks order
  dt-bindings: timer: convert rockchip,rk-timer.txt to YAML

 .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
 .../bindings/timer/rockchip,rk-timer.yaml     | 64 +++++++++++++++++++
 arch/arm/boot/dts/rk3188.dtsi                 |  8 +--
 arch/arm/boot/dts/rk3288.dtsi                 |  4 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi      |  2 +
 5 files changed, 72 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml

-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
