Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF3EED5D688
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 21:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eODLpcnbhMv7zYQk+Ytx0kGg0JHCjI6f/iiC8EOd6UA=; b=UMd29+XgPvTikx
	FTSXy1xTVLmnsWagIUtuX4t5rnCZxSrkgUnuD7NkOT4xhFr9gLTdw2DW7F5aNmpj9XEyzPdOlYi4v
	E7yBUqY3v/yjo2zSGQ8jyMJ+VLoMU8n/pUKrFHHJTbbKrn+b22U0RO4u7daFrXNUtDk30kkoG8O2S
	B27xqXKCdkJN/NPpN/9YyZs3MNstBBuH5I2SLdmm1EELutoMFi05dWDBhchekb8Tuu8zwh1Bs3ioj
	CX96BDsFkUDN+8W6v5S68RDGC1mU1fj4WYmKIcWTcaSIMBq5+5LHSJs7PzUzN/vNZcfsBq0YDLlAG
	i4js33Bu+C3OtUMZUEJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9A6H-00000008Psn-2bsD;
	Thu, 07 Nov 2024 21:31:33 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9A4V-00000008Pie-1JKh
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Nov 2024 21:29:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1731014972;
 bh=6rS61pmtnnZyCNnDhYW7Yxzdh8e4M7TjjBsbO0wWTpw=;
 b=bYfjDPWx5cGRo79LdjQA79gU5aXrBNSm2M05ghq6Hb4sbAzke1t+iV7rFJgFfAtrih/hWl3Xy
 6a/kyGeS2N8Q0lW1Bh4DRrNPMSLVMo67lm7akCEEdguu2FuJOSh2sNWOaY1905eY8cEZa7mCBXL
 xkoUYLwufpbIi27267Dn2f7lkO5fLxAxpZOJx0uzlXKs0/Gxv8U3nDcYeGJbBy7IfIwFU9Cy2dv
 dqUVSgJBgJsyAi+fY+Ec+VvQnS/GwxmGSTmNF79gd8fL/Eow698edwuLSadMsdNufDby510KvjF
 Gz3ePsk7gCuwt6W0uZbWuiAcbYbysjWXSrBesfiDrl/g==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Enable GPU and HDMI on NanoPi R6C/R6S
Date: Thu,  7 Nov 2024 21:29:08 +0000
Message-ID: <20241107212913.1322666-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 672d31376ff4b179fef28893
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_132943_418283_8BB69BE2 
X-CRM114-Status: UNSURE (   4.87  )
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

This series add the necessary DT changes to enable GPU and HDMI on
NanoPi R6C/R6S.

Runtime tested and working with video=1920x1080@60 cmdline on a
NanoPi R6C.

Jonas Karlman (2):
  arm64: dts: rockchip: Enable GPU on NanoPi R6C/R6S
  arm64: dts: rockchip: Enable HDMI on NanoPi R6C/R6S

 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
