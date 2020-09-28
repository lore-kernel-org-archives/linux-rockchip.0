Return-Path: <SRS0=Ahoz=DF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C16C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 03:15:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECF54239A1
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 03:15:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MmauCp4F"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ECF54239A1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WHFX5kZuGQMun3zi/7QowPIFIXiQSPtdROlZxp7aJCA=; b=MmauCp4FV4RKc8joAvDuNc/Aq
	Ly3+FQkkWAYJOjaVarcmJxaEoCsknMLkxRBUo/zaJYat6veJ4SgbAKiiNfcnjYFOWd5vwiBslYvY2
	hYjoMOf8kMmQlAXQUJmn15ivbebsuJTzltkuXh5r13ETarv+nOkegrp/4mXBOf2OjSiLKl44joFhu
	tNH47KHPtRs2Bd4JSosdtngXt6qkkLt3gYmKaQFT3p+puxC2qE6MSb5QscUo/PQPt68p4LBXw8+cc
	scLS6JvI/Mm3BVLwHjR2RaCAVBB+CuuGzW8yeZujgdKoy2261H4KT3MzWcwEhgwel1rzc/hyPjx8N
	5SlSqv9Jw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMjdR-0004rq-Ui; Mon, 28 Sep 2020 03:15:30 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMjdP-0004rM-C6
 for linux-rockchip@lists.infradead.org; Mon, 28 Sep 2020 03:15:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 0984DAC19;
 Mon, 28 Sep 2020 03:15:24 +0000 (UTC)
