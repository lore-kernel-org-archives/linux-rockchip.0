Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA38E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 21:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=76R6WT7rG0GEkWYUmSZ755YNA6P2roHxYx3jn+b2rGA=; b=pxeQR4btLYl03j
	f2vHxiKF/rX5sQva8CNB0Iy763A6mwC8Pnyj28x4lGMH59Lx/Gk0k11RaS+i8Q1VzmZNPwQqxj3ph
	7FPsNJnpaH4AYnNhoZc42C4fJ3BmZQhjBX2IdAqGe/5+aCyCU8OTWbZptSrfeD5ZVAt+rAUX3tCRz
	xmgNAjaXEiQtrYKNcEhL9y6U1HS2ObebBYYzGr5XTeB0CQy9qxBL3ysTg6Lh6s+3roBWykhKge1nb
	wDJsmP4mBsKITXXioblWsvz/gaQNtrvwN8o+xiHeXsHKEsI/C+BuFFNDOAhHqs4rz6LI/HS2BgPN2
	UlUiUAgUfDmKrH54jTZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOkuS-000000069Eo-2107;
	Fri, 20 Dec 2024 21:51:48 +0000
Received: from out-189.mta1.migadu.com ([2001:41d0:203:375::bd])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOkuP-000000069Dn-3Q04
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 21:51:47 +0000
Date: Fri, 20 Dec 2024 23:51:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kazlauskas.me;
	s=key1; t=1734731497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=U0oxKbsBLRQzT7+iNTJfyV/PV5kIXM6sorTrWuEHVps=;
	b=mdLPVnGCFwnTsa178BAvEh28hQCFGpQ24mPlRJjghi/MLHAX5MvaCwGNPSaG0uIbz9UJh9
	gAjdKQm1YldOC7qDZjtBGWKEdC1o39CzJ9iaHujJw0iHxJfxxn5jrMMZOFuDHDErpTMNRR
	0Dd29TNX7crlVNBKsuS6o40s1THig7g=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Simonas Kazlauskas <linux-rockchip@kazlauskas.me>
To: linux-rockchip@lists.infradead.org
Subject: RK3328: watchdog fails to reset on Radxa Rock Pi E
Message-ID: <345dtojzib23cd3dnqe4wftqbwlu3ozey6oc4qrkcf3nbbehua@3l64mrtmrgvq>
MIME-Version: 1.0
Content-Disposition: inline
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_135146_218080_DCF6DBB6 
X-CRM114-Status: GOOD (  12.06  )
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

