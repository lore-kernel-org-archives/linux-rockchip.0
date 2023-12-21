Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6244FC35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 14:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jC435rf19DwB/DZRVjLIZsCrhOUtRdXUDzPndt8lWs0=; b=OxeTcLl/W4CLwB
	K/R7DwEOEI/tj7Ngz+yy04sDhamyTtKhxAmgMneb3fXXuP7SybihXw+MgXNHqgkH4bTBZRd8zJiGO
	1ppk1lBjHaPCXIiWBY8hiVtDeLElFqU3y6QuecNwhLIy1OqZYI8mfBOIf/GsnKpKKCp/er+pxANAC
	7OFPKvGYaP06+6dnRK1aSWRc/GWBxgSxUqaDGDRdo9JIT/QKf2g06tb4ps56nLGsUpIV8lqVZOJoy
	sxNRsisye/PrAbN/4Xbj+j41ofyi8CoiCl7tr9EuyKKyvk2ivw6i7pR1aNHw0jXSlnJGxKgtw9YuI
	3GxYY1/ON4zFefqj31rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJt8-0039eU-2w;
	Thu, 21 Dec 2023 14:19:02 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJt5-0039cf-2Y;
	Thu, 21 Dec 2023 14:19:01 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5542a7f1f3cso578242a12.2;
        Thu, 21 Dec 2023 06:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703168338; x=1703773138; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZgRxVc3b/cXQXk1FRUsZmIntq3x5skTt1E+0eRMTOto=;
        b=HThyAGrduSmM7jFBwQxGjDmwwldJ9EQxnwN5MI8hdO2sjszByhidHzGn865zRJZwtC
         lUWqiPWWas2bnZ9dspEBkJw6Upp1SPulWE8msHki4FlqDnjvJXAx+9ihfevFI8SGJ590
         m8DhORHjWMoPmqsxi3Hp9TyNh4w3mHmQLUYqVEiYFtLy1Mep4sOX9QJU8/4Y12/wtfE5
         go4G7/xalonsv+Hdd8AbvmXq9i/TJiaWHv7HHhzBTcqCyN6Igc2nOCowDZSDKwtCCmR/
         zoe8feo4sVj/SxL5+gcxr8Gy0QA/r19AcNLeLEFcbBKdg6ffbArVgUtl0P/MKQhXHwhV
         qCrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703168338; x=1703773138;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZgRxVc3b/cXQXk1FRUsZmIntq3x5skTt1E+0eRMTOto=;
        b=fRu53BEIcSIKtJHytsFFHn1qylt655spbokVPTH3E2ttidH+yTX1lo+6Gf82dynTk2
         oZ/ydsb7pvGERUv/CKx500Dnz9mdj4SnVf234R3/nAL36QKbq/55hGnAIXEtz/wm6RGv
         ahqS1vahmyeYcuyhi5yz3BaGRcjZlZIUZCt+32jXDnhD0ZhPg+OgWUl66G9/W+/mFRRm
         uSAYF9CGqsl1dV/zYMrZCAkjjEKJymhmERw1swZEsZYfVDZWHSQML/NceFwZXPlqrwyn
         GXQrIcvH3HawZRL75hMp37Al7CibobPk5Qd+4g4xyiLjWq0WAMfliiTR5XjYYCZIYYMx
         eyJg==
X-Gm-Message-State: AOJu0YyRz7h5frM/E0XskCGIQ3wBnBhuUudwXzr/XolA4BA/03vyH7TT
	ypByhIWAEm7MYxFtqBogHA==
X-Google-Smtp-Source: AGHT+IGEcbQ20zL8VfJo7vaJHeSnFBDczuJI73eIk9D6ghdxribg8KJUIIU6DKKNnhyLuCnYwDPQYg==
X-Received: by 2002:a50:a45e:0:b0:553:354a:9a81 with SMTP id v30-20020a50a45e000000b00553354a9a81mr4529475edb.26.1703168338069;
        Thu, 21 Dec 2023 06:18:58 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0? ([2a02:810b:f40:4300:1c49:5d1e:f6f3:77a0])
        by smtp.gmail.com with ESMTPSA id dj25-20020a05640231b900b00552743342c8sm1232410edb.59.2023.12.21.06.18.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 06:18:57 -0800 (PST)
