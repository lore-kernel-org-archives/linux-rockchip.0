Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB941C83F27
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 08:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pDtAxffv962rxdOu+nl15vooEpgb3+7TdVGJpavyNOQ=; b=hdaM3vUNfzEsoB
	n8idBjs+5LQrGQoPLoc6LQjJfaoPp75Foa6hhTD60czgExGpkYXlBIk42wXVzOBHtVzvy2v7tASIS
	1zIOSLqRzVlcvOnHJ12BIceAD3dVl06hpIJDFxDVq7P/XMa2C1iqzWaPojWTrbEWVd7P5gb12JeLg
	xZzIfjGySHgPFBLNy+9XaAUptR2rZSNt2CUiy/JqF+9V9qewR2K0+6EjrmbXd8nDtiI6+bXluJnsB
	bY8plFAzJLapC9tix9vqX+A0vUg6oCWd5+tsiwhBQDCsmQbVDMgdn19UooQvJt5yuybNf1bbghVVt
	wpg7pdhVyYwj/T1fg2Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8gM-00000001stp-1Mmq;
	Tue, 22 Jul 2025 08:49:06 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue8bO-00000001rjp-0VCT;
	Tue, 22 Jul 2025 08:44:00 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B0ACA431F6;
	Tue, 22 Jul 2025 08:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1753173833;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+cxsUj0Y5gyKrSSgcqbSIsRn5/3YWg5fh9lkz0I+ON0=;
	b=DOeDTaxwDRa5w94xOL7msLEtOmiCPzSv27A298ZuvkvgcBl2j+vjF7X+/ELjEq/K4kPFCF
	IUxaNrjszfyaNyrbwmFWFkUDqPrVfmZFx/9j40aj8yq/7RX0aGBZOI40pv5LYd7+r+iADT
	iyZ95gu90RA9DmxJmzSX3bcgLREFM5n4Zw/xhYUVOm/q8UVIktyWMuWXPc6b3n7NqalYpc
	ktwQvV8Qxvq4Pk7lZ2HZYyiKXPlzHd82SFHibRC47/AMJlo8pBVHfvnycq3zD9m1GbaPvh
	uhaLbi8NZVUy0s6aLI28Qv+7caMfYQxDYXE5fc+524ul/ZJXQtKunLbKKG3FKQ==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: [PATCH 0/2] phy: rockchip: inno-usb2: fix gadget mode
 disconnection after 6 seconds
Date: Tue, 22 Jul 2025 10:43:42 +0200
Message-Id: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-0-239872f05f17@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAD5Pf2gC/x2NQQqDMBAAvyJ77kISWxL6ldKDya5xKUTJaqmIf
 zf0OIeZOUC5Cis8uwMqf0VlLg3srYM0DSUzCjUGZ9zDeBuwfvreBBzlh5tGzANlXnGZdiTRNJf
 CaUXyxN6O0YV4h5ZaKjfhv3m9z/MC6Z5r7XYAAAA=
X-Change-ID: 20250718-rk3308-fix-usb-gadget-phy-disconnect-d7de71fb28b4
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, William Wu <wulf@rock-chips.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, 
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, 
 Alan Stern <stern@rowland.harvard.edu>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.14.2
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdejgeeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffufffkgggtgffvvefosehtjeertdertdejnecuhfhrohhmpefnuhgtrgcuvegvrhgvshholhhiuceolhhutggrrdgtvghrvghsohhlihessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgfeiteekkefgtdduveeuffeuffevkeehieduhfefvdfhueekuefhhfdttddvkeefnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepvdgrtddvmeeijedtmedvtddvtdemvggrtddumegsvgegudemleehvgejmeefgeefmeeludefvgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtvdemieejtdemvddtvddtmegvrgdtudemsggvgedumeelhegvjeemfeegfeemledufegvpdhhvghloheplgduledvrdduieekrddujeekrdejhegnpdhmrghilhhfrhhomheplhhutggrrdgtvghrvghsohhlihessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepudeipdhrtghpthhtohepvhhkohhulheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhgvvhgvrhdrhigrnhhgsehrohgtkhdqtghhihhpshdrtghomhdprhgtphhtthhopehthhhomhgrshdrphgvthgriiiio
 hhnihessghoohhtlhhinhdrtghomhdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopefoihhnrghsrdfjrghruhhthihunhihrghnsehshihnohhpshihshdrtghomhdprhgtphhtthhopehhvghikhhosehsnhhtvggthhdruggvpdhrtghpthhtohepfihulhhfsehrohgtkhdqtghhihhpshdrtghomhdprhgtphhtthhopehkihhshhhonheskhgvrhhnvghlrdhorhhg
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_014358_970409_6D15721E 
X-CRM114-Status: UNSURE (   9.54  )
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

The USB OTG port of the RK3308 exibits a bug when:

 - configured as peripheral, and
 - used in gadget mode, and
 - the USB cable is connected since before booting

The symptom is: about 6 seconds after configuring gadget mode the device is
disconnected and then re-enumerated. This happens only once per boot.

Investigation showed that in this configuration the charger detection code
turns off the PHY after 6 seconds. Patch 1 avoids this when a cable is
connected (VBUS present).

After patch 1 the connection is stable but communication stops after 6
seconds. this is addressed by patch 2.

The topic had been discussed in [0]. Thanks Alan and Minas for the
discussion and Louis for having found the 1st issue, leading to patch 1.

[0] https://lore.kernel.org/lkml/20250414185458.7767aabc@booty/

Luca

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
Louis Chauvet (1):
      phy: rockchip: inno-usb2: fix disconnection in gadget mode

Luca Ceresoli (1):
      phy: rockchip: inno-usb2: fix communication disruption in gadget mode

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)
---
base-commit: 15240745d6cd14183d112249a9fff87fb968b859
change-id: 20250718-rk3308-fix-usb-gadget-phy-disconnect-d7de71fb28b4

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
