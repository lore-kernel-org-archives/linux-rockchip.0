Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87929C88CB2
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 17:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLcVkUb5XvRR+xx1Kn8ubIRCLAFD9NQrQKhC9vQ7lLI=; b=vqE0tK1YayYc3Q
	E+pyvmy36oJSVDP3Nb67E9hlY9KmmN7I8vOxJh//Iz+wEmCYQXHk9uYFr63m/OnesbWO5yFoRNQ5M
	BEv9E4mHiXTikZIZZvGfDuqxVOhiMfc7e+cbltZacYagXAJ3anLYb6YtIQsDANnOAon4nuJT/v/sN
	ZQtRY43h1fFznm5bgh5EFkVmdGRmUpqCizb5+omh2kJR7mloi54QL5jqiF8P34hd2vJoiJd8Bffph
	6U25+BVdLu65Ko9awYo3C6MgNNsL5OVpo7J9f3nJ60LlABOtYQOSYWMmLkzYHDr1SyRFjSBR35a+m
	VOOwad+aDldmSSkjPfiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8lYS-004oRB-2J;
	Mon, 12 Jun 2023 17:42:12 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8lYN-004oOX-2s;
	Mon, 12 Jun 2023 17:42:09 +0000
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1686591723;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mzPWYXh+wV1waviHJqJHrN2+anwfAomXcTII7Rh9plc=;
	b=K+w5UF75/OlCxKl1vVXvjoaei8z/zw9tFnUzqwqM0uoc54WAYmhAORt76/3bPO8I3ogXZB
	8V0e0qJIAijo5X/+ZCfKLGTGRJzve4l4Y+hqtEw5f3tFC1liTSrc6hHVsKjo/3Xk/IIX4i
	FHeugIDme6CaTa/A1EgXLkOxS5AvO2k24OZCxOuUy7G/IHklKETatDa1+HdmS4zimS74vh
	ukFU4aRm9D3RSpH+JPyK9WoPdsbdG8ckoowY8Y6snsnnsKgx2VSkmPmdNajspC+tKpl/YL
	oc1+Yd5kbFrwm4LgdyIJl+Ke7nUuCHNk5gW/OO0uOTY9tJZm3QMNfdFwW4ODYQ==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5E682E0008;
	Mon, 12 Jun 2023 17:42:00 +0000 (UTC)
Date: Mon, 12 Jun 2023 19:41:58 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: richard@nod.at, vigneshr@ti.com, heiko@sntech.de,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 yifeng.zhao@rock-chips.com
Subject: Re: [PATCH v2 4/5] mtd: nand: raw: add basic sandisk manufacturer
 ops
Message-ID: <20230612194158.6f2ace4a@xps-13>
In-Reply-To: <86aaf385-3c0a-21d9-46fe-f84ee26efbc6@gmail.com>
References: <11e16c3b-6f7b-a6a9-b0ed-b7ac0cd703e3@gmail.com>
	<86aaf385-3c0a-21d9-46fe-f84ee26efbc6@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_104208_091529_7B6C0603 
X-CRM114-Status: UNSURE (   5.52  )
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

SGkgSm9oYW4sCgpqYng2MjQ0QGdtYWlsLmNvbSB3cm90ZSBvbiBNb24sIDEyIEp1biAyMDIzIDE3
OjAzOjM1ICswMjAwOgoKPiBBZGQgYmFzaWMgU2FuZGlzayBtYW51ZmFjdHVyZXIgb3BzIHN1cHBv
cnQgdG8gZ2V0Cj4gU0RUTlFHQU1BIHRpbWluZyBkYXRhIHdpdGggdGhlIG5hbmRfZ2V0X3Nkcl90
aW1pbmdzKCkKPiBmdW5jdGlvbi4KCkFjdHVhbGx5IHlvdSBjYW4gc2VuZCBwYXRjaGVzIDQgYW5k
IDUgYXNpZGUsIGluIGEgZGVkaWNhdGVkIHNlcmllcywKd2l0aCB0aGUgcHJlZml4ZXMgY2hhbmdl
ZCB0byAibXRkOiByYXduYW5kOiAiLgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
