Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BFD9C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 21:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRHz1XwcHYhqNVtpt0v87G6JaEbHg4yVzEXj6FfRyPw=; b=y011XIBNCquQuC
	4V7XeDuGFh2rB+c9yazPSJKZIFMrQuSWyQdOJhxYpA3pjdOj29NNsVbpd/oiSaC3GOT7YTXu3s0wR
	b2JlzHiDvKv5LeUEMftJb6Ky8OU0hL1XxC79kJlSXhkRWI75wWxqzB+RYD7vqahmRAnHu30uyjH9M
	fNQZshFDXIIKbOciFEQdUbUvPVbZeoEEs8BXt5rUpNemfP73xl+3vutlbcYEkUyEuIwtMu5u0iFxc
	FW4ZRZrSbqqpkinGUsWvdCJ4zaCBuPEPsx5MNhjbeK1uwM8m9QQjmGavRG91JINEn6oFcwskvdZ5N
	Eg3kDZeb4TZNDGqXHZhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMEAc-001tuQ-2Z;
	Sat, 06 Jan 2024 21:25:30 +0000
Received: from forward502c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d502])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMEAZ-001ttj-0A
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jan 2024 21:25:30 +0000
Received: from mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:1580:0:640:de7b:0])
	by forward502c.mail.yandex.net (Yandex) with ESMTP id F07F660C8A;
	Sun,  7 Jan 2024 00:25:13 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id BPmPnMOr9iE0-yopHyjDh;
	Sun, 07 Jan 2024 00:25:13 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1704576313; bh=aOO8K1kRwYNcAd+V6oNlanooC+SLRLZcpv5ZyxlV6v4=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=U5FCXBzs+6/1MnWeYpNMk1BZUW7fx9e5L7a+PS9D9vlrOqHIk6oXEIC2jpEqdmXn7
	 KBdh4vkHaB+y38iNU6ONbTqf6Y0bisN+9Ik9t2wuoWH6eeBKMljE1alvDE+Nwqs0xq
	 0BMcYg8yRF6wU3dqaIRX6/KLqy9rfgmfUHqyWzQU=
Authentication-Results: mail-nwsmtp-smtp-production-main-59.iva.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <94ad0f59-4095-40ee-963d-4ac379fc8852@yandex.com>
Date: Sat, 6 Jan 2024 22:25:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pwm: rockchip: Allow "interrupts" prooperty
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@pengutronix.de
References: <20240106142654.1262758-2-u.kleine-koenig@pengutronix.de>
 <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <7dea73a6-d733-4cd2-b2d5-02f09e2a6dd9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_132527_627115_2E5088AE 
X-CRM114-Status: GOOD (  11.21  )
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

SGksCgpPbiAxLzYvMjQgMTg6MTAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMDYv
MDEvMjAyNCAxNToyNiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+IFRoaXMgZml4ZXMgdGhl
IGR0YnNfY2hlY2sgZXJyb3IKPj4KPj4gCWFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEw
OC1lbGdpbi1yMS5kdGI6IHB3bUAxMDI4MDAzMDogJ2ludGVycnVwdHMnIGRvZXMgbm90IG1hdGNo
IGFueSBvZiB0aGUgcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwo+PiAJZnJvbSBzY2hlbWEgJGlk
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9wd20vcHdtLXJvY2tjaGlwLnlhbWwjCj4+
Cj4+IGluIHNldmVyYWwgZGV2aWNlIHRyZWVzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xl
aW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgoKPiBBY2tlZC1ieTog
S3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgoKTkFL
CgpUaGVyZSdzIGEgcmVhc29uIHdoeSB0aGlzIGlzbid0IGltcGxlbWVudGVkIGJlZm9yZToKCltS
RkMgUEFUQ0ggdjEgMS8yXSBkdC1iaW5kaW5nczogcHdtOiByb2NrY2hpcDogYWRkIGludGVycnVw
dHMgcHJvcGVydHkgPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL2VkM2Rm
MmM4LWZmYjUtMTcyMy0wZWQ3LTNhMjcyMTk3Mjg1MkBnbWFpbC5jb20vI3I+CgpodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9lZDNkZjJjOC1mZmI1LTE3MjMtMGVkNy0zYTI3
MjE5NzI4NTJAZ21haWwuY29tLwoKW1BBVENIIDEvMV0gZHQtYmluZGluZ3M6IHB3bTogcm9ja2No
aXA6IEFkZCBkZXNjcmlwdGlvbiBmb3IgcmszNTg4IDxodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1yb2NrY2hpcC8yMDIyMDkwMTEzNTUyMy41MjE1MS0xLXNlYmFzdGlhbi5yZWljaGVsQGNv
bGxhYm9yYS5jb20vI3I+CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC82
NmI1YjYxNi1hZTlmLWExYWEtZTJiNS00NTBmNTcwY2ZjZGRAZ21haWwuY29tLwoKW1BBVENIIHYx
IDAzLzExXSBkdC1iaW5kaW5nczogcHdtOiByb2NrY2hpcDogYWRkIHJvY2tjaGlwLHJrMzEyOC1w
d20gPGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL2Y1ZGQwZWU0LWQ5N2Ut
ZDg3OC1mZmRlLWMwNmU5YjIzM2UzOEBnbWFpbC5jb20vPgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcm9ja2NoaXAvOTQ2ZDhhYzItNmZmMi0wOTNhLWFkM2MtYWE3NTVlMDBkMWRkQGFy
bS5jb20vCgoKT24gaG93IHRvIGNvcnJlY3RseSBtb2RlbCB0aGUgRFQgd2l0aCBjb21tb24gaW50
ZXJydXB0cyAsIFBXTSBhbmQgb25lIHNob3QgYXMgYSBzb3J0IG9mIE1GRCBldGMgdGhlcmUncyBu
byBjb25zZW5zdXMgeWV0LgoKTGVhZiBpdCBhcyBpdCBpcyB0aWxsIHNvbWVvbmUgbWFkZSBhIHdv
cmtpbmcgZHJpdmVyIGRlbW8sIHNvIHRoYXQgdGhlIGNvZGVyIGlzIGZyZWUgdG8gbW9kZWwgYSBE
VCBzb2x1dGlvbiB0aGF0IGZpdHMgdG8gaGltL2hlci4KCgpKb2hhbgoKPiBCZXN0IHJlZ2FyZHMs
Cj4gS3J6eXN6dG9mCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
