Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6E1BC28B24
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/7CUhEjtctW1ZAq7+YLuGGosDxnXU3aNxN5ZlyzcYs=; b=Rz9NtbDnozTEH8
	8jO6ctMx6t2od3cKs/B3RhDJyPLE1n8gPab30+cdED2HOlS/1NWWyvFd9t/HnA3YHxi5IGkKH3B//
	khN81KF6w30h8w6Pg8sX3uYTeKkedxVphBdh1qYLw4X3S2DxvwTNAvzi5FL6eWlEhFzcsChmknAr3
	H0Y9TXisfN74QUKrI1lsuYjSPATtMrxsJ1hbd/hZOQxQQj35MEQa6WRvWzaLqw7FTATNLNeyTTFs3
	L3i8dnQS4UBdWOfkkkSjFCn/fR54Mo5VsPf9Uk59ykod/+xNnDYmBdCE+k2GHPmZ6PkuKgMLq1aRx
	YUlvsY7h4lEuoT1ZJe4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7NW-0000000ASte-1S56;
	Thu, 06 Mar 2025 09:18:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fu-0000000AHZW-2OQW
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 08:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=whersDX4DEkG04Z8xgeBcBNQwsmhyrxWaqfS9ESwEKg=; b=SUnie2DtjJ6xgL+HOfl2KWnfdK
	noAZ+bEi0bDH1eVB3jIe1Kqr3CBdRhTayN3wzTkn+xKQROptt8SkI5AF/1Eek1c1artMOFNbAw094
	K8472djqsWr4QY4wcR9go9X3rbgy3iIzpD0LwcDAt/rKjnOdQDetsyHmqmuotFo9lI0myENomFohx
	kUSZWAbN/JD6+tci0777x/d6RTRV+AxRZCqiUcj87yzkURePMAx4Bt/wvapV7hTMYDiD8Sam6R7GY
	LL+tFQdWM6/ZkyHN0x9dwzuoGlgJqonjKAyQmZbakaHjiyLJIZ3RRb99xdth9cAHDUUpkw9raDZOK
	ohFIARWw==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fr-00000000xUW-2Smr
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 08:06:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741248403; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QVijENwYyr5utMB2yus9zbeRHi3GT24Lp5nxeIe6DlV4umTWmitkjSa5LRTFwC4r9n5maRBY1SkDj3KjK1yOjtjdF/L7bmIARpP2IWreeHGmek14hbCpS7MVtQGh/EO+ZxJOKvDwRJHAX2fS7T1Dk2ryS5Pht+XGGN21rbDIWz4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741248403; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=whersDX4DEkG04Z8xgeBcBNQwsmhyrxWaqfS9ESwEKg=; 
	b=X2HS75TtQ+mKwItAj/LkGMkPGPga42Rr20KjMoKCK9bn1dFcqtPxxLteEJxoIFDbEIjacoAX9QrbVbEWyFxIqnEkC0cUenHNQC+9CSi9jiYpmZZcJqt7mOLffPkFDeNbOe5AxIbXZeIGmNdBeb/Qux9F1R6rt5ENwDU7phV6tJ4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741248403;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=whersDX4DEkG04Z8xgeBcBNQwsmhyrxWaqfS9ESwEKg=;
	b=AQfvAzEnmiNarr2We7sc3PQ63m5qMSFHYk3ovzhPaMFLywIrVCo3l9Do6eIl0olc
	CnWGAv6w8wQD7lX/HVSoKuJydFI7jZqd2aUSLHRKkLClhu5BzBRpYG9tg50pRykt+as
	hA+1taNNwusHkXU2NdRbyjnCm0GCrsClndJfUQ20=
Received: by mx.zohomail.com with SMTPS id 1741248402849409.8127398309143;
	Thu, 6 Mar 2025 00:06:42 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 3/3] media: platform: synopsys: hdmirx: Optimize struct snps_hdmirx_dev
Date: Thu,  6 Mar 2025 11:05:33 +0300
Message-ID: <20250306080533.294964-4-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306080533.294964-1-dmitry.osipenko@collabora.com>
References: <20250306080533.294964-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_080656_029459_02F7E4B2 
X-CRM114-Status: GOOD (  11.59  )
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

Move cached EDID that takes 512 bytes to the bottom of struct
snps_hdmirx_dev to improve CPU's cache locality of the struct.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
index 981ab96cda3c..4d42da7255f3 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
@@ -154,8 +154,8 @@ struct snps_hdmirx_dev {
 	u32 edid_blocks_written;
 	u32 cur_fmt_fourcc;
 	u32 color_depth;
-	u8 edid[EDID_NUM_BLOCKS_MAX * EDID_BLOCK_SIZE];
 	spinlock_t rst_lock; /* to lock register access */
+	u8 edid[EDID_NUM_BLOCKS_MAX * EDID_BLOCK_SIZE];
 };
 
 static const struct v4l2_dv_timings cea640x480 = V4L2_DV_BT_CEA_640X480P59_94;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
