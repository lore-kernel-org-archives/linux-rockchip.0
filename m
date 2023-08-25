Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1C2AC3DA6F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 15:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGwtqmeRRbg/jR+Q0LbY7wg95xIn2G3LBx8xDwsP6qA=; b=g9zaV+yZnePs32
	qutYEieakbQUJotlYVV25KSDlu6GvW9aA4YeAvcseiGoTos7ymYQXQOpZoWVo1ESm4DyJ6GH9mqKm
	Xg7kpfALpk2kGKjhLyJc4S9YMuZ/3e2YcTG0TO8B1eSz8oo21d4eQ9NV90gaY0XOxiuQ7OBlq3Dv+
	TE1Ch3AcEs0ZWfl9R4ZuXv7HbVrYjPPgt26juJsAhY9914q4HVoFlAm1ouiJ0TIzmIOgqqXREm35O
	tDeuHkBGNhZCjYKUJC84b6zj9opJVqRXKrtTTrAHciHuo4+c45hn3aoAJxoKNtc42dumQuFPFv12a
	q0l13BpnIYFbH7vPiccQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZYpP-005grT-39;
	Fri, 25 Aug 2023 15:34:27 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZYpL-005gqo-1t;
	Fri, 25 Aug 2023 15:34:25 +0000
Received: from [IPV6:2a01:e0a:120:3210:2dee:15f0:cfc3:3cd5] (unknown [IPv6:2a01:e0a:120:3210:2dee:15f0:cfc3:3cd5])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7FDCE660725E;
	Fri, 25 Aug 2023 16:34:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1692977659;
	bh=CBKe/NVdZbzitVrTSsyh2xKdG8S8gYJrAaysQDniztE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YlnB7ll7pJGfXX++LNsPl6V43qmCwf0p3rjW0MUYZy5/x+id10SMY7HQFDJfPWJdp
	 OVnwwh8BoN4p+r9sAnfjGIY1MQOe0SKxuI19lrf/bYnmoF/9IzNCDHDt/Vj9Jfa7Qn
	 qUJvbG4tD3L2ZEHygCL+QAu5abf5nk1uGsfkbndYzxL2wN6BcyVXOdXp1xgMQYUGIq
	 9rON2LnbBv8pQSc5rI7vUwVJu2gZX/J1BepAAvhxVN6fgZ/d3mdmS/Z9zVljRa/5gE
	 al+qg8yGstW6qyTxtQ9oVOj0yqd0FqELCVx0k3+fTqAsH2R83FRcs/2Fae39CrVd6/
	 1ZcrTqNEmmE8Q==
Message-ID: <d4121940-e19f-8ed9-663b-01a4bbab0df1@collabora.com>
Date: Fri, 25 Aug 2023 17:34:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v5 10/10] media: v4l2: Add mem2mem helpers for DELETE_BUFS
 ioctl
To: kernel test robot <lkp@intel.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: oe-kbuild-all@lists.linux.dev, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel@collabora.com
References: <20230824092133.39510-11-benjamin.gaignard@collabora.com>
 <202308251828.fSyIXACx-lkp@intel.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <202308251828.fSyIXACx-lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_083423_902055_27065944 
X-CRM114-Status: GOOD (  14.87  )
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

