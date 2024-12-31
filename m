Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48419E77194
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Dec 2024 09:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H2UmbgNJN9cT3V6itRDYwNluRCJw7kjVMWywLtiRCZU=; b=0boGvArPuHEam5
	LTKeYLnnMFY7EZkk/WSZR9uNOQucnx0WLG5y3SZUPpC9wksBLIOXN7T3TY30VLkIyRISEVcnr6juE
	ixSGZYQ/lhSSLJGUwyvISpf3PgVGfD0KVq/765z0LLvzZVaCkEa+y2yovE4G19cv3V8QkKhIXwsDf
	qgw+9yhEcs8RaF8mS/Hkr+tYjq7oTEDxgnO4nPytRCAa9WSMBFbKIyf2ZKH3uyyVgi+lgktoJvcMK
	d0iz0+340FnFA2ZXVJe5oBthkQAnhwxVFP9JRshH4XFNzBsaQjHzRfjGAoLPpjInrUkyMFecxIeos
	kNbP/J5O/Z9M1kFU5q0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSYqT-00000006yIO-3rRH;
	Tue, 31 Dec 2024 09:47:25 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSYo0-00000006xeC-35yj;
	Tue, 31 Dec 2024 09:44:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version:
	Content-Type; bh=KgtALxJqBWoQB4v1+ibC8c5vtvvbQuSbp6eJ9TpCs4o=;
	b=p6SMH6CRyG46D1iaJalUPdckQsBULJUgmM857QpPXRSGSKbX6bCwGcmzq+wk0O
	5yLGIphuAfDHIkWFQa7dJqWoikY2BFlY1zbsFd68bTU2CYMYfsOtxdfaSm/167HM
	3pwy6+h/jNUahP74w7a/MlyqGvVU/DmaCrxN6PX+5RszM=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wD3v8P6vHNnCZWrCw--.29543S2;
	Tue, 31 Dec 2024 17:44:29 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzk+dt@kernel.org,
	mripard@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 0/3] Add HDMI support for rk3576
Date: Tue, 31 Dec 2024 17:44:16 +0800
Message-ID: <20241231094425.253398-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3v8P6vHNnCZWrCw--.29543S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFW3Kr4UZr1UWF4UKr13twb_yoW3Zrb_K3
	4Sq3s8ur18uF1Yya47tw4xWa93tay2gFZ5GF48K3ZrJFWkJF48Xrn3JrWYqa4rZF1YkFnr
	Gr4YqFy8CanIyjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbySotUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqR7GXmdztQzPNgAAs7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241231_014453_163518_41D0C948 
X-CRM114-Status: UNSURE (   7.80  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgoKClJLMzU3NiBIRE1JIFRY
IENvbnRyb2xsZXIgaXMgdmVyeSBzaW1pbGFyIHRvIHRoYXQgb2YgUkszNTg4LCBidXQgd2l0aApz
b21lIGNvbnRyb2wgYml0cyBmb3IgSU8gYW5kIGludGVycnVwdHMgc3RhdHVzIHNjYXR0ZXJlZCBh
Y3Jvc3MgZGlmZmVyZW50CkdSRi4KClBBVENIIDEvMyBpcyBhZGQgcGxhdGZvcm0gY3RybCBjYWxs
YmFjayBmb3IgSU8gc2V0dGluZyBhbmQgaW50ZXJydXB0cwpzdGF0dXMgaGFuZGluZy4KUEFUQ0gg
Mi8zIH4gMy8zIGFyZSBhZGQgc3VwcG9ydCBmb3IgcmszNTc2CgpDaGFuZ2VzIGluIHYyOgotIEZp
eCBjb21waWxhdGlvbiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg4oCYdmFs4oCZIFstV3VudXNl
ZC12YXJpYWJsZV0KCkFuZHkgWWFuICgzKToKICBkcm0vcm9ja2NoaXA6IGR3X2hkbWlfcXA6IEFk
ZCBwbGF0Zm9ybSBjdHJsIGNhbGxiYWNrCiAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IHJvY2tjaGlw
OiBBZGQgcmszNTc2IGhkbWkgY29udHJvbGxlcgogIGRybS9yb2NrY2hpcDogQWRkIGJhc2ljIFJL
MzU3NiBIRE1JIG91dHB1dCBzdXBwb3J0CgogLi4uL3JvY2tjaGlwL3JvY2tjaGlwLHJrMzU4OC1k
dy1oZG1pLXFwLnlhbWwgIHwgICAxICsKIC4uLi9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAt
cm9ja2NoaXAuYyAgICB8IDIyNSArKysrKysrKysrKysrKystLS0KIDIgZmlsZXMgY2hhbmdlZCwg
MTk2IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKLS0gCjIuMzQuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
