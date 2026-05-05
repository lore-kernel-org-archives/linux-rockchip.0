Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 778EECD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 17:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYGLWiIF19WJyPMbwUWBGBt85lJpsSJm3PQN6cGEc2E=; b=PxriGU6dxdY+HD
	doBOiaYY0EwOwFaJQVw2Hn5XvjZwr3w9NcB3uXxA+6dgmWzMX4M8hfTUalcLh6YJq9Y4qkyN+iLvp
	jKcQBmUgEJddMtI+Ttzjy74qfsNjgGbjpxodVDUtydE3NenGQkQ6AEti97/1HlzKVNW0kxjb0BgB8
	fYNxSuxnrC2rVY2bryHrJIVdHFLTGHnqq9xYplbZ42kB+g9LHUKrRQ/hHaww8Espj0GB7jBjuDpuk
	kVn+nOLZ1BhhGBSaQ1pSGhC2WDxUYGAMJq+xJKlW0c/F37Yg6WWQ1W+cOGmb3LkVEEXbZaQmZEAC7
	zQ4ygEm8Klfc0D/fe62w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJgj-0000000H4Pe-38xF;
	Tue, 05 May 2026 17:36:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJgh-0000000H4PA-0knf;
	Tue, 05 May 2026 17:36:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1rUgiNEja4VdnawWmpKJXAeTor1kPOFVIqJ3p24fzq4=; b=fVEUiBs9iFuCVeDxw3tyYpZCZN
	jC+6HulUNzAiOGjHz2qhVODEf63QJMSAPNI2fHQ1KRosjxwS6PPNUjir0GnJvKMDUMgycEH/6eWwg
	znmbMa0bTyr6CYOvDiwnVPyPb0YmdB+0CcBjnVKyS9OLqKRWJs6FNjlAFWzDjHcFUE7oaRQLTuDHD
	qJ2apECTu8bun55BfPEQtEJH4AepL+0Czk4U5svUtviKuVYEZqwR8nRlTW8/h1LGe8XBN3yu9DYz1
	ZZZaPxkVoU7Pgq28H+NGNKOaiRuNewyWKd7HF8BxdNO6X4l2qhHF5Xi2ogr5ZbMygrURu9DeV6O7Y
	iCPWlZ3w==;
From: Heiko Stuebner <heiko@sntech.de>
To: Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Alexey Charkov <alchark@gmail.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, FUKAUMI Naoki <naoki@radxa.com>,
 Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dennis Gilmore <dennis@ausil.us>
Subject: Re: [PATCH v9 3/4] arm64: dts: rockchip: refactor items from Orange Pi 5/b to
 prep for Pro
Date: Tue, 05 May 2026 19:35:52 +0200
Message-ID: <26834823.ouqheUzb2q@phil>
In-Reply-To: <20260429024737.544813-4-dennis@ausil.us>
References: <20260429024737.544813-1-dennis@ausil.us>
 <20260429024737.544813-4-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_103603_241648_66AE9C35 
X-CRM114-Status: UNSURE (   7.53  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGVubmlzLAoKQW0gTWl0dHdvY2gsIDI5LiBBcHJpbCAyMDI2LCAwNDo0NzozNCBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERlbm5pcyBHaWxtb3JlOgo+IFRoZSBSSzgw
NiBQTERPMSBhbmQgUExETzIgb3V0cHV0cyBhcmUgd2lyZWQgZGlmZmVyZW50bHkgYmV0d2VlbiB0
aGUKPiA1LzVCIGFuZCB0aGUgUHJvIChQTERPMS9QTERPMiBhcmUgc3dhcHBlZCksIHNvIGxhYmVs
IHRoZSBQTUlDIG5vZGUKPiByazgwNl9zaW5nbGUgaW4gdGhlIGJhc2UgZHRzaSwgZHJvcCBwbGRv
LXJlZzEvcGxkby1yZWcyIGZyb20gaXQsIGFuZAo+IGRlZmluZSB0aGVtIHZpYSBhICZyazgwNl9z
aW5nbGUgcmVndWxhdG9ycyBhdWdtZW50YXRpb24gaW4KPiByazM1ODhzLW9yYW5nZXBpLTUtNWIu
ZHRzaS4gVGhlIFBybyB3aWxsIHN1cHBseSBpdHMgb3duIG1hcHBpbmcuCgpJIGd1ZXNzIG15IG9u
bHkgcXVlc3Rpb24gaXMsIHdoZXJlIGRpZCB0aGF0ICJzaW5nbGUiIGNvbWUgZnJvbSBhbmQgd2hh
dAppcyBpdCBzdXBwb3NlZCB0byBtZWFuPyAuLi4gSSB3b3VsZCd2ZSBhc3N1bWVkICImcms4MDYi
IGFzIGxhYmVsIHdvdWxkJ3ZlCmJlZW4gZW5vdWdoPyBCdXQgbWF5YmUgdGhhdCAiX3NpbmdsZSIg
aGFzIHNvbWUgc3BlY2lhbCBtZWFuaW5nPwoKVGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
