Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A83C2CA5FFF
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 10:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zRzabpPYIz3mG//L6Zhz9L3LjI6zCC6dAIedJBDmZ+k=; b=1cwztbdkaceAyp
	AthzgoWpkvY5RS3Iu1LKO6hPTJrcWYXlBvO5E10jhAj+7XSUKTT7CekTDCKpMfG7GG0DenfPhSxoL
	rHoJ4ZSEeErq3K/5dey63bivfaSOr9JIyp3bj7ytdWOwKvLTAWqZLALJ9cOxbxNhgeR0HZDdFv5xa
	D+A/ernpEBI6rZoGDh8SPnCLgWEfL0yFkLfjwjdFyljw154Nf2zB80+HvH5cR88bW5pGr51F4SQvj
	pkSs5+hnXqJbeRbpGT3ruVOds9wu2k+6EP5wzQidWwrzcDVjIG8SPCqbqKpUH/Y5hF7Kae8GvGmwF
	DD/oceGUhgwb3/ZO+Jsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2Po-00000000V6D-1qoy;
	Tue, 06 Oct 2026 10:28:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2Pl-00000000V3x-1DBc;
	Tue, 06 Oct 2026 10:28:55 +0000
Received: from [127.0.1.1] (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D2570493;
	Tue,  6 Oct 2026 12:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1791282411;
	bh=eEGtRczHjxTULl4VBNXnvHlt2NPPQvYK7b8knK8rR0A=;
	h=From:Subject:Date:To:Cc:From;
	b=vTNZgkmaY3ZYP0PXZESp4xzjua/BQNFYTIwOOavAs6vGDDhDGxBtXcGp70GHp9RU3
	 irG7MU+6FZnVoCv1vMLKuL6903KXxs4+mAMGGtMollzMDh0/Eu3des/v5XQdgm5bv8
	 UGepERXRBSij7nfRsQR61jp0yEOMwDcilopiML58=
From: Alen Karnil <alen.karnil@ideasonboard.com>
Subject: [PATCH v3 0/2] media: rkisp1: Add YUV bypass support for rkisp1
Date: Tue, 06 Oct 2026 11:28:31 +0100
Message-Id: <20261006-media-rkisp1-add-yuv-bypass-support-for-rkisp1-v3-0-93d3d43991a0@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/0WNQQrCMBBFr1Kydkqa2tq68h7iYppM7SBtwkwVR
 Xp3gyDu/oPPe2+jJExqjsXbCD1YOS4Z6l1h/ITLlYBDZuOsa21ftTBTYAS5saYKMAR43R8wvBK
 qgt5TirLCGOX38F1XedvVzdCRydIkNPLzGzxfMo8SZ1gnIfxnnG0qWzt7KPd5900PDlgRfak+r
 uuJA6HGZYgoofRxNtv2AUl/drnIAAAA
X-Change-ID: 20260916-media-rkisp1-add-yuv-bypass-support-for-rkisp1-c881c0835b8e
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alen Karnil <alen.karnil@ideasonboard.com>, 
 Isaac Scott <isaac.scott@ideasonboard.com>
X-Mailer: b4 0.16.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_032853_479802_EEBD84CD 
X-CRM114-Status: UNSURE (   9.52  )
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

Hi all, 

I am taking over the series from Isaac.

The goal is unchanged, which is allowing sensors that can
output YUV streams to be used through the rkisp1's passthrough mode.

In patch 1, the ISP mode has been replaced in two possible
paths, as my hardware configuration only goes through a csi serializer
I've only been able to test a single path (the lower else block),
so the path requires testing with hardware I do not possess. 

Cheers,
Alen Karnil

Tested on: v7.2, using OV5640, GC2145 and I.MX8MPlus
Compile-tested on: media/next

---
Changes in v3:
- Reworked patch 1, to fix incorrect logic and add comment.
- Reworded patch 2, including code comment.
- Link to v2: https://lore.kernel.org/linux-media/20260205103207.4020959-1-isaac.scott@ideasonboard.com

--
2.43.0

To: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

---
Alen Karnil (1):
      media: rkisp1-isp: Set correct data mode for YUV bypass

Isaac Scott (1):
      media: rkisp1: Treat 8 bus width and 16 bus width formats the same

 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)
---
base-commit: bd5f485f3f026225b86573e559af0b7254ef4184
change-id: 20260916-media-rkisp1-add-yuv-bypass-support-for-rkisp1-c881c0835b8e

Best regards,
--  
Alen Karnil <alen.karnil@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
