Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F75ACE7B11
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 20:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ksb/nzmJH7rU9dowyK4PAh8rUWK01I3ZKt4bgl0Ot8g=; b=GAtGihujxLZiYC
	jAZIpy5Ei9irJikM4OjmdfcwXPLaXf/C+YgBeVOjTdhNpaFHmuu7EVCn3UEoNawr11oA1ROf0RCap
	al9Jb63cki39/Ttogt2SeKVJhzfy1Pty/sugtbrHrOio+R8d6u1jz+G2/3IlPb/GhW5E9Nc1pz5bT
	iGwi+448htYpru4gcHnAhSbM3qdhw3MJ3oQANCqygfl6C7iFvmHQEfODO8MGKpUJcuYKdOQw/kWNo
	JdkW5PhacOQDwUKWuedUZPT62R2snGX90UrSxicKvu519d3vOwT9Gz1Rq2v/6BjH8/5ocO5u1ZTWd
	2g9/rdDJ8N8TgIRZCjXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smfAR-0000000DUr4-3tDk;
	Fri, 06 Sep 2024 20:02:51 +0000
Received: from a7-48.smtp-out.eu-west-1.amazonses.com ([54.240.7.48])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smf9v-0000000DUjR-13R4;
	Fri, 06 Sep 2024 20:02:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1725652935;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding;
	bh=vj3ywybZ5L9YAyh1lIVp6jPH3WTnH0ExmDAOYOwj8dA=;
	b=KBfwCypvcRPdsL/Eo0DFYXrF2uApqQtwT6PvonrhhJDvZLsAxau0euqDaiSDUdxu
	+/Nj4l2RhQ7GKV/tUfO2IjO60l+fvzncB2zyRf69Takz910PdyUltEEoBwdr7wuMPUY
	TxmJ8RKKHAH2z+TSt3OtZK3L/1CK6ruxVr1azoWyL/wQz//PPoDzztOKqKFMRJ21oaH
	qpe0NeQtrynWDqVbLCylgvFwLIOVMnXcQ3ZhdO4ZoUsqf5nn0yzN7zMSk6UvkGeugp5
	qxdYa+U8y5zO7wpQ+U1gxA0TxQAYXB9o27RUjzPqIAn+Q/kiWB7bZ0/CNE51UATeqww
	CCHi7mEaZA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1725652935;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=vj3ywybZ5L9YAyh1lIVp6jPH3WTnH0ExmDAOYOwj8dA=;
	b=dOdrA8+jrpjcFCumpeWG9DyalV69rl6yMTX0Ziye+dYBdM81FVIz/vI37I4GiNix
	FsIgyxdjuYRqfpvwiZ9N5tPCLv/jH02ra7BMfTmE0rwidMTDNCapSlvPCFUWKTM3UQS
	TZiA8gddWV92lQNq3O9OlqVvGuVdspVajZAwJI9Y=
Message-ID: <01020191c8ee20f9-9382cd7e-c3f5-4e19-a9d2-9222fd36e789-000000@eu-west-1.amazonses.com>
Subject: Re: [PATCH v4 0/4] Add Synopsys DesignWare HDMI RX Controller
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>, 
	Tim Surber <me@timsurber.de>
Cc: heiko <heiko@sntech.de>, mchehab <mchehab@kernel.org>, 
	robh <robh@kernel.org>, krzk+dt <krzk+dt@kernel.org>, 
	conor+dt <conor+dt@kernel.org>, mturquette <mturquette@baylibre.com>, 
	sboyd <sboyd@kernel.org>, "p.zabel" <p.zabel@pengutronix.de>, 
	"jose.abreu" <jose.abreu@synopsys.com>, 
	"nelson.costa" <nelson.costa@synopsys.com>, 
	"shawn.wen" <shawn.wen@rock-chips.com>, 
	hverkuil <hverkuil@xs4all.nl>, 
	hverkuil-cisco <hverkuil-cisco@xs4all.nl>, 
	kernel <kernel@collabora.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	linux-media <linux-media@vger.kernel.org>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-rockchip <linux-rockchip@lists.infradead.org>
