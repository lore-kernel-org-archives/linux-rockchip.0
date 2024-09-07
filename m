Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B041CE6FE53
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 08:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Spx97kmj1sWonTZq3kd8l1DshOY+kunAQZwaJHadu4s=; b=i+JW6X5xfExjUN
	x35+fmsBIHTQgFHkB7h51LdDZH9CpKEwCsEjyoN7aB/eDsn7/QuVGC2nLqIAohbTTOVjm/sRZudKG
	b7F+nxcqh9AL7T4QjjN9IXNac1/39SZecy4DbyaR1tkh56Wx+m9FSjF4E+gtVBp5J6iNp+09fjvkK
	vFATTWHW4G66s8JaTAG9MTlypMxNEBlXeMvNcJkCotDQYkgNA9UTbeI/FUAhJUyN12PaMqcuJrFEN
	5UlrCpGqjq5fFTI2RPSPqUHcCtMAcXQgAmCAnr3qtK9hCppwdklqEDWlkUPMo4L+j4x5AHMWo9eQY
	loUDOCLNAxJSJCGDtiwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smqXB-0000000Ecct-3zKE;
	Sat, 07 Sep 2024 08:11:05 +0000
Received: from mout.web.de ([217.72.192.78])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smqX8-0000000Ecaq-2HNC;
	Sat, 07 Sep 2024 08:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1725696627; x=1726301427; i=markus.elfring@web.de;
	bh=1Mu96APm/7R/w7K+9IvvOwhZsTEP32teqBSIVibe/dU=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=D2m0sWU2o3uun98StpLnG+Bcsgvc/FB8kpmfYPQgTXjhDhdYZuLzDnqNRLdDctpt
	 CrP2lL2ebGW8KvpQ/gz4dqU2xEKzpSKJd8oq3PNSZSJNy6Yy9PKoyVy//7oiGQmTn
	 TnB68ZqnwO2SX1MXqHRvTpMZiPDoMmRy6Jq2qQRjN0/l2UM3NxIptcp8YslkzXufi
	 4T7wfkdLl/zCTgh1XJVYH4GIhYFbDnU9E47JDDz9tzYPq+YmMJKlF+d/+DXAj9UtV
	 e/0nXqkgrP1LcF6K9QZeW2QP16IwqjaOFENGRYW1PLuum312DCvJTgEjv+iHSceO3
	 4vM3PUPrU6kfL+TaHA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.84.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MSZHv-1scDWM0IH3-00PRSE; Sat, 07
 Sep 2024 10:10:27 +0200
Message-ID: <d79dbfae-d50b-45e5-b430-be8106bbb03c@web.de>
Date: Sat, 7 Sep 2024 10:10:07 +0200
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
X-Provags-ID: V03:K1:3sDZvZ572CstfLRiymj0OEa2v50uxQRQS5dGEo6EFlvxjxYXotF
 iqSgsOe0U9L+cf9Xd7SKvjmB4Ob5MfVx3nFns3ltwbXYO6Zvkj3hqOxCWZDHFKgRP2B5l7s
 dnGTu2+IcVzqaedRB5bfzg4zd4MslQitWJZMwCfnV+eEszme1/BaaIf8r3D0eu7hwTiiX2C
 bc+jMBkrtEYHS4L0Oa85Q==
