Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07FBBEB64CA
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 14:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4J1hAfhjuzw/PKook5xQUel3Swq5x7fC7MvPOB6qrk=; b=ahNxsW1ErY6UMD
	0qoI0YOzSSMYFcLlh9d4AEjP38GAHtZE6/oVbllpudatObpiSP4SWLY3vqDrSb38rStGB6Sf8W6fR
	VBOiFIwWGeTFAq+9EohCE4s4M5lQIk6X447InERYP3Q2rFSfqNyqDO/ZEg9+d0fdpm7V4GI4fAGEZ
	/MppvqbbVN2VrbiSXZNcg7YQI1V90STu+tTjtg5ui1jCllnax4n53tp0s6h3Kcd9bczPOLrQjZOVj
	EpUz0bnq8y1pwy2aeh1MWO2zIq1IMG+NGYukl0EANhUnJ6CiPx1gIM2+qOe90sg6DWElnvdMQnWJ9
	uc0P4w0J3QM70ugNBNfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smwj9-0000000FAer-4AJD;
	Sat, 07 Sep 2024 14:47:51 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smwi8-0000000FAYV-3k42;
	Sat, 07 Sep 2024 14:46:51 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 0FEC078A04;
	Sat,  7 Sep 2024 22:46:45 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 0FEC078A04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725720405;
	bh=vEtoINhe3YqLp5wK8FdsELDTQbLLzWqrW7RhTNgkRsE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n8Hp9Z5I/WAxnS8iFA49TGS8ykMLsm9KqxVy18PU2SezXNKHTVWXySMyCtaJ53mg1
	 1YCUaNGuArthbZ8+SgcaTpf9kuLqLvaNUctnJP4ysI84mZraFdWDO3FuvOCP9fkoH9
	 xto2kSiaBr1njBrrCmT4EzHp6O1DKqANgjewI5JY=
Message-ID: <9051dba0-0483-43dc-9e5d-d19500c019b9@classfun.cn>
Date: Sat, 7 Sep 2024 22:46:29 +0800
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
 Wim Van Sebroeck <wim@linux-watchdog.org>, Junhao Xie <bigfoot@classfun.cn>
References: <20240906093630.2428329-2-bigfoot@classfun.cn>
 <d79dbfae-d50b-45e5-b430-be8106bbb03c@web.de>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <d79dbfae-d50b-45e5-b430-be8106bbb03c@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_074649_664833_812A80F4 
X-CRM114-Status: UNSURE (   8.44  )
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

T24gMjAyNC85LzcgMTY6MTAsIE1hcmt1cyBFbGZyaW5nIHdyb3RlOgo+IOKApgo+PiArKysgYi9k
cml2ZXJzL21mZC9waG90b25pY2F0LXBtdS5jCj4+IEBAIC0wLDAgKzEsNTAxIEBACj4g4oCmCj4+
ICtpbnQgcGNhdF9wbXVfZXhlY3V0ZShzdHJ1Y3QgcGNhdF9yZXF1ZXN0ICpyZXF1ZXN0KQo+PiAr
ewo+IOKApgo+IAo+IFVuZGVyIHdoaWNoIGNpcmN1bXN0YW5jZXMgd291bGQgeW91IGJlY29tZSBp
bnRlcmVzdGVkIHRvIGFwcGx5IHN0YXRlbWVudHMKPiBsaWtlIHRoZSBmb2xsb3dpbmc/Cj4gCj4g
Cj4+ICsJbXV0ZXhfbG9jaygmcG11LT5yZXBseV9sb2NrKTsKPj4gKwlpZiAocmVxdWVzdC0+ZnJh
bWVfaWQgPT0gMCkKPj4gKwkJcmVxdWVzdC0+ZnJhbWVfaWQgPSBhdG9taWNfaW5jX3JldHVybigm
cG11LT5mcmFtZSk7Cj4+ICsJcG11LT5yZXBseSA9IHJlcXVlc3Q7Cj4+ICsJbXV0ZXhfdW5sb2Nr
KCZwbXUtPnJlcGx5X2xvY2spOwo+IOKApgo+IAo+IEEpIGd1YXJkKG11dGV4KSgmcG11LT5yZXBs
eV9sb2NrKTsKPiAgICBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMS1yYzYv
c291cmNlL2luY2x1ZGUvbGludXgvbXV0ZXguaCNMMTk2Cj4gCj4gCj4gCj4+ICsJCXNwaW5fbG9j
a19pcnFzYXZlKCZwbXUtPmJ1c19sb2NrLCBmbGFncyk7Cj4+ICsJCXJldCA9IHBjYXRfcG11X3Jh
d193cml0ZShwbXUsIHJlcXVlc3QtPmZyYW1lX2lkLCByZXEtPmNtZCwKPj4gKwkJCQkJIHRydWUs
IHJlcS0+ZGF0YSwgcmVxLT5zaXplKTsKPj4gKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcG11
LT5idXNfbG9jaywgZmxhZ3MpOwo+IOKApgo+IAo+IEIpIGd1YXJkKHNwaW5sb2NrX2lycXNhdmUp
KCZwbXUtPmJ1c19sb2NrKTsKPiAgICBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni4xMS1yYzYvc291cmNlL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaCNMNTcyCj4gCj4gCj4gUmVn
YXJkcywKPiBNYXJrdXMKClRoYW5rcyBmb3IgeW91ciBzdWdnZXN0aW9ucywgSSB3aWxsIHRyeSB0
aGVzZSBzdGF0ZW1lbnRzLgoKQmVzdCByZWdhcmRzLApKdW5oYW8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
