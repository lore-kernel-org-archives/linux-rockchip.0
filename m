Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23AC5C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:28:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B217464E24
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:28:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B217464E24
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VZ2fj/7WJ99RGNPDa6oXhM6/BY24s8LB/wlBam7g/6w=; b=JsaY2C5crs2S3WvHJsqCg/ft6
	8oYHTDGFrOBkjuBXs9lP4XyULX/G6PVJTG/ATyJ0tgcgCzXUFKhf1MWdpqErhe3GCT5qWxiiwmyvZ
	kkLIRVCPzTITWVIJAnO64R89uATF+35lm6MgETbviyu4IRf8lmdhKWZ5mcPxzU7pLhm+skHIBQdpv
	LO73+N34LxsH3vilwnUFdINOnTaTiiSZ960F90zfksu4bdhLUuaYp+zeo1361/zLJ9v/atPw3z6GP
	R4vIyVmvZ2jBs5RndxxyjoRqsf2N3ZtgGGGSf+fg5t4dEFF1G0EKJdHgEjhmGb8qVMPcWadOejPOg
	4Edjavz6Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCIC5-0004pZ-QQ; Wed, 17 Feb 2021 08:28:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCIC1-0004oI-Iz; Wed, 17 Feb 2021 08:28:19 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350] (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E4BA41F44D79;
 Wed, 17 Feb 2021 08:28:12 +0000 (GMT)
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
To: Greg KH <gregkh@linuxfoundation.org>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
Date: Wed, 17 Feb 2021 09:28:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <YCzO7SRmBKzGeMUS@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_032818_133065_8F06881B 
X-CRM114-Status: GOOD (  15.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 devel@driverdev.osuosl.org, Anson.Huang@nxp.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org,
 shengjiu.wang@nxp.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE3LzAyLzIwMjEgw6AgMDk6MDgsIEdyZWcgS0ggYSDDqWNyaXTCoDoKPiBPbiBXZWQsIEZl
YiAxNywgMjAyMSBhdCAwOTowMjo0OEFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToK
Pj4gVGhlIElNWDhNUSBnb3QgdHdvIFZQVXMgYnV0IHVudGlsIG5vdyBvbmx5IEcxIGhhcyBiZWVu
IGVuYWJsZWQuCj4+IFRoaXMgc2VyaWVzIGFpbSB0byBhZGQgdGhlIHNlY29uZCBWUFUgKGFrYSBH
MikgYW5kIHByb3ZpZGUgYmFzaWMKPj4gSEVWQyBkZWNvZGluZyBzdXBwb3J0Lgo+IFdoeSBhcmUg
eW91IGFkZGluZyB0aGlzIGRpcmVjdGx5IHRvIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS8gYW5kIG5v
dAo+IGRyaXZlcnMvbWVkaWEvPyAgV2h5IGNhbid0IHRoaXMganVzdCBnbyB0byB0aGUgbWFpbiBs
b2NhdGlvbiBhbmQgbm90Cj4gbGl2ZSBpbiBzdGFnaW5nPwoKRzIvSEVWQyBpcyBhZGRlZCBpbnNp
ZGUgdGhlIGFscmVhZHkgZXhpdGluZyBIYW50cm8gZHJpdmVyLCBpdCBpcyAianVzdCIKYW4gb3Ro
ZXIgY29kZWMgZnJvbSBIYW50cm8gZHJpdmVyIHBvaW50IG9mIHZpZXcuCkluIGFkZGl0aW9uIG9m
IHRoYXQgdjRsMi1oZXZjIHVBUEkgaXMgc3RpbGwgdW5zdGFibGUuCk9uZSBnb2FsIG9mIHRoaXMg
c2VyaWVzIGlzIHRvIGhhdmUgb25lIG1vcmUgY29uc3VtZXIgb2YgdGhpcyB2NGwyLWhldmMKdUFQ
SSBzbyBtYXliZSB3ZSBjYW4gY2xhaW0gaXQgdG8gYmUgc3RhYmxlIGVub3VnaCB0byBtb3ZlIGF3
YXkgZnJvbSBzdGFnaW5nCmFuZCB0aGVuIGRvIHRoZSBzYW1lIGZvciBIYW50cm8gZHJpdmVyLiBU
aGF0IHdvdWxkIGJlIGEgZ3JlYXQgYWNoaWV2ZW1lbnQgIQoKQmVuamFtaW4KCj4gdGhhbmtzLAo+
Cj4gZ3JlZyBrLWgKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
