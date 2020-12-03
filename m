Return-Path: <SRS0=q1ZK=FH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55050C64E7B
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Dec 2020 08:46:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFB4721D1A
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Dec 2020 08:46:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DFB4721D1A
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=boldwhite24.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Subject:To:From:Date:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3H0PMHnnBE3ySqqkxLjKmm5zbgEjq409XriJxg7imPg=; b=NU7TcNsqiAUbLARs/VjgonL4O5
	aRI0LuKlXn5G0dof4OMRm2kgCjlbm/0fXGm8Qz8nMblTTV4dCtGfFaOqVA6swaZgAMJ59bje3caII
	WUNPxIezE5EUH/A/PK5Myflm4GzPvz07RStH/3XHJUA++q8BQfUgWQ0woxjcu6uVTMAGdO5s9UeeF
	XYKjocM5F9PAWPrqnPhR3S4irNClt5U62ChN1rcWKaIKOJ59WAtaZllHCzykL3kmPpH57btptMzBY
	vEnRtKDjylOZ4Ki9vkkJTenKZ62nBcy/AMdxFScIqKPvwApmc+UAzKIwI8mvoktV5LBYnf0CEBL3O
	d0XlzxBA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kkkFW-0006dl-SQ; Thu, 03 Dec 2020 08:46:02 +0000
Received: from mail.boldwhite24.com ([80.211.42.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkkFV-0006dG-BE
 for linux-rockchip@lists.infradead.org; Thu, 03 Dec 2020 08:46:02 +0000
Received: by mail.boldwhite24.com (Postfix, from userid 1001)
 id 73307A29E2; Thu,  3 Dec 2020 08:45:20 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=boldwhite24.com;
 s=mail; t=1606985159;
 bh=hS3ibs4caZkahrzgcMN2TAJo2B2H5Muwb2NidDYlIzQ=;
 h=Date:From:To:Subject:From;
 b=oDxXX+mi9rKamQphTCkf8o74ifGfv6YaWMlUkAZBbBeC85Bb4qWSiTN/a2vOEJqsd
 iEmMDmb7zBvZakCyQ+LVbzl9vClxSQyET/5Qw5FXVE5EE2mohnaSPF5Ei2WEC1fene
 gPcFdqIFX200jUqNnDAt1vKFy3vjxuuCpgUOjqAjYsvrjnQwp1muFcLcA8UzowshIe
 mbqL1U3XT4do9llS+W/5yulPAQMBK1JvOLc+mp2Eb3A9+ej98DK2HC6MxvXbUbQlY7
 /V8wrAz9NhKat14cQ9jjei1JdtgQvq6ddyPab6tNKxIPkS0ECTpUkLAztHittNRFrS
 ZB/3dzN/WpEjw==
Received: by mail.boldwhite24.com for <linux-rockchip@lists.infradead.org>;
 Thu,  3 Dec 2020 08:45:13 GMT
Message-ID: <20201203074501-0.1.2m.amnd.0.38rs41j5c3@boldwhite24.com>
Date: Thu,  3 Dec 2020 08:45:13 GMT
From: =?UTF-8?Q?"Diego_S=C3=A1nchez"?= <diego.sanchez@boldwhite24.com>
To: <linux-rockchip@lists.infradead.org>
Subject: Disinfection
X-Mailer: mail.boldwhite24.com
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201203_034601_533299_12A891E8 
X-CRM114-Status: UNSURE (   0.78  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

R29vZCBtb3JuaW5nLAoKbG9va2luZyBmb3IgY29tcGFuaWVzIGludGVyZXN0ZWQgaW4gcmFpc2lu
ZyBhZGRpdGlvbmFsIGNhcGl0YWwgYnkgZGl2ZXJzaWZ5aW5nIHRoZWlyIG9mZmVyIGluIHNvYXBz
LCBsaXF1aWRzIGFuZCBnZWxzIGZvciBoYW5kIGRpc2luZmVjdGlvbiBhbmQgY29zbWV0aWNzIGZv
ciBib2R5IGFuZCBoYWlyIGNhcmUuCgpUaGUgZGlzdHJpYnV0aW9uIG9mIGlubm92YXRpdmUgcHJv
ZHVjdHMgY29ycmVzcG9uZGluZyB0byB0aGUgY3VycmVudCBwcmVmZXJlbmNlcyBvZiBjdXN0b21l
cnMgaW4gdGhlIGZpZWxkIG9mIGh5Z2llbmUgYW5kIHByZXZlbnRpdmUgaGVhbHRoY2FyZSBhbGxv
d3Mgb3VyIHBhcnRuZXJzIHRvIGdhaW4gbmV3IG1hcmtldHMgYW5kIGFjaGlldmUgYmV0dGVyIGVj
b25vbWljIHJlc3VsdHMuCgpJbiBhZGRpdGlvbiB0byBwcm9kdWN0cyB3aXRoIGJhY3RlcmljaWRh
bCBhY3Rpb24sIG91ciByYW5nZSBpbmNsdWRlcyBzaG93ZXIgZ2Vscywgc2hhbXBvb3MgYW5kIGhh
aXIgY29uZGl0aW9uZXJzLCBhcyB3ZWxsIGFzIGVmZmljaWVudCwgY29uY2VudHJhdGVkIGRldGVy
Z2VudHMuCgpUaGUgdmVyc2F0aWxpdHkgKHN1aXRhYmxlIGZvciBhbGwgc2tpbiB0eXBlcykgY29t
YmluZWQgd2l0aCBhbiBhZmZvcmRhYmxlIHByaWNlIG1lYW5zIHRoYXQgY3VzdG9tZXJzIG1ha2Ug
YW4gaW5mb3JtZWQgY2hvaWNlIG9mIGEgcHJvZHVjdCBhbW9uZyBvdGhlcnMgYXZhaWxhYmxlIG9u
IHRoZSBtYXJrZXQuCgpBcmUgeW91IGludGVyZXN0ZWQgaW4gY29vcGVyYXRpb24/CgpEaWVnbyBT
w6FuY2hlegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