Message-ID: <5095f695-6dad-45e2-9cff-1b79003355c9@gmail.com>
Date: Thu, 21 Dec 2023 15:18:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
Content-Language: en-US, de-DE
To: Hugues FRUCHET <hugues.fruchet@foss.st.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-media@vger.kernel.org, Alexandre Torgue
 <alexandre.torgue@foss.st.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Adam Ford <aford173@gmail.com>
References: <20231221084723.2152034-1-hugues.fruchet@foss.st.com>
 <769a1510-f8d2-4095-9879-42f413141dee@gmail.com>
 <a240d2ac-db0e-481b-8d13-3ae76cfd2fe7@foss.st.com>
 <e5ba1e14-4bbf-43e3-933a-fee6d4b90641@gmail.com>
 <CAHCN7xJ3Ktn+TnoOYdnNvKTddGCfLp4OQ+gM0WonWj-aqnsGuA@mail.gmail.com>
 <b03a7ddc-65c5-44c3-a563-d52ee938148a@gmail.com>
 <6d26d307-eb7a-43ad-b4f3-57f8ac7ce8f0@foss.st.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <6d26d307-eb7a-43ad-b4f3-57f8ac7ce8f0@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_061859_836297_855CBFD6 
X-CRM114-Status: GOOD (  32.82  )
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

