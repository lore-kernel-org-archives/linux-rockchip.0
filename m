Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2165C98321
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 17:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2iJAekypdW/KpM0KN1lfPCNC2Mi+XIB4GBZEMeXUrk=; b=JaKUqtE4M9/avv
	fJpxQslc3nyCR9mnLwYHsQsOzRR21kxnoBsyZjpgxutv4ftbGhTM9lg8/+qAZoSOXq9tfdqpSTkAr
	ZwVEbo0n8PQlbSJQQoyBC0pX2mNrv+jDBuIOlq7/+fR9WR7THN3ycZgEJcALeIpSeLGGi9SnK06Ps
	m2a2onVEmAQuUCGxBuYguQR8SMHY0PQVhSQt2fe476EICwet0TWXNYI2+XQd/9mD7NinpbxUBGNq+
	DQGMAxIM4MsFu45RjZfnfVYRvsmVgdz5qMlklmg/XMMX2q3RPWD9pUdmBBaWQYB37sg7BrbO1fxyE
	U+gCq8TAG8jtpsJJQUTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nDb-0000000Bizj-1taz;
	Thu, 24 Sep 2026 17:26:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nD3-0000000BieI-3ZWK;
	Thu, 24 Sep 2026 17:26:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+2G5VZLK8HCZ0p1x2CyF5yDVbIltgfNGz0f2AYltyWA=; b=cPYx30LjFs/IB3yZcJczhacSjd
	o1jbm4y1c1WmBM6PnH5cFuh6D/CAj1S3vG08/liJGzNwq0SAZaHpIW/8r6ub0KCrha7xxxJcOkpNY
	vwiqXOUkH8YrJ49hm6k9Ba8J66MV4U2ivHSujTP4+OuFu2+08S5FBkOlQ+JhZt0Sy3lXnndGXg77w
	ZejlkbamkbhcqWsj660ueacu12hOYtejO3oaH5mjsl4jxsLUJC1ssFvCg27X0YV2C2ga4iAgEQI/v
	HglYRo33Ft7FWiZxZm/1/ih4gYkB6y/HWsAz9B6A1ATltQxve/zv8+iaoc6qYYqMy9BGC0SFJLQsM
	qQIg27Sg==;
Received: from bali.collaboradmins.com ([148.251.105.195])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9nD1-0000000GF6Z-01R3;
	Thu, 24 Sep 2026 17:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1790270762;
	bh=rcNmKpWmTn7+TJeXvWtVirw/uYcmmOwXMSqcMxV5Cbs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qAV6eOLxEUaBq6CiJutIXoXc2oVL9IrPyyEZg3yWvwbxg8qdYBuPxJDin+H1/c0/U
	 79YGopvtnSa+dGVMhmBOYSZ9rQj40+7O17oBonKytuDJk+A4YTu6oIroU9XK2joFYS
	 uk9DMmUHL8LL8zE82AjKOMGTdxrfae3ScJRdPwvdyNjlUaTf9CmY6clTsIo6z5r0oo
	 LLAH3vd9n2JDtrh2Q1ImzJhMZY6HIId84RMP0NMq/JmtmL8wdWI0g39htB3TMGiVM6
	 lKl5Ish6F23LqeCeXVDrvoJsK/Fik/9T4QonIwqlaciLksi8nKzQN4Onc9sylYRn4x
	 tQRMvtRXYhQYQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 468AA17E0B0F;
	Thu, 24 Sep 2026 19:26:02 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9FE32480035; Thu, 24 Sep 2026 19:26:01 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 24 Sep 2026 19:25:41 +0200
Subject: [PATCH v16 5/6] usb: gadget: define stub for usb_udc_vbus_handler
MIME-Version: 1.0
Message-Id: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-5-126a2e9133c3@collabora.com>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com>
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1158;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=rcNmKpWmTn7+TJeXvWtVirw/uYcmmOwXMSqcMxV5Cbs=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGq1XSmKlA5LLG57RVM/MY6Ci9ly5K6FGL/+y
 e/DbpLc1sfYYokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqtV0pAAoJENju1/PI
 O/qaP3YP/AtLmumYTtWbmQo+t02Q98/jVk1ryijYgmJ74W1rwBARsjE3TnEkatvTXC3MDW3VcUL
 V90SIils6L7I86J9CgzYuOhAG4/8pUBkVysPEO9YCJz1svchRXM9yYNMDj+6Uk3a5skwq/1qNXn
 zeut4v95G1RIwuqV2Z7Rflnxl6F5e5JeFdOGefmJy0kUEjhsuT7mrgRxlSGXmDubWri+224xSzZ
 4QQRFFntjJt8WztShYieSFaJkrr47FHTeOOO0U85xvNiomvfHwP9SYvtTB+oLC+6VtQw9BL2P8n
 J81+HrsvYyqmyr4upZje2u4cvNRdNKj0/xuLQCH62KHyTf9Z2gGcMGw8Cg6zZtU5N8aE5Cq02jf
 iwAC5OGBgBa2409e7cm8FGcVlb63zluutn7SrkTP9KaKgG0jfRL2KDXQDPswQ0HJa2+umn8Q8mW
 aBmkRCLDWaXC+y00dewd4rLZA7SyoWQ075W/OzNm/gm6b2z82PFDxu2lSqY3uIsK8/qwLdCSb2X
 iZctBGMYW8UcQtp9lhP0Ujr3et4kpWqsXUZSb6Tsn3oxaZyIxoFswiEgqDsQgqsv7rixyyHgP2e
 r60YFnvbSYa/rDi6QAG9D16jZixjXa58vuve3z+mmxkKtWqFn2JgPKHzQVjoh0dZq/ZZ1Bb+nUn
 a0Y4+0G6Yh3+Qqe24CNMyKQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_182611_296500_D8E11421 
X-CRM114-Status: UNSURE (   9.90  )
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

Platform drivers with optional gadget mode support may want to
call usb_udc_vbus_handler to properly handle a cable being
re-plugged.

Ensure these drivers can call the function without a hard dependency on
CONFIG_USB_GADGET or having the ifdef logic in the driver.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/linux/usb/gadget.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/usb/gadget.h b/include/linux/usb/gadget.h
index 8285b19a25e0..551e71b6eda0 100644
--- a/include/linux/usb/gadget.h
+++ b/include/linux/usb/gadget.h
@@ -979,7 +979,12 @@ extern int usb_gadget_ep_match_desc(struct usb_gadget *gadget,
 /*-------------------------------------------------------------------------*/
 
 /* utility to update vbus status for udc core, it may be scheduled */
+#if IS_ENABLED(CONFIG_USB_GADGET)
 extern void usb_udc_vbus_handler(struct usb_gadget *gadget, bool status);
+#else
+static inline void usb_udc_vbus_handler(struct usb_gadget *gadget, bool status)
+{}
+#endif
 
 /*-------------------------------------------------------------------------*/
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
