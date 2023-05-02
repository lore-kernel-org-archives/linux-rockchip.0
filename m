Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7631DC77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 12:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PT/V0K7PbqPAlpPLZXDxxsoOdiCBB6YWjFn8PQhxask=; b=A4S+XMSWJXeufr
	oIvgoSLdtQGuw2ftOEO2+KLVcorBn1tPcYD01rWh3sQoEzp6xfyaqMASkIt7sE4fqwtZEB4ED1MNh
	1ZTudN+REGsSzYcvOG6M1fOfWqxRm4fz+Dun4VufSrMLZJjm0IutyJuGwDlZHABQu/BeC9k/0mhOW
	aHsStI2jS2FSH2t4DXzPGwF+qeJpPHx0at+X3X0L9cEqLUgurX5BeodQgolANKrvZazulIdjFN8d3
	p7R6AZ+RK4zNUAwPnqByIbsdYKTQqiBc0x/thwBx/6jLhoQU9cxHUSowURWkaC7O0AYhGwNc1weni
	+SdDVUDwNYfQKF27Fkbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptpJk-001U7J-06;
	Tue, 02 May 2023 12:41:16 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptpJg-001U4a-0y;
	Tue, 02 May 2023 12:41:13 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E9F176602097;
	Tue,  2 May 2023 13:41:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683031262;
	bh=vtHnxY272gQwR2K0KA+cTon5g8aYzAZdrp1RngJdcho=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=cVtJsCmdOoOTm7lnqIuMh2nrCUg1wTMHZANmImuHoowaNyVNUalEr27bcL85TTa+n
	 B55FZs0JXLz9GitigKjpVjcKCGcPf0K/5p4YF2T/SNRRCDs8IQmQoSIycMZkqEdhfH
	 V97lumjyf7V20qnVwHd/HB2Kcye34CDMwoNLtJQjXxI+Cm/1EQIZHiCsavNvurx1jV
	 OdoVf/nXvSOZvzhDhsFQhlZrtoI5V4EcoaYmHVrJMq0Q5ys62aMohpFMCRwNOQYWUa
	 cVERs7ISDhG3A36yEwc7aobswW3Fd+ZqSTuEw1EXgpRUFHID2I8bPpzlAZRzfL8UQh
	 oRJmYVHsYRSCg==
Message-ID: <b4b43db4-d2c7-9296-5272-cdac942856ae@collabora.com>
Date: Tue, 2 May 2023 15:40:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 0/8] Add RK3588 OTP memory support
Content-Language: en-US
To: Vincent Legoll <vincent.legoll@gmail.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <CAEwRq=pKBWsiE1EVf8+k2tZeeEqBpZFgJPCnSN2M005ajbpdmA@mail.gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <CAEwRq=pKBWsiE1EVf8+k2tZeeEqBpZFgJPCnSN2M005ajbpdmA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_054112_487407_12852C01 
X-CRM114-Status: GOOD (  16.33  )
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

T24gNS8yLzIzIDExOjI2LCBWaW5jZW50IExlZ29sbCB3cm90ZToKPiBIZWxsbywKPiAKPiBPbiBN
b24sIE1heSAxLCAyMDIzIGF0IDg6NDTigK9BTSBDcmlzdGlhbiBDaW9jYWx0ZWEKPiA8Y3Jpc3Rp
YW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+PiBUaGlzIHBhdGNoIHNlcmllcyBh
ZGRzIE9UUCBtZW1vcnkgc3VwcG9ydCBmb3IgUm9ja2NoaXAgUkszNTg4IFNvQywKPj4gd2hpbGUg
YWxzbyBwcm92aWRpbmcgYSBmZXcgaW1wcm92ZW1lbnRzIHRvIHRoZSBleGlzdGluZyByb2NrY2hp
cC1vdHAKPj4gZHJpdmVyLCBpbiBhZGRpdGlvbiB0byBjb252ZXJ0aW5nIHRoZSBiaW5kaW5ncyB0
byBkdC1zY2hlbWEuCj4gCj4gSSB0ZXN0ZWQgdGhpcyBvbiBhIFF1YXJ0elBybzY0IGRldiBib2Fy
ZCwgSSBhcHBsaWVkIHlvdXIgc2VyaWVzIHRvcCBvZiBteSB0cmVlOgo+IENvbGxhYm9yYSdzIHJr
MzU4OC12Ni4zICsgc29tZSBEVCBwYXRjaGVzIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgcXA2NCBi
b2FyZC4KPiAKPiBIZXJlIGlzIHRoZSBvdXRwdXQgZnJvbSB0aGUgY29tbWFuZHMgeW91IHRvbGQg
bWUgdG8gdHJ5Ogo+IAo+ICMgbHMgLTEgL3N5cy9idXMvbnZtZW0vZGV2aWNlcy8qL252bWVtCj4g
L3N5cy9idXMvbnZtZW0vZGV2aWNlcy9yb2NrY2hpcC1vdHAwL252bWVtCj4gCj4gIyAgb2QgLU4g
NjQgLUEgeCAtdCB4MXogLXYgL3N5cy9idXMvbnZtZW0vZGV2aWNlcy9yb2NrY2hpcC1vdHAwL252
bWVtCj4gMDAwMDAwIDUyIDRiIDM1IDg4IDkxIGZlIDIxIDQxIDVhIDQzIDM5IDM2IDAwIDAwIDAw
IDAwICA+Uks1Li4uIUFaQzk2Li4uLjwKPiAwMDAwMTAgMDAgMDAgMDAgMDAgMGYgMGIgMGQgMGEg
MGEgMGMgMjUgMGUgMDAgMDAgMDAgMDAgID4uLi4uLi4uLi4uJS4uLi4uPAo+IDAwMDAyMCAwMCAw
MCAwMCAwMCAwMCAwMCAwMCAwMCAwOCAwYyAwMCAwMCAwMCAwMCAwMCAwMCAgPi4uLi4uLi4uLi4u
Li4uLi48Cj4gMDAwMDMwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwICA+Li4uLi4uLi4uLi4uLi4uLjwKPiAwMDAwNDAKPiAKPiBUaGlzIGlzIHdvcmtpbmcg
YXMgZXhwZWN0ZWQuCj4gCj4gWW91IGNhbiBhZGQgbXkgVC1CLCBmb3IgdGhlIHdob2xlIHNlcmll
czoKPiAKPiBUZXN0ZWQtYnk6IFZpbmNlbnQgTGVnb2xsIDx2aW5jZW50LmxlZ29sbEBnbWFpbC5j
b20+CgpUaGFua3MgZm9yIHRlc3RpbmchCgpSZWdhcmRzLApDcmlzdGlhbgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