Date: Fri, 6 Sep 2024 20:02:14 +0000
In-Reply-To: <1919d97402f.b403f96c443474.1860819764033812181@collabora.com>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
	 <6f5c4ebb-84ab-4b65-9817-ac5f6158911f@timsurber.de>
	 <19150697f90.11f343d091099757.4301715823219222254@collabora.com>
	 <74850340-b662-4a58-b5eb-a4e352c5002c@timsurber.de>
	 <1919d97402f.b403f96c443474.1860819764033812181@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.06-54.240.7.48
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_130219_471637_573877DB 
X-CRM114-Status: GOOD (  13.30  )
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

SGkgU2hyZXlhLAoKTGUgamV1ZGkgMjkgYW/Du3QgMjAyNCDDoCAxNTozMyArMDUzMCwgU2hyZWV5
YSBQYXRlbCBhIMOpY3JpdMKgOgo+IMKgLS0tLSBPbiBUaHUsIDI5IEF1ZyAyMDI0IDAzOjQzOjQw
ICswNTMwwqAgVGltIFN1cmJlcsKgIHdyb3RlIC0tLSAKPiDCoD4gSGkgU2hyZWV5YSwKPiDCoD4g
Cj4gwqA+IGFub3RoZXIgaGludDoKPiDCoD4gCj4gwqA+IENoYW5naW5nIHRoZSBFRElEIGxpa2Ug
eW91IGRlc2NyaWJlZCBmaXhlZCB0aGUgNGs2MGZwcyBCR1IzIGlucHV0Lgo+IMKgPiAKPiDCoD4g
QnV0IHN0aWxsIGZvciBOVjE2L05WMjQgKEkgY2FuJ3Qgb3V0cHV0IE5WMTIgZm9yIHNvbWUgcmVh
c29uKSB0aGVyZSBpcyAKPiDCoD4gdGhlIGVycm9yIHdoaWNoIE5pY29sYXMgZGVzY3JpYmVkLgo+
IMKgPiAKPiDCoD4gVGhlIG91dHB1dCBmcm9tIHY0bDItY3RsIGZvciBOVjE2L05WMjQgaXM6Cj4g
wqA+IAo+IMKgPiBQbGFuZSAwwqDCoMKgwqDCoMKgwqDCoMKgwqAgOgo+IMKgPsKgIMKgwqDCoMKg
wqDCoCBCeXRlcyBwZXIgTGluZSA6IDM4NDAKPiDCoD7CoCDCoMKgwqDCoMKgwqAgU2l6ZSBJbWFn
ZcKgwqDCoMKgIDogODI5NDQwMAo+IMKgPiAKPiDCoD4gQWNjb3JkaW5nIHRvIE5pY29sYXMgdGhl
cmUgc2hvdWxkIGJlIGFuIGFkZGl0aW9uYWwgcGxhbmUvbW9yZSBtZW1vcnkgCj4gwqA+IHJlc2Vy
dmVkLgo+IMKgPiAKPiAKPiBZZXMsIGl0IGNvdWxkIGJlIHBvc3NpYmxlIHRoYXQgdGhlIGltYWdl
c2l6ZSBpcyBpbmNvcnJlY3QgYXMgd2UgbWFkZSBzb21lCj4gbW9kaWZpY2F0aW9ucyByZWxhdGVk
IHRvIGl0IGluIHY0LiBJJ2xsIGluY3JlYXNlIHRoaXMgYXMgcmVxdWlyZWQgYnkgdGhlIE5WMTIv
MjQKPiBhbmQgc2VlIGlmIHRoYXQgZml4ZXMgdGhlIGlzc3VlLgoKClNvcnJ5IGZvciB0aGUgc2xv
dyBmZWVkYmFjaywganVzdCBub3RpY2VkIHRoaXMgbWVzc2FnZS4gUGxlYXNlIG1ha2Ugc3VyZSB0
byB1cwp2NGwyLWNvbW1vbiwgdGhlc2UgZXhpc3RzIGV4YWN0bHkgYmVjYXVzZSBubyBvbmUgY2Fu
IGdldCBzdHJpZGVzIGFuZCBpbWFnZSBzaXplCnJpZ2h0IG9uIGZpcnN0IGdvLgoKTmljb2xhcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
