Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9124C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 10:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2KtbDic7lC3cwC5cLrfOoB7Hqx8L4jCCfOvaSeQGDA=; b=cECqAYNEVx1sUX
	hkniUQJw1PPduzCdJMoKu5KvT1iFJ7Z/str8QU+WuLKH3ZYYYWn2Xt5ix92Iu7pN7rzth0DR3eB3g
	AZ2TwbzUNE2P89lyflng8s6Nq986OhmSl8z1caDtQUvx2O046L4F8LoZ8yYmsoiujviYhRToryvrE
	qPUxFkxZJD1SKj6z9LKu0Er6ZqjWzaaxvw/Uo9IAubEfXv8qg/joFDzAOUBb7wj8ZBhw2kDXlYl1l
	Pp5vGg1TRlOBKtZBSvkHCeAB5ZryyhSjLzfxk+AvVZqjs8lf5CpBuGDRG0eRWIIhmWWY4Tp4ObdS7
	vS3RxIQUNNY9zBP/Tc1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBYn-00000006gUf-3wgm;
	Wed, 14 Aug 2024 10:48:57 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBV4-00000006fju-1H2M
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 10:45:35 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-6b79fc76d03so36859136d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Aug 2024 03:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723632305; x=1724237105; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LFk4lh3cCjG0SR06SvOvwiuhTMezfgXvWpzfkPomYos=;
        b=Qq6XeEPj/J9NNKX/VhsqXdj0bXHQiHfWKdflNNd+TDtifff9sZALEMutgeScpbRYjV
         odyKIGs7ybzwdMfq0Lr06uJvGjsdx7o3VHVEsM/m4U60f99hG4+uB161h0KlgBglybSw
         mdRdCYxUwufAfWRzxtl+SuBGrY8fGMf2xMxDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723632305; x=1724237105;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LFk4lh3cCjG0SR06SvOvwiuhTMezfgXvWpzfkPomYos=;
        b=EjWoDRyi0XIgV3JyhDXjEWzBkGxXnO5Bgd3tGriWAb+UWm741x2/1HS6gwdfRFoybE
         C771ekxrIXrYRr2R1HA7VgEfnOdWCcyXZrfHqc8ubZJdcuwmqZK9DCXoGOklcPcWD8E4
         LoUkBqlxE5+kSr1k+tzF2oigPyiK4U2lvYktsr3QBaP+4nLj1n6t79DmiV49F8w9VpYw
         UEXMzhftz3pRwn5CZ1fd4hY9vb2mVz1BvLhqd6SyMczbYZsVno+XD7GHUG3HtatcsPhk
         HkHbUGC+lMf2NTcVismE7inD6wU54AEWNMgBcCCB4TXDW5F69qdnA1RrjB73XqqJFfF0
         9wUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKyAGJ5EcoNH8jqLfq0NiSCdUJMvF3OVM26lHAMjtiuSsABm/t8T8YmH5Ks6MfeMOmlMnca2Gi5FCfU/x1r+kch+3Ix2+3N3Rg1Fza5fZGzMzE
X-Gm-Message-State: AOJu0Yz7yg9FjaA4PZCnnAqQVM/1cJofuchJ8mOuXksihHD7FTvQvk8u
	pav4CscA1WpCSJyWQXjN8IFestrwdE6rG53IzSs1LAf4Z6XfXokLcuwP+/FyGQ==
X-Google-Smtp-Source: AGHT+IGINV7Cr6/yUzciRzHq2zhc1Ek5UNVW7N0rj9HFgKO7ExivX+a6umTbzKbdjzFu5OuVUGXsyg==
X-Received: by 2002:a0c:f7ce:0:b0:6bf:6714:43b3 with SMTP id 6a1803df08f44-6bf6714448emr2393696d6.21.1723632304908;
        Wed, 14 Aug 2024 03:45:04 -0700 (PDT)
