Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB418E6FE4B
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 08:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/r6tCNo/gwGslSDegEAypk/3CvfXYt1p3qR+n//Pc58=; b=3wJNslfYGEo5j0
	AutPUZN2S+9pcrl/IFa1aJVHkOCssUf2Ug8GCSuXxB6swC0NPhMUdGTWEqkB25igusFixwdOLwTZy
	f05yPdiYVgeVU1YDMhtKinrok3/jT6/C736V0r389HZ/gm2SH6IMj7VUSrJSTry6fLZ92jLkMlSw9
	o2ub6+o1I4jxQSXi1DEsl/7wyvWtk7JV3jVoUIDlMsdDf3vIGzF6hCWqXMMYrHRi9HvRQZIXxbvYA
	GQI5TYPscJsDmcSNhQ4skvOYzEqlBXNda+PjmrDKq2T1DRRk96YOcCEUfCiDMZD+ysvUchXoGFVkJ
	ZtjZ8rmvPkzKh7kb44Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smr3v-0000000EgeW-2tM5;
	Sat, 07 Sep 2024 08:44:55 +0000
Received: from mout.web.de ([212.227.17.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smr3s-0000000EgdD-3eOH;
	Sat, 07 Sep 2024 08:44:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1725698658; x=1726303458; i=markus.elfring@web.de;
	bh=1T8ODkuWTdAoYSFX/rWPkZU7Xo9zq7V8SxV+btIcMho=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=odk/rU7lLA+X60vwLvTTHeTsuZEggW39GuTPuX38WgjG4HbOoOQOwB5MUpKAYz+F
	 KTc55WO+KfSIj2fWOmfsP2D2YrOOq6CmScYPcPnTEqNxfjnkag1UnSJUQMYDlsOV9
	 lQ6EWm7O+YQJ/svC//w7Z7vFa6Dyns3k/pm8vV76RU9RbNF55/SH/DmLDf6aMZ5R3
	 HAWw6CIsKdHRJrkOzbk10KefJZjGyY6j63EKXYid439BTMzqdnoBp1aCFTUUg87x1
	 i9k2QdZ0VWEHrdZQFeDeFjSGEiUTee0tFOaEJ6/S0pKP+pfF0wo4LUFelL3HwHJJr
	 YvihpoXTrJtq1LV0oA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.84.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MOm0r-1sORcT2zhH-00OkMZ; Sat, 07
 Sep 2024 10:44:18 +0200
Message-ID: <de5c9c27-56fa-4163-98e1-9a98400d2408@web.de>
Date: Sat, 7 Sep 2024 10:44:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Junhao Xie <bigfoot@classfun.cn>, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: LKML <linux-kernel@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chukun Pan <amadeus@jmu.edu.cn>, Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?B?R8O8bnRlciBSw7Zjaw==?= <linux@roeck-us.net>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jean Delvare <jdelvare@suse.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Rob Herring <robh@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>
References: <20240906093630.2428329-2-bigfoot@classfun.cn>
Subject: Re: [PATCH 1/9] mfd: Add driver for Photonicat power management MCU
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240906093630.2428329-2-bigfoot@classfun.cn>
X-Provags-ID: V03:K1:AQhlxKYF+SVNHVdzbmkBXd5OhmUNfn40KEC4+sPg7R3VHJVCB6W
 kgsjtqr/3XCqYY0kbjdmfw4Gc/kKrY7O3ztbKrhpBdOJN57VkTcttlaBLx/P+jmYJkCyuL0
 hRC19UEg+8R1+cLinVv0nA99FmzeD4GnVAWaaCk1emQAgqOyWZuWFXyBcxPaLma8EaCteF0
 bt6BV+h9zAtjotQ1FDCdg==
UI-OutboundReport: notjunk:1;M01:P0:TnJKtUlBzu0=;V418xZ90PwgrfitnQWSk9KXPwgJ
 aO4UdqBu/LQQEY+Cz4tKzqvs1DTJFq40uX+Fzhi0gf7IQ4sMZuU1IAJhFfFx5C3I4TTt3GQ0n
 5kH1/9TGlYMK8dh3OTbdsPuwU+kAeVFHiTnXVDxONpd8VtGeNI98ly3v2rEaf5h7/aYOuRsXj
 IxTOPba2V7pGk75gqEbirMxCWrhuRrg6e6JR5l8tEuSZ90fkI5HPGdXBl7c+2euU21hnfEoMd
 TF4wnjEDcW0SFS9QuxFfntlY/3wmUhNQwM6J3RD0cY0n5bIvSTYAZ+SIayAOC/H0yWXnS0/q7
 +KSJpMn4Vqnls7uDaLStwgQPguUr0GWQSnRV69XEjevJSW66aJBLAPT0Ut6vwpOkHdbbhZs6p
 1i3UgPcGpXWdH3WvG/Thd53+JA03qNSKkK6Wh6EmkngZZeY/IIfCjOHY0CBreUtgBWL1K4loU
 MbZ7vO0AQQMCJlv7JqV0imAZ2FrtCgnvhcuUv7InGr7+LGN4DqaCli30yjSutSIC4nt6pyeGo
 TLwtx4wFJrja+4Hq/pG8Z8TZGRkKVLBlTLyX/exVXl33Vv99zhHfD92634Q5cuAXpQfxFKUT3
 8Yc/XKg0/FmeYrvZe3IWNsDavTxbS70d8zR9kl6XaxU+68ryzQJG6ZpmROPiGpv/R9X0/XkDO
 kqr42U9mHBfzuZbO4Q+10EA34DTNGxw3suP0Wh69x9H3tWVXa+OA8wJG16AJCgkPdC4uI7cek
 lbWoytI84HimqyjkrNnTvkgCnL0tMRfBp2QUxHFenieieQjNhHXzmTx3/UHtKc3zeKfY9OkZf
 Cb/WXIh7j8ak2djyeBZrO0Qw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_014453_228681_093A410B 
X-CRM114-Status: UNSURE (   4.31  )
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

4oCmCj4gKysrIGIvaW5jbHVkZS9saW51eC9tZmQvcGhvdG9uaWNhdC1wbXUuaAo+IEBAIC0wLDAg
KzEsODYgQEAK4oCmCj4gKyNpZm5kZWYgX1BIT1RPTklDQVRfUE1VX0gKPiArI2RlZmluZSBfUEhP
VE9OSUNBVF9QTVVfSArigKYKCkkgc3VnZ2VzdCB0byBvbWl0IGxlYWRpbmcgdW5kZXJzY29yZXMg
ZnJvbSBzdWNoIGlkZW50aWZpZXJzLgpodHRwczovL3dpa2kuc2VpLmNtdS5lZHUvY29uZmx1ZW5j
ZS9kaXNwbGF5L2MvRENMMzctQy4rRG8rbm90K2RlY2xhcmUrb3IrZGVmaW5lK2ErcmVzZXJ2ZWQr
aWRlbnRpZmllcgoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
