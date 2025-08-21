Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41784CA0FE1
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 14:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l96ZDLO4VNxH8vzqskwTElWk+ErIE0orCrEGV30HIcg=; b=G61KnLUGbkhjgH
	u5B+WDkT6a95C6sdp7lbFw+UNF5S8aay3aeGU6rb8KVHdinbFHDhUwCqsyP9guoNHqXnS+TFagJdG
	BwjRFf9+GWX8SIjr8vS2p+Km4bIbIixH18gaW7YR0DP7oIknUAI85GVSdkH0RZ01Nj7ume53899Qe
	jm/8VdpwvpMd9gkW+cUNJbwaKAmJ/mI1znSjrehrt/e/SsjIN1Pw/xb2WMpDvfNxWy5TvLe+6O9Ly
	CZFZ5H7FpF0bJNk15bWeHjkpqRlK4VXXeiQ3RtXdCJqF/0hin+5clYZbCAlx5Sa67bultDd0G9dpr
	yh6/2xrkQKumQPil15tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5pt-0000000H9FZ-3stn;
	Thu, 21 Aug 2025 14:00:13 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up3BW-0000000Ghua-1KFs
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 11:10:24 +0000
X-QQ-mid: zesmtpip2t1755774589t73dceb9d
X-QQ-Originating-IP: MKW7FV7OJTG4N2Nkof6plwcSoT2xUJFMGQvmD+IFAqo=
Received: from chainsx-ubuntu-server.lan ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 21 Aug 2025 19:09:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8973447282876745434
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v1 0/2] Add support for 100ASK DShanPi A1
Date: Thu, 21 Aug 2025 19:09:40 +0800
Message-Id: <20250821110942.172150-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: M182XWJxg1fqOo2MLb5Y51CQLe7R6WopGMf3DLzStRbwUsJyMMqOAvnt
	pEsDAqK2FXl+JueHkhtig3r18JgSrl4KY8L12FH95ZbsY9Kyu59OCmGtaCj1n5g6eaGa1mc
	UJ7FML8AExgu+9r2MMXBdjVELNTJHEzHjeRzYNIGXMm1mYixcGs39ORDS2FfhOlsp/GNOIr
	biU4OER9qx+KM5XwsLfF/EKHgxygS54bNg0llNMpNbep8VkmYQvfsWES7sID9+cF4HUOtdg
	EyQdvr3l9SZp7PrD0jnpAHW+Gydv6+mWv72TH2qof/1Wuq15/NO2XvrUg5GwYnGUDgPLsGp
	25lVxXQWsAnYqKQBEWl49j6QePc4rv4HixRMHHlYiNm1lrDRsd/WgTNV947lNETUxv5ejx4
	Gtr99oyY1uoQMMlhMDLajM9Oixwg/Ofm/EG5EOpfukp2HNA08jqHzBpBrR1HppT5UJ0gKyo
	TIoAryqb48R5k+YrMTznL7+woZ72ej46Z9GY/bq0PbADIcAPMxzCdyW4lQaSR7kM0vpeDnV
	5w5hg/uvDUBKVdBwH1U90VMyEyKt4tdVTIX1LM3D4JCmiYGg0q3JcVIfonAt+h6AWCTK6ed
	g0jK4QFymfzU+Qidz4uF2pzIIjF64/sBfvwEmDXLzkRWYsWtKeIGrNH8/Acs2GUBaozCN+m
	nVPTv045mucfLfA2I3V7pJKKT+O6Fy0KRjcgDdsDsa5GxF0OIrCPVDiailXmBEror9fvBX8
	bfZHuSKyCGNOUfpjcQblDqUfnGe4Set/qv5u+vf8qwNXPahWFGsIXCqqYXtwrKugHOebLKZ
	pb54gXRzcHtEW8c/k/O0XZMW42RfinXLnzV6z+CS4unC9mUnxPx9DouCPAxM2MGS2pGT7lU
	efL8YXaE2oaTqPHNJu45q6A+/YlTqTD2JmAPeRFvb/8C36//lfY5hRcTZyniqZQ202WV6EJ
	xDlxA4QCBhZm6d/R+NTUnB2wea10z2bDsXQEMkrRV6GV0pCdyGcQoFIKntLWy7qea8Y0aZ/
	Vs2xvA3Q==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_041022_812954_CEA2AC77 
X-CRM114-Status: UNSURE (   8.41  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series add support for 100ASK DShanPi A1.

Info of device can be found at:
https://wiki.dshanpi.org/en/docs/DshanPi-A1/intro/

Changes in v1:
- Add support for 100ASK DShanPi A1

Hsun Lai (2):
  dt-bindings: arm: rockchip: Add 100ASK DShanPi A1
  arm64: dts: rockchip: add DTs for 100ASK DShanPi A1

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3576-100ask-dshanpi-a1.dts | 841 ++++++++++++++++++
 3 files changed, 847 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-100ask-dshanpi-a1.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