SGkgSHVndWVzLAoKQW0gMjEuMTIuMjMgdW0gMTQ6NTUgc2NocmllYiBIdWd1ZXMgRlJVQ0hFVDoK
PiBIaSBBbGV4LAo+Cj4gT24gMTIvMjEvMjMgMTQ6NDYsIEFsZXggQmVlIHdyb3RlOgo+Pgo+PiBB
bSAyMS4xMi4yMyB1bSAxNDozOCBzY2hyaWViIEFkYW0gRm9yZDoKPj4+IE9uIFRodSwgRGVjIDIx
LCAyMDIzIGF0IDc6MzHigK9BTSBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4gd3JvdGU6
Cj4+Pj4gSGkgSHVndWVzLAo+Pj4+Cj4+Pj4gQW0gMjEuMTIuMjMgdW0gMTQ6MDggc2NocmllYiBI
dWd1ZXMgRlJVQ0hFVDoKPj4+Pj4gSGkgQWxleCwKPj4+Pj4KPj4+Pj4gVGhpcyBpcyBiZWNhdXNl
IFZERUMgYW5kIFZFTkMgYXJlIHR3byBzZXBhcmF0ZWQgSVBzIHdpdGggdGhlaXIgb3duCj4+Pj4+
IGhhcmR3YXJlIHJlc291cmNlcyBhbmQgbm8gbGlua3MgYmV0d2VlbiBib3RoLgo+Pj4+PiBPbiBm
dXR1cmUgU29DcywgVkRFQyBjYW4gc2hpcCBvbiBpdHMgb3duLCBzYW1lIGZvciBWRU5DLgo+Pj4+
Pgo+Pj4+IEkgdGhpbmsgdGhhdCdzIHdoYXQgdGhlIGRyaXZlciBpcy93YXMgZGVzaWduZWQgZm9y
IDopCj4+Pj4KPj4+PiBJIGRvbid0wqAgdGhpbmsgdGhlcmUgX2hhc18gdG8gYmUgYSBsaW5rIGJl
dHdlZW4gdmFyaWFudHMgaW4gdGhlIAo+Pj4+IHNhbWUgZmlsZS4KPj4+PiBGb3IgUm9ja2NoaXAg
d2Ugb25seSBoYWQgdGhlIGlzc3VlIHRoYXQgdGhlcmUgX2lzXyBhIGxpbmsgKHNoYXJlZAo+Pj4+
IHJlc291cmNlcykgYmV0d2VlbiBlbmNvZGVyIGFuZCBkZWNvZGVyIGFuZCB0aGV5IGhhZCAoZm9y
IHRoYXQgCj4+Pj4gcmVhc29uKSB0byBiZQo+Pj4+IGRlZmluZWQgaGFzIGEgX3NpbmdsZV8gdmFy
aWFudC4gQW5kIHRoZXJlIGlzIG5vIHJlYXNvbiB5b3UgY2FuIHNoaXAgCj4+Pj4gZGVjb2Rlcgo+
Pj4+IGFuZCBlbmNvZGVyIHNlcGVyYXRlZCB3aGVuIHlvdSBoYXZlIHR3byB2YXJpYW50cyAod2l0
aCBkaWZmZXJlbnQKPj4+PiBjb21wYXRpYmxlcykuCj4+Pj4gRm9yIFJvY2tjaGlwIGFuZCBpTVgg
dGhvc2UgZmlsZXMgYXJlIGV2ZW4gY29udGFpbmluZyB2YXJpYW50cyBmb3IgCj4+Pj4gY29tcGxl
dGx5Cj4+Pj4gZGlmZmVyZW50IGdlbmVyYXRpb25zIC8gZGlmZmVyZW50IFNvQ3MuIEkgaGFkIHRv
IGNsZWFudXAgdGhpcyBtZXNzIGZvcgo+Pj4gVGhlIGkuTVg4TSBNaW5pIGFuZCBQbHVzIGhhdmUg
ZGlmZmVyZW50IHBvd2VyIGRvbWFpbnMgZm9yIGVuY29kZXIgYW5kCj4+PiBkZWNvZGVycyBhcyB3
ZWxsIGFzIGRpZmZlcmVudCBjbG9ja3MuwqAgS2VlcGluZyB0aGVtIHNlcGFyYXRlIHdvdWxkCj4+
PiBhbG1vc3QgYmUgbmVjZXNzYXJ5Lgo+PiBJIGd1ZXNzIHRoZXJlIGlzIG1pc3N1bmRlcnN0YW5k
aW5nOiBJIGRpZG4ndCBzYXkgdGhlIHR3byBTVE0gdmFyaWFudHMKPj4gc2hvdWxkIGJlIG1lcmdl
ZCBpbiBvbmUgdmFyaWFudCwgYnV0IHRoZSB0d28gdmFyaWFudHMgc2hvdWxkIGJlIAo+PiB3aXRo
aW4gdGhlCj4+IHNhbWUgX2ZpbGVfLCBsaWtlIHRoZSBvdGhlciBwbGF0Zm9ybXMgYXJlIGRvaW5n
IDopCj4KPiBJIGhhdmUgdHdvIHNlcGFyYXRlZCBoYXJkd2FyZTogVkRFQyBhbmQgVkVOQywgbm90
IGEgc2luZ2xlIGJsb2NrIGxpa2UgCj4gIlZQVSIgZm9yIGV4YW1wbGUuIFNvIHdoYXQgbmFtZSBz
aG91bGQgaGF2ZSB0aGlzIGZpbGUgPwo+IE90aGVyIHBsYXRmb3JtcyBoYWQgYSBjb21tb24gZmls
ZSBiZWNhdXNlIHRoZXJlIHdhcyBhIGNvbW1vbiBibG9jayAKPiBlbWJlZGRpbmcgYm90aCBkZWNv
ZGVyIGFuZCBlbmNvZGVyLCBzb21ldGltZXMgd2l0aCBsaW5rcy9kZXBlbmRlbmNpZXMgCj4gYmV0
d2VlbiBib3RoLgo+IFNBTUE1RDQgaGFzIG9ubHkgYSBkZWNvZGVyLCBvbmx5IGEgc2luZ2xlIGZp
bGUgY2FsbGVkICJfdmRlY19ody5jIi4uLgo+IHNvIGl0IGlzIHF1aXRlIGxvZ2ljYWwgZm9yIG1l
IHRvIGhhdmUgb25lIGZpbGUgcGVyIGluZGVwZW5kZW50IElQLgo+Ck1heWJlIC0gYnV0IHRoYXQn
cyBub3Qgd2F5IHRoZSBkcml2ZXIgaXMgY3VycmVudGx5IG9yZ2FuemllZC4Kcm9ja2NoaXBfdnB1
X2h3LmMgYWxzbyBob2xkcyB2YXJpYW50cyB3aGljaCBoYXZlIG9ubHkgaGF2ZSBhIGRlY29kZXIg
YW5kCmFsc28gc29tZSB3aGljaCBvbmx5IGhhdmUgYSBlbmNvZGVyLiBTbyAidnB1IiBpcyBxdWl0
ZSBuZXV0cmFsLCBJIGd1ZXNzLiBJdApkb2Vzbid0IHNheSBhbnl0aGluZyBpZiBpdCBiZWxvbmdz
IHRvIGVuY29kZXIgb3IgZGVjb2Rlci4KV2hlbiBJIHdhcyBhZGRpbmcgdGhlIFJLMzA2NiB2YXJp
YW50IGEgSSB3YXMgZXZlbiBhc2tlZCB0byBhZGQgYSBleHBsaWNpdApjb21tZW50LCB3aHkgdGhp
cyBpbnRlZ3JhdGlvbiBjYW4ndCBiZSBzcGxpdHRlZCBpbiBlbmNvZGVyIGFuZCBkZWNvZGVyCnZh
cmlhbnQuCgpXZSB3ZXJlIGhhdmluZyBhIGEgbG90IG9mIHRoZXNlIHNwbGl0LXVwcyBpbiB0aGUg
ZWFybHkgZGF5cyBvZiBoYW50cm8KZHJpdmVyIGFuZCBpdCB3YXMgbm8gZnVuIHRvIGNsZWFuIHRo
ZW0gdXAuCgpBbGV4Cgo+Pj4gYWRhbQo+Pj4KPj4+PiBSb2NrY2hpcCBvbmNlIC0gYW5kIGl0IHdh
cyBubyBmdW4gOikgQW55d2F5czogSXQncyB1cCB0byB0aGUgCj4+Pj4gbWFpbnRhaW5lcnMgSQo+
Pj4+IGd1ZXNzIC0gSSBqdXN0IHdhbnRlZCB0byBhc2sgaWYgSSBtaXNzdW5kZXJzdGFuZCBzb21l
dGhpbmcgaGVyZS4KPj4+Pgo+Pj4+IEdyZWV0aW5ncywKPj4+Pgo+Pj4+IEFsZXgKPj4+Pgo+Pj4+
PiBIb3BpbmcgdGhhdCB0aGlzIGNsYXJpZnkuCj4+Pj4+Cj4+Pj4+IEJlc3QgcmVnYXJkcywKPj4+
Pj4gSHVndWVzLgo+Pj4+Pgo+Pj4+PiBPbiAxMi8yMS8yMyAxMzo0MCwgQWxleCBCZWUgd3JvdGU6
Cj4+Pj4+PiBIaSBIdWd1ZXMsIEhpIE5pY29sYXMsCj4+Pj4+Pgo+Pj4+Pj4gaXMgdGhlcmUgYW55
IHNwZWNpZmljIHJlYXNvbiBJJ20gbm90IHVuZGVyc3RhbmRpbmcgLyBzZWVpbmcgd2h5IHRoaXMK
Pj4+Pj4+IGlzIGFkZGVkIGluIHR3byBzZXBlcmF0ZSB2ZGVjKiAvIHZlbmMqIGZpbGVzIGFuZCBu
b3QgYSBzaW5nbGUgdnB1Kgo+Pj4+Pj4gZmlsZT8gSXMgaXQgb25seSBmb3IgdGhlIHNlcGVyYXRl
IGNsb2NrcyAoLW5hbWVzKSAvIGlycXMgKC1uYW1lcykgLwo+Pj4+Pj4gY2FsbGJhY2tzPyBUaG9z
ZSBhcmUgZGVmaW5lZCBwZXIgdmFyaWFudCBhbmQgcGVyZmVjdGx5IGZpdCBpbiBhCj4+Pj4+PiBz
aW5nbGUgZmlsZSBob2xkaW5nIG9uZSB2ZGVjIGFuZCBvbmUgdmVuYyB2YXJpYW50Lgo+Pj4+Pj4K
Pj4+Pj4+IEFsZXgKPj4+Pj4+Cj4+Pj4+PiBBbSAyMS4xMi4yMyB1bSAwOTo0NyBzY2hyaWViIEh1
Z3VlcyBGcnVjaGV0Ogo+Pj4+Pj4+IFRoaXMgcGF0Y2hzZXQgaW50cm9kdWNlcyBzdXBwb3J0IGZv
ciBWREVDIHZpZGVvIGhhcmR3YXJlIGRlY29kZXIKPj4+Pj4+PiBhbmQgVkVOQyB2aWRlbyBoYXJk
d2FyZSBlbmNvZGVyIG9mIFNUTWljcm9lbGVjdHJvbmljcyBTVE0zMk1QMjUKPj4+Pj4+PiBTb0Mg
c2VyaWVzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBpbml0aWFsIHN1cHBvcnQgaW1wbGVtZW50cyBI
MjY0IGRlY29kaW5nLCBWUDggZGVjb2RpbmcgYW5kCj4+Pj4+Pj4gSlBFRyBlbmNvZGluZy4KPj4+
Pj4+Pgo+Pj4+Pj4+IFRoaXMgaGFzIGJlZW4gdGVzdGVkIG9uIFNUTTMyTVAyNTdGLUVWMSBldmFs
dWF0aW9uIGJvYXJkLgo+Pj4+Pj4+Cj4+Pj4+Pj4gPT09PT09PT09PT0KPj4+Pj4+PiA9IGhpc3Rv
cnkgPQo+Pj4+Pj4+ID09PT09PT09PT09Cj4+Pj4+Pj4gdmVyc2lvbiA1Ogo+Pj4+Pj4+IMKgwqDC
oMKgIC0gUHJlY2lzZSB0aGF0IHZpZGVvIGRlY29kaW5nIGFzIGJlZW4gc3VjY2Vzc2Z1bGx5IHRl
c3RlZCAKPj4+Pj4+PiB1cCB0bwo+Pj4+Pj4+IGZ1bGwgSEQKPj4+Pj4+PiDCoMKgwqDCoCAtIEFk
ZCBOaWNvbGFzIER1ZnJlc25lIHJldmlld2VkLWJ5Cj4+Pj4+Pj4KPj4+Pj4+PiB2ZXJzaW9uIDQ6
Cj4+Pj4+Pj4gwqDCoMKgwqAgLSBGaXggY29tbWVudHMgZnJvbSBOaWNvbGFzIGFib3V0IGRyb3Bw
aW5nIGVuY29kZXIgcmF3IHN0ZXBzCj4+Pj4+Pj4KPj4+Pj4+PiB2ZXJzaW9uIDM6Cj4+Pj4+Pj4g
wqDCoMKgwqAgLSBGaXggcmVtYXJrcyBmcm9tIEtyenlzenRvZiBLb3psb3dza2k6Cj4+Pj4+Pj4g
wqDCoMKgwqDCoCAtIGRyb3AgIml0ZW1zIiwgd2Uga2VlcCBzaW1wbGUgZW51bSBpbiBzdWNoIGNh
c2UKPj4+Pj4+PiDCoMKgwqDCoMKgIC0gZHJvcCBzZWNvbmQgZXhhbXBsZSAtIGl0IGlzIHRoZSBz
YW1lIGFzIHRoZSBmaXJzdAo+Pj4+Pj4+IMKgwqDCoMKgIC0gRHJvcCB1bnVzZWQgbm9kZSBsYWJl
bHMgYXMgc3VnZ2VzdGVkIGJ5IENvbm9yIERvb2xleQo+Pj4+Pj4+IMKgwqDCoMKgIC0gUmV2aXNp
dCBtaW4vbWF4IHJlc29sdXRpb25zIGFzIHN1Z2dlc3RlZCBieSBOaWNvbGFzIER1ZnJlc25lCj4+
Pj4+Pj4KPj4+Pj4+PiB2ZXJzaW9uIDI6Cj4+Pj4+Pj4gwqDCoMKgwqAgLSBGaXggcmVtYXJrcyBm
cm9tIEtyenlzenRvZiBLb3psb3dza2kgb24gdjE6Cj4+Pj4+Pj4gwqDCoMKgwqDCoCAtIHNpbmds
ZSB2aWRlby1jb2RlYyBiaW5kaW5nIGZvciBib3RoIFZERUMvVkVOQwo+Pj4+Pj4+IMKgwqDCoMKg
wqAgLSBnZXQgcmlkIG9mICItbmFtZXMiCj4+Pj4+Pj4gwqDCoMKgwqDCoCAtIHVzZSBvZiBnZW5l
cmljIG5vZGUgbmFtZSAidmlkZW8tY29kZWMiCj4+Pj4+Pj4KPj4+Pj4+PiB2ZXJzaW9uIDE6Cj4+
Pj4+Pj4gwqDCoMKgIC0gSW5pdGlhbCBzdWJtaXNzaW9uCj4+Pj4+Pj4KPj4+Pj4+PiBIdWd1ZXMg
RnJ1Y2hldCAoNSk6Cj4+Pj4+Pj4gwqDCoMKgIGR0LWJpbmRpbmdzOiBtZWRpYTogRG9jdW1lbnQg
U1RNMzJNUDI1IFZERUMgJiBWRU5DIHZpZGVvIGNvZGVjcwo+Pj4+Pj4+IMKgwqDCoCBtZWRpYTog
aGFudHJvOiBhZGQgc3VwcG9ydCBmb3IgU1RNMzJNUDI1IFZERUMKPj4+Pj4+PiDCoMKgwqAgbWVk
aWE6IGhhbnRybzogYWRkIHN1cHBvcnQgZm9yIFNUTTMyTVAyNSBWRU5DCj4+Pj4+Pj4gwqDCoMKg
IGFybTY0OiBkdHM6IHN0OiBhZGQgdmlkZW8gZGVjb2RlciBzdXBwb3J0IHRvIHN0bTMybXAyNTUK
Pj4+Pj4+PiDCoMKgwqAgYXJtNjQ6IGR0czogc3Q6IGFkZCB2aWRlbyBlbmNvZGVyIHN1cHBvcnQg
dG8gc3RtMzJtcDI1NQo+Pj4+Pj4+Cj4+Pj4+Pj4gwqDCoCAuLi4vbWVkaWEvc3Qsc3RtMzJtcDI1
LXZpZGVvLWNvZGVjLnlhbWzCoMKgwqDCoMKgwqAgfMKgIDUwICsrKysrKysrCj4+Pj4+Pj4gwqDC
oCBhcmNoL2FybTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAyNTEuZHRzacKgwqDCoMKgwqDCoMKgIHzC
oCAxMiArKwo+Pj4+Pj4+IMKgwqAgYXJjaC9hcm02NC9ib290L2R0cy9zdC9zdG0zMm1wMjU1LmR0
c2nCoMKgwqDCoMKgwqDCoCB8wqAgMTcgKysrCj4+Pj4+Pj4gwqDCoCBkcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL0tjb25maWfCoMKgwqAgfMKgIDE0ICsrLQo+Pj4+Pj4+IMKgwqAg
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9NYWtlZmlsZcKgwqAgfMKgwqAgNCAr
Cj4+Pj4+Pj4gwqDCoCAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
wqDCoCB8wqDCoCA0ICsKPj4+Pj4+PiDCoMKgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9faHcuaMKgwqDCoCB8wqDCoCAyICsKPj4+Pj4+PiDCoMKgIC4uLi9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9zdG0zMm1wMjVfdmRlY19ody5jwqAgfMKgIDkyIAo+Pj4+Pj4+ICsrKysrKysr
KysrKysrCj4+Pj4+Pj4gwqDCoCAuLi4vcGxhdGZvcm0vdmVyaXNpbGljb24vc3RtMzJtcDI1X3Zl
bmNfaHcuY8KgIHwgMTE1Cj4+Pj4+Pj4gKysrKysrKysrKysrKysrKysrCj4+Pj4+Pj4gwqDCoCA5
IGZpbGVzIGNoYW5nZWQsIDMwNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4+Pj4+
IMKgwqAgY3JlYXRlIG1vZGUgMTAwNjQ0Cj4+Pj4+Pj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21lZGlhL3N0LHN0bTMybXAyNS12aWRlby1jb2RlYy55YW1sIAo+Pj4+Pj4+Cj4+
Pj4+Pj4gwqDCoCBjcmVhdGUgbW9kZSAxMDA2NDQKPj4+Pj4+PiBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92ZGVjX2h3LmMKPj4+Pj4+PiDCoMKgIGNyZWF0ZSBt
b2RlIDEwMDY0NAo+Pj4+Pj4+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vc3Rt
MzJtcDI1X3ZlbmNfaHcuYwo+Pj4+Pj4+Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gSHVndWVzLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
