Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF87C433DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 12:36:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C9192396F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 12:36:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C9192396F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OJNxFf/mfJen8vudgh11+ez0YtG4JWe/+dR3TNMSdTc=; b=mpxConae+yqU2xmaYKPziKAOnU
	v2DbJIp48/HCt6yarAFw2ew3uINL4MfnAjHKs33k9fawu6qDUiLonY5wX0pllGpGvYF8BN5PaGnTB
	B4weIpFYJLzVKtp7rfxTiMmnBG2KboxmEpuDsi74HEHbIC5D0ehRNKl6bhG7VYMH6+fmUuwxBwd1+
	82WCgacJnlkVpI0srIQjHH/BdZ9tAPMGhqE5sJiK418cMQisd9Z7ztAZ7oQP9Ce+nyqwvyg4Dbieq
	/I5/CCaR9P0bxnQmZh5bMo3ktqV44I+fuh0unJ99xJ/kODiydfLLnKqlVu/8kzGrlBIMLKZFgFWSn
	+FfPdOyA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyDTc-0003MQ-0n; Sat, 09 Jan 2021 12:36:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyDTW-0003KO-W3
 for linux-rockchip@lists.infradead.org; Sat, 09 Jan 2021 12:36:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 44C971F45F1B
Message-ID: <ad42babfca4a34d31875ff4f1250f4869be3a5a1.camel@collabora.com>
Subject: Re: [PATCH v3] staging: media: rkvdec: rkvdec.c: Use semicolon in
 place of comma
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Sri Laasya Nutheti <nutheti.laasya@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sat, 09 Jan 2021 09:36:01 -0300
In-Reply-To: <20210109121349.wuf7xpkqicjadlnf@nutheti>
References: <20210109121349.wuf7xpkqicjadlnf@nutheti>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_073611_209163_E166F806 
X-CRM114-Status: GOOD (  11.13  )
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

T24gU2F0LCAyMDIxLTAxLTA5IGF0IDE3OjQzICswNTMwLCBTcmkgTGFhc3lhIE51dGhldGkgd3Jv
dGU6Cj4gTGluZSAxNDYgaGFkIGEgY29tbWEgaW4gcGxhY2Ugb2YgYSBzZW1pY29sb24uIEZpeCBp
dC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTcmkgTGFhc3lhIE51dGhldGkgPG51dGhldGkubGFhc3lh
QGdtYWlsLmNvbT4KPiAtLS0KPiB2MzogQ29ycmVjdGVkIGVtYWlsIHJlY2lwaWVudHMKPiDCoGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCAyICstCj4gwqAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9ya3ZkZWMvcmt2ZGVjLmMKPiBpbmRleCBhYTRmOGMyODc2MTguLmQzZWI4MWVlOGRjMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gKysrIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IEBAIC0xNDMsNyArMTQzLDcg
QEAgc3RhdGljIHZvaWQgcmt2ZGVjX3Jlc2V0X2ZtdChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LCBz
dHJ1Y3QgdjRsMl9mb3JtYXQgKmYsCj4gwqDCoMKgwqDCoMKgwqDCoG1lbXNldChmLCAwLCBzaXpl
b2YoKmYpKTsKPiDCoMKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9tcC5waXhlbGZvcm1hdCA9IGZv
dXJjYzsKPiDCoMKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9tcC5maWVsZCA9IFY0TDJfRklFTERf
Tk9ORTsKPiAtwqDCoMKgwqDCoMKgwqBmLT5mbXQucGl4X21wLmNvbG9yc3BhY2UgPSBWNEwyX0NP
TE9SU1BBQ0VfUkVDNzA5LAo+ICvCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhfbXAuY29sb3JzcGFj
ZSA9IFY0TDJfQ09MT1JTUEFDRV9SRUM3MDk7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhf
bXAueWNiY3JfZW5jID0gVjRMMl9ZQ0JDUl9FTkNfREVGQVVMVDsKPiDCoMKgwqDCoMKgwqDCoMKg
Zi0+Zm10LnBpeF9tcC5xdWFudGl6YXRpb24gPSBWNEwyX1FVQU5USVpBVElPTl9ERUZBVUxUOwo+
IMKgwqDCoMKgwqDCoMKgwqBmLT5mbXQucGl4X21wLnhmZXJfZnVuYyA9IFY0TDJfWEZFUl9GVU5D
X0RFRkFVTFQ7CgpBIGZpeCB3YXMgc2VudCBhbHJlYWR5IGZvciB0aGlzOgoKaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlwL3BhdGNoLzIwMjAxMjA0MjMz
NzQzLkdBODUzMEBsaW51eG1pbnQtbWlkdG93ZXItcGMvCgpUaGFua3MsCkV6ZXF1aWVsCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
