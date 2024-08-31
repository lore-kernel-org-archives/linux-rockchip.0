Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9206FCD1293
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 11:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KqT+KAn+9wYhv7Aui1yjgn8Mu9zOt837yDQ5cnSYW98=; b=14OK0TcqbFP9R5
	U9elpXgSmhl1twRDu+RUOFvM+3AXzK7+y9n/oL/UJMd/WhSkpU8lz5y5RI/T505zgCCOB3syXHKkg
	qjGoUrPlG3I64bpSynKM3pb3M4FHip4eumh4E8IoanMOm/AvZfSy87ubE54waip+Bg/M1s1u/0s/4
	qmS11NgU/m+cR5VJDMdAWvQFiyvbSIwYxulKKFTBPdFjRfIQtZax5+r+t2REUlneTveLVlZg+ZbDG
	oQAu/KBhGxs2/FkFwxqXy+vO7CdjiG1fvOOO30aDY/rcwHBlaIhrG+DuuLXdsBxLdXjvy8uOjpca1
	3UU9457YIyuoT00J+dvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skMJm-00000009FBl-174u;
	Sat, 31 Aug 2024 11:30:58 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skMJi-00000009F89-49Dc
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Aug 2024 11:30:56 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725103850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/x46giHTdVhCr/Jxv8/tM7J/6KMCSjAvr93GDNuu3LU=;
	b=WC3Ub8eietgGEANwsdjR4z1aVbkTrtnU+ATktv8ygusyOj6Yd+qFW5GeYmc0pL3cJXsEAO
	4SmLlSuk/no1/Kama3RN1bG0bZQn47LbcJlL7TKb6sa4KHN+mpP67ghSg0K+ezUZC7+gOJ
	ARr9ejjr8POLS/+eRwW/nbdsn01lvTEINVjQs4ctQfy6D1J8CGNpizXc3qoveLnAmecsqI
	xfIHMA5dy2RmI1qr//4gcNrwsHJojcpua4ER833mYgBGN8SYmEShYGc73qZBrknzBTm3tb
	D/MiD9xmNmLSQhryRT/NlolVSy8bYGSSkoENH2/0geaS0oU3upW0LRCm1t8ubg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add missing tshut props to tsadc on quartz64-b
Date: Sat, 31 Aug 2024 13:29:23 +0200
Message-ID: <20240831112949.60091-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_043055_485200_218DB421 
X-CRM114-Status: UNSURE (   7.54  )
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

Add the missing TSADC properties `rockchip,hw-tshut-mode` and
`rockchip,hw-tshut-polarity` to the Pine64 Quartz64 Model B.

This fixes the following warnings:

  rockchip-thermal fe710000.tsadc: Missing tshut mode property, using default (gpio)
  rockchip-thermal fe710000.tsadc: Missing tshut-polarity property, using default (low)

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 13e599a85eb8..c164074ddf54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -648,6 +648,8 @@ flash@0 {
 };
 
 &tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
 	status = "okay";
 };
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
