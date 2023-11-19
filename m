Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ECD6C072A2
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 20:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRI+yCPDfb68ejl+WHzNXOJu3hOzdgYtrOBfIATmxmU=; b=ZQqDL7BB7eUU/x
	VDmy9NtqaUi7kjQmuLC77OoQYvGr7hXkmRvgt9TLvl5vvDzh96HZc6QofhHMo9PbY8uHhRDYecAWY
	WGBFnWHBDzZejnbU5fMPaCVBeQV3En7TL4r4+GgGuSty//JDdIZvMv1N4tAF99Q14wEq9VGeEUNNT
	j1x5JlQqYqYTPFjVyrErdPO7UFTh+SP/sKF0Ndi9btzvz+L1kxCrBUfUtf9dx334wwOND92pYKuUq
	6BJjwk0QaAd6vdjNZ3vj9glyVWz5nvKyVDSpUVE7OO6V0X7mHI131KwynLBVLvkrKIdgv3h95MxVp
	2WkPa85X1GdcnYo7zUcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4olx-00AeuI-2A;
	Sun, 19 Nov 2023 20:52:05 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4olt-00Aeti-0D;
	Sun, 19 Nov 2023 20:52:04 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-507975d34e8so5184223e87.1;
        Sun, 19 Nov 2023 12:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700427117; x=1701031917; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uu9XWxOM4gpFfh/NFjHiFzJcxz5jo+VBF/7USM4yGiU=;
        b=C+qb2661jgfwUCEJsKaumjfDqcHfRagex770W6quwVvFfE4ZpBbNwO62aHXzxUdS1P
         fbX3ZrpWFaNGR7+UznFgzwhozoO8n3FVSpvZ/6ddA7tySm3R0lVMGIsseYbiW0MPd9so
         lUeMMOJAACUjyD4UCYVgyTRLYkGM0/P6c9uXxUWtRA8M1C3I5ECfcPHLBa0ZSfORdgv0
         4vGquZhjwfWE2MAh1ezRxGzzASihfzF/HcWvY0kL8VMxz82QLrqegX+xCFhJdmZnTvhB
         x2Iow6VafXWGLX6Ak+3dfSMAYjEY2PT9AOLj6JJciOIbolHyymd4dYpg4saNuY+kr5j/
         27Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700427117; x=1701031917;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uu9XWxOM4gpFfh/NFjHiFzJcxz5jo+VBF/7USM4yGiU=;
        b=xNLjCT7cYvmYcIYEIcWrIuWxGnt+UO1FTyGuw3IaloIU8lVdX4/1JQfnIARxTBtE0R
         sxcqQskIEBq+YJ01Ut/pxjxmSXTqVyqTWI+NTxrP4ce9gidw3tenUkyJhAOIEAPqwe1P
         EBVqrzqMWcKv/c7SooSeGSY7NfD39N7iHkjtKCpAn4AhuU265nsR8f0h41Oomdyq9FYG
         OdUjYMOCzB6/KG9GK4tUWHaBB5ljXa+7L98M8L95XbhfytLB5TF+3M9KcDXv7lwBKV5r
         /CMnpyMUd5d2YCapdfDU0OqJKmp0pOMAiwS9rDZz6B6s2h/2q6vaiMQBAZFfJ8mA8ZjD
         WSHw==
X-Gm-Message-State: AOJu0Yz8otXFJQ2gfaHaAIBgkGftHv9X64pB6xNtfly0WA5DAHheIWJN
	YB5KzNFGAiMzvjDrwDsJNMc=
X-Google-Smtp-Source: AGHT+IGkcUNAKJspmSgawNPYtDADP2ghxS0J5OcNfogBhKT1Lxa0wlmDoysvJFNbsGkprNkSEa8XVg==
X-Received: by 2002:ac2:5312:0:b0:507:9a93:84df with SMTP id c18-20020ac25312000000b005079a9384dfmr4300199lfh.25.1700427116798;
        Sun, 19 Nov 2023 12:51:56 -0800 (PST)
Received: from ?IPV6:2a01:c23:bde4:3e00:9589:aeb1:adc4:e0f? (dynamic-2a01-0c23-bde4-3e00-9589-aeb1-adc4-0e0f.c23.pool.telefonica.de. [2a01:c23:bde4:3e00:9589:aeb1:adc4:e0f])
        by smtp.googlemail.com with ESMTPSA id a16-20020a50e710000000b00532eba07773sm2861341edn.25.2023.11.19.12.51.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Nov 2023 12:51:56 -0800 (PST)
Message-ID: <bd4be069-b86d-4a69-aa0f-71257f93691f@gmail.com>
Date: Sun, 19 Nov 2023 21:51:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 RESEND 00/20] remove I2C_CLASS_DDC support
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Helge Deller <deller@gmx.de>, Wolfram Sang <wsa@kernel.org>,
 intel-gfx@lists.freedesktop.org
Cc: linux-i2c@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
 linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu
 <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>
References: <20231119112826.5115-1-hkallweit1@gmail.com>
 <e40b913f-379f-4b6e-a0d2-844887a17284@gmx.de>
 <b336a8e3-44e7-4f56-a950-5155675b5628@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <b336a8e3-44e7-4f56-a950-5155675b5628@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_125201_109295_72857045 
X-CRM114-Status: GOOD (  13.12  )
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