Subject: Re: [BUG] discard_granularity is 0 on rk3399-gru-kevin
To: Vicente Bergas <vicencb@gmail.com>
References: <2438c500-eb41-4ae2-b890-83d287ad3bcd@gmail.com>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Message-ID: <32986577-b2c2-98ac-1a30-28790414b25d@suse.de>
Date: Mon, 28 Sep 2020 11:15:16 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <2438c500-eb41-4ae2-b890-83d287ad3bcd@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_231527_629673_F116A112 
X-CRM114-Status: GOOD (  15.55  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>, Evan Green <evgreen@chromium.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Xiao Ni <xni@redhat.com>,
 Hannes Reinecke <hare@suse.de>, Jack Wang <jinpu.wang@cloud.ionos.com>,
 Christoph Hellwig <hch@lst.de>, Enzo Matsumiya <ematsumiya@suse.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMC85LzI4IDA0OjI5LCBWaWNlbnRlIEJlcmdhcyB3cm90ZToKPiBIaSwKPiBzaW5jZSBy
ZWNlbnRseSB0aGUgcmszMzk5LWdydS1rZXZpbiBpcyByZXBvcnRpbmcgdGhlIHRyYWNlIGJlbG93
Lgo+IFRoZSBpc3N1ZSBoYXMgYmVlbiB1bmNvdmVyZWQgYnkKPiDCoGIzNWZkNzQyMmMyZjhlMDQ0
OTZmNWE3NzBiZDRlMWEyMDU0MTRiM2YKPiDCoGJsb2NrOiBjaGVjayBxdWV1ZSdzIGxpbWl0cy5k
aXNjYXJkX2dyYW51bGFyaXR5IGluCj4gX19ibGtkZXZfaXNzdWVfZGlzY2FyZCgpCgpIaSBWaWNl
bnRlLAoKVGhhbmtzIGZvciB0aGUgaW5mb3JtYXRpb24uIEl0IHNlZW1zIHRoZSBkZXZpY2Ugd2l0
aCBmMmZzIGRlY2xhcmVzIHRvCnN1cHBvcnQgRElTQ0FSRCBidXQgZG9uJ3QgaW5pdGlhbGl6ZSBk
aXNjYXJkX2dyYW51bGFyaXR5IGZvciBpdHMgcXVldWUuCgpDYW4gSSBrbm93IHdoaWNoIGJsb2Nr
IGRyaXZlciBpcyB1bmRlciBmMmZzID8KClRoYW5rcy4KCkNvbHkgTGkKCgo+IAo+IFdBUk5JTkc6
IENQVTogMCBQSUQ6IDEzNSBhdCBfX2Jsa2Rldl9pc3N1ZV9kaXNjYXJkKzB4MjAwLzB4Mjk0Cj4g
Q1BVOiAwIFBJRDogMTM1IENvbW06IGYyZnNfZGlzY2FyZC0xNyBOb3QgdGFpbnRlZCA1LjkuMC1y
YzYgIzEKPiBIYXJkd2FyZSBuYW1lOiBHb29nbGUgS2V2aW4gKERUKQo+IHBzdGF0ZTogMDAwMDAw
MDUgKG56Y3YgZGFpZiAtUEFOIC1VQU8gQlRZUEU9LS0pCj4gcGMgOiBfX2Jsa2Rldl9pc3N1ZV9k
aXNjYXJkKzB4MjAwLzB4Mjk0Cj4gbHIgOiBfX2Jsa2Rldl9pc3N1ZV9kaXNjYXJkKzB4NTQvMHgy
OTQKPiBzcCA6IGZmZmY4MDAwMTFkZDNiMTAKPiB4Mjk6IGZmZmY4MDAwMTFkZDNiMTAgeDI4OiAw
MDAwMDAwMDAwMDAwMDAwIHgyNzogZmZmZjgwMDAxMWRkM2NjNCB4MjY6Cj4gZmZmZjgwMDAxMWRk
M2UxOCB4MjU6IDAwMDAwMDAwMDAwNGU2OWIgeDI0OiAwMDAwMDAwMDAwMDAwYzQwIHgyMzoKPiBm
ZmZmMDAwMGYxZGVhYWYwIHgyMjogZmZmZjAwMDBmMjg0OTIwMCB4MjE6IDAwMDAwMDAwMDAyNzM0
ZDggeDIwOgo+IDAwMDAwMDAwMDAwMDAwMDggeDE5OiAwMDAwMDAwMDAwMDAwMDAwIHgxODogMDAw
MDAwMDAwMDAwMDAwMCB4MTc6Cj4gMDAwMDAwMDAwMDAwMDAwMCB4MTY6IDAwMDAwMDAwMDAwMDAw
MDAgeDE1OiAwMDAwMDAwMDAwMDAwMDAwIHgxNDoKPiAwMDAwMDAwMDAwMDAwMzk0IHgxMzogMDAw
MDAwMDAwMDAwMDAwMCB4MTI6IDAwMDAwMDAwMDAwMDAwMDAgeDExOgo+IDAwMDAwMDAwMDAwMDAw
MDAgeDEwOiAwMDAwMDAwMDAwMDAwOGIwIHg5IDogZmZmZjgwMDAxMWRkM2NiMCB4OCA6Cj4gMDAw
MDAwMDAwMDA0ZTY5YiB4NyA6IDAwMDAwMDAwMDAwMDAwMDAgeDYgOiBmZmZmMDAwMGYxOTI2NDAw
IHg1IDoKPiBmZmZmMDAwMGYxOTQwODAwIHg0IDogMDAwMDAwMDAwMDAwMDAwMCB4MyA6IDAwMDAw
MDAwMDAwMDBjNDAgeDIgOgo+IDAwMDAwMDAwMDAwMDAwMDggeDEgOiAwMDAwMDAwMDAwMjczNGQ4
IHgwIDogMDAwMDAwMDAwMDAwMDAwMCBDYWxsIHRyYWNlOgo+IF9fYmxrZGV2X2lzc3VlX2Rpc2Nh
cmQrMHgyMDAvMHgyOTQKPiBfX3N1Ym1pdF9kaXNjYXJkX2NtZCsweDEyOC8weDM3NAo+IF9faXNz
dWVfZGlzY2FyZF9jbWRfb3JkZXJseSsweDE4OC8weDI0NAo+IF9faXNzdWVfZGlzY2FyZF9jbWQr
MHgyZTgvMHgzM2MKPiBpc3N1ZV9kaXNjYXJkX3RocmVhZCsweGU4LzB4MmYwCj4ga3RocmVhZCsw
eDExYy8weDEyMAo+IHJldF9mcm9tX2ZvcmsrMHgxMC8weDFjCj4gLS0tWyBlbmQgdHJhY2UgZTRj
ODAyM2QzM2RmZTc3YSBdLS0tCj4gbW1jYmxrMXAyOiBFcnJvcjogZGlzY2FyZF9ncmFudWxhcml0
eSBpcyAwLgo+IG1tY2JsazFwMjogRXJyb3I6IGRpc2NhcmRfZ3JhbnVsYXJpdHkgaXMgMC4KPiA8
bGFzdCBtZXNzYWdlIHJlcGVhdGVkIG11bHRpcGxlIHRpbWVzPgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
