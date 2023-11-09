Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDD25C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 12:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ss9kzMSZIZDrz9YpEssiDUBMJoPB46jzZNGGBcNIgNM=; b=d6rSpVjwNcN+Ql
	mugKeE2L0vVJ32hrovOXE/pqE9pAdiUFJGQhzaxkMYRnYnBAhndo4GZsLG8WpAoaUUkHCqhn2MXQe
	QfhaoR33wFQlZRP+dBGfhWK0AaGZI+tWWDlhfYO1JLgxQUlsUyvi6VgILRKDK6pyIsN05gaGBMVTM
	xtmKvGm4ek5Ce11TmgAYhKc5z0XElwjjRfzLTScgbQukqRdm/w0utEeRhPh9LPCnguTrKvdjCBHn4
	QZZBvDoYloH0ZOwCWicekOlQj0JJkSlxwGRQXvtubNYpZFYrvErTHOcsn7ce4DY5pmqbWlk4b0+7u
	Ymh+wVqUh9ujzhZVikDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r14Bl-006K9s-01;
	Thu, 09 Nov 2023 12:31:13 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r14Bh-006K8b-0f;
	Thu, 09 Nov 2023 12:31:10 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7593E660747A;
	Thu,  9 Nov 2023 12:31:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699533067;
	bh=QHgtkMbPR42XKzSt/d+F/ArcOpNb7M22RF22MC40QeM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jBIwjCKMOyEVutf0k2TMxWSVOmm3Cghe1TCrrR5c6GflI/qkDOAlYNLENryacWSA4
	 eTJ5LKYeM/TzU+645E9Zfll4bF96thUjF619GeowEpaQi08Fn+yWnkJuLbsHwTxP5S
	 5FF5s0iPPpyXbuR2NC4h5FF7rbUFkErs2EYIkeJ3QD6d6iJ8B3xK+NtxBYFsGMGefw
	 VAMnREmoHUj4VHHKldKmK6FssrknRoE9gg3ftextkd7l3LVxp7zaheXW53db6/7v+Z
	 HBw8TS3kKXEifNJE0DdNRKBgc8WiEXT+ZulaQRey88yBiUVKAb1vnWjefmOHWin7wW
	 NlqHrKsePhs7w==
Message-ID: <d020a006-e413-4004-82ff-0fe7e0894df8@collabora.com>
Date: Thu, 9 Nov 2023 13:31:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 45/56] media: test-drivers: vivid: Increase max
 supported buffers for capture queues
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-46-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-46-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_043109_373391_3F901C26 
X-CRM114-Status: GOOD (  13.72  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IENo
YW5nZSB0aGUgbWF4aW11bSBudW1iZXIgb2YgYnVmZmVycyBvZiBzb21lIGNhcHR1cmUgcXVldWVz
IGluIG9yZGVyCj4gdG8gdGVzdCBtYXhfbnVtX2J1ZmZlcnMgZmllbGQuCj4gCj4gQWxsb3cgdG8g
YWxsb2NhdGUgdXAgdG86Cj4gLSA2NCBidWZmZXJzIGZvciB2aWRlbyBjYXB0dXJlIHF1ZXVlLgo+
IC0gMTAyNCBidWZmZXJzIGZvciBzZHIgY2FwdHVyZSBxdWV1ZS4KPiAtIDMyNzY4IGJ1ZmZlcnMg
Zm9yIHZiaSBjYXB0dXJlIHF1ZXVlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEFuZHJ6
ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAgZHJp
dmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdml2aWQvdml2aWQtY29yZS5jIHwgMTQgKysrKysrKysr
KysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpdmlkL3ZpdmlkLWNvcmUuYyBiL2RyaXZl
cnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpdmlkL3ZpdmlkLWNvcmUuYwo+IGluZGV4IDM5NGM5Zjgx
ZWE3Mi4uMzUzZjAzNWZjZDE5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2
ZXJzL3ZpdmlkL3ZpdmlkLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJz
L3ZpdmlkL3ZpdmlkLWNvcmUuYwo+IEBAIC04NzYsNiArODc2LDIwIEBAIHN0YXRpYyBpbnQgdml2
aWRfY3JlYXRlX3F1ZXVlKHN0cnVjdCB2aXZpZF9kZXYgKmRldiwKPiAgIAlxLT50eXBlID0gYnVm
X3R5cGU7Cj4gICAJcS0+aW9fbW9kZXMgPSBWQjJfTU1BUCB8IFZCMl9ETUFCVUY7Cj4gICAJcS0+
aW9fbW9kZXMgfD0gVjRMMl9UWVBFX0lTX09VVFBVVChidWZfdHlwZSkgPyAgVkIyX1dSSVRFIDog
VkIyX1JFQUQ7Cj4gKwo+ICsJLyoKPiArCSAqIFRoZSBtYXhpbXVtIG51bWJlciBvZiBidWZmZXJz
IGlzIDMyNzY4IGlmIFBBR0VfU0hJRlQgPT0gMTIsCj4gKwkgKiBzZWUgYWxzbyBNQVhfQlVGRkVS
X0lOREVYIGluIHZpZGVvYnVmMi1jb3JlLmMuIEl0IHdpbGwgYmUgbGVzcyBpZgo+ICsJICogUEFH
RV9TSElGVCA+IDEyLCBidXQgdGhlbiBtYXhfbnVtX2J1ZmZlcnMgd2lsbCBiZSBjbGFtcGVkIGJ5
Cj4gKwkgKiB2aWRlb2J1ZjItY29yZS5jIHRvIE1BWF9CVUZGRVJfSU5ERVguCj4gKwkgKi8KPiAr
CWlmIChidWZfdHlwZSA9PSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkUpCj4gKwkJcS0+bWF4
X251bV9idWZmZXJzID0gNjQ7Cj4gKwlpZiAoYnVmX3R5cGUgPT0gVjRMMl9CVUZfVFlQRV9TRFJf
Q0FQVFVSRSkKPiArCQlxLT5tYXhfbnVtX2J1ZmZlcnMgPSAxMDI0Owo+ICsJaWYgKGJ1Zl90eXBl
ID09IFY0TDJfQlVGX1RZUEVfVkJJX0NBUFRVUkUpCj4gKwkJcS0+bWF4X251bV9idWZmZXJzID0g
MzI3Njg7Cj4gKwo+ICAgCWlmIChhbGxvY2F0b3JzW2Rldi0+aW5zdF0gIT0gMSkKPiAgIAkJcS0+
aW9fbW9kZXMgfD0gVkIyX1VTRVJQVFI7Cj4gICAJcS0+ZHJ2X3ByaXYgPSBkZXY7CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
