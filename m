Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84475CA5FC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 18:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9okfLHsDVXiTw6d9cidIvTws0Kvwox5M0389tsXzT/I=; b=ZawkLUFFbCD33/
	2zGD0Pdxupro1aMrD6bzg8tI7EDkTuhDf/lZYvNK2vMjOPQ5ha1RIh1tLesD8K6SPRDcWQnIIm+So
	mApVgiVeKnTcxdtdV9mqVMaatsgPNE031q05HyvmNImeyJd6MAe7dcchvGxB4f314PRIZ8W/N6e+y
	cq4jNTcKqi2Ip9MHwKIgLTB9FxiC+HnrN08zISQ/9HaE0KfsdoapQmLxbSIrDr8Rp/cRCe/XMsqGU
	lctvM18GZZINTGwYwBVxLW6XJ4b5kEpdHTYOAIRdLTXt3T01KrDe+mF2PC9lgizhe7EhMYXeivEZ1
	dMpqxqSHIT8dTuCarFCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzOV-000000071go-07MF;
	Wed, 30 Sep 2026 18:51:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBzMs-000000071Ea-1pyp;
	Wed, 30 Sep 2026 18:49:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=rWFsHNuhE9NhgYR6RUPz4/Fgti25tsUK/Ak2q3CpV2E=; b=Cho7aUsPO1xdadgKrU+iRLALwO
	l+nQAYlXoyeSkf/p982fPLnsbGQEWP4o0VhbqU/rVVaF/X7VHVMHLTwo3clRtqJtjyZqQSQpBV521
	OPR7vmTyYmAwOc9BAWJLMvOjAQBDUmbEhxe2VehYro8iQT4JrdoMNn9JqW1cYAaHGZWddCc4P9YdI
	+9Uiulsp4cCQbTMYHXTGtgBOEe8nPhD9UWo3urKLn5JcDXAevss8nz00wvzy+BF5+0lWQVU2995gR
	3TI92QFwbKUW/E0oCwQtNGjSZlC44ydbIBC1Ah4IleYbyV+9O1Cuxry9KQGn14u1rKxZkHLK9tjO4
	QxeUj8QA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBzMp-00000004DRB-2mZZ;
	Wed, 30 Sep 2026 18:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=rWFsHNuhE9NhgYR6RUPz4/Fgti25tsUK/Ak2q3CpV2E=; b=TOQVQl1iibkQm7QeEjJoVP8Kao
	d5ZjY6dJEAwXYFoR/e2IU5DBvvv0K6dw4fZZg7nbamcAjeg2j9oX3acED6Kd9+JNCj50TQhwFKGZ0
	UmmR0M1X8WpoGF5S1LLQ83QAzj0jFtOhfN2YPHhkBLWGljdaLHIPBzhZuILlEluM6kd1y0SfB69dD
	OCDFzCFzF3B1FszDpskIiqCKWf2mYcR+002UyFdm0cuUIfFU+SSKKyUw6bE5rabQK4q9hDQrle6Jf
	FtsEM56SEtOZ/t1Ykk3TOPc19fo5l7Pbw4INabk/l/vrTExnQ9g8zYLQQDd+jITSY3wUnDIDSYrmp
	Sn1TZOpA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing audio codec supplies to Pinebook Pro
Date: Wed, 30 Sep 2026 20:49:13 +0200
Message-ID: <179079409721.2398180.7039996510410106789.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928133122.45765-1-pbrobinson@gmail.com>
References: <20260928133122.45765-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_194923_950069_0CD7D469 
X-CRM114-Status: GOOD (  12.69  )
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


On Mon, 28 Sep 2026 14:31:15 +0100, Peter Robinson wrote:
> The DT binding for the es8316 got 4 power supplies added in commit
> e9966d450b46 ("ASoC: dt-bindings: es8316: Add regulator supplies")
> 
> Page 16 of the schematic for the Pinebook Pro describes these
> supplies so update the dts.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add missing audio codec supplies to Pinebook Pro
      commit: dd0c1c534957a1e297460edd1428b251e78b4fc5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
