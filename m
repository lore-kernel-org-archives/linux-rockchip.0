Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88FE5EB64C5
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 14:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+HdwGbwRk8tXVarHm0WwLwaCdAtmebsqQP8rG8T8Yg=; b=W7q7fmLAyRwAgb
	FL1xl2bdjuoD3+pP2j199OKKlEKIsKvBxquLBzKzqrwpj2SGwLjvsd8CDeEvFk6ZHUNKJczcZPrMe
	Evev6Hng8iFKz8KLbthJE+uAW27cw96+kvS1ljMYv9jsOQBRVBnVajxlA6sxJBjZMBsfi4XEicswy
	VsfXGUTZPH/Taj5R8KgeLRdrQ2H9Cp1pEtlSWtelYJsv5xH+SE4dljf9BTbOrRiYIRNf2ZMBb0+Hv
	HdReb6GrnI1GQm//zR1BhqXLRjWl4yi7k1/l4sEBflDKhoCnl5zxuCIQFp/KjOtgQZRB9oSf4Hv46
	SRYIFSwfTo2nOSWRbpjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smwWl-0000000F9lV-03XZ;
	Sat, 07 Sep 2024 14:35:03 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smwVj-0000000F9e8-3jPG;
	Sat, 07 Sep 2024 14:34:01 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 2278778A01;
	Sat,  7 Sep 2024 22:33:56 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 2278778A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725719638;
	bh=gG2BH1+dXG7ZoJOt2ZX2FJLzrZcgshauVLlXVmZq6sM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DSNlpm8Vqtpho/RR7/MrKCNIEHFUFwwo/5l+BjIiUEgoS/ohM5XFx/jEygmd6VrWX
	 Ficq4hrX/KNy045+dpBwYrC5HAtq1+QfDxuRCBmvXQ8b82WTjXTLr797wpeVzIyaVz
	 0LwzUe5E6XCPOlgoplXM/RpP0R2GK63DfSfLnJsU=
Message-ID: <43918eda-c4e8-471a-9de4-ea72bb090803@classfun.cn>
Date: Sat, 7 Sep 2024 22:33:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] mfd: Add driver for Photonicat power management MCU
To: Markus Elfring <Markus.Elfring@web.de>, devicetree@vger.kernel.org,
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
 <de5c9c27-56fa-4163-98e1-9a98400d2408@web.de>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <de5c9c27-56fa-4163-98e1-9a98400d2408@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_073400_105858_4B481B5C 
X-CRM114-Status: UNSURE (   5.96  )
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

T24gMjAyNC85LzcgMTY6NDQsIE1hcmt1cyBFbGZyaW5nIHdyb3RlOgo+IOKApgo+PiArKysgYi9p
bmNsdWRlL2xpbnV4L21mZC9waG90b25pY2F0LXBtdS5oCj4+IEBAIC0wLDAgKzEsODYgQEAKPiDi
gKYKPj4gKyNpZm5kZWYgX1BIT1RPTklDQVRfUE1VX0gKPj4gKyNkZWZpbmUgX1BIT1RPTklDQVRf
UE1VX0gKPiDigKYKPiAKPiBJIHN1Z2dlc3QgdG8gb21pdCBsZWFkaW5nIHVuZGVyc2NvcmVzIGZy
b20gc3VjaCBpZGVudGlmaWVycy4KPiBodHRwczovL3dpa2kuc2VpLmNtdS5lZHUvY29uZmx1ZW5j
ZS9kaXNwbGF5L2MvRENMMzctQy4rRG8rbm90K2RlY2xhcmUrb3IrZGVmaW5lK2ErcmVzZXJ2ZWQr
aWRlbnRpZmllcgo+IAo+IFJlZ2FyZHMsCj4gTWFya3VzCgpUaGFua3MgZm9yIHlvdXIgc3VnZ2Vz
dGlvbiwgZG9lcyB0aGlzIGxvb2sgYmV0dGVyPwojaWZuZGVmIE1GRF9QSE9UT05JQ0FUX1BNVV9I
CiNkZWZpbmUgTUZEX1BIT1RPTklDQVRfUE1VX0gKCkJlc3QgcmVnYXJkcywKSnVuaGFvCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
