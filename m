Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8F4EC021A4
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QS02Hp7o3xOMgZ1mHsTcecByNhDLOo16P/sd41jTg/o=; b=xX4akFqtZZUCaU
	MMc3+r3g9PnuBffD//nkfpT9KFmJEDcIguyh5VnQ5r1Bvu05cerl7Sl4cpLa08lzcfB3uyRRNxV2M
	2l3mNCgCUK3y3uHRq/RICScl41uve2NhXhbSealJv4WlC5xMApSyM0199k89XWqGhPFH9nR3+Nz5+
	n15OY0IzwaRyMAB2pyBDGy/dL04Xck1Q0eTrf1VNBjbIhl6gL1KUKvzcjr4Hhtc8Vz0NKYMXMU8do
	tEUcgbafikYAR939W98IFlw+rjxpeWXdX24WJzyH+zkqKqcWWRSMa1+J9izEMUv/InJVotfWUXek6
	tSofPXRCzGEW9UvSFoLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmdwZ-0000000Ewmc-262D;
	Mon, 24 Feb 2025 19:16:43 +0000
Received: from smtp-22.smtpout.orange.fr ([80.12.242.22] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmdwW-0000000EwlG-2ciD
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Feb 2025 19:16:42 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id mdwGt5kjyKyVdmdwJtBcWJ; Mon, 24 Feb 2025 20:16:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1740424592;
	bh=9VPOLtQg+zqSMxeSCbo0v5e5C1uKf8cqE57WkcwIzms=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=dTskuR9FK1/IIcaRaov8nY9R+bPoGTkJfSWtdVzr5DCQ8GSXiMe/Gv9j9AT7jhyh+
	 eb9hTyQgiyd+gD6n71R/H4jdu4XUEgCIlAvIl9DJQacjP2ZKQkqDGjA/WaeqHI0cSm
	 LYGu20syygD+cGHkgL1Rp1xzSxL0SoWRFTJyfj2Fpse7037OyX36ZSs4LjmvFLOHMZ
	 va7D587KDqw4oLdn7xT+anZF5p2g309POA4ayVMIZhrBZVDkxZPHAicGKJ8M5kT1gO
	 e4gesxROvoK73rdErzscHvUIhecucjaw4piH5UHPQTwNGQGtYT3IdYwcPjhB98Y5UP
	 F+Q6bArp1jsMw==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Mon, 24 Feb 2025 20:16:32 +0100
X-ME-IP: 90.11.132.44
Message-ID: <29687c3c-d983-4d1f-8cde-fde82df84e0e@wanadoo.fr>
Date: Mon, 24 Feb 2025 20:16:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>
References: <20250223173019.303518-1-dmitry.osipenko@collabora.com>
 <20250223173019.303518-5-dmitry.osipenko@collabora.com>
 <88b02c37-6741-459b-b966-d6d58d1f9b6f@wanadoo.fr>
 <c30a291b-c81b-4da1-a0ae-270d323b28e3@collabora.com>
 <bc1f5334-b0fb-4e81-979d-feb17886ac40@wanadoo.fr>
 <d13f13ac-1501-4427-b6d3-ee161eeb932a@collabora.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <d13f13ac-1501-4427-b6d3-ee161eeb932a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_111641_070614_C94C8421 
X-CRM114-Status: GOOD (  12.23  )
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

TGUgMjQvMDIvMjAyNSDDoCAwNToxOSwgRG1pdHJ5IE9zaXBlbmtvIGEgw6ljcml0wqA6Cj4gT24g
Mi8yNC8yNSAwMDoxMSwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+Pj4+Cj4+Pj4+ICvCoMKg
wqAgcmV0ID0gY2VjX3JlZ2lzdGVyX2FkYXB0ZXIoY2VjLT5hZGFwLCBjZWMtPmRldik7Cj4+Pj4+
ICvCoMKgwqAgaWYgKHJldCA8IDApIHsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoY2Vj
LT5kZXYsICJjZWMgcmVnaXN0ZXIgYWRhcHRlciBmYWlsZWRcbiIpOwo+Pj4+PiArwqDCoMKgwqDC
oMKgwqAgY2VjX3VucmVnaXN0ZXJfYWRhcHRlcihjZWMtPmFkYXApOwo+Pj4+Cj4+Pj4gSXMgaXQg
bmVlZGVkIHRvIGNhbGwgY2VjX3VucmVnaXN0ZXJfYWRhcHRlcigpIHdoZW4KPj4+PiBjZWNfcmVn
aXN0ZXJfYWRhcHRlcigpIGZhaWxzPwo+Pj4KPj4+IFllcywgaXQncyBjb25mdXNpbmcsIGJ1dCB1
bnJlZ2lzdGVyIGlzIG5lZWRlZCB0byBmcmVlIHRoZSBhZGFwdGVyCj4+PiBwcm9wZXJseSwgaXQn
cyBwcmVwYXJlZCB0byBkbyBpdC4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lgo+Pj4KPj4KPj4gSSBk
b24ndCBrbm93IHRoaXMgQVBJLCBzbyB5b3UnbGwgZ2V0IHRoZSBsYXN0IHdvcmQsIGJ1dAo+PiBj
ZWNfdW5yZWdpc3Rlcl9hZGFwdGVyKCkgZG9lcyBub3Qgc2VlbSB0byBkbyB0aGF0IG1hbnkgdGhp
bmdzIGluIHN1Y2ggYQo+PiBjYXNlLCB1bmxlc3MgSSBtaXNzIHNvbWV0aGluZy4gU2VlIFsxXS4K
Pj4KPj4gQ0oKPj4KPj4gWzFdOiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4x
NC1yYzMvc291cmNlL2RyaXZlcnMvbWVkaWEvCj4+IGNlYy9jb3JlL2NlYy1jb3JlLmMjTDM3MAo+
IAo+IE9uIGEgc2Vjb25kIGxvb2ssIGFwcGFyZW50bHkgeW91J3JlIHJpZ2h0IGFuZAo+IGNlY19u
b3RpZmllcl9jZWNfYWRhcF91bnJlZ2lzdGVyKCkgc2hvdWxkIGJlIHVzZWQgdGhlcmUuCj4gCgpT
bywgbWF5YmUgaW4gdGhlIC5yZW1vdmUoKSBmdW5jdGlvbiBhcyB3ZWxsPwoKQ0oKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
