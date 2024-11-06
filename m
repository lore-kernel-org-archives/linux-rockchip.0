Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0FDD59F67
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QlvsD2lJ8BzZx9swqOVsk+/3NtoI0C/S8DIAKiL2uw=; b=SIAd3HaR3/V57m
	uMmODkgYCM/eAooWoVMiFwI4gptvtSrcQggQfFfM0qeMT3xrErs0S+z+6xbS/L8bCzkxFxh9KOSLL
	/YpBJv9G8J/iuvzE7ihA1exm/zu2BgksX/nLHg+ap15Na3LXovbEVD6zbgGH5m+jqXDHTdliXtAmO
	Kz54fCezB/LIno7n0M8QltuLdtJrGnPF/3b7Hjs/38iPLu/ljedm7UqNFITbHFsJp49GW9p6Al0p5
	u09je5J0vRiHevdwoSQsVw1p1UiLgY06MEIqGf/39AlmUktQQqFpme+udeLzBdO8viApmmy09rrM3
	DG5PAi4oK0tCwEsFOt1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8na3-00000004nkf-3JW5;
	Wed, 06 Nov 2024 21:28:47 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8nYI-00000004nT0-1fly;
	Wed, 06 Nov 2024 21:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1730928415;
	bh=9g6T+MOclTYUgXeTrv5olCKGPoeDF0LBKeyubV2+kU8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=p8odjkDjQKL3CjEB/U5VkLC45YeQPK/nzseNlKYeMx/qPq5SV6KHAHgzMCMUmCZvq
	 dinnaISVyg5W2Jtn2s1stbJMk99KBvFAEkmME+h5xntihSxKWEPtmxwDEuUGunRJli
	 N9kjW44AeijTORTCNHmlkCepVttOKe+zT/tNSFPQ6QqcaS5NUu9bptnTKA6jupTCZy
	 xUMUJvpvQZFCA5QQgJQVzZNRxfl2kHw74HaxI2qSimdhvOsOq6r8K0ow6WAnh5Mpii
	 qrDf0I/Z5Q2XTPo1cepsm2CSXswdidZu2XlBZyZ9ajp9mvTw9JcNYXIG5lhnJLg/Hs
	 yJZ3xSWjJbCaQ==
Received: from [192.168.1.90] (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6926717E378F;
	Wed,  6 Nov 2024 22:26:55 +0100 (CET)
Message-ID: <fd2d2d7e-67ae-43a1-81ef-91e2852edcb6@collabora.com>
Date: Wed, 6 Nov 2024 23:26:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Enable HDMI0 on rock-5b
To: Link Mauve <linkmauve@linkmauve.fr>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
 <20241019-rk3588-hdmi0-dt-v2-2-466cd80e8ff9@collabora.com>
 <ZyvUsdc8ZhiD8-DY@desktop>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ZyvUsdc8ZhiD8-DY@desktop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_132658_616590_1F9826DB 
X-CRM114-Status: GOOD (  10.50  )
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

T24gMTEvNi8yNCAxMDo0MiBQTSwgTGluayBNYXV2ZSB3cm90ZToKPiBIaSwKPiAKPiBJ4oCZdmUg
dGVzdGVkIHRoaXMgc2VyaWVzIG9uIGEgUmFkeGEgUm9jayA1QiB1c2luZyBXZXN0b24sIGFuZCB0
aHVzCj4gcGF0Y2hlcyAxIGFuZCAyIGFyZToKPiBUZXN0ZWQtYnk6IExpbmsgTWF1dmUgPGxpbmtt
YXV2ZUBsaW5rbWF1dmUuZnI+Cj4gCj4gT24gYSBUViB3aGljaCBlcnJvbmVvdXNseSByZXBvcnRz
IDEzNjDDlzc2OCBhcyBpdHMgcHJlZmVycmVkIG1vZGUsCj4gbm90aGluZyBnZXRzIGRpc3BsYXll
ZC4gIE9ubHkgc2V0dGluZyBhIDE5MjDDlzEwODAgbW9kZSB3aWxsIGRpc3BsYXkKPiB0aGluZ3Mg
Y29ycmVjdGx5LCBldmVyeSBvdGhlciBtb2RlIHN0YXlzIGJsYWNrLgoKSSdkIHN1Z2dlc3QgdG8g
dHJ5IHRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBmcm9tIFsxXSwgdGhleSBzaG91bGQgaW1wcm92ZSB0
aGUKZGlzcGxheSBtb2RlcyBzdXBwb3J0OgoKOTRiNWMzMWY5NjlkICgiW1dJUF0gZHJtL3JvY2tj
aGlwOiB2b3AyOiBJbXByb3ZlIGRpc3BsYXkgbW9kZXMgaGFuZGxpbmcgb24gcmszNTg4IikKYzMz
YzIzMDUzOTg3ICgiW1dJUF0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEVuYWJsZSBIRE1JMCBQSFkg
Y2xrIHByb3ZpZGVyIG9uIHJrMzU4OCIpCjYwNTkyNDU2MzVjMCAoIltXSVBdIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBNYWtlIHVzZSBvZiBIRE1JMCBQSFkgUExMIG9uIHJvY2stNWIiKQoKSSdtIGN1
cnJlbnRseSBjbGVhbmluZyB0aGlzIHVwIGFuZCBzdWJtaXQgdXBzdHJlYW0gd2hlbiByZWFkeS4K
ClRoYW5rcyBmb3IgdGVzdGluZywKQ3Jpc3RpYW4KClsxXSBodHRwczovL2dpdGxhYi5jb2xsYWJv
cmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2NvbW1pdHMv
cmszNTg4CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
