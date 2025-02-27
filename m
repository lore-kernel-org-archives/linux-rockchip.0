Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0843BC19F32
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 19:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=566oAa0korMdmLxDgVzEZCQU47mHb50UEIpSH8dLMCM=; b=zC/WSIS9n66ewj
	Q97M9Joew1LwWMuA0b3KswbLtMfg28U9wvcq23CiaC2Qqy241DwaYbvpCMlhzchTmjp6sJsnVQKWN
	VmVDBnm0Ad+6djnX9oJEKzpR5CFVJqJjgmmgCUTxyaBqLGmTQhZQVH0gFewSY9LqBBg6rxkvOIaMC
	tpVN7NBOouDUR1H/wFstFYcvTvx3R1bmy5dJhQgs0s7YimbZOM51tCjlziNV3wRDiddikcikVkUpQ
	laAdwpKAYa0KVQgBPUu7MFGw3ClVqiryofOOZa6pE++h7+Svj1QISdR7yrs7ILafymiSNWTEnoute
	ltuLxSckF39eD22rKQxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjmW-00000008dYp-3AcC;
	Thu, 27 Feb 2025 19:42:52 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tniox-00000008LOy-1oFK
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 18:41:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1740681678;
 bh=r6E0ijl99dglGUtzxVKRHRyEXc5SE/61O6khRNhDT7Q=;
 b=BHxdprZ5FVRytbppPNtqHiM+lZniBdcwVbOe0a4seftHq6ZEnULwt6bDQqOq5Ej2aAp0VrdOU
 v+8FTBvgvt+bQhRtZGt5LcJ4QT6zpO+261wQ7rSHCAnEs8UNiSyDWpNgjqPG7G83oPsyrdT4dQ9
 Vkvf6OBsnVuOFK5QrQPKZ03zOu5ilTEMj7f/GZ2QFcKU9KqS80EXG6cu10xuFwV5f3yl8a84dzR
 uicdlkK6ZqL9nXFMLAuXm/xMUVoPIjx8Ia2ruhtSvUoyrYArEYozIty83zZWojTtQGVz6N94bXz
 ykf4ECvEKFU2KknD/KgxIqBYWmlnyaIwtA2l3nNq04TA==
X-Forward-Email-ID: 67c0b1c9bf572996e8621452
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/4] rockchip: Add support for maskrom button on Radxa E20C
Date: Thu, 27 Feb 2025 18:40:49 +0000
Message-ID: <20250227184058.2964204-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_104119_559176_33F42190 
X-CRM114-Status: UNSURE (   7.32  )
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

The Radxa E20C has two buttons, one SARADC maskrom button and one GPIO
user button.

This series adds dt-binding, driver support, DT node in SoC .dtsi and
adc-keys node in board DT to support the maskrom button.

Jonas Karlman (4):
  dt-bindings: iio: adc: Add rockchip,rk3528-saradc variant
  iio: adc: rockchip_saradc: Add support for RK3528
  arm64: dts: rockchip: Add SARADC node for RK3528
  arm64: dts: rockchip: Add adc-keys node to Radxa E20C

 .../bindings/iio/adc/rockchip-saradc.yaml     |  1 +
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 50 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 13 +++++
 drivers/iio/adc/rockchip_saradc.c             | 18 +++++++
 4 files changed, 82 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
