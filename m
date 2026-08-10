Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EB77C5AD55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 15:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwueojnJjYjVNmEv1AS2YGUE2zosSmcZRxQIvSukHxU=; b=C78PHt/xU1Z338
	ZEuRuSy34nYvngsGt5xdr6QegIXyH2eziG++NhpsKsU3wX0nkvXFcpGYSTgOXDyxnifQWDkzCdNZF
	Jg8F9dJgWE3C1gVjcoprZQIX3YNpkrIjMzEOwO7kuQ/86PbRMGmV7R1wVuw2YisYWaUfW6RDUVXPQ
	56zNspOzv3nPKZTf5HGP5Nd1Z/Mv1rKN9SxWDoZCVJz8THtckVtWsxCQwsL0EzUhXitGoCqmQKObj
	OuoFrjU9Nl+K/GE/EeeLj1qaTtBfvc1SP+n5kIf2aWADYgsbrxZd2bULAmx7w/8KL2GrSV9GQ0vcp
	Kmst76f4A04buhew2WEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtRpk-0000000CDVx-1MX4;
	Mon, 10 Aug 2026 15:22:36 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtRpd-0000000CDKX-0Men;
	Mon, 10 Aug 2026 15:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786375346;
	bh=7pR0JRM/UsbUq4mbJ7zowp/xReYV2Z8VN7p8X+cIgy8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DhTMRXbADQpX45fzJ0DLCb+ZD/8o1IwA1RVlTrvWMiHd+aKyz4IKEOzuaCUJZ/VXL
	 oPThHLjIsDZfHUsTd9aeQ1wZ12TeWadRFP/E5LY1OVzOCuI2+axHomRu048HmWzWMG
	 G9eFR8e+KMs9HO1Cxrhcmnr4y/GxuIeMmICFUNhoBGbFYAclR+Ngap7fCBabUhzcLh
	 AGzL2nSknPns0EBv0ZQC5NtbW5DgPNQzZwFt7ZHJccPZBVM5EX0pukeQXo5bd33sIe
	 8skzO/Z+dbweRwmOspPstIGDETy3ops3WRIzgNaKPAtHU1rb7HMq/qAn0C1w//9cSG
	 DgLYIYfyfw5Gg==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1F12317E0A33;
	Mon, 10 Aug 2026 17:22:25 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Mon, 10 Aug 2026 11:22:13 -0400
Subject: [PATCH v2 3/5] v4l2: export v4l2_m2m_set_max_parallel_jobs
MIME-Version: 1.0
Message-Id: <20260810-rkvdec-multicore-v2-3-986f89d22cdc@collabora.com>
References: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
In-Reply-To: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 kernel@collabora.com, linux-media@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_082229_315720_EBE4646C 
X-CRM114-Status: UNSURE (   7.79  )
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

---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 14ac9c85803d..f6f8864f23d2 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -128,6 +128,7 @@ void v4l2_m2m_set_max_parallel_jobs(struct v4l2_m2m_dev *m2m_dev,
 {
 	m2m_dev->max_parallel_jobs = max_parallel_jobs;
 }
+EXPORT_SYMBOL(v4l2_m2m_set_max_parallel_jobs);
 
 struct vb2_queue *v4l2_m2m_get_vq(struct v4l2_m2m_ctx *m2m_ctx,
 				       enum v4l2_buf_type type)

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