T24gMTkuMTEuMjAyMyAyMTo0OCwgSGVpbmVyIEthbGx3ZWl0IHdyb3RlOgo+IE9uIDE5LjExLjIw
MjMgMjE6MjgsIEhlbGdlIERlbGxlciB3cm90ZToKPj4gT24gMTEvMTkvMjMgMTI6MjgsIEhlaW5l
ciBLYWxsd2VpdCB3cm90ZToKPj4+IEFmdGVyIHJlbW92YWwgb2YgdGhlIGxlZ2FjeSBFRVBST00g
ZHJpdmVyIGFuZCBJMkNfQ0xBU1NfRERDIHN1cHBvcnQgaW4KPj4+IG9scGNfZGNvbiB0aGVyZSdz
IG5vIGkyYyBjbGllbnQgZHJpdmVyIGxlZnQgc3VwcG9ydGluZyBJMkNfQ0xBU1NfRERDLgo+Pj4g
Q2xhc3MtYmFzZWQgZGV2aWNlIGF1dG8tZGV0ZWN0aW9uIGlzIGEgbGVnYWN5IG1lY2hhbmlzbSBh
bmQgc2hvdWxkbid0Cj4+PiBiZSB1c2VkIGluIG5ldyBjb2RlLiBTbyB3ZSBjYW4gcmVtb3ZlIHRo
aXMgY2xhc3MgY29tcGxldGVseSBub3cuCj4+Pgo+Pj4gUHJlZmVyYWJseSB0aGlzIHNlcmllcyBz
aG91bGQgYmUgYXBwbGllZCB2aWEgdGhlIGkyYyB0cmVlLgo+Pgo+PiBUaGUgZmJkZXYgY2hhbmdl
cyBsb29rIGF0IGxlYXN0IG9rIHNvIGZhciwgc286Cj4+IEFja2VkLWJ5OiBIZWxnZSBEZWxsZXIg
PGRlbGxlckBnbXguZGU+wqDCoCAjZmJkZXYKPj4KPiBJIHRoaW5rIHRoaXMgcmVmZXJzIHRvIHBh
dGNoIDUgb2YgdGhlIHNlcmllcy4gQ291bGQgeW91IHBsZWFzZSByZXBseQo+IHRvIHBhdGNoIDUg
aW5zdGVhZCBvZiB0aGUgY292ZXIgbGV0dGVyIHdpdGggeW91ciBhY2tlZC1ieSBzbyB0aGF0Cj4g
cGF0Y2h3b3JrIGdldHMgaXQgcmlnaHQ/IFRoYW5rcyEKPiAKU29ycnksIGp1c3QgbG9va2VkIGF0
IHdoZXJlIHlvdSBhcmUgaW4gVG8sIG5vdCBDYy4KU28geW91ciBhY2sgaW5jbHVkZXMgcGF0Y2hl
cyA2LCA5LCAxMCwgMTM/Cgo+Pgo+Pj4gdjI6Cj4+PiAtIGNoYW5nZSB0YWcgaW4gY29tbWl0IHN1
YmplY3Qgb2YgcGF0Y2ggMDMKPj4+IC0gYWRkIGFjayB0YWdzCj4+PiB2MzoKPj4+IC0gZml4IGEg
Y29tcGlsZSBlcnJvciBpbiBwYXRjaCA1Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSGVpbmVyIEth
bGx3ZWl0IDxoa2FsbHdlaXQxQGdtYWlsLmNvbT4KPj4+Cj4+PiAtLS0KPj4+Cj4+PiDCoCBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaTJjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9h
bWRncHVfZG0uYyB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfaTJj
LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuY8KgwqDCoMKgwqDC
oMKgwqAgfMKgwqDCoCAxIC0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9kcF9o
ZWxwZXIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+PiDCoCBkcml2ZXJzL2dw
dS9kcm0vZGlzcGxheS9kcm1fZHBfbXN0X3RvcG9sb2d5LmPCoMKgwqDCoCB8wqDCoMKgIDEgLQo+
Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9jZHZfaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9pbnRl
bF9nbWJ1cy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS9nbWE1MDAvb2FrdHJhaWxfaGRtaV9pMmMuY8KgwqDCoMKgwqDCoMKgIHzC
oMKgwqAgMSAtCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vZ21hNTAwL3BzYl9pbnRlbF9zZHZvLmPC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2hp
c2lsaWNvbi9oaWJtYy9oaWJtY19kcm1faTJjLmPCoMKgIHzCoMKgwqAgMSAtCj4+PiDCoCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmPCoMKgwqDCoMKgwqDCoCB8wqDC
oMKgIDEgLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmPC
oMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vbG9vbmdz
b24vbHNkY19pMmMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaV9kZGMuY8KgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgwqAgMSAtCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vbWdhZzIwMC9tZ2FnMjAw
X2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vbXNtL2hkbWkvaGRtaV9pMmMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgwqDCoCAxIC0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2kyYy5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDC
oCAxIC0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5jwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL3N1bjRp
L3N1bjRpX2hkbWlfaTJjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+PiDC
oCBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJfZGRjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy92aWRlby9mYmRldi9jeWJlcjIw
MDBmYi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+IMKg
IGRyaXZlcnMvdmlkZW8vZmJkZXYvaTc0MGZiLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvaW50
ZWxmYi9pbnRlbGZiX2kyYy5jwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxNSArKysrKy0tLS0tLS0t
LS0KPj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvbWF0cm94L2kyYy1tYXRyb3hmYi5jwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoCAxMiArKysrLS0tLS0tLS0KPj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJk
ZXYvczNmYi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy92aWRlby9mYmRldi90ZGZ4ZmIuY8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVy
cy92aWRlby9mYmRldi90cmlkZW50ZmIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoMKgIDEgLQo+Pj4gwqAgZHJpdmVycy92aWRlby9mYmRldi92aWEvdmlhX2kyYy5j
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+IMKgIGluY2x1
ZGUvbGludXgvaTJjLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+IMKgIDMxIGZpbGVzIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pCj4+Pgo+Pgo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
