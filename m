Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A8AAC5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 08:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tw40mudUkG8j6jWQ/qRr1dMZW/BQ5ZODqz4DDjG5rwc=; b=VemIHIxxBplQpXNYHEdQtm21Zp
	YuR4moHWCs360ea7xV3+6dhelGdqRky4KVDd9yzjoN3YC4mxPlxpfQRk1iQ7eAMjQ3/idd/WeKrjO
	JpSu1q3rNpPjoCNNo98hpTG6pbYgLT35whzeXX6Tg1r3xrrlAEnJoNrDZ9K6uEzakJCUZVv2H3N7x
	HibfRxl4IWB+HTSBAf840/YBlyX2J9qk05hWdKY+ovwlJAl0rFoNdggwceFByiB1gGD9WnOZPrEHk
	oYJHS3Sv7HxAD0NaQDQj7kHJ0XasOuZbnZqJQNMFBLriuBjdZUnNP7nteA56t0zmvO4iObWbafpYD
	1D/mYR+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfyCe-0000000GtAA-457P;
	Fri, 01 Mar 2024 08:25:12 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfyCb-0000000Gt9D-0S9h;
	Fri, 01 Mar 2024 08:25:10 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709281507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PML2KXW2NNHKig0QUJIbOqrTp9cjXhSc3Xi08SDJ2+4=;
	b=aexe0ZLNbDKkg3CyRRdMeFW2hP8JVq3Si/3axw4AXvBM5sKWsTH0ZeW8kptyRFqeP7y/gl
	SuX1UIlzo6PjaFE17g7+ohi8JC+ld5kGeyiAJOYBl6BzJIfPDJQy4WnbL4S6bLSwb4gQnL
	hAuk0bf1UcQb9BUGltiQytmPW+uyBksKZpcoGVuRgsHdqpVOn/IJhX+cuSszim35vG0cXN
	oFo7Nmex0agyQnFEyrXqcSredmgCUzcO87JTcoDZxPjGiwovxLiGihVAQ3PJToCMad2M/7
	LNsD2KCiWBqe1lGazWjpUxdye3+DAf4661WuIdh/YTnqMok+IyaRehDPaHcpog==
Date: Fri, 01 Mar 2024 09:25:07 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/5] arm64: dts: rockchip: enable automatic active
 cooling on Rock 5B
In-Reply-To: <a8ebe39b28a34c3544481a4e43e61d2b@manjaro.org>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com>
 <823379825559bb76088c31f44f998dd3@manjaro.org>
 <CABjd4YybaQnKm+VpU_xVrCb=pxQ7oQXPHGZzn_u1w_h3yn7gwg@mail.gmail.com>
 <a8ebe39b28a34c3544481a4e43e61d2b@manjaro.org>
Message-ID: <b16f1d40549554598a3658679ceba9bf@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_002509_319138_526036C9 
X-CRM114-Status: GOOD (  12.78  )
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

T24gMjAyNC0wMy0wMSAwNzoxNywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjQtMDMtMDEg
MDY6MjEsIEFsZXhleSBDaGFya292IHdyb3RlOgo+PiBPbiBGcmksIE1hciAxLCAyMDI0IGF0IDE6
MjXigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gCj4+IHdyb3RlOgo+Pj4g
T24gMjAyNC0wMi0yOSAyMDoyNiwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+PiA+IFRoaXMgbGlu
a3MgdGhlIFBXTSBmYW4gb24gUmFkeGEgUm9jayA1QiBhcyBhbiBhY3RpdmUgY29vbGluZyBkZXZp
Y2UKPj4+ID4gbWFuYWdlZCBhdXRvbWF0aWNhbGx5IGJ5IHRoZSB0aGVybWFsIHN1YnN5c3RlbSwg
d2l0aCBhIHRhcmdldCBTb0MKPj4+ID4gdGVtcGVyYXR1cmUgb2YgNjVDIGFuZCBhIG1pbmltdW0t
c3BpbiBpbnRlcnZhbCBmcm9tIDU1QyB0byA2NUMgdG8KPj4+ID4gZW5zdXJlIGFpcmZsb3cgd2hl
biB0aGUgc3lzdGVtIGdldHMgd2FybQo+Pj4gCj4+PiBJJ2Qgc3VnZ2VzdCB0aGF0IHlvdSByZXBs
YWNlICJhdXRvbWF0aWMgYWN0aXZlIGNvb2xpbmciIHdpdGggImFjdGl2ZQo+Pj4gY29vbGluZyIg
aW4gdGhlIHBhdGNoIHN1YmplY3QuICBJIGtub3csIGl0IG1heSBzZWVtIGxpa2UgbW9yZSBvZiB0
aGUKPj4+IHVubmVjZXNzYXJ5IG5pdHBpY2tpbmcsIDopIGJ1dCBJIGhvcGUgeW91J2xsIGFncmVl
IHRoYXQgImF1dG9tYXRpYyIKPj4+IGlzIGFjdHVhbGx5IHJlZHVuZGFudCB0aGVyZS4gIEl0IHdv
dWxkIGFsc28gbWFrZSB0aGUgcGF0Y2ggc3ViamVjdAo+Pj4gYSBiaXQgc2hvcnRlci4KPj4+IAo+
Pj4gQW5vdGhlciBvcHRpb24gd291bGQgYmUgdG8gcmVwbGFjZSAiYXV0b21hdGljIGFjdGl2ZSBj
b29saW5nIiB3aXRoCj4+PiAiYXV0b21hdGljIGZhbiBjb250cm9sIiwgd2hpY2ggbWF5IGFjdHVh
bGx5IGJlIGEgYmV0dGVyIGNob2ljZS4KPj4+IEknZCBiZSBoYXBweSB3aXRoIHdoaWNoZXZlciBv
bmUgeW91IHByZWZlci4gOikKPj4gCj4+IFNvdW5kcyBnb29kIHRvIG1lLCB0aGFua3MhCj4gCj4g
SSdtIGdsYWQgdGhhdCB5b3UgbGlrZSBpdC4gOikKPiAKPj4+IE90aGVyd2lzZSwgcGxlYXNlIGZl
ZWwgZnJlZSB0byBhZGQ6Cj4+PiAKPj4+IFJldmlld2VkLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1p
Y0BtYW5qYXJvLm9yZz4KPj4gCj4+IFRoYW5rIHlvdSBEcmFnYW4sIG11Y2ggYXBwcmVjaWF0ZWQh
Cj4gCj4gVGhhbmsgeW91IGZvciBwdXR0aW5nIHVwIHdpdGggbXkgbml0cGlja2luZy4gOikKClBl
cmhhcHMgdGhlIGZvbGxvd2luZyB0YWcgd291bGQgYWxzbyBiZSBkZXNlcnZlZCBmb3IgdGhpcyBw
YXRjaDoKCkhlbHBlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+CgpJIGhv
cGUgeW91IGFncmVlLiA6KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
