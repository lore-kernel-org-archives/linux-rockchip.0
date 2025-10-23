Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D717CCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 09:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5x3gFOunYfYQTQngKq6LjyCzcPSSp4mq1zQQwKmgpwo=; b=Rddr5wqLk05hil
	kFcTyg4ty3DZKoA6ApH4hJ4AphwYN/xx6/4m5dSCLLxskZnBxx7pl+f1fM3qy0d87EFvzcNYCm0zk
	xzLwhVR2UZn9iJgRFc1+YaX/8+W0AM6yZjqMYAOlxhKCbEe7BjnUWcMY+c/jrZ+vGbd1tdaavWW4W
	+fAgeod7A6xaLAM2HMLh32hrAjIoGeJSQQ/unAeVTnbmKQuVjASAMbfWBCKnmltxcVj8ky0pcy2sd
	CRARNGV7VZwDudtBYfAi1+1qF+o6R6k/SKC0q0H1MzMkmaUPKjKV4Mwidk780RUOUgkKfs2pa76z2
	6WGKtqx+dwHWQFxfwboQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBrer-00000005iau-2FKw;
	Thu, 23 Oct 2025 09:30:57 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBren-00000005ia9-2OGP
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 09:30:55 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 1753D4E412A0;
	Thu, 23 Oct 2025 09:30:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DBF576062C;
	Thu, 23 Oct 2025 09:30:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5A056102F245C;
	Thu, 23 Oct 2025 11:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761211848; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=88pDVkrbzXLWUMF+6eEu2ubK5cD6gW9j9QnD38550iE=;
	b=F5Xi9F95xMaK6NgEKPwqvC/kfJL5COPl5Ifj29T/GULYo2wdEUO9izF85NnMDOcvstmGJy
	7Ak8+EhQ3zdu4mAPXIrFbtgJeO0C1UDGJFOTFGCFaIvxznCGL52QoUPJvOcB1uzxtPyFYt
	oMHikxhksEF8shT87TeS0lLCScyiUV33KRQuOF1x48CfTsp39DWPDlPlLoRz2nw+q1sOoN
	WNmJUZstvcX1yr7sXmWdBO6141WN9i8Mu6r3PHG7OS82XO1q2dSmjHvATIsjAaDqkqsl2N
	iDZyyep+WhPb1Vynl6o1IpjxH4nSCDZDMDF+KZxHrAgwGFkQyOdyL509cLBADA==
Date: Thu, 23 Oct 2025 11:30:43 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Manivannan Sadhasivam
 <manivannan.sadhasivam@oss.qualcomm.com>, Christian Zigotzky
 <chzigotzky@xenosoft.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [RESEND] Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for
 devicetree platforms
Message-ID: <20251023113043.2caffec9@bootlin.com>
In-Reply-To: <B08A289028EE2F0D+c2d1f2e5-d7c6-497a-82bd-92ae477e1016@radxa.com>
References: <20251022191313.GA1265088@bhelgaas>
	<340D76D438E6105B+58e7f834-75f7-40c5-a46a-677cb279a02d@radxa.com>
	<B08A289028EE2F0D+c2d1f2e5-d7c6-497a-82bd-92ae477e1016@radxa.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.43; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_023053_759443_4E8D5AD0 
X-CRM114-Status: UNSURE (   5.68  )
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

SGksCgpPbiBUaHUsIDIzIE9jdCAyMDI1IDE0OjAxOjU5ICswOTAwCkZVS0FVTUkgTmFva2kgPG5h
b2tpQHJhZHhhLmNvbT4gd3JvdGU6CgouLi4KCj4gCj4gbWF5YmUgaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUxMDE1MTAxMzA0LjNlYzAzZTZiQGJvb3RsaW4uY29tLwo+ICh0aGVuICtD
YzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnPykKPiAKCkZvciBpbmZvcm1h
dGlvbiwgSSB0ZXN0ZWQgdGhlIHBhdGNoIGFuZCBJIGNhbiBjb25maXJtIHRoYXQgbXkgaXNzdWUg
aXMKc3RpbGwgdGhlcmUgd2l0aCB0aGUgcGF0Y2ggYXBwbGllZC4KClRoZSBvbmx5IHdheSB0byBm
aXggaXQgc2VlbXMgdG8gZWl0aGVyIGZ1bGx5IGRpc2FibGUgQVNQTSBvciBtb3ZlIHRvCnBlcmZv
cm1hbmNlIEFTUE0gcG9saWN5LgoKTWF5YmUgbXkgaXNzdWUgaXMgc2ltcGx5IGEgYnJva2VuIEFT
UE0gZWl0aGVyIG9uIG15IGhvc3Qgb3IgbXkgZW5kcG9pbnQuCgpCZXN0IHJlZ2FyZHMsCkhlcnbD
qQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
