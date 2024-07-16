Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4AEBC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 15:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wt1f10Q8quHf2EuzNLT+Qw8cs8UpF8JdalB/oTYXDPs=; b=hrCKgJZQN9gSSB
	6MCZ1x5r8b8QtAfrHn8JcPbg+9C7yMVyiPe+JLy651M7Pn66WPYusfV5f0cN17jxj5dpJluoYQvYr
	qRtpl7ObyrKXXURqzgLA7ZbtfprLoA5+hFyxYco3fHnaNCJh0E27Tudu/jBFp2qkUIZD76NT0dawB
	sGk04EVXbL6/8uerJsvF56We3IMA2ZiEevz+7Hy37IgtJPX60deX7WCU8diDFDGrov0ADseo2aXsa
	Rq+cU5XPY2Z4PHoPm7IPK9tEMPCLQDhzssF+YVWo4rvwSWObLU7HEgyp1ZeDjNQJs2EFTI/uU1NNY
	cs8gqmZjWl3p6m0felgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkSx-0000000AxTx-2q1C;
	Tue, 16 Jul 2024 15:51:47 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTkSK-0000000AxFz-3pVe;
	Tue, 16 Jul 2024 15:51:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721145065;
	bh=0IoHM52eYXC69oR92ftsA6l6BJnmsUgO4mcEkrsQtwM=;
	h=From:Subject:Date:To:Cc:From;
	b=qXYpRqfZLzi9kDNUXdszd457BmV3pjld3SAQpXV7Hw3ar23Pf6wiNuuCv9Z7V6jBt
	 JTqzkc/nHJpQRSrwXDMbu7oZdSg6cCJQsjp+7Ed3YfxHH2aO5I8VdUiJgYT/YJQiMq
	 E+oTGqPFy//ouqptqY3kcZHu2zR6QDL1hI/Xj4nV6qCLonShKZcOYvDzPI09Vd1Q/i
	 9ey0Lmcq3utl7YwEWjv2ylLCM14tgvUjEM267Do5zfx7jO/O3lEW+pYWcfZk+JaNZi
	 esAo54gpWF6nfR6auBY8RWMssDPVk+TGt9QmgavzJoXSsbY3cAkOCdygpZzH00EhQl
	 fO9xSrcMOq6IQ==
Received: from [127.0.1.1] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E35F037821CA;
	Tue, 16 Jul 2024 15:51:04 +0000 (UTC)
From: Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH 0/2] Add support for Firefly CORE PX30 JD4
Date: Tue, 16 Jul 2024 16:51:03 +0100
Message-Id: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOeWlmYC/x2MWwqAIBAAryL73YLau6tEH2FrLYWJQhTS3ZM+Z
 2AmQaTAFGEQCQJdHPl0GVQhwGyzWwl5yQxa6kq2qsFwmt1s7NHfpUTLgezxYN2TNX25NG1XQW5
 91nz/33F63w+rZLD0ZwAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Christopher Obbard <chris.obbard@collabora.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_085109_277440_CD737B82 
X-CRM114-Status: UNSURE (   8.07  )
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

The Firefly CORE PX30 JD4 board is a SOM and motherboard bundle from
Firefly containing the Rockchip PX30 SOC. This series adds support for it.
    

---
Christopher Obbard (2):
      dt-bindings: arm: rockchip: add Firefly CORE PX30 JD4
      arm64: dts: rockchip: add Firefly CORE PX30 JD4

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../dts/rockchip/px30-firefly-core-px30-jd4.dts    | 562 +++++++++++++++++++++
 3 files changed, 568 insertions(+)
---
base-commit: d67978318827d06f1c0fa4c31343a279e9df6fde
change-id: 20240716-rockchip-px30-firefly-59efc93d6784

Best regards,
-- 
Christopher Obbard <chris.obbard@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
