Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B6B5C05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Feb 2023 08:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzzZzThbhAvt9QQKs88aT/NQLSC87dDedH0rbTiy1V0=; b=JdO2D2pGBeKfZz
	tuHqBR2NXORPyLOPMGgicV0X2tzJIN8xfso0ZmBcMfIHziqvlz/tQWh47BIkNI/IW2hV+Sva0Dn7O
	gjdUyT71h3t51/oFuRxufXCrAMErt5aVu/YGlN/l45p8y91s3yMFVRsJXEnOmwPSIvYWO+L+LengC
	FJaxkw8ndr22+aRb9dwNkLaCj/Fx8onDIXuOXltgdoqrmtEMwOXfPXXsmTYVGccvTXukbBDR18V5r
	5r0hLwWPSN2GXqFr3HHPjcA6WptI6QS3c9sg/upfh0sStfNcS3e5Ez71Fpl4PbwCKBg312HmTWMKY
	+24dzI1FE4MU6uJyYLJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU20c-003Plk-OJ; Mon, 20 Feb 2023 08:58:54 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU20O-003PiK-O9; Mon, 20 Feb 2023 08:58:43 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C198760002;
	Mon, 20 Feb 2023 08:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1676883511;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fz7ymKkeqvHCDa/6k6ptYf6tiYPwOleZAKDnnk0ryko=;
	b=WRXxB5cRd4mIWFQQx94i4cOSCLm26Fqr86Rg1aViqT3mwAQqKP6f+SZCAeNxPuF6YYgSx6
	YiN0/1c9H/0ueNExaOd+BUSDu7nVPs3K4clkWQuHW0MJa1NS11IN4PXEZBuXUaZYTrly5g
	mB+lxg74Ht14gbpP3k1fOpOvbOPtScmaybhxxTElFl5psZncnCZU0BGUiglsQU5HykqPiP
	92UxNJuC1UlUHh7DDHsRygjfyNMVhPqZhjdrfiA6mIKtIInpB/KVCiTLBumQlgoCKd/dym
	MRtPbQa5dNzpyKn6U+aADxeFF7hqCgLRS7pc1GViYWYuLwN0IEgVYg2hvi0fhw==
Date: Mon, 20 Feb 2023 09:58:29 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: rafael@kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Amit Kucheria <amitk@kernel.org>, Zhang Rui
 <rui.zhang@intel.com>, Markus Mayer <mmayer@broadcom.com>, Broadcom
 internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM
 ARCHITECTURE), linux-rockchip@lists.infradead.org (open list:ARM/Rockchip
 SoC support)
Subject: Re: [PATCH v1 03/17] thermal: Remove debug or error messages in
 get_temp() ops
Message-ID: <20230220095829.1591a532@xps-13>
In-Reply-To: <20230219143657.241542-4-daniel.lezcano@linaro.org>
References: <20230219143657.241542-1-daniel.lezcano@linaro.org>
	<20230219143657.241542-4-daniel.lezcano@linaro.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_005840_986731_F001DC52 
X-CRM114-Status: GOOD (  14.73  )
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

SGkgRGFuaWVsLAoKZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZyB3cm90ZSBvbiBTdW4sIDE5IEZl
YiAyMDIzIDE1OjM2OjQzICswMTAwOgoKPiBTb21lIGdldF90ZW1wKCkgb3BzIGltcGxlbWVudGF0
aW9uIGFyZSBzaG93aW5nIGFuIGVycm9yIG9yIGEgZGVidWcKPiBtZXNzYWdlIGlmIHRoZSByZWFk
aW5nIG9mIHRoZSBzZW5zb3IgZmFpbHMuCj4gCj4gVGhlIGRlYnVnIG1lc3NhZ2UgaXMgYWxyZWFk
eSBkaXNwbGF5ZWQgZnJvbSB0aGUgY2FsbCBzaXRlIG9mIHRoaXMKPiBvcHMuIFNvIHdlIGNhbiBy
ZW1vdmUgaXQuCj4gCj4gT24gdGhlIG90aGVyIHNpZGUsIHRoZSBlcnJvciBzaG91bGQgbm90IGJl
IGRpc3BsYXllZCBiZWNhdXNlIGluCj4gcHJvZHVjdGlvbiB0aGF0IGNhbiByYWlzZSB0b25zIG9m
IG1lc3NhZ2VzLgo+IAo+IEZpbmFsbHksIHNvbWUgZHJpdmVycyBhcmUgc2hvd2luZyBhIGRlYnVn
IG1lc3NhZ2Ugd2l0aCB0aGUKPiB0ZW1wZXJhdHVyZSwgdGhpcyBpcyBhbHNvIGFjY2Vzc2libGUg
dGhyb3VnaCB0aGUgdHJhY2UgZnJvbSB0aGUgY29yZQo+IGNvZGUgaW4gdGhlIHRlbXBlcmF0dXJl
X3VwZGF0ZSgpIGZ1bmN0aW9uLgo+IAo+IEFub3RoZXIgYmVuZWZpdCBpcyB0aGUgZGV2XyogbWVz
c2FnZXMgYXJlIGFjY2Vzc2luZyB0aGUgdGhlcm1hbCB6b25lCj4gZGV2aWNlIGZpZWxkIGZyb20g
dGhlIHN0cnVjdHVyZSwgc28gd2UgZW5jYXBzdWxhdGUgZXZlbiBtb3JlIHRoZSBjb2RlCj4gYnkg
cHJldmVudGluZyB0aGVzZSBhY2Nlc3Nlcy4KPiAKPiBSZW1vdmUgdGhvc2UgbWVzc2FnZXMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpjYW5vQGxpbmFyby5v
cmc+Cj4gLS0tCj4gIGRyaXZlcnMvdGhlcm1hbC9hcm1hZGFfdGhlcm1hbC5jICAgICAgICAgICB8
IDEwICsrLS0tLS0tLS0KCkZvciBBcm1hZGE6CgpSZXZpZXdlZC1ieTogTWlxdWVsIFJheW5hbCA8
bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
