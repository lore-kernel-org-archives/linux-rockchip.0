Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D4AECEE351
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 19:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Date:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yPyBnjBaE8Try34VYwssoFw0UHf9dJuHR7PQnco5tFo=; b=zX1fUxPlordp+U4eIH43izYB0L
	0lYKbMj516r3ST8muSvtMflA9+av3efJjzIT0i0ahuyumiSUTn8beZH1v6ZJ4Ni5/PA/4yEk9lQez
	1ZBFzU+CmQNp1CZpdE/0eqPcD/1l7+jcWwA85M33Bgn9izjGxZNFA5mnAyHWwHioKTY7wWyEZTsSs
	UIfYT3c8XeBalUZaicrNahpmJCnfYaTMiSKH8NYv1ge6Hec+2/K6M276jZaNuw1LKKS4T5VyjfpQP
	Bvccu/tC0Z7ce4ZQuVlmiLDNjld9yWA5u1oKHlncQsQLJrjjpVwAzXUWKtfBTG5SX08I9oGHUzuUD
	4iR90YOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLRpW-000000012mo-3cHz;
	Tue, 18 Nov 2025 19:57:34 +0000
Received: from hedgehog.birch.relay.mailchannels.net ([23.83.209.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLRpR-000000012lu-49Mo;
	Tue, 18 Nov 2025 19:57:33 +0000
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 61771822718;
	Tue, 18 Nov 2025 19:57:28 +0000 (UTC)
Received: from fr-int-smtpout26.hostinger.io (100-96-77-176.trex-nlb.outbound.svc.cluster.local [100.96.77.176])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id E36F9822723;
	Tue, 18 Nov 2025 19:57:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763495848;
	b=CZeiHv7XXFXKuHBPuBB4OSbkJIH9QTFhUs8SrbpW3DeU+cVjhsvfwzfMpTkUO/NzVCJr8B
	YtXxVlVMw/+9detR32tEzZb96PZI+a81Misiv+zwMMfUL1N00oa61ZfQ29Dl5jbTroKLGd
	4ONz4kVFcJIW1ZW3LolR7yDVyanXTswtWgXyMM6vc3H1SKAGVGnA37LNcXRV+kIqbE0eU6
	AzlzRF3sV25yF/8HzgeO3M9yzuPsiAeHfP7R/XCTP4H3lFCI+e3BOVcLS4BuxxVLALAx0G
	MLJEg+FZW7cWZaBoOvXLRQf4TSwyWGawRqxTHotFi+2r6Hyt44XPXJCD3gw6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763495847;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BbcOD3VD6adCsQK5uLNPbk3zQ4lGeD4EBSzw6F4p+ao=;
	b=i05GSgUos3YFpwmTiVmcb2cgzAnuukAdPA3SaIgsyB/IvvMRyNUYUehug4jRTAVTSwqMUe
	wba5WLGnGc2xrukmgIkaVi/cmjJtOBznpaA1k/V19kVoP48DoWcplc1HCmiYGOG9oNNQbh
	f4Tkk2dxuAnrMl7uorpD+8P9nmtyeq4KMvHJ+oTChlyssgWm2zM24odcXgGzATDJcaexng
	DNVQpzF1dj/uiExsom31PHhDmHMZboKtSEJpoL2Kc3R7HmloCooSLCCceXWuRHY+/kwC49
	3Lc+4Wt1TfoXqf0Jj81qQZu2D0Yo5ZwCR5WlJL17hiRMAZHyN9V7QWqOcKD5kA==
ARC-Authentication-Results: i=1;
	rspamd-55b59744f-bdkvm;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Society-Reign: 134a57947117443e_1763495848172_292490701
X-MC-Loop-Signature: 1763495848172:1169941706
X-MC-Ingress-Time: 1763495848172
Received: from fr-int-smtpout26.hostinger.io (fr-int-smtpout26.hostinger.io
 [148.222.54.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.77.176 (trex/7.1.3);
	Tue, 18 Nov 2025 19:57:28 +0000
Received: from [IPV6:2001:861:4450:d360:cf0c:923e:c2e1:c25a] (unknown [IPv6:2001:861:4450:d360:cf0c:923e:c2e1:c25a])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d9wPb4nG5z1xyp;
	Tue, 18 Nov 2025 19:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763495844;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BbcOD3VD6adCsQK5uLNPbk3zQ4lGeD4EBSzw6F4p+ao=;
	b=U1uD4D7kpTyuGqaAmQHJGfeC/p6SjJD1pzeLGaLGpUmnGoPzigMZjHTU+8waAUX33OE85W
	Hko74hd3tocL+CPQq10EnheWNH3lwAdqFvOfso8BKw0QDqUzjagtTsOaNFIH/zmnvDfHME
	zrxmFYc9wX4gBKp6UWIzSEalOwS1lBWpXC7KtqF2Iyfs092Cu64g5ufMc6txEBL2wmH9mM
	PfOUP71Mv/k+5511S4XgXHd7pI0rgwmHsMc0W/O0NQQhfO664FWV3lYcY9qMqDgwbpFyyj
	GkftKxXEnKyqQMoX4KThfoLNc/Esj56huT6FvQzDE57UN00xlrJCB2fsUVOxWw==
Message-ID: <4e7bb5f5-30bb-4ed5-bb32-3008caa1826a@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3/3S
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <e134902e-e298-45d0-b94f-77748bb948c4@kernel.org>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <e134902e-e298-45d0-b94f-77748bb948c4@kernel.org>
Date: Tue, 18 Nov 2025 19:57:23 +0000 (UTC)
X-CM-Envelope: MS4xfDr4wJCM3Z+k7peG/DjGFXbeSgYqjNqYCqeYhgVwqFEEqi28ZdJjanfR9dCSva3D+4rkCDt1ifEpJ8lLihRwMlJmXJQnvxvLIDrU8WJbDnSxnUDwRuQc f0T1yzS9q/s1vsElD0oMQDQ79KOxdmV7aeIcR9UwU7l/nhJTXhFBn4ShqCk7CNZtob0QE5VaxSHYY8GWCR1QhZQQMgiNue45McwHlBp8xkIyMZ7GOLUz6mo5 3IAHrij8CcockAeScy32YEElUa+tx3LugEvx4R4I1QqBrBYKDPF6TeezeL7QXtSYKZnYGOD6bgnJSTlhRIKyRRStrJt3L9TRYdH4CfgfVmH3pMkuZrJ1oxcr 0Y3VqLd1aa1D2yDVOcEOYmK7yu2asyp5z0ox8g/PC61FCCzUrQIiwsEVOeOh+JKW9OKR9fXLFnavYbsN/Mr9H8M+1ObuBgURguvVLgWrTM0/3SWezHJ7czb+ O9vUtNJy4WqdfLCvgPHeHXIjwbKqrRYViK9te53C/Dm1zc1qV6+6VUYKG/p5E0g0StU5+pEvSPRlBqc6tO+Qoowo87WbLi5z7qrjc9Lqckay24BZH1IRy6nW 3qGb2sr1enklqd8KX/GHam6uCDU5tNWTCtcSisxvuwl59WHWtKx/6qIFasIEVpwBXBDPNdoVJeRbAcy0a30rdFQhKLIDASvMB6HkWj/GrpZXHw==
X-CM-Analysis: v=2.4 cv=DJTd4DNb c=1 sm=1 tr=0 ts=691ccfa4 a=IE4TgdwzI+KwY9PEtNToqw==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=-Yt9tNsTAAAA:8 a=d70CFdQeAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=GGi3-jLaLKOeRkm_cG8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=qPQde0g9OtMA:10 a=HTceBwxjnJgA:10 a=NcxpMcIZDGm-g932nG_k:22 a=cvBusfyB2V15izCimMoJ:22
X-AuthUser: michael.opdenacker@rootcommit.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_115732_214851_C21BB72D 
X-CRM114-Status: GOOD (  12.59  )
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

SGkgS3J6eXN6dG9mCgpUaGFua3MgZm9yIHRoZSBuZXcgcmV2aWV3IQoKT24gMTEvMTgvMjUgMTc6
MzEsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMTgvMTEvMjAyNSAxNjo1NiwgTWlj
aGFlbCBPcGRlbmFja2VyIHdyb3RlOgo+PiBEb2N1bWVudCB0aGUgY29tcGF0aWJsZSBzdHJpbmdz
IGZvciBBc3VzIFRpbmtlciBCb2FyZCAzIFsxXSBhbmQgM1MgWzJdLAo+PiB3aGljaCBhcmUgU0JD
cyBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgMzU2NiBTb0MuCj4+Cj4+IFRoZSAiM1MiIHZlcnNpb24g
KCJTIiBmb3IgInN0b3JhZ2UiKSBqdXN0IGFkZHMgYSAxNiBHQiBlTU1DCj4+IGFuZCBhICJtYXNr
IFJPTSIgRElQIHN3aXRjaCB0byB0aGUgIjMiIHZlcnNpb24uCj4+Cj4+IFsxXSBodHRwczovL3Rp
bmtlci1ib2FyZC5hc3VzLmNvbS9zZXJpZXMvdGlua2VyLWJvYXJkLTMuaHRtbAo+PiBbMl0gaHR0
cHM6Ly90aW5rZXItYm9hcmQuYXN1cy5jb20vc2VyaWVzL3Rpbmtlci1ib2FyZC0zcy5odG1sCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgT3BkZW5hY2tlciA8bWljaGFlbC5vcGRlbmFja2Vy
QHJvb3Rjb21taXQuY29tPgo+Pgo+PiAtLS0KPj4KPj4gQ2hhbmdlcyBpbiBWMzoKPj4KPj4gLSBS
ZW1vdmUgdGhpcyBBY2tlZC1ieSBhcyB0aGUgYmluZGluZyBjb2RlIGNoYW5nZWQgc3Vic3RhbnRp
YWxseToKPj4gICAgQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3ps
b3dza2lAbGluYXJvLm9yZz4KPiBBYm92ZSBjb21taXQgbXNnIGFuZCBEVFMgc3VnZ2VzdHMgdGhl
eSBhcmUgcHJldHR5IGNvbXBhdGlibGUgd2l0aCBlYWNoCj4gb3RoZXIsIHNvIEkgZG9uJ3QgcXVp
dGUgZ2V0IHdoeSB0aGlzIGNoYW5nZWQuIFlvdXIgY2hhbmdlbG9nIHNheXMKPiAidW5leHBlY3Rl
ZGx5IHR1cm5zIG91dCB0byBiZSBjb21wYXRpYmxlIHdpdGggMyBidXQgbm90IDNTLiIsIGJ1dCBp
cwo+IHRoaXMgcmVhbCBvciBhcmUgeW91IGp1c3QgZ3Vlc3Npbmc/IEkgdGhpbmsgeW91IHdlcmUg
dHJpY2tlZCB0byBjaGFuZ2UKPiBjb3JyZWN0IGNvZGUgaW50byB0aGlzLgoKSSB3YXMganVzdCBn
dWVzc2luZy7CoCBUaGUgbGlrZWxpaG9vZCB0aGF0IHNvbWV0aGluZyB3b3JraW5nIG9uIDMgZG9l
c24ndCAKd29yayBvbiAzcyBsb29rcyB2ZXJ5IHNtYWxsIGluZGVlZCwgYnV0IEknbSBub3QgdGhl
IG1hbnVmYWN0dXJlciB0byAKY29tcGxldGVseSBydWxlIHRoaXMgb3V0Lgo+Cj4gQW55d2F5LCBo
b3dldmVyIG9kZCB0aGlzIGlzLCBJIGRvbid0IGNhcmUgZW5vdWdoIHRvIHN0b3AgdGhpcyBwYXRj
aHNldCwgc286Cj4KPiBBY2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwu
b3JnPgoKVGhhbmtzIGFnYWluIQpDaGVlcnMKTWljaGFlbC4KCi0tIApNaWNoYWVsIE9wZGVuYWNr
ZXIKUm9vdCBDb21taXQKWW9jdG8gUHJvamVjdCBhbmQgT3BlbkVtYmVkZGVkIFRyYWluaW5nIGNv
dXJzZSAtIExlYXJuIGJ5IGRvaW5nOgpodHRwczovL3Jvb3Rjb21taXQuY29tL3RyYWluaW5nL3lv
Y3RvLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
