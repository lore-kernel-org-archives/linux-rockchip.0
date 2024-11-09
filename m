Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D03DDD5E36B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VFj0ojyG7k1Sd90rI05e/09dtMeNU08lycTrL4NjVM=; b=uVfqS55F18uIE1
	bhcAjYLQBsncU5SBKXNvcpy73DCeL/A5tIW+kmj/H4gb8awwslGIgTZ8rXcUWncQCxxU7wVjYC9VM
	E6o++03JvrO+7P317um+3nT1z3hQHo71hCC+e77zKnlsK798ckbRIwyIDgS/Q+HU1CCECuNWwVxbr
	C2m2noQYjWDqW6BO+2nlLKwOcDn7hdzCG5o7NDsakdx3FPd/gWj3cgS9N78f3ARGzB5BR7Q7GJcWR
	8d8e/Wy4l5wI2PZF8djFcgxh9GlmY/tRYn0ozkBnkLxcZu6yDjboddxgPnQ7gtKBHVfcP36lEWLWv
	O1Bhv5R2GFOWjRzVgQqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qGX-0000000DoXy-2POn;
	Sat, 09 Nov 2024 18:32:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qBK-0000000DneX-0jS2;
	Sat, 09 Nov 2024 18:27:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0VIHC2Ku9UTF968sfdHEdMyRYkhQWzQCl1gtYVzqmTA=; b=yZAbTgxPIS4nAqg1yuE0A1Ibt9
	D5msZmdWwGjNNzL8Q0Zij1iYOx7ZiwOL2yLPUttmiZkPHK/EoPBycqZ+agy6iJeNXDHVDrwzNDEWO
	rmGHyPraD6ThKAEuI2RJusyt68LI38ZlrMs+MGwmHJ+tuS+rtzeHLqKBkOiEDY1eMhjRMYgrBx6hV
	SFYqpLlSKrbuiBNn1cRFBf221KF9K9/+L9U4CwnfZmh49YEGHDubiG2vPCV1dZarAkE7sKvUeUZL8
	luSIej5HbqlpSKkbCZmWsDDo4WJ67y2Y0Bc0NW9QmV3matFoIoLSR22QYfYiXCVv10paHmjOQwbtY
	yuk4evtQ==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBI-0007Km-2f; Sat, 09 Nov 2024 19:27:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: fix nodename regulators
Date: Sat,  9 Nov 2024 19:27:13 +0100
Message-ID: <173117675958.1131306.13278216247515118852.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cfc3cfe1-086b-48f1-9b89-f17c9391d3cc@gmail.com>
References: <cfc3cfe1-086b-48f1-9b89-f17c9391d3cc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102734_235350_66FAC39D 
X-CRM114-Status: GOOD (  10.23  )
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

On Sat, 5 Oct 2024 22:39:05 +0200, Johan Jonker wrote:
> The nodename for fixed-regulators has changed to
> pattern: '^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$'
> 
> Fix all Rockchip DT regulator nodenames.
> 
> 

Applied, thanks!

[1/2] ARM: dts: rockchip: fix nodename regulators
      commit: 2c3944d952ec4d3428a8d3163be2263579d1939a
[2/2] arm64: dts: rockchip: fix nodename regulators
      commit: 64b3e42fdbc1f4dc780ca39e860c5514d66e1b97

I've adapted the patches to the changes that happened meanwhile.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
