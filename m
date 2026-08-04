Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 654E5C5518F
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 08:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgl08mwDycb2F6Ix71GbCV4HghmrzrseryQ0yZ19iEU=; b=V9+iZK/uxEpTPb
	5lTDCDYzEFEVtqeaTv/Hni1dkIhmpMjAPoVgrBpmrZtrVI6NkvsVI3KbNj7LItB9P4GoS6HWyG3DE
	XMJSVnNbjnFeoPFPNmDIZKrh3c0iVB7nxZDYN4kdob54OP65Pr8Ug2edJBUjKr/ctLmRfZq7P3a0A
	Ls+LijXJdn07d745a0OwTvRYkyyU11S3WSu8pyBPgc8e2A2Chg6cR79qJVac9ZWyPPKVz5KCYSkVl
	jEJYDzPV6J5egVWeRI6HbWcmNtZuJ0ozoKCYi/LzvTckdxYSt2vT2yPdsSHoxvpKts4hHuva+1vP9
	Ii9Bv+A9umvijtCTRHhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrAgY-00000001MUY-3rQz;
	Tue, 04 Aug 2026 08:39:42 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrAgU-00000001MSa-3vxK;
	Tue, 04 Aug 2026 08:39:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7EF21BFAEB;
	Tue,  4 Aug 2026 11:39:14 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1785832766; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=7LGYalmhQwZrxOtGKmdSjC1WD7j0rRgBEPhRoGP+KSU=;
	b=XA+D7KGCymenwT0xyMUSjJEQPPERpnUrMdXzeklq/D4KURrG8s8Jixzmcs2Jvk7Vn8xXgR
	cQt+eV2EPMe5oIRfQD5jQqCBeJUXO4KHluGV62eRFvXPBewayj0KeSE+UOxgYwfufYlVNn
	KEmNM3RSaSxjp/HVnAJRDxBwCKAxBSNIwEa+chdiKERBy4VPmyNJ8fr+3fVdE/0EdL87fU
	80bJCYLBgg/D75n6RLRaf1fB48caXUq50Croscbl8I5LB7eSFNKs730GVx7hz7EjYvwENK
	d3v8Yb0+wU/9Z7ZamYCqowwsHhp83r09HkikMfRX9oagTKpcL4Dr0xxOu07Nxw==
From: Vladislav Leonov <vlad@zlab.su>
To: sjg@chromium.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	festevam@nabladev.com,
	heiko@sntech.de,
	hl@rock-chips.com,
	jeffy.chen@rock-chips.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	michael.riesch@collabora.com,
	robh@kernel.org,
	vkoul@kernel.org,
	ziyao@disroot.org,
	Vladislav Leonov <vlad@zlab.su>
Subject: Re: [PATCH v3 3/6] dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
Date: Tue,  4 Aug 2026 11:38:56 +0300
Message-ID: <20260804083856.11447-1-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260729133609.3465563-4-sjg@chromium.org>
References: <20260729133609.3465563-4-sjg@chromium.org>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_013939_505804_EFAF320E 
X-CRM114-Status: UNSURE (   3.80  )
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

Tested on custom PCB with RV1106G2.
Comparing with the V2 series, GPIO now works without any issues.

Regards,
Vladislav

Tested-by: Vladislav Leonov <vlad@zlab.su>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
