Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 605C1C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 04:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WjW+f2ov7nqsdL7+khPNwzcQTgvNh4dnZcCluQeOzk=; b=EYboWAPFe+JAX2
	HPoGBgDWSb6BXJcAThfEx3gDUFc/Evs9FS7n169Ts4GMdJaxldJv7/w+luLOixV18U2xdkFTsN0RA
	HbslkJgVkyXg+NOfJdsgdugLZp8yHU1BBbilw1/rbHMEP2rgZeSgTyy780CHSBT15XSf/TqDk3EvO
	8is2IWrRxmLavpftH6Ulq/BkmJCHuZo9JMLn3lOe06TUMua59YgXp6WW2JhtEWdeEprhbBaPxFPGt
	aETw2hzLIKM/j8cKYATjxlG7NU51F4lk5nVrDc+67lOj5iZIJgUSRy7AhucIwBPbtfhzLB4FQ+nPt
	e80VenaOWFC29ntzdUhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmmdV-0000000Fx2A-1yBk;
	Tue, 25 Feb 2025 04:33:37 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmmdS-0000000Fx1i-2dcR
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 04:33:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740457998; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TXii39EQ5FAcgTEj4t8f8Lscd+8BiUzu0W5uN1Na7ScGR2yEikZAA8ZNqwOQDiYIwG9RU64j6PKsWJNO2cdoQmrOu3vDLCVEEuQ7ATEstXr7UEAlfuRSs5Ie2C2lp4VardGB5SAJPwzBok6e/Qo1xRaWE2ApfR9igji0df96UPM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740457998; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7G/gL85HWy7cmw4nvxOEIPjq5uTYWJrzYdeG9NWQ2D4=; 
	b=FLbvR+uuHZ+WIJYV4POO8u5AFVgwVSvFbfwq9WxWHNJbzoeId+haUJ9uGO16NQdYubKazI8GxmkH7Z4qm958/cycUY5GNCL0z2lXbqXrKrr8QBJZCJugKRu0pzhi5hzmoXpx6gBOmCueiXvl6SwJKTGtEoF0nDBgckvaEHx3j6w=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740457998;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=7G/gL85HWy7cmw4nvxOEIPjq5uTYWJrzYdeG9NWQ2D4=;
	b=Nn/qGNw8+b8b4bq3FTOoaUXdECu6NGK43rgGUCLotPGDYa4dyqNejQ02vtCiiSXm
	tH5tGCO+N/dYiF3p0XS2u5DuWQSKta/oIxwiakgndhvIUPoOqdpZ5utzEkHHKgXAUaV
	OiaKqWflSGQ08lUG6zzIV0yvDlbb1y+2HTCXI/Gw=
Received: by mx.zohomail.com with SMTPS id 1740457996648580.9844468334069;
	Mon, 24 Feb 2025 20:33:16 -0800 (PST)
Message-ID: <268834ba-f6fe-4f7b-a211-7ee2b8f0bd46@collabora.com>
Date: Tue, 25 Feb 2025 07:33:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
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
 <29687c3c-d983-4d1f-8cde-fde82df84e0e@wanadoo.fr>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <29687c3c-d983-4d1f-8cde-fde82df84e0e@wanadoo.fr>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_203334_739793_A9905FF8 
X-CRM114-Status: GOOD (  10.60  )
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

T24gMi8yNC8yNSAyMjoxNiwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+IExlIDI0LzAyLzIw
MjUgw6AgMDU6MTksIERtaXRyeSBPc2lwZW5rbyBhIMOpY3JpdMKgOgo+PiBPbiAyLzI0LzI1IDAw
OjExLCBDaHJpc3RvcGhlIEpBSUxMRVQgd3JvdGU6Cj4+Pj4+Cj4+Pj4+PiArwqDCoMKgIHJldCA9
IGNlY19yZWdpc3Rlcl9hZGFwdGVyKGNlYy0+YWRhcCwgY2VjLT5kZXYpOwo+Pj4+Pj4gK8KgwqDC
oCBpZiAocmV0IDwgMCkgewo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoY2VjLT5kZXYs
ICJjZWMgcmVnaXN0ZXIgYWRhcHRlciBmYWlsZWRcbiIpOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKg
IGNlY191bnJlZ2lzdGVyX2FkYXB0ZXIoY2VjLT5hZGFwKTsKPj4+Pj4KPj4+Pj4gSXMgaXQgbmVl
ZGVkIHRvIGNhbGwgY2VjX3VucmVnaXN0ZXJfYWRhcHRlcigpIHdoZW4KPj4+Pj4gY2VjX3JlZ2lz
dGVyX2FkYXB0ZXIoKSBmYWlscz8KPj4+Pgo+Pj4+IFllcywgaXQncyBjb25mdXNpbmcsIGJ1dCB1
bnJlZ2lzdGVyIGlzIG5lZWRlZCB0byBmcmVlIHRoZSBhZGFwdGVyCj4+Pj4gcHJvcGVybHksIGl0
J3MgcHJlcGFyZWQgdG8gZG8gaXQuIFRoYW5rcyBmb3IgdGhlIHJldmlldy4KPj4+Pgo+Pj4KPj4+
IEkgZG9uJ3Qga25vdyB0aGlzIEFQSSwgc28geW91J2xsIGdldCB0aGUgbGFzdCB3b3JkLCBidXQK
Pj4+IGNlY191bnJlZ2lzdGVyX2FkYXB0ZXIoKSBkb2VzIG5vdCBzZWVtIHRvIGRvIHRoYXQgbWFu
eSB0aGluZ3MgaW4gc3VjaCBhCj4+PiBjYXNlLCB1bmxlc3MgSSBtaXNzIHNvbWV0aGluZy4gU2Vl
IFsxXS4KPj4+Cj4+PiBDSgo+Pj4KPj4+IFsxXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20v
bGludXgvdjYuMTQtcmMzL3NvdXJjZS9kcml2ZXJzL21lZGlhLwo+Pj4gY2VjL2NvcmUvY2VjLWNv
cmUuYyNMMzcwCj4+Cj4+IE9uIGEgc2Vjb25kIGxvb2ssIGFwcGFyZW50bHkgeW91J3JlIHJpZ2h0
IGFuZAo+PiBjZWNfbm90aWZpZXJfY2VjX2FkYXBfdW5yZWdpc3RlcigpIHNob3VsZCBiZSB1c2Vk
IHRoZXJlLgo+Pgo+IAo+IFNvLCBtYXliZSBpbiB0aGUgLnJlbW92ZSgpIGZ1bmN0aW9uIGFzIHdl
bGw/CgpOYWgsIGNlY191bnJlZ2lzdGVyX2FkYXAgc2hhbGwgYmUgdXNlZCBvbiByZW1vdmFsLiBJ
dCBpdHNlbGYgdW5yZWdzCm5vdGlmaWVycyBhbmQgZXRjLgoKLS0gCkJlc3QgcmVnYXJkcywKRG1p
dHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