Received: from [10.176.68.61] ([192.19.176.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bd82c87843sm42263316d6.31.2024.08.14.03.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 03:45:04 -0700 (PDT)
Message-ID: <8de856d4-8526-4662-bb29-898b80476df9@broadcom.com>
Date: Wed, 14 Aug 2024 12:44:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Alexey Charkov <alchark@gmail.com>, Jacobe Zang <jacobe.zang@wesion.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, arend@broadcom.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, megi@xff.cz,
 duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com, Sai Krishna <saikrishnag@marvell.com>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-5-jacobe.zang@wesion.com>
 <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
 <2269063.vFx2qVVIhK@latitude-fedora>
 <fa019ee9-3f4d-4bea-92a7-929713518dc9@wesion.com>
 <CABjd4YwTbG8pm_xwrOVtVwMwvarvz2SB9bapH3LDMqPn6pH9Ew@mail.gmail.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <CABjd4YwTbG8pm_xwrOVtVwMwvarvz2SB9bapH3LDMqPn6pH9Ew@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_034506_441895_F6EDC5C7 
X-CRM114-Status: GOOD (  25.50  )
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

T24gOC8xNC8yMDI0IDExOjQ4IEFNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiBPbiBXZWQsIEF1
ZyAxNCwgMjAyNCBhdCAxMjoyN+KAr1BNIEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24u
Y29tPiB3cm90ZToKPj4KPj4KPj4KPj4gT24gMjAyNC84LzE0IDE2OjQ3LCBBbGV4ZXkgQ2hhcmtv
diB3cm90ZToKPj4+IEhpIEFyZW5kLCBKYWNvYmUsCj4+Pgo+Pj4gT24gVHVlc2RheSwgQXVndXN0
IDEzLCAyMDI0IDI6NTc6MjjigK9QTSBHTVQrMyBBcmVuZCB2YW4gU3ByaWVsIHdyb3RlOgo+Pj4+
IE9uIDgvMTMvMjAyNCAxMDoyMCBBTSwgSmFjb2JlIFphbmcgd3JvdGU6Cj4+Pj4+IFdpRmkgbW9k
dWxlcyBvZnRlbiByZXF1aXJlIDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQgc3VwcG9ydCB0
bwo+Pj4+PiBlbmFibGUgdGhlIGNsb2NrIHRvIFBDSWUgZHJpdmVyIGFuZCBtb3ZlICJicmNtLGJj
bTQzMjktZm1hYyIgY2hlY2sKPj4+Pj4gdG8gdGhlIHRvcCBvZiBicmNtZl9vZl9wcm9iZS4gQ2hh
bmdlIGZ1bmN0aW9uIHByb3RvdHlwZXMgZnJvbSB2b2lkCj4+Pj4+IHRvIGludCBhbmQgYWRkIGFw
cHJvcHJpYXRlIGVycm5vJ3MgZm9yIHJldHVybiB2YWx1ZXMgdGhhdCB3aWxsIGJlCj4+Pj4+IHNl
bmQgdG8gYnVzIHdoZW4gZXJyb3Igb2NjdXJyZWQuCj4+Pj4KPj4+PiBJIHdhcyBnb2luZyB0byBz
YXkgaXQgbG9va3MgZ29vZCB0byBtZSwgYnV0Li4uLgo+Pj4+Cj4+Pj4+IENvLWRldmVsb3BlZC1i
eTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE9uZHJl
aiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+Pj4+PiBDby1kZXZlbG9wZWQtYnk6IEFyZW5kIHZhbiBT
cHJpZWwgPGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEFyZW5kIHZhbiBTcHJpZWwgPGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20+Cj4+Pj4+IFJl
dmlld2VkLWJ5OiBTYWkgS3Jpc2huYSA8c2Fpa3Jpc2huYWdAbWFydmVsbC5jb20+Cj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24uY29tPgo+Pj4+PiAt
LS0KPj4+Pj4KPj4+Pj4gICAgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvYmNtc2Ro
LmMgICAgICB8ICA0ICstCj4+Pj4+ICAgICAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFj
L2NvbW1vbi5jICAgICAgfCAgMyArLQo+Pj4+PiAgICAgLi4uL3dpcmVsZXNzL2Jyb2FkY29tL2Jy
Y204MDIxMS9icmNtZm1hYy9vZi5jIHwgNTMgKysrKysrKysrKystLS0tLS0tLQo+Pj4+PiAgICAg
Li4uL3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5oIHwgIDkgKystLQo+
Pj4+PiAgICAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9wY2llLmMgICAgICAgIHwg
IDMgKysKPj4+Pj4gICAgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvc2Rpby5jICAg
ICAgICB8IDIyICsrKysrLS0tCj4+Pj4+ICAgICAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21m
bWFjL3VzYi5jICAgICAgICAgfCAgMyArKwo+Pj4+PiAgICAgNyBmaWxlcyBjaGFuZ2VkLCA2MSBp
bnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IFsuLi5dCj4+Pj4KPj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNt
Zm1hYy9vZi5jCj4+Pj4+IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjEx
L2JyY21mbWFjL29mLmMgaW5kZXgKPj4+Pj4gZTQwNmUxMTQ4MWE2Mi4uZjE5ZGM3MzU1ZTBlOCAx
MDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjEx
L2JyY21mbWFjL29mLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20v
YnJjbTgwMjExL2JyY21mbWFjL29mLmMKPj4+Pgo+Pj4+IFsuLi5dCj4+Pj4KPj4+Pj4gQEAgLTEx
MywzMyArMTE4LDM5IEBAIHZvaWQgYnJjbWZfb2ZfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBl
bnVtCj4+Pj4+IGJyY21mX2J1c190eXBlIGJ1c190eXBlLD4KPj4+Pj4gICAgICAgICAgICAgIG9m
X25vZGVfcHV0KHJvb3QpOwo+Pj4+Pgo+Pj4+PiAgICAgIH0KPj4+Pj4KPj4+Pj4gLSAgIGlmICgh
bnAgfHwgIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAiYnJjbSxiY200MzI5LWZtYWMiKSkK
Pj4+Pj4gLSAgICAgICAgICAgcmV0dXJuOwo+Pj4+PiAtCj4+Pj4+Cj4+Pj4+ICAgICAgZXJyID0g
YnJjbWZfb2ZfZ2V0X2NvdW50cnlfY29kZXMoZGV2LCBzZXR0aW5ncyk7Cj4+Pj4+ICAgICAgaWYg
KGVycikKPj4+Pj4KPj4+Pj4gICAgICAgICAgICAgIGJyY21mX2VycigiZmFpbGVkIHRvIGdldCBP
RiBjb3VudHJ5IGNvZGUgbWFwIChlcnI9JWQpCj4+PiBcbiIsIGVycik7Cj4+Pj4+Cj4+Pj4+ICAg
ICAgb2ZfZ2V0X21hY19hZGRyZXNzKG5wLCBzZXR0aW5ncy0+bWFjKTsKPj4+Pj4KPj4+Pj4gLSAg
IGlmIChidXNfdHlwZSAhPSBCUkNNRl9CVVNUWVBFX1NESU8pCj4+Pj4+IC0gICAgICAgICAgIHJl
dHVybjsKPj4+Pj4gKyAgIGlmIChidXNfdHlwZSA9PSBCUkNNRl9CVVNUWVBFX1NESU8pIHsKPj4+
Pgo+Pj4+IERvbid0IGxpa2UgdGhlIGZhY3QgdGhhdCB0aGlzIG5vdyBoYXMgYW4gZXh0cmEgaW5k
ZW50YXRpb24gbGV2ZWwgYW5kIGl0Cj4+Pj4gb2ZmZXJzIG5vIGV4dHJhIGJlbmVmaXQuIEp1c3Qg
a2VlcCB0aGUgb3JpZ2luYWwgaWYtc3RhdGVtZW50IGFuZCByZXR1cm4KPj4+PiAwLiBDb25zZXF1
ZW50bHkgdGhlIExQTyBjbG9jayBjb2RlIHNob3VsZCBtb3ZlIGp1c3QgYmVmb3JlIHRoZSBpZi1z
dGF0ZW1lbnQuCj4+Pj4+ICsgICAgICAgICAgIGlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihucCwg
ImJyY20sZHJpdmUtc3RyZW5ndGgiLAo+Pj4gJnZhbCkgPT0gMCkKPj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICBzZGlvLT5kcml2ZV9zdHJlbmd0aCA9IHZhbDsKPj4+Pj4KPj4+Pj4gLSAgIGlmIChv
Zl9wcm9wZXJ0eV9yZWFkX3UzMihucCwgImJyY20sZHJpdmUtc3RyZW5ndGgiLCAmdmFsKSA9PSAw
KQo+Pj4+PiAtICAgICAgICAgICBzZGlvLT5kcml2ZV9zdHJlbmd0aCA9IHZhbDsKPj4+Pj4gKyAg
ICAgICAgICAgLyogbWFrZSBzdXJlIHRoZXJlIGFyZSBpbnRlcnJ1cHRzIGRlZmluZWQgaW4gdGhl
IG5vZGUgKi8KPj4+Pj4gKyAgICAgICAgICAgaWYgKCFvZl9wcm9wZXJ0eV9wcmVzZW50KG5wLCAi
aW50ZXJydXB0cyIpKQo+Pj4+PiArICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+Pj4+Pgo+
Pj4+PiAtICAgLyogbWFrZSBzdXJlIHRoZXJlIGFyZSBpbnRlcnJ1cHRzIGRlZmluZWQgaW4gdGhl
IG5vZGUgKi8KPj4+Pj4gLSAgIGlmICghb2ZfcHJvcGVydHlfcHJlc2VudChucCwgImludGVycnVw
dHMiKSkKPj4+Pj4gLSAgICAgICAgICAgcmV0dXJuOwo+Pj4+PiArICAgICAgICAgICBpcnEgPSBp
cnFfb2ZfcGFyc2VfYW5kX21hcChucCwgMCk7Cj4+Pj4+ICsgICAgICAgICAgIGlmICghaXJxKSB7
Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgYnJjbWZfZXJyKCJpbnRlcnJ1cHQgY291bGQgbm90
IGJlCj4+PiBtYXBwZWRcbiIpOwo+Pj4+PiArICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+
Pj4+PiArICAgICAgICAgICB9Cj4+Pj4+ICsgICAgICAgICAgIGlycWYgPSBpcnFkX2dldF90cmln
Z2VyX3R5cGUoaXJxX2dldF9pcnFfZGF0YShpcnEpKTsKPj4+Pj4gKwo+Pj4+PiArICAgICAgICAg
ICBzZGlvLT5vb2JfaXJxX3N1cHBvcnRlZCA9IHRydWU7Cj4+Pj4+ICsgICAgICAgICAgIHNkaW8t
Pm9vYl9pcnFfbnIgPSBpcnE7Cj4+Pj4+ICsgICAgICAgICAgIHNkaW8tPm9vYl9pcnFfZmxhZ3Mg
PSBpcnFmOwo+Pj4+PiArICAgfQo+Pj4+Pgo+Pj4+PiAtICAgaXJxID0gaXJxX29mX3BhcnNlX2Fu
ZF9tYXAobnAsIDApOwo+Pj4+PiAtICAgaWYgKCFpcnEpIHsKPj4+Pj4gLSAgICAgICAgICAgYnJj
bWZfZXJyKCJpbnRlcnJ1cHQgY291bGQgbm90IGJlIG1hcHBlZFxuIik7Cj4+Pj4+IC0gICAgICAg
ICAgIHJldHVybjsKPj4+Pj4gKyAgIGNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVk
KGRldiwgImxwbyIpOwo+Pj4+PiArICAgaWYgKCFJU19FUlJfT1JfTlVMTChjbGspKSB7Cj4+Pj4+
ICsgICAgICAgICAgIGJyY21mX2RiZyhJTkZPLCAiZW5hYmxpbmcgMzJrSHogY2xvY2tcbiIpOwo+
Pj4+PiArICAgICAgICAgICByZXR1cm4gY2xrX3NldF9yYXRlKGNsaywgMzI3NjgpOwo+Pj4+PiAr
ICAgfSBlbHNlIHsKPj4+Pj4gKyAgICAgICAgICAgcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhjbGsp
Owo+Pj4+Pgo+Pj4+PiAgICAgIH0KPj4+Pgo+Pj4+IENoYW5nZSB0aGlzIHRvOgo+Pj4+ICAgID4g
KyAgICAgICAgY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQoZGV2LCAibHBvIik7
Cj4+Pj4gICAgPiArICAgICAgICBpZiAoSVNfRVJSX09SX05VTEwoY2xrKSkgewo+Pj4+ICAgID4g
KyAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUl9PUl9aRVJPKGNsayk7Cj4+Pgo+Pj4gUGVy
aGFwcyBpbiB0aGlzIGNhc2Ugd2Ugc2hvdWxkIGdvIGZvciBJU19FUlIgYW5kIFBUUl9FUlIgcmVz
cGVjdGl2ZWx5Lgo+Pj4gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQgd291bGQgcmV0dXJu
IE5VTEwgd2hlbiB0aGUgb3B0aW9uYWwgY2xvY2sgaXMgbm90Cj4+PiBmb3VuZCwgc28gTlVMTCBp
cyBub3QgYW4gZXJyb3Igc3RhdGUgYnV0IHNlcnZlcyBhcyBhIGR1bW15IGNsb2NrIHRoYXQgY2Fu
IGJlPiB1c2VkIHdpdGggY2xrX3NldF9yYXRlLgo+Pgo+PiBJIHRoaW5rIHdlIGRvbid0IG5lZWQg
dG8gc2V0IGNsb2NrIHJhdGUgZm9yIGNsb2NrIGlzIE5VTEwuIFNvIGl0IHNob3VsZAo+PiBiZSBj
aGFuZ2VkIHRvOgo+Pgo+PiArICAgICAgIGNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFi
bGVkKGRldiwgImxwbyIpOwo+PiArICAgICAgIGlmIChJU19FUlIoY2xrKSkgewo+PiArICAgICAg
ICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY2xrKTsKPj4gKyAgICAgICB9IGVsc2UgaWYgKGNsaykg
ewo+PiArICAgICAgICAgICAgICAgYnJjbWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBjbG9j
a1xuIik7Cj4+ICsgICAgICAgICAgICAgICBjbGtfc2V0X3JhdGUoY2xrLCAzMjc2OCk7Cj4+ICsg
ICAgICAgfQo+IAo+IElmIGNsayBpcyBOVUxMIHRoZW4gY2xrX3NldF9yYXRlIHJldHVybnMgaW1t
ZWRpYXRlbHkgd2l0aCBzdGF0dXMgemVybywKPiBzbyB0aGVyZSBpcyBsaXR0bGUgZGlmZmVyZW5j
ZSBmcm9tIHdoZXRoZXIgeW91IHdyYXAgaXQgaW50byBhbm90aGVyIGlmCj4gKGNsaykgb3Igbm90
LiBZb3UgY2FuIHByb2JhYmx5IGRyb3AgdGhlIGRlYnVnIHN0YXRlbWVudCBhbHRvZ2V0aGVyIGFu
ZAo+IGNhbGwgY2xrX3NldF9yYXRlIHVuY29uZGl0aW9uYWxseSAtIHRoaXMgd2lsbCBsb29rIG5l
YXRlci4KClRoZSBjb25zdHJ1Y3QgYWJvdmUgaXMgaW5kZWVkIG9ubHkgbmVlZGVkIHRvIGdldCB0
aGUgZGVidWcgc3RhdGVtZW50IApjb3JyZWN0IGdpdmVuIHRoZSBiZWhhdmlvciBvZiBjbGtfc2V0
X3JhdGUoKS4gSG93ZXZlciwgZm9yIGRlYnVnZ2luZyBpdCAKaXMgdXNlZnVsIHRvIGtub3cgdGhh
dCB0aGUgTFBPIGNsb2NrIGlzIGRlZmluZWQgYW5kIHVzZWQgb3Igbm90LiBNYXliZSAKZG8gdGhp
czoKCiAgICAgICAgY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQoZGV2LCAibHBv
Iik7CiAgICAgICAgaWYgKElTX0VSUihjbGspKQogICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9F
UlIoY2xrKTsKCiAgICAgICAgYnJjbWZfZGJnKElORk8sICIlcyBMUE8gY2xvY2tcbiIsIGNsayA/
ICJlbmFibGUiIDogIm5vIik7CiAgICAgICAgY2xrX3NldF9yYXRlKGNsaywgMzI3NjgpOwoKUmVn
YXJkcywKQXJlbmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
