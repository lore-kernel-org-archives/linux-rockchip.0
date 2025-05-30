Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4193FC5B543
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 19:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qm2PB3zD1NexH60kEfVIpRstoX7GQolKGyBzKICe7Vc=; b=WWQbeoQ9H+k10u
	JCrSWXbDnmiR/uI6lV31AnjLYNhnZJPkxdUhDQ6pQ25ArKnWAS/rkMLprs6b/58BMvHV0Bn0gBHR+
	Ywx+u8mFe58duw8vDTASCQfpfaPVeeO+icBciO8WApJnockJkXrFIWxtcozOPgcVnzrccvtm4yiYb
	WTnhGUkEqbO/pP+lfrTOI55tLNHbku7R6H2kmicPIOoGn3t8YULB5balaGqBeE8dedqzkYa2s906k
	jj9ddUfJPpC3uNEXGNpGfZahUzWudNWMWIvXeM/soi3XIhG11BxZlmvIbnvvIcacqoxEcEeVu6VyX
	XSpRVvR1INoFfPjKPeWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL5Ky-00000001b3l-3ZxI;
	Fri, 30 May 2025 19:24:16 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL5Kv-00000001b3K-44az;
	Fri, 30 May 2025 19:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1748633008; x=1749237808; i=markus.elfring@web.de;
	bh=YzuQuC7sn5PBb4ns91bPPloT1UdWXsXMfl5wY33MO64=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=kyvE7PA74L78Utz28nWNsZqamtts5b1StlC07tyCaBgVHjLaAdyPsAlTWl2KxcyV
	 m5+BdhORHybz9qrCFDKFASbBwJggutJ78wO+54Fa7j13m1c9lNyHkO9xeSpE2DEpm
	 DIbd1jPgdmPUsyTOv7HLEue5IIZkyNKJjHISO1O1cTGEWHawQ+Yyd4sdm46h8Uy2f
	 HHG/y/YwrYsaoyR3+znWCkgblZC3ojed/mwT/D1SXN2oCJlKW9PQJe38qMhfOJo3i
	 aacpjvQU19GO6gfHIwRw+jV4AHarnWfv4vNvbYbr5Yz3j+ZUgRSIi8NJ2VJJhOgIv
	 wshZoUbh6ljMAmzP4Q==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.250]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MC0PP-1uBUwH1eIv-00CjAk; Fri, 30
 May 2025 21:23:28 +0200
Message-ID: <cc0b88b2-c34a-4d19-a222-afc2cbfe8055@web.de>
Date: Fri, 30 May 2025 21:23:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, =?UTF-8?Q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Conor Dooley <conor+dt@kernel.org>,
 David Airlie <airlied@gmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
 Jonathan Corbet <corbet@lwn.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Oded Gabbay <ogabbay@kernel.org>, Rob Herring <robh@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org
References: <20250519-6-10-rocket-v4-6-d6dff6b4c0ae@tomeuvizoso.net>
Subject: Re: [PATCH v4 06/10] accel/rocket: Add IOCTL for BO creation
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20250519-6-10-rocket-v4-6-d6dff6b4c0ae@tomeuvizoso.net>
X-Provags-ID: V03:K1:HFzd8EbAUS7gPnlLaRPoXFKFCXHYM0+iZRfId96iz/pIETQ8DjB
 UwtJ045ZUn9fSfs7UUrsGBpuj7Y4TLmhMm4EQmGmFFQlLqpm94zvHttDB0OzNpTcHV3h4m5
 Z0dX2buTbBbXaQvkhcCN4TtazSW5QbEpdAvjOdbA4f1dMMQGEnhujbwaHYag+gWniKk4/hI
 6TbhC2YmzO1aXvF7Ycyyw==
UI-OutboundReport: notjunk:1;M01:P0:L1POOr7Oz40=;T/qhLYsi3B790BwpMqQVLmrI+qf
 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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_122414_384327_EA1EA12E 
X-CRM114-Status: UNSURE (   5.49  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2dlbS5jCj4gQEAgLTAsMCAr
MSwxMzEgQEAK4oCmCj4gK3N0YXRpYyB2b2lkIHJvY2tldF9nZW1fYm9fZnJlZShzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaikKPiArewrigKYKPiArCW11dGV4X2xvY2soJnJkZXYtPmlvbW11X2xv
Y2spOwo+ICsKPiArCXNndCA9IGRybV9nZW1fc2htZW1fZ2V0X3BhZ2VzX3NndCgmYm8tPmJhc2Up
OwrigKYKPiArCWRybV9nZW1fc2htZW1fZnJlZSgmYm8tPmJhc2UpOwo+ICsKPiArCW11dGV4X3Vu
bG9jaygmcmRldi0+aW9tbXVfbG9jayk7Cj4gK30K4oCmCgpVbmRlciB3aGljaCBjaXJjdW1zdGFu
Y2VzIHdvdWxkIHlvdSBiZWNvbWUgaW50ZXJlc3RlZCB0byBhcHBseSBhIHN0YXRlbWVudApsaWtl
IOKAnGd1YXJkKG11dGV4KSgmcmRldi0+aW9tbXVfbG9jayk74oCdPwpodHRwczovL2VsaXhpci5i
b290bGluLmNvbS9saW51eC92Ni4xNS9zb3VyY2UvaW5jbHVkZS9saW51eC9tdXRleC5oI0wyMDEK
ClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
