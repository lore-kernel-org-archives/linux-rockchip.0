Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE36C7EE23
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jun 2023 10:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fDWAQDgFo/P/lJLSQ4IHgfBMgYrbKae71sWRnSoGpQ=; b=u0TGGMZURRD0GV
	7U8mf07abR3B1RaA8IuRehUW9ySh3qayUK04qSBf2Gv05XRdwdrjdYWy9t7WgGVFcAhuqj8/S/DcC
	muuGicgAKK087PVslG+kaLDO46DblhB+E+n/ExGWwMfStQ2spN6NlzuONCeK30b61KMtnwQiKnWJv
	kWZJNwpad1xjm5BVTOWY+RzBxtfB9+ij5sDnhV621iCJUoFFRACkk4H6kzFis6n79oHW+MkYGAVAC
	6dGNr6Tyua5EthDxHJjOeuwfAx8kUdlTBB7KQItO4BRL8DLmkJZcbIG70aqhcj7LptJKZyvM8iyaH
	Js4CZ5mMrh3w7GSc16Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5kud-00Bp9v-0N;
	Sun, 04 Jun 2023 10:24:39 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5kuZ-00Bp8f-0k;
	Sun, 04 Jun 2023 10:24:36 +0000
Received: from [IPV6:2405:201:0:21ea:e49:10dd:40c0:e842] (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 513C56603050;
	Sun,  4 Jun 2023 11:24:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685874272;
	bh=G8Vk4YtafBa+Pb7sMLpiLgNRNeR4Wa7C+A6DNmqd86o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HrYJlw7MM2qYuiRvq+qE41QzDb7R6Nd4mJqho1ydq3uRjdUluf6wEkCz7LX8JAy1b
	 5a3638jRUzq37UenKgYnEHcGBe7DNv2iVZMLuRsEyfgCu8MdNbi0NZnpkBUgVnt2BA
	 /CtSkQ3Op89NP6eXIY9txFw+PHoZ+ED/4HVINlHXP+q5RIt1qfN4mJju9F2FUBulxY
	 0xrf4MGr4AcgDrTNrS6KHWG4b+UVvjgfwWyTVwSku4POZcRmTqEdNVuV+jZbGUvV71
	 MzLYebvmx+yo1rJY0BdywLnOAAYwfnCH0i9Md/I1l/0TGnE7huA9nk3sgdWQiLS9qA
	 idZRsjfelVuJA==
Message-ID: <d9b1e05a-6b32-3033-cbc4-c87bda711e4d@collabora.com>
Date: Sun, 4 Jun 2023 15:54:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/8] iio: adc: rockchip_saradc: Add support for RK3588
Content-Language: en-US
To: Jonathan Cameron <jic23@kernel.org>
Cc: lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, gustavo.padovan@collabora.com,
 kernel@collabora.com, serge.broslavsky@collabora.com,
 Simon Xue <xxm@rock-chips.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 andy.shevchenko@gmail.com
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
 <20230603185340.13838-3-shreeya.patel@collabora.com>
 <ZHunAIbK7-tIvsm1@surfacebook> <20230604112043.43b1ada0@jic23-huawei>
From: Shreeya Patel <shreeya.patel@collabora.com>
In-Reply-To: <20230604112043.43b1ada0@jic23-huawei>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_032435_427548_E9134CA6 
X-CRM114-Status: GOOD (  10.22  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDA0LzA2LzIzIDE1OjUwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3RlOgo+IE9uIFNhdCwgMyBK
dW4gMjAyMyAyMzo0ODowMCArMDMwMAo+IGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20gd3JvdGU6
Cj4KPj4gU3VuLCBKdW4gMDQsIDIwMjMgYXQgMTI6MjM6MzRBTSArMDUzMCwgU2hyZWV5YSBQYXRl
bCBraXJqb2l0dGk6Cj4+PiBGcm9tOiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPj4+
Cj4+PiBBZGQgbmV3IHN0YXJ0IGFuZCByZWFkIGZ1bmN0aW9ucyB0byBzdXBwb3J0IHJrMzU4OCBk
ZXZpY2UuCj4+PiBBbHNvLCBhZGQgYSBkZXZpY2UgY29tcGF0aWJsZSBzdHJpbmcgZm9yIHRoZSBz
YW1lLgo+PiAuLi4KPj4KPj4+ICsvKiB2MiByZWdpc3RlcnMgKi8KPj4+ICsjZGVmaW5lIFNBUkFE
QzJfQ09OVl9DT04JCTB4MAo+Pj4gKyNkZWZpbmUgU0FSQURDX1RfUERfU09DCQkJMHg0Cj4+PiAr
I2RlZmluZSBTQVJBRENfVF9EQVNfU09DCQkweGMKPj4gQ2FuIHlvdSB1c2UgZml4ZWQtd2lkdGgg
dmFsdWVzIGZvciBhbGwgcmVnaXN0ZXJzPwo+Pgo+PiAJMHgwMDAKPj4gCTB4MDA0Cj4+IAkweDAw
Ywo+Pgo+Pj4gKyNkZWZpbmUgU0FSQURDMl9FTkRfSU5UX0VOCQkweDEwNAo+Pj4gKyNkZWZpbmUg
U0FSQURDMl9TVF9DT04JCQkweDEwOAo+Pj4gKyNkZWZpbmUgU0FSQURDMl9TVEFUVVMJCQkweDEw
Ywo+Pj4gKyNkZWZpbmUgU0FSQURDMl9FTkRfSU5UX1NUCQkweDExMAo+Pj4gKyNkZWZpbmUgU0FS
QURDMl9EQVRBX0JBU0UJCTB4MTIwCj4gSSB0aWRpZWQgdGhpcyB1cCB3aGlsc3QgYXBwbHlpbmcu
CgogwqBBaCwgSSB3YXMganVzdCBhYm91dCB0byBzZW5kIGEgdjQgd2l0aCB0aGUgY2hhbmdlLiBU
aGFuayB5b3UgZm9yIAptYWtpbmcgdGhlIGNoYW5nZXMuCgoKUmVnYXJkcywKU2hyZWV5YSBQYXRl
bAoKCj4gSm9uYXRoYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
