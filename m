Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2E55C021B3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 04:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7IzoFNiBnHH72VpwaGlusyXwmTbazUVeR02PIgMMw4=; b=UY5+JMdDrvbJcf
	L3XNDoz2Y6GL/BW7jZ79uhy+PLDMV+GsA6Nqge/DEKpERDhU7Dm2VxA7HN6/Pi3B5r07mJFuEs2wg
	pjBbil1PiEKgmeWxY2zYVUcJbKbwc4gjE1tC+7C/NgBlfo97oODmNAk9Y9DiPLllKeguWy9YuZhHR
	775WxBU1bjJWdpRi24LvdQHhrPD1dUOQIVlh2L56dNfen/XqlM3WM3pvzIBvcSmB0mxUGvCkZofel
	4/HSVgimj0s266TZ4Fr9C8zJoQSeVNlL3OOwUZ/Bn7yERtYwlbCfnUOi8tjhkhN3zhfvYJJeTDm+D
	O/+Q7Dk9bq0EDRX/reWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmPwH-0000000CHt6-1aEN;
	Mon, 24 Feb 2025 04:19:29 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmPwE-0000000CHsD-2MgB
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Feb 2025 04:19:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740370749; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UAjNen4dEW6JnpcOC6Mf+YxMzDXzamt+sZO0B9Iti4aVH1WNB5ZcTB44337CtWL2LIUtTFvLK5KZ0mDpO9BEa267QSFAiBXcpL6ncpNDypzxKZvdX//MKJTBi3v6FyNG7mxiAYdsG41iFK6zw7Ss1F6pLGmsUqbMD+EDpxoFGD0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740370749; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4ZkwbmlJtwopSPqeSfMDIV4RYNmzpFeckq4z8tSdpLw=; 
	b=hUIrcAJnWTgpPTuMAdSRUkcITbI8xW5Ra1m0CC/9Zctelb8pi06iIdWoSSpKrV5P+lhK5AScmqWJAOYes1vceEOTuGz1t0HJ2gjm0ICKiM92bH7bxW6iam3u2Eh8VkBZpG9qlZljTH8GxRlk6TrtybUvF4IYOjIpEriRnkK59VI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740370749;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=4ZkwbmlJtwopSPqeSfMDIV4RYNmzpFeckq4z8tSdpLw=;
	b=SIGYI9pDbacW3G3kg7IVvLcHNtQD8eaLBfcZg1WT1AzVN22iYS5X+dtLvvt2rEOK
	mFxj1Jz5DZIt+EWl61cHYwZLOMrBVCIgs/wC+1ZNjvGD6ewpmFpjc4Jhkc6xQebDUdj
	h3tBMqnLfqV3vaYp2Ve7I3NNmJkoIkH4m7BHRFy4=
Received: by mx.zohomail.com with SMTPS id 1740370748102832.3357248261832;
	Sun, 23 Feb 2025 20:19:08 -0800 (PST)
Message-ID: <d13f13ac-1501-4427-b6d3-ee161eeb932a@collabora.com>
Date: Mon, 24 Feb 2025 07:19:01 +0300
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
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <bc1f5334-b0fb-4e81-979d-feb17886ac40@wanadoo.fr>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_201926_757111_8521D7F4 
X-CRM114-Status: GOOD (  10.89  )
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

T24gMi8yNC8yNSAwMDoxMSwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+Pj4KPj4+PiArwqDC
oMKgIHJldCA9IGNlY19yZWdpc3Rlcl9hZGFwdGVyKGNlYy0+YWRhcCwgY2VjLT5kZXYpOwo+Pj4+
ICvCoMKgwqAgaWYgKHJldCA8IDApIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2X2VycihjZWMt
PmRldiwgImNlYyByZWdpc3RlciBhZGFwdGVyIGZhaWxlZFxuIik7Cj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIGNlY191bnJlZ2lzdGVyX2FkYXB0ZXIoY2VjLT5hZGFwKTsKPj4+Cj4+PiBJcyBpdCBuZWVk
ZWQgdG8gY2FsbCBjZWNfdW5yZWdpc3Rlcl9hZGFwdGVyKCkgd2hlbgo+Pj4gY2VjX3JlZ2lzdGVy
X2FkYXB0ZXIoKSBmYWlscz8KPj4KPj4gWWVzLCBpdCdzIGNvbmZ1c2luZywgYnV0IHVucmVnaXN0
ZXIgaXMgbmVlZGVkIHRvIGZyZWUgdGhlIGFkYXB0ZXIKPj4gcHJvcGVybHksIGl0J3MgcHJlcGFy
ZWQgdG8gZG8gaXQuIFRoYW5rcyBmb3IgdGhlIHJldmlldy4KPj4KPiAKPiBJIGRvbid0IGtub3cg
dGhpcyBBUEksIHNvIHlvdSdsbCBnZXQgdGhlIGxhc3Qgd29yZCwgYnV0Cj4gY2VjX3VucmVnaXN0
ZXJfYWRhcHRlcigpIGRvZXMgbm90IHNlZW0gdG8gZG8gdGhhdCBtYW55IHRoaW5ncyBpbiBzdWNo
IGEKPiBjYXNlLCB1bmxlc3MgSSBtaXNzIHNvbWV0aGluZy4gU2VlIFsxXS4KPiAKPiBDSgo+IAo+
IFsxXTogaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTQtcmMzL3NvdXJjZS9k
cml2ZXJzL21lZGlhLwo+IGNlYy9jb3JlL2NlYy1jb3JlLmMjTDM3MAoKT24gYSBzZWNvbmQgbG9v
aywgYXBwYXJlbnRseSB5b3UncmUgcmlnaHQgYW5kCmNlY19ub3RpZmllcl9jZWNfYWRhcF91bnJl
Z2lzdGVyKCkgc2hvdWxkIGJlIHVzZWQgdGhlcmUuCgotLSAKQmVzdCByZWdhcmRzLApEbWl0cnkK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
