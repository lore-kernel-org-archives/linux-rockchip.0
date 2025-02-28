Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B037EC19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 13:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M6PKwwqanEwJPFISAxVJfLf19E4JMCxUH/CqkXnEmaE=; b=c9AE+EHE1L9Css
	uorHFlrbKAAY/HVjmEawB279y/UdPMYGEQ4w0UPVCRTgrF+k+tc9NRB3u31LgtJGyUVOpAo6IUeUN
	mOocms3V4qj31xR0puFs0Ao0R/IsULl0AtVhEyhgJaKfwNeY3Et+yTvZrniUzG5mSi2gUlNvVFwG7
	pOF03fJ1u4i4qH4RCR3IgdJg1hz4Z0UiAPoqsU7DN7MeNf6Sk70ovpqZ8OWEGnpt2SgG6UySJmLKF
	s2W3x4sEBJI4rfGBW7rYmnKxIZZKkHGWbwV6ofHryn46QoT48WvlCeIsJ4MPY91swRSOK+cjZ3r2Y
	83l42sgzi+b8wh1kwp5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to0Gb-0000000B3ak-0k0O;
	Fri, 28 Feb 2025 13:19:01 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to0DO-0000000B2qC-49Z6;
	Fri, 28 Feb 2025 13:15:44 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1740748538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7n26wdVU8SQRbAvpWaWjoeRo0iE4FcXJm+y2KLzS584=;
	b=iPwmjfn+AoIhFiehSak7UatH7pEhF6iMh9rHX3pGtsEzmY8aLCnaoX8+5lTYtfqTWk5XpS
	B67LQgX4EyBGv9f5AhyXr4ZgWd1bMpgchsopcmhqpYbTQxAJgq2aDTYxwrNW0Wsy3v4y7T
	eiFPrke0MReCjoVI0fho2vJfj0gXAx1H1PpPDS6ZEyiamx7KVF0trP3TolHGXe82Fe4uRj
	/r8OxfXk9uUfurrcSCXagZE1ncA/X6iApONGpB5A5QyAwnGTSpYGGvqMvs2VXjyedijnAl
	fIfvdrU1jBTdX36F3u/GCJmV79P0It0aO2YD+TlrBcSRd3DyqCb0O8q+YzuYEg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH 0/2] Slightly improve hardware description of Pine64 RockPro64
Date: Fri, 28 Feb 2025 14:15:27 +0100
Message-Id: <cover.1740748439.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_051543_173006_E57CDF91 
X-CRM114-Status: UNSURE (   8.04  )
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

This is a small series that introduces small improvements to the way
Pine64 RockPro64 [1] single-board-computer is described in the DT files.
This applies to both production-run revisions of the RockPro64.

The introduced improvements boil down to eliminating some warnings from
the kernel log, by adding a previously undefined regulator and by adding
some missing references to the regulators.  The PCI Express patch from
this series may actually result in some improvements, but the jury is
still out;  the patch itself is perfectly safe in the meantime.

[1] https://wiki.pine64.org/wiki/ROCKPro64

Dragan Simic (2):
  arm64: dts: rockchip: Add avdd HDMI supplies to RockPro64 board dtsi
  arm64: dts: rockchip: Add missing PCIe supplies to RockPro64 board
    dtsi

 .../boot/dts/rockchip/rk3399-rockpro64.dtsi      | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
