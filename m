Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D67C52D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 20:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPBU5sSWIa+wc4WVPiSuL2/hKL1g7jIp8YkdeeZuviI=; b=ZycDvttfvwOtQX
	UY/584j1BvKDn4/n3Gpyd4SR+LzBAFvZ/oa9PyUnxElg1rYVsyBiyyfgo+LiH3t9mHA9H6FXG5x6N
	/2+S/foEBBS+e2hbAKQEtaeigWbOMhyTt6SHWawSc92c3VEKxLEw8PCG4KPNDwFqq/eNvGI/2bYTR
	zieIXBe8DiVHkr5evnS3reFsDtFTcdub6BsDyvR+aUJ40fjftE23Xq5JPumb1EIbvayIhh+ga4Ptb
	iTIweAsLyHINxui6TgHP0hDx9w/YwjoQV+/lUEt7VO52cVsPGhRvmEAUBbT38y6RHeJjLFOxA/b/g
	RN9EueWOMQlrYWuEWp3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seKWN-00000008AMQ-2aQo;
	Wed, 14 Aug 2024 20:23:03 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seKSu-000000089Uw-2h2x
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 20:19:33 +0000
X-QQ-mid: bizesmtp77t1723666733tpc2c35f
X-QQ-Originating-IP: 7svP2jYGzlEOZVRd0xTQfN2dD3RCAivIW7bnys9U6QY=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 15 Aug 2024 04:18:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2262008500744718809
Message-ID: <71AE5BF8A35A4D3D+d4ff3028-7c0d-475e-95e9-8974bcef1d31@radxa.com>
Date: Thu, 15 Aug 2024 05:18:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240814095727.1662908-1-naoki@radxa.com>
 <8FF4228B18A1DFEE+d359188b-64e9-4ce6-8796-f3fecd6a0781@radxa.com>
 <10385642.ICPdZLu4VQ@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <10385642.ICPdZLu4VQ@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_131929_191196_9728F6D5 
X-CRM114-Status: UNSURE (   8.46  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiA4LzE0LzI0IDIwOjMyLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBNaXR0d29j
aCwgMTQuIEF1Z3VzdCAyMDI0LCAxMjoyNTo1NCBDRVNUIHNjaHJpZWIgRlVLQVVNSSBOYW9raToK
Pj4gSGksCj4+Cj4+IE9uIDgvMTQvMjQgMTg6NTcsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+PiBS
YWR4YSBST0NLIFBpIEUgdjMuMCBpcyBhIGNvbXBhY3QgbmV0d29ya2luZyBTQkNbMV0gdXNpbmcg
dGhlIFJvY2tjaGlwCj4+PiBSSzMzMjggY2hpcC4KPj4+Cj4+PiBbMV0gaHR0cHM6Ly9yYWR4YS5j
b20vcHJvZHVjdHMvcm9ja3BpL3BpZQo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFv
a2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4+IC0tLQo+Pj4gQ2hhbmdlcyBpbiB2NDoKPj4+IC0gdXBk
YXRlIGNvbXBhdGlibGUgc3RyaW5nIGZvciBPcGVuV3J0Cj4+Cj4+IHRoaXMgaXMgZm9yIGh0dHBz
Oi8vZ2l0aHViLmNvbS9vcGVud3J0L29wZW53cnQvaXNzdWVzLzE2MTY4Cj4gCj4gSSB0aGlzIGJl
Y2F1c2Ugb3BlbndydCB1c2VkIHNvbWUgb3V0LW9mLXRyZWUgZGV2aWNldHJlZT8KCm5vLCBiYXNp
Y2FsbHkgdGhleSB1c2UgdXBzdHJlYW0gZHRzLgooaW4gdGhpcyBjYXNlLCBkdHMgaXMgYmFja3Bv
cnRlZCBiZWNhdXNlIHRoZXkgdXNlIHY2LjYga2VybmVsLikKCmdlbmVyYWxseSB0aGVpciBNYWtl
ZmlsZSBhbmQgc2NyaXB0IHZhcmlhYmxlcyByZWZlciBkdHMgZmlsZW5hbWUuCihkdHMgZmlsZW5h
bWUgaXMgcmVmZXJyZWQgYXMgcmlnaHQgbmFtZSkKCj4gRm9yIHBlb3BsZSByZWFkaW5nIGFsb25n
LCBhbGwgdGhlIG90aGVyIHJvY2twaSBkZXZpY2VzIGZvbGxvdyBhCj4gCj4gCXJhZHhhLHJvY2tw
aS1mb28KCnRoZXJlIGFyZSByb29ja3BpNHggYW5kIHJvY2twaXMgOykKCj4gbmFtaW5nIHNjaGVt
ZSBpbiB0aGVpciBjb21wYXRpYmxlcyB3aGlsZSBfdGhpc18gbmV3IGVudHJ5IHVzZXMKPiAKPiAJ
IHJhZHhhLHJvY2stcGktZS12MwoKdGhpcyBpcyBuZXcgdGFyZ2V0LCBzbyBJIHRob3VnaHQgbmV3
IGZvcm0gY2FuIGJlIHVzZWQuCgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhh
IENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
