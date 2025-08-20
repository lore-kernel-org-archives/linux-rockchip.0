Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CBCCA0EDC
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 11:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDDA2uv3rkHfUBiCM+bsG4acpJjCYqHqQDf+8NYplHk=; b=J5L2FZBCJM78gI
	So/skdOk+bX448ysocBnVgrgMhPuW6/yfalf+T/TmhOWT2HZ60HU9BlHMXP2VZKUHEsNn8MsrJzlC
	EB4amdvrgP6qhfUIl5HSR9Q83HzBQhxPtAwDoxOHjBUL4zjFOSkKKmC0IMYbG9MY6ueMDZvtfeVtl
	x5jxCKIgNBwhAYQo6woDGysUpzTYJ/+X+QUSZvGpJVJYuootEKVA9DlJo4CRt/EqOis182YzUknax
	uH8VfXBG/AneSL0nzgFce+0utC4PVa51scSCx8IceZmHiM7Ch1hukjJ+SQXo7lzZ+L9W1C/QrE/Vq
	BqHBzv7izxHxRaNvZwyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogwq-0000000DOHp-1A2D;
	Wed, 20 Aug 2025 11:25:44 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog7k-0000000DAvE-25uL
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 10:32:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1755685964; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=aWtPItNJt0nBMeetRrPmmjbxyGSVF9bGO0kIpyRp3SGnwaVSpsLKB5UIFjHEfbBA/03TYt+2QuWmECEG8jJsdtkYNjCQH7Yz0yJofoXWROQUjGyThHFBZg9x5bhopb+/Uv2n4Z1BMEXY/yrjVLpenwCxtZGjm68Z6m7EZqrwEts=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755685964; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=UHE4xv6IMWn9xVuYe/yB5BmyxtdoVIMDD7/BwcD/9QY=; 
	b=mMbhjEyDw5wcmyZWq3YIRNEM42wf46sfs5Qe/r9jrG3dUJuqUoA8kZh0M/uIv1Wr1ezAf54WLVnX36L0P5e9mMkEcgWAtE8jU7d7r5OuUjdWynBRgkpjvnaM7mPxwBqPiqm6to7UbroaGJb/JQ//gHkQimF8YeAf+VLL3kVT5pc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755685964;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=UHE4xv6IMWn9xVuYe/yB5BmyxtdoVIMDD7/BwcD/9QY=;
	b=GAiESyXkzIFmcFn5sOzZnfcvsq5I2Dtus47a5JDxac+sv8IopOguCtuS4zsbZrVp
	bURPLN896N/2/asKPJnqZJypBZMhLxwArh/pZDM7ibzFvz3zglC6Lx54nCvy3pylsP8
	HvPPyu9rYLrwiImNgpExvI7tcsVh4VJjXN0Yqk/I=
Received: by mx.zohomail.com with SMTPS id 175568596154683.63382003069205;
	Wed, 20 Aug 2025 03:32:41 -0700 (PDT)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 2/2] media: dt-bindings: snps,dw-hdmi-rx.yaml: Updated maintainers entry
Date: Wed, 20 Aug 2025 13:30:59 +0300
Message-ID: <20250820103059.342850-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250820103059.342850-1-dmitry.osipenko@collabora.com>
References: <20250820103059.342850-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_033256_600900_35F85A72 
X-CRM114-Status: UNSURE (   9.87  )
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

Shreeya no longer works at Collabora, set Dmitry as maintainer of
the Synopsys HDMI RX binding.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
index 510e94e9ca3a..b7f6c87d0e06 100644
--- a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
+++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
@@ -8,7 +8,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Synopsys DesignWare HDMI RX Controller
 
 maintainers:
-  - Shreeya Patel <shreeya.patel@collabora.com>
+  - Dmitry Osipenko <dmitry.osipenko@collabora.com>
 
 description:
   Synopsys DesignWare HDMI Input Controller preset on RK3588 SoCs
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