SGVsbG8gZXZlcnlvbmUsCgpJIGhhdmUgcmVjZW50bHkgc3RhcnRlZCBsb29raW5nIGF0IFJvY2tj
aGlwLWJhc2VkIGRldmljZXMgYW5kIHJlY2VudGx5IAphY3F1aXJlZCBhIFJvY2sgUGkgRSB0byBw
bGF5IHdpdGguIEhvd2V2ZXIgcXVpdGUgcXVpY2tseSBJIGhhdmUgZm91bmQgdGhhdCB0aGUgCndh
dGNoZG9nIGlzbid0IGFibGUgdG8gcmVzZXQgbXkgYm9hcmQg4oCTIHRoZSBib2FyZCBoYW5ncyBp
bnN0ZWFkIHVudGlsIHRoZSAKcGh5c2ljYWwgcmVzZXQgcGluIGlzIGFzc2VydGVkLgoKSSB3YXMg
YWJsZSB0byBtaW5pbWl6ZSB0aGUgdGVzdCBkb3duIHRvIGEgc2ltcGxlIGBtdyBmZjFhMDAwMCAx
YCBmcm9tIHRoZSAKVS1Cb290IHNoZWxsLiBUaGlzIGNvbW1hbmQgYmFzaWNhbGx5IGp1c3QgZW5h
YmxlcyB0aGUgd2F0Y2hkb2cgKHdoaWNoIHRoZW4gCmltbWVkaWF0ZWxseSBhdHRlbXB0cyB0byBy
ZXNldCB0aGUgYm9hcmQuKSBTbyB0aGlzIGlzbid0IHN0cmljdGx5IGEgcHJvYmxlbSAKd2l0aCBM
aW51eCBhbmQgbW9yZSBzbyB3aXRoIGVpdGhlciB0aGUgYm9hcmQsIHRoZSBjaGlwIG9yIHRoZSBp
bnRlcmFjdGlvbiBvZiAKdGhlIHR3by4KClRocm91Z2ggYSBjYXJlZnVsIHJlYWRpbmcgb2YgdGhl
IFJLMzMyOCBUUk0gSSB0aGVuIGZvdW5kIHRoYXQgdGhlIGZvbGxvd2luZyAKaG9sZCB0cnVlOgoK
KiBJbml0aWFsIHN0YXRlIGZvciBgQ1JVX0dMQl9DTlRfVEgud2R0X2dsYl9zcnN0X2N0cmxgIGlz
IGAwYCwgd2hpY2ggc2VsZWN0cyAKICAgdGhlIHNlY29uZCByZXNldCBtb2RlOwoqIFRoaXMgcmVz
ZXQgbW9kZSBhdm9pZHMgcmVzZXR0aW5nIHRoZSBHUkYgYW5kIEdQSU8gY29tcG9uZW50czsKKiBB
bmQgaXQgdHVybnMgb3V0IHRoYXQgbWFudWFsbHkgaW52b2tpbmcgdGhlIHNlY29uZCByZXNldCBi
eSB3cml0aW5nIAogICBgMHhFQ0E4YCBpbnRvIHRoZSBgQ1JVX0dMQl9TUlNUX1NORF9WQUxVRWAg
TU1JTyByZWdpc3RlciB3aWxsIGhhdmUgdGhlIGJvYXJkIAogICBoYW5nIG11Y2ggdGhlIHNhbWUg
d2F5LgoKSSdtIG5vdCBxdWl0ZSBzdXJlIHdoYXQncyBjYXVzaW5nIHRoZSBzZWNvbmQgcmVzZXQg
bm90IHRvIHdvcmsgb24gbXkgCmNoaXAvYm9hcmTigKYgQnV0IGFzIHNvb24gYXMgSSBzZXQgYENS
VV9HTEJfQ05UX1RILndkdF9nbGJfc3JzdF9jdHJsID0gMWAgdG8gCmhhdmUgd2F0Y2hkb2cgdGlt
ZW91dHMgdXNlIHRoZSBmaXJzdCByZXNldCBtb2RlLCB0aGUgd2F0Y2hkb2cgcmVzZXQgd29ya3Mg
CmNvcnJlY3RseS4KCldoaWxlIEkgY2FuIHNlZSB3aHkgcHJlc2VydmluZyB0aGUgR1BJTyBzdGF0
ZSBtaWdodCBiZSB1c2VmdWwgb24gYSB3YXRjaGRvZyAKcmVzZXQsIGl0IHNlZW1zIGxpa2UgYSBw
b29yIGRlZmF1bHQgdG8gbWUgKHdoYXQgaWYgdGhlIEdQSU8gc3RhdGUgY2F1c2VkIHRoZSAKc3Rh
dGUgd2hpY2ggZm9yY2VkIFdEVCB0byBsYXBzZSBpbiB0aGUgZmlyc3QgcGxhY2U/KQoKSSB3b3Vs
ZCBsaWtlIHRvIHByb3Bvc2UgdGhhdCBvbiBSSyogdGhlIGBDUlVfR0xCX0NOVF9USC53ZHRfZ2xi
X3Nyc3RfY3RybGAgaXMgCnNldCB0byBgMWAgKHBvc3NpYmx5IHByb3ZpZGluZyBhIGtlcm5lbCBh
cmd1bWVudCB0byBvdmVycmlkZSB0aGlzIGJlaGF2aW91cj8pIApEb2VzIHRoYXQgc291bmQgcmVh
c29uYWJsZT8gSXMgYWRkaW5nIHRoaXMgZnVuY3Rpb25hbGl0eSB0byAKYGRyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2NsaypgIHRoZSByaWdodCBhcHByb2FjaD8KClRoYW5rIHlvdSwKUy4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
