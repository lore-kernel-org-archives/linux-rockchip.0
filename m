Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27849ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 01:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aEIYVr4AQmK+YieY4iqkYjDN5KXC5hAid1qBuEDBjx0=; b=w68V0/WLDztxz5
	rb9QTA+qdP3MIp4fOhkt7ZRts4WwdB5qufzHYGuuz2vdgANPa3kaQlEF2R9SR/7tcku2Um2EpAKsH
	Gv+O2PaKKBPJCRYAssVL4v+dfUkToSAFOEqaTDWrcS0dyvlAgzBYa7BUYwUWpuxLcGp/hwTovtvij
	J5yZubSe53JcL9gBrpt4MjNYwuggSI1Z6YdmTFHVAwsNuYss5o+perpRDhM7r3zFkOB6vbe/F88N8
	oVOyDjMU8qxKoHlCzM1WxgZWwJYaAFp5XKGb16BZ78ALTMqz3OTaHLJ2wGoUuIelT+Db70AG9hxRx
	UDw98d08MZcyCGebh0jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1y-008xXZ-7W; Thu, 01 Sep 2022 01:30:06 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1k-008xQ9-Iy
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 01:29:59 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id EA12890049B;
	Thu,  1 Sep 2022 09:29:45 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 0/2] gpio clock-names
Date: Thu,  1 Sep 2022 09:29:39 +0800
Message-Id: <20220901012944.2634398-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaShpPVh5OTExCTRkYTx9MSFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRg6Cjo*MT0zCU1RMQ8vFioK
	TClPCQFVSlVKTU1KQkJOTENNT0NMVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUpJSkM3Bg++
X-HM-Tid: 0a82f6ab1f8c2eafkusnea12890049b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_182952_843784_AACBAE30 
X-CRM114-Status: UNSURE (   4.21  )
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

Add 'clock-names' for gpio dt nodes.

Jianqun Xu (2):
  dt-bindings: gpio: rockchip: add clock-names
  arm64: dts: rockchip: rk356x add 'clock-names' for gpio nodes

 .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml        | 6 ++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi                    | 5 +++++
 2 files changed, 11 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