CkxlIDI1LzA4LzIwMjMgw6AgMTI6MjksIGtlcm5lbCB0ZXN0IHJvYm90IGEgw6ljcml0wqA6Cj4g
SGkgQmVuamFtaW4sCgpEYW1uZWQgSSBoYXZlIGZvcmdvdCB0aGlzIGNvbmZpZ3VyYXRpb24gZmxh
ZyB3aGVuIHJlYmFzaW5nIG15IGNvZGUgYWZ0ZXIgCmhvbGlkYXlzLi4uCgpJdCB3aWxsIGJlIGZp
eGVkIGZvciB2NiBidXQgSSB3aWxsIHdhaXQgZm9yIG1vcmUgY29tbWVudHMgYmVmb3JlIHNlbmQg
aXQuCgpSZWdhcmRzLAoKQmVuamFtaW4KCj4KPiBrZXJuZWwgdGVzdCByb2JvdCBub3RpY2VkIHRo
ZSBmb2xsb3dpbmcgYnVpbGQgZXJyb3JzOgo+Cj4gW2F1dG8gYnVpbGQgdGVzdCBFUlJPUiBvbiBu
ZXh0LTIwMjMwODI0XQo+IFthbHNvIGJ1aWxkIHRlc3QgRVJST1Igb24gdjYuNS1yYzddCj4gW2Nh
bm5vdCBhcHBseSB0byBsaW51cy9tYXN0ZXIgdjYuNS1yYzcgdjYuNS1yYzYgdjYuNS1yYzVdCj4g
W0lmIHlvdXIgcGF0Y2ggaXMgYXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIGtpbmRseSBk
cm9wIHVzIGEgbm90ZS4KPiBBbmQgd2hlbiBzdWJtaXR0aW5nIHBhdGNoLCB3ZSBzdWdnZXN0IHRv
IHVzZSAnLS1iYXNlJyBhcyBkb2N1bWVudGVkIGluCj4gaHR0cHM6Ly9naXQtc2NtLmNvbS9kb2Nz
L2dpdC1mb3JtYXQtcGF0Y2gjX2Jhc2VfdHJlZV9pbmZvcm1hdGlvbl0KPgo+IHVybDogICAgaHR0
cHM6Ly9naXRodWIuY29tL2ludGVsLWxhYi1sa3AvbGludXgvY29tbWl0cy9CZW5qYW1pbi1HYWln
bmFyZC9tZWRpYS12aWRlb2J1ZjItUmV3b3JrLW9mZnNldC1jb29raWUtZW5jb2RpbmctcGF0dGVy
bi8yMDIzMDgyNC0xNzI0MTYKPiBiYXNlOiAgIG5leHQtMjAyMzA4MjQKPiBwYXRjaCBsaW5rOiAg
ICBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMwODI0MDkyMTMzLjM5NTEwLTExLWJlbmph
bWluLmdhaWduYXJkJTQwY29sbGFib3JhLmNvbQo+IHBhdGNoIHN1YmplY3Q6IFtQQVRDSCB2NSAx
MC8xMF0gbWVkaWE6IHY0bDI6IEFkZCBtZW0ybWVtIGhlbHBlcnMgZm9yIERFTEVURV9CVUZTIGlv
Y3RsCj4gY29uZmlnOiBhbHBoYS1yYW5kY29uZmlnLXIwMDUtMjAyMzA4MjUgKGh0dHBzOi8vZG93
bmxvYWQuMDEub3JnLzBkYXktY2kvYXJjaGl2ZS8yMDIzMDgyNS8yMDIzMDgyNTE4MjguZlN5SVhB
Q3gtbGtwQGludGVsLmNvbS9jb25maWcpCj4gY29tcGlsZXI6IGFscGhhLWxpbnV4LWdjYyAoR0ND
KSAxMy4yLjAKPiByZXByb2R1Y2U6IChodHRwczovL2Rvd25sb2FkLjAxLm9yZy8wZGF5LWNpL2Fy
Y2hpdmUvMjAyMzA4MjUvMjAyMzA4MjUxODI4LmZTeUlYQUN4LWxrcEBpbnRlbC5jb20vcmVwcm9k
dWNlKQo+Cj4gSWYgeW91IGZpeCB0aGUgaXNzdWUgaW4gYSBzZXBhcmF0ZSBwYXRjaC9jb21taXQg
KGkuZS4gbm90IGp1c3QgYSBuZXcgdmVyc2lvbiBvZgo+IHRoZSBzYW1lIHBhdGNoL2NvbW1pdCks
IGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZ3MKPiB8IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCBy
b2JvdCA8bGtwQGludGVsLmNvbT4KPiB8IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
b2Uta2J1aWxkLWFsbC8yMDIzMDgyNTE4MjguZlN5SVhBQ3gtbGtwQGludGVsLmNvbS8KPgo+IEFs
bCBlcnJvcnMgKG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+KToKPgo+Pj4gZHJpdmVycy9tZWRpYS90
ZXN0LWRyaXZlcnMvdmltMm0uYzo5NjM6MTA6IGVycm9yOiAnY29uc3Qgc3RydWN0IHY0bDJfaW9j
dGxfb3BzJyBoYXMgbm8gbWVtYmVyIG5hbWVkICd2aWRpb2NfZGVsZXRlX2J1Zic7IGRpZCB5b3Ug
bWVhbiAndmlkaW9jX2RlbGV0ZV9idWZzJz8KPiAgICAgICA5NjMgfCAgICAgICAgIC52aWRpb2Nf
ZGVsZXRlX2J1ZiAgICAgID0gdjRsMl9tMm1faW9jdGxfZGVsZXRlX2J1ZiwKPiAgICAgICAgICAg
fCAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fgo+ICAgICAgICAgICB8ICAgICAgICAgIHZpZGlv
Y19kZWxldGVfYnVmcwo+Pj4gZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmltMm0uYzo5NjM6
MzU6IGVycm9yOiAndjRsMl9tMm1faW9jdGxfZGVsZXRlX2J1ZicgdW5kZWNsYXJlZCBoZXJlIChu
b3QgaW4gYSBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiAndjRsMl9tMm1faW9jdGxfZGVsZXRlX2J1
ZnMnPwo+ICAgICAgIDk2MyB8ICAgICAgICAgLnZpZGlvY19kZWxldGVfYnVmICAgICAgPSB2NGwy
X20ybV9pb2N0bF9kZWxldGVfYnVmLAo+ICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICAgICAgICAgIHwgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHY0bDJfbTJtX2lvY3RsX2RlbGV0ZV9idWZz
Cj4KPgo+IHZpbSArOTYzIGRyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpbTJtLmMKPgo+ICAg
ICA5NDIJCj4gICAgIDk0MwlzdGF0aWMgY29uc3Qgc3RydWN0IHY0bDJfaW9jdGxfb3BzIHZpbTJt
X2lvY3RsX29wcyA9IHsKPiAgICAgOTQ0CQkudmlkaW9jX3F1ZXJ5Y2FwCT0gdmlkaW9jX3F1ZXJ5
Y2FwLAo+ICAgICA5NDUJCj4gICAgIDk0NgkJLnZpZGlvY19lbnVtX2ZtdF92aWRfY2FwID0gdmlk
aW9jX2VudW1fZm10X3ZpZF9jYXAsCj4gICAgIDk0NwkJLnZpZGlvY19lbnVtX2ZyYW1lc2l6ZXMg
PSB2aWRpb2NfZW51bV9mcmFtZXNpemVzLAo+ICAgICA5NDgJCS52aWRpb2NfZ19mbXRfdmlkX2Nh
cAk9IHZpZGlvY19nX2ZtdF92aWRfY2FwLAo+ICAgICA5NDkJCS52aWRpb2NfdHJ5X2ZtdF92aWRf
Y2FwCT0gdmlkaW9jX3RyeV9mbXRfdmlkX2NhcCwKPiAgICAgOTUwCQkudmlkaW9jX3NfZm10X3Zp
ZF9jYXAJPSB2aWRpb2Nfc19mbXRfdmlkX2NhcCwKPiAgICAgOTUxCQo+ICAgICA5NTIJCS52aWRp
b2NfZW51bV9mbXRfdmlkX291dCA9IHZpZGlvY19lbnVtX2ZtdF92aWRfb3V0LAo+ICAgICA5NTMJ
CS52aWRpb2NfZ19mbXRfdmlkX291dAk9IHZpZGlvY19nX2ZtdF92aWRfb3V0LAo+ICAgICA5NTQJ
CS52aWRpb2NfdHJ5X2ZtdF92aWRfb3V0CT0gdmlkaW9jX3RyeV9mbXRfdmlkX291dCwKPiAgICAg
OTU1CQkudmlkaW9jX3NfZm10X3ZpZF9vdXQJPSB2aWRpb2Nfc19mbXRfdmlkX291dCwKPiAgICAg
OTU2CQo+ICAgICA5NTcJCS52aWRpb2NfcmVxYnVmcwkJPSB2NGwyX20ybV9pb2N0bF9yZXFidWZz
LAo+ICAgICA5NTgJCS52aWRpb2NfcXVlcnlidWYJPSB2NGwyX20ybV9pb2N0bF9xdWVyeWJ1ZiwK
PiAgICAgOTU5CQkudmlkaW9jX3FidWYJCT0gdjRsMl9tMm1faW9jdGxfcWJ1ZiwKPiAgICAgOTYw
CQkudmlkaW9jX2RxYnVmCQk9IHY0bDJfbTJtX2lvY3RsX2RxYnVmLAo+ICAgICA5NjEJCS52aWRp
b2NfcHJlcGFyZV9idWYJPSB2NGwyX20ybV9pb2N0bF9wcmVwYXJlX2J1ZiwKPiAgICAgOTYyCQku
dmlkaW9jX2NyZWF0ZV9idWZzCT0gdjRsMl9tMm1faW9jdGxfY3JlYXRlX2J1ZnMsCj4gICA+IDk2
MwkJLnZpZGlvY19kZWxldGVfYnVmCT0gdjRsMl9tMm1faW9jdGxfZGVsZXRlX2J1ZiwKPiAgICAg
OTY0CQkudmlkaW9jX2V4cGJ1ZgkJPSB2NGwyX20ybV9pb2N0bF9leHBidWYsCj4gICAgIDk2NQkK
PiAgICAgOTY2CQkudmlkaW9jX3N0cmVhbW9uCT0gdjRsMl9tMm1faW9jdGxfc3RyZWFtb24sCj4g
ICAgIDk2NwkJLnZpZGlvY19zdHJlYW1vZmYJPSB2NGwyX20ybV9pb2N0bF9zdHJlYW1vZmYsCj4g
ICAgIDk2OAkKPiAgICAgOTY5CQkudmlkaW9jX3N1YnNjcmliZV9ldmVudCA9IHY0bDJfY3RybF9z
dWJzY3JpYmVfZXZlbnQsCj4gICAgIDk3MAkJLnZpZGlvY191bnN1YnNjcmliZV9ldmVudCA9IHY0
bDJfZXZlbnRfdW5zdWJzY3JpYmUsCj4gICAgIDk3MQl9Owo+ICAgICA5NzIJCj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
