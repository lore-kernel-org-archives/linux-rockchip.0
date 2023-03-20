Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92CB1C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 10:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1YJ2VJ3jYbGA+gyW7Db5PlnvHqNxlzqBweVT4rs3JY=; b=YdSVWYirXj7BX9
	KYUAYOW9O9qqTs8Kk33mnd94XEZejQQeYwWC2FAbUZelhJLmM8Kb+FCRNJ1RikBFHCYzFjthh3dJ8
	wtgVYXgUy5WrT0ASnrnar/N4gjHnHlv7CizzuPbx2+tmDs3kteikHy+ngn7fmIvk5XWApZDTVXuW0
	hsoPSm7IT0S2qAznVAIRtPAFMLxosC24vDJpJnIJD/U0Wk9PBVTpbCeGHF2BVm/kGCDD2B9tQKlI5
	bM1eONohLyq21LeJEQr25SY0tEMTEFDSRyEPXFW98YvUQv34b1kfbsE/7zh0ftZJkEWcDb+p6PUpn
	nP/cTrEwnnl2UJKqRq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peCqo-008dl1-35;
	Mon, 20 Mar 2023 10:34:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peCqk-008djL-2y;
	Mon, 20 Mar 2023 10:34:48 +0000
Received: from [192.168.0.192] (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 40F4B660308E;
	Mon, 20 Mar 2023 10:34:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679308485;
	bh=hpKGeEtlUThflQqRo4j1owubo31EL47Kslfe/FkC974=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PzEKWEwMv5DA/i8wzaoToelcVJYLS2qxo/Ms9fPtiMd0iRS0R+h8p6ZM8zNJbzPIv
	 axRMUb1/35L23nmNmM8x7hZEY9NMaN2V0C/cEJBbg6ogjdpbDM2oSdELMJNyhLyWFa
	 Ik2gkrYsjTV28SEXje7P0ssV7hZ6iKltdG3QCPcPQhhhs6kTbw/XerySj75ProV8jB
	 soTjcWlWhG2mABm1WQEumVpXbhkqzvcqpqJxjheCiNONZAbca7NNeEWw3nmcHnYfhs
	 Al957GRKRlhxejQynYmj13JkUcy4Phlcya2chKnO4eRMTXxy8c0p/M0SR2icMdx5BP
	 xdlh6dEFqEt0g==
Message-ID: <2aecb113-0c69-88ac-a726-66e03d9f0a2e@collabora.com>
Date: Mon, 20 Mar 2023 11:34:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC 2/2] media: rkvdec: Add VP8 encoder
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Daniel Almeida <daniel.almeida@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 kernel@collabora.com
References: <20230309125651.23911-1-andrzej.p@collabora.com>
 <20230309125651.23911-3-andrzej.p@collabora.com>
 <a142c30ab49a8ff65c59bdc9bc0e4552c48bac68.camel@collabora.com>
 <efd18d9b-172a-8978-bb9a-18bb0edda4ee@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <efd18d9b-172a-8978-bb9a-18bb0edda4ee@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_033447_099209_235EA65C 
X-CRM114-Status: UNSURE (   9.53  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRG1pdHJ5LAoKVyBkbml1IDE5LjAzLjIwMjMgb8KgMDA6MjcsIERtaXRyeSBPc2lwZW5rbyBw
aXN6ZToKPiBPbiAzLzE5LzIzIDAyOjIzLCBEYW5pZWwgQWxtZWlkYSB3cm90ZToKPj4gSGkgQW5k
cnplaiwgb25lIHRoaW5nIEkgbm90aWNlZCB3aGlsZSBsb29raW5nIGF0IHRoaXM6Cj4+Cj4+PiAr
c3RydWN0IGhhbnRyb192cDhfZW50cm9weSB7Cj4+PiArCS8qIFRPRE86IGludDMyX3Q/ICovCj4+
PiArCWludDMyX3QgY29lZmZfcHJvYls0XVs4XVszXVsxMV07Cj4+PiArCWludDMyX3QgY29lZmZf
cHJvYl9vbGRbNF1bOF1bM11bMTFdOwo+Pj4gKwlpbnQzMl90IG12X3Byb2JbMl1bMTldOwo+Pj4g
KwlpbnQzMl90IG12X3Byb2Jfb2xkWzJdWzE5XTsKPj4+ICsJaW50MzJfdCB5X21vZGVfcHJvYls0
XTsKPj4+ICsJaW50MzJfdCB1dl9tb2RlX3Byb2JbM107Cj4+PiArfTsKPj4+Cj4+Cj4+Cj4+IElu
IFZQOSwgcHJvYmFiaWxpdGllcyBhcmUgY29kZWQgaW4gdGhlIDAuLjI1NSByYW5nZSwgc28gaWYg
eW91IHdhbnQgdG8KPj4gc2F2ZSBzcGFjZSBoZXJlLCB5b3UgY2FuIGdvIHdpdGggdWludDhfdC4K
PiAKPiBCVFcsIHRoZXJlIGlzIGEgbWl4IG9mIGludDMyX3QgYW5kIHMzMiBpbiB0aGUgY29kZSwg
dGhlIHMzMiBpcyBhIGNvcnJlY3QKPiBjaG9pY2UuIFNpbWlsYXIgZm9yIHU4LiBDaGVja3BhdGNo
IC0tc3RyaWN0IHNob3VsZCB3YXJuIGFib3V0IGl0IGFsbC4KPiAKClRoYW5rcy4gU29tZXRoaW5n
IGZvciBhIHNlcmllcyBwcm9wZXIgKG5vdCBSRkMpIGluZGVlZC4KCkFuZHJ6ZWoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
