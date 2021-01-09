Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23159C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 12:35:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D895235FC
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 12:35:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D895235FC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hed/XVcBWP+e5Jt+gf9DVwBTI9WZoO5M8CGxqoIDvJU=; b=tyJX8edDFzmU/kFwqWd18tpcv
	0H4f5N7xWZHgTE2WteM27fJ3Ntb1PsAN6XoHFv7whhgJJaeIn6P/ddkvCnJv85tbgs+6vkcVcF/5D
	zU4gLlCMIY5MD+9eNjLPJ1rUEhVsoJFoZHyCXPWfcftKsMvkeYPXWRSNJkqNIawRd+1fGgCNoNhI3
	TiL8SaUFqFg+Th99TrWUujNJ6L/jHy6C1JOMc9tJKeq5vz6AG5yWlDlr3BweP4Y8iv0xcZKLAXYEa
	M4p3Mw5XOaXmjD0TXcAQVPuITlkQJWfYSbr9QYXmxZEtE8y+LNQrY/YPoXvmUGrofD/HU+yyQ7Bd+
	c/Rr5oIJA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyDSt-0003CO-JX; Sat, 09 Jan 2021 12:35:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyDSq-0003Au-Pg
 for linux-rockchip@lists.infradead.org; Sat, 09 Jan 2021 12:35:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 673821F447AC
Message-ID: <7647e289689d186d048afd0d18f91c919e38d8fc.camel@collabora.com>
Subject: Re: [PATCH v2 -next] media: rkvdec: convert comma to semicolon
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Zheng Yongjun <zhengyongjun3@huawei.com>, mchehab@kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sat, 09 Jan 2021 09:35:16 -0300
In-Reply-To: <20210108092244.18845-1-zhengyongjun3@huawei.com>
References: <20210108092244.18845-1-zhengyongjun3@huawei.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_073528_984195_CB112A59 
X-CRM114-Status: GOOD (  11.83  )
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
Cc: gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCAyMDIxLTAxLTA4IGF0IDE3OjIyICswODAwLCBaaGVuZyBZb25nanVuIHdyb3RlOgo+
IFJlcGxhY2UgYSBjb21tYSBiZXR3ZWVuIGV4cHJlc3Npb24gc3RhdGVtZW50cyBieSBhIHNlbWlj
b2xvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBZb25nanVuIDx6aGVuZ3lvbmdqdW4zQGh1
YXdlaS5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5j
IHwgMiArLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gaW5kZXggZDI1YzRhMzdl
MmFmLi42NjU3MjA2NmU3YTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
dmRlYy9ya3ZkZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVj
LmMKPiBAQCAtMTMwLDcgKzEzMCw3IEBAIHN0YXRpYyB2b2lkIHJrdmRlY19yZXNldF9mbXQoc3Ry
dWN0IHJrdmRlY19jdHggKmN0eCwgc3RydWN0IHY0bDJfZm9ybWF0ICpmLAo+IMKgwqDCoMKgwqDC
oMKgwqBtZW1zZXQoZiwgMCwgc2l6ZW9mKCpmKSk7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5w
aXhfbXAucGl4ZWxmb3JtYXQgPSBmb3VyY2M7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhf
bXAuZmllbGQgPSBWNEwyX0ZJRUxEX05PTkU7Cj4gLcKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9t
cC5jb2xvcnNwYWNlID0gVjRMMl9DT0xPUlNQQUNFX1JFQzcwOSwKPiArwqDCoMKgwqDCoMKgwqBm
LT5mbXQucGl4X21wLmNvbG9yc3BhY2UgPSBWNEwyX0NPTE9SU1BBQ0VfUkVDNzA5Owo+IMKgwqDC
oMKgwqDCoMKgwqBmLT5mbXQucGl4X21wLnljYmNyX2VuYyA9IFY0TDJfWUNCQ1JfRU5DX0RFRkFV
TFQ7Cj4gwqDCoMKgwqDCoMKgwqDCoGYtPmZtdC5waXhfbXAucXVhbnRpemF0aW9uID0gVjRMMl9R
VUFOVElaQVRJT05fREVGQVVMVDsKPiDCoMKgwqDCoMKgwqDCoMKgZi0+Zm10LnBpeF9tcC54ZmVy
X2Z1bmMgPSBWNEwyX1hGRVJfRlVOQ19ERUZBVUxUOwoKU2VlbXMgYSBmaXggd2FzIHNlbnQgYWxy
ZWFkeSBmb3IgdGhpczoKCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51
eC1yb2NrY2hpcC9wYXRjaC8yMDIwMTIwNDIzMzc0My5HQTg1MzBAbGludXhtaW50LW1pZHRvd2Vy
LXBjLwoKVGhhbmtzLApFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
