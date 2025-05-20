Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53B3EC3ABDD
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 18:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WC0Os54+jf7Pg2cEJlgLZ6ItbwwPnTnxnztORwgLI9c=; b=VvVN8oIzKYpSSn
	QWK2XVGrQTzEIk1ogXbEUJSg50DPJBTyGNEe2qHjruN0aRVLDkr4N5EdntyjH/1eOdxF7LVkOMNZi
	5Jm1GOqgarM/NCneDy8uAz9dbQzjXhi7jiA7sKAaADl95I0IwWTBG/6omBA2D7dVN5+8P3d1BE0F5
	D7/40DSSdn7n5OgE5iJFyeIb+zjUg9gUIIRKL13ERBdOI5Zw/3nyMlnU40RQGsUa5X9MUBagCibRU
	sdnZrKwvTqSMx75nd2slG8kHyxFdkBW10f/14RyDVj/jpsgbKYqmnCBplZqQn71Piy6OOW4TYqPcK
	LQEVWX0G00kYpvWjOoCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHRpe-0000000DoJ3-333s;
	Tue, 20 May 2025 18:36:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHRpc-0000000DoIV-1ZHs;
	Tue, 20 May 2025 18:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=dQZzSpw38okBWKsZXnPL9bfHWKnBcYjDpFLGg/aiMoo=; b=HMouFCEzqAfmrdwzBosxpq8Ob7
	kXuWO5h3ZwIfKoSWNU/C+KZtSD2ieMlvRN/nO5XwLfDR9XtZuo24ObGryH16edj7eAuzsY2M+mebl
	JKkhoZEbgQu+90bWRRfXEo42vPl7EQwgfXkSCKgPHF+EBQrMaaR3KPVMRZsB6r1bWXZynCul+//t6
	6B3nDgMsQM/jc12a9l2zWppqLmeNI9jnF9reWAeB5E08hqfISdglgB7BQDvaIGe0rGhdnFIznPY70
	kd+xLzQ6Tk2KrceUssdV0FgBIMVn5DpPX/X8PvSeScZxKHNQp6j9DKZ4BfUoIoJTKO1tZrcYKF7gO
	kWs20Rug==;
Received: from [61.8.146.112] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uHRpP-000495-Ib; Tue, 20 May 2025 20:36:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: ulf.hansson@linaro.org, mark.rutland@arm.com, lpieralisi@kernel.org,
 sudeep.holla@arm.com, Robin Murphy <robin.murphy@arm.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] firmware: smccc: Stub out get_conduit()
Date: Tue, 20 May 2025 20:36:38 +0200
Message-ID: <2195785.VLH7GnMWUR@phil>
In-Reply-To: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com>
References: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_113652_432047_B7B1C271 
X-CRM114-Status: GOOD (  15.23  )
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

QW0gRGllbnN0YWcsIDIwLiBNYWkgMjAyNSwgMTk6MTA6MTYgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBSb2JpbiBNdXJwaHk6Cj4gVmFyaW91cyBjYWxsZXJzIHVzZSBhcm1f
c21jY2NfMV8xX2dldF9jb25kdWl0KCkgdG8gZ3VhcmQgdGhlaXIKPiBhcm1fc21jY2Nfc21jKCkg
Y2FsbHMgLSBzaW5jZSB0aGUgbGF0dGVyIGlzIGFscmVhZHkgc3R1YmJlZCBvdXQgdG8KPiBzdXBw
b3J0IG9wdGlvbmFsIHVzYWdlIGluICFIQVZFX0FSTV9TTUNDQyBjb25maWdzLCBkbyB0aGUgZXF1
aXZhbGVudAo+IGZvciB0aGUgZm9ybWVyIGFzIHdlbGwgdG8gbWFrZSBsaWZlIGVhc2llci4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgoKUmV2
aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpXYXkgbmljZXIgdGhh
biB0byByZXF1aXJlIGFybTMyIHJvY2tjaGlwIHBsYXRmb3JtcyB0bwplbmFibGUgc21jYyBzdHVm
ZiwgZXZlbiBpZiBub3QgaW4gdXNlLgoKPiAtLS0KPiAgaW5jbHVkZS9saW51eC9hcm0tc21jY2Mu
aCB8IDcgKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvYXJtLXNtY2NjLmggYi9pbmNsdWRlL2xpbnV4L2FybS1z
bWNjYy5oCj4gaW5kZXggYTM4NjNkYTE1MTBlLi45N2RjNGQ0N2M2NjQgMTAwNjQ0Cj4gLS0tIGEv
aW5jbHVkZS9saW51eC9hcm0tc21jY2MuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvYXJtLXNtY2Nj
LmgKPiBAQCAtMzE1LDcgKzMxNSwxNCBAQCBlbnVtIGFybV9zbWNjY19jb25kdWl0IHsKPiAgICoK
PiAgICogV2hlbiBTTUNDQ3YxLjEgaXMgbm90IHByZXNlbnQsIHJldHVybnMgU01DQ0NfQ09ORFVJ
VF9OT05FLgo+ICAgKi8KPiArI2lmZGVmIENPTkZJR19IQVZFX0FSTV9TTUNDQ19ESVNDT1ZFUlkK
PiAgZW51bSBhcm1fc21jY2NfY29uZHVpdCBhcm1fc21jY2NfMV8xX2dldF9jb25kdWl0KHZvaWQp
Owo+ICsjZWxzZQo+ICtzdGF0aWMgaW5saW5lIGVudW0gYXJtX3NtY2NjX2NvbmR1aXQgYXJtX3Nt
Y2NjXzFfMV9nZXRfY29uZHVpdCh2b2lkKQo+ICt7Cj4gKwlyZXR1cm4gU01DQ0NfQ09ORFVJVF9O
T05FOwo+ICt9Cj4gKyNlbmRpZgo+ICAKPiAgLyoqCj4gICAqIGFybV9zbWNjY19nZXRfdmVyc2lv
bigpCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