UI-OutboundReport: notjunk:1;M01:P0:iOtNlPj025M=;AK+IZbPtbymYlBBMARR3HT72ohy
 cAFmzGlYAohOjb+LoHESWuXjNaNpNaYE414w3wHWp11NoBZqfuWVy5vuBAr/g/P03hx+ODW1J
 IPxENCfQ4IHSG25uoLL3g9SmwA3spdWhwuqPcmxnf8qIwVe8lOZd8EetJZ6BFbv1h/4p3EokW
 +JPc6taJYhQSf9TRT4IHTxHyyZQXt4Qa5jLvx8mcDGzvmzdf1m99+EV7tkZ5HZvOL+Ihk1Gxk
 WBbQsfd6WKIDpMO/tIxEinqlTVGPYYvNAVxAkecdKXy45Ky7zsYbt7eCgeS8/4KNqxUducUBH
 Lwd+u7zrAerxlBQ1udJ0ER/Z1m2W1NZoA3k2YX9ltHrRMflZyLhi9PAKtEzoVPzB0Vnw9HiGh
 PSDTq9Q5UVXsR30quNhniiXryPBY7yAIGxn0WFeB1ezowO0DFrgpyQR9i8IUdK8DLh/mgICNz
 l+lSQuETMWQEhlGWTZZJgUTUFU9I/kYu9D48mWFATk1DrUVxC0MqaG4tApAeetMX5Tor2AhaI
 xuL0cfjPlW6+5N+cVj3d2BAZf3ACkXVXzagW7IUmMUamgH03Rin3jMn16YJaEjO0C6AiIc6t2
 BPnQGzcu03TB0sLVEco/822QDc0zqfQLpHKbrmrZngS0TWUDmf+LIDWdi/v+WXpA9JDP9OKmN
 P6P0cghHcdkKlmQJ2CNMr/Q0Cs9F1uWfPgoZKTUeZrlObzijcRMcVpJZ3apTPviZGSQUqMH7q
 Rb+NM7vWLlh1bxkdpOdyvxcXIoV8T29oXXEPi3fPRd93DohBA1ch68vPvWXeRhaIBJaqWjGKE
 FldzBw7hWeHRRKTh69+BbGOQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_011102_979876_41B2FF73 
X-CRM114-Status: UNSURE (   5.43  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9tZmQvcGhvdG9uaWNhdC1wbXUuYwo+IEBAIC0wLDAgKzEsNTAx
IEBACuKApgo+ICtpbnQgcGNhdF9wbXVfZXhlY3V0ZShzdHJ1Y3QgcGNhdF9yZXF1ZXN0ICpyZXF1
ZXN0KQo+ICt7CuKApgoKVW5kZXIgd2hpY2ggY2lyY3Vtc3RhbmNlcyB3b3VsZCB5b3UgYmVjb21l
IGludGVyZXN0ZWQgdG8gYXBwbHkgc3RhdGVtZW50cwpsaWtlIHRoZSBmb2xsb3dpbmc/CgoKPiAr
CW11dGV4X2xvY2soJnBtdS0+cmVwbHlfbG9jayk7Cj4gKwlpZiAocmVxdWVzdC0+ZnJhbWVfaWQg
PT0gMCkKPiArCQlyZXF1ZXN0LT5mcmFtZV9pZCA9IGF0b21pY19pbmNfcmV0dXJuKCZwbXUtPmZy
YW1lKTsKPiArCXBtdS0+cmVwbHkgPSByZXF1ZXN0Owo+ICsJbXV0ZXhfdW5sb2NrKCZwbXUtPnJl
cGx5X2xvY2spOwrigKYKCkEpIGd1YXJkKG11dGV4KSgmcG11LT5yZXBseV9sb2NrKTsKICAgaHR0
cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEtcmM2L3NvdXJjZS9pbmNsdWRlL2xp
bnV4L211dGV4LmgjTDE5NgoKCgo+ICsJCXNwaW5fbG9ja19pcnFzYXZlKCZwbXUtPmJ1c19sb2Nr
LCBmbGFncyk7Cj4gKwkJcmV0ID0gcGNhdF9wbXVfcmF3X3dyaXRlKHBtdSwgcmVxdWVzdC0+ZnJh
bWVfaWQsIHJlcS0+Y21kLAo+ICsJCQkJCSB0cnVlLCByZXEtPmRhdGEsIHJlcS0+c2l6ZSk7Cj4g
KwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcG11LT5idXNfbG9jaywgZmxhZ3MpOwrigKYKCkIp
IGd1YXJkKHNwaW5sb2NrX2lycXNhdmUpKCZwbXUtPmJ1c19sb2NrKTsKICAgaHR0cHM6Ly9lbGl4
aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTEtcmM2L3NvdXJjZS9pbmNsdWRlL2xpbnV4L3NwaW5s
b2NrLmgjTDU3MgoKClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
