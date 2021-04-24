Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A512C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 23:24:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4D7561153
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 23:24:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A4D7561153
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HzPqJdI9mW5vOpKVe1JmtbbPnGE3zMAPe/m8nqrQQT0=; b=icjHr2vHV8n7elVRBSCn3tXHK
	y7tdht/ZX4gKIpNgHndro+8/2Zvvoc5HtY5lTGOe1I8364EcbYccIYCdS6PAlGPLpg0BVn9HHU6DR
	i1fd5CCTHHNdMTdoAL9REsucPl5NwuaMVGUQUvoIo/sjIo8aW0d/A+wzQ2tig2wb6QKKWZK5snaJU
	vqkcrBWNrNmW/ofggMlZ/4tPgA2JfR6tL6m/NBgmQXdm6chSeMB3WSteZEH2j2IKJU09Y+s0l63nB
	hG2v7HiSV14fPPzNAYuJhFDbvHqeAc5KKxemAZvYK22RDPTe/RpEbf1RfFo1DxXHm7ToKKnzXOfe+
	YiAZEwd5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laRdD-004cAp-2S; Sat, 24 Apr 2021 23:24:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laRdA-004c9y-Bx
 for linux-rockchip@desiato.infradead.org; Sat, 24 Apr 2021 23:24:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=BkF+VtVXOx5KxEDErAE8TxxNBe64N0Kc9COJfbcE6uU=; b=kKjp/45hpwHmLW5X9LBi+HMYPW
 JQWW+anIdn2mWRmrOisCmItFMgdxw7KowCXxWm3HXVPguf3I/iiK9Oeoi8/ePvdmt/B+aQGI6467x
 YxmMgCJwK9BxpspCP7We/Az6m0ulUfB+oYqjfXqkNoSZkIfn7b6TrvKLDWOsyHyueaT1ZPt9yQbDQ
 nn+36wo1szEbKOFWU/eXio3ync+BqrMt5l55kUp2G2sPZaMUaKr0jkTSAY0Wzl1HDKoSVxe+FZGig
 QVbpkw61/JEqKIyavotttinkIijtLYwmNpo4Eb+xlt07UhLBwoFm2hXFeaOUtfS46dLkaPVJg+o0/
 ew3iB5Ag==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laRd7-00FC3A-Rn
 for linux-rockchip@lists.infradead.org; Sat, 24 Apr 2021 23:24:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 65D6B1F40EE6
Message-ID: <780afdc9b263928ed378dfbd3eaa8a5509a59a35.camel@collabora.com>
Subject: Re: [PATCH 13/78] staging: media: hantro_drv: use
 pm_runtime_resume_and_get()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Sat, 24 Apr 2021 20:23:53 -0300
In-Reply-To: <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
 <0021158fb27035a56089683ee712fb3ed6f6032d.1619191723.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210424_162406_045272_C26D9C30 
X-CRM114-Status: GOOD (  15.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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

SGkgTWF1cm8sCgpPbiBTYXQsIDIwMjEtMDQtMjQgYXQgMDg6NDQgKzAyMDAsIE1hdXJvIENhcnZh
bGhvIENoZWhhYiB3cm90ZToKPiBDb21taXQgZGQ4MDg4ZDVhODk2ICgiUE06IHJ1bnRpbWU6IEFk
ZCBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0IHRvIGRlYWwgd2l0aCB1c2FnZSBjb3VudGVyIikK
PiBhZGRlZCBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkgaW4gb3JkZXIgdG8gYXV0b21hdGlj
YWxseSBoYW5kbGUKPiBkZXYtPnBvd2VyLnVzYWdlX2NvdW50IGRlY3JlbWVudCBvbiBlcnJvcnMu
Cj4gCj4gVXNlIHRoZSBuZXcgQVBJLCBpbiBvcmRlciB0byBjbGVhbnVwIHRoZSBlcnJvciBjaGVj
ayBsb2dpYy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVo
YWIraHVhd2VpQGtlcm5lbC5vcmc+Cj4gLS0tCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb19kcnYuYyB8IDIgKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJv
X2Rydi5jCj4gaW5kZXggNTk1ZTgyYTgyNzI4Li4zMTQ3ZGNiZWJlYjkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+IEBAIC0xNTUsNyArMTU1LDcgQEAg
c3RhdGljIHZvaWQgZGV2aWNlX3J1bih2b2lkICpwcml2KQo+IMKgwqDCoMKgwqDCoMKgwqByZXQg
PSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2
LT5jbG9ja3MpOwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiAtwqDCoMKgwqDCoMKgwqByZXQg
PSBwbV9ydW50aW1lX2dldF9zeW5jKGN0eC0+ZGV2LT5kZXYpOwo+ICvCoMKgwqDCoMKgwqDCoHJl
dCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoY3R4LT5kZXYtPmRldik7Cj4gwqDCoMKgwqDC
oMKgwqDCoGlmIChyZXQgPCAwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290
byBlcnJfY2FuY2VsX2pvYjsKPiDCoAoKU2VlbXMgdGhpcyBvbmUgbmVlZHMgYSBkaWZmZXJlbnQg
Zml4OiBlcnJfY2FuY2VsX2pvYgp3aWxsIGNhbGwgaGFudHJvX2pvYl9maW5pc2ggd2hpY2ggaGFz
IGEgcG1fcnVudGltZSBwdXQuCgpUaGFua3MsCkV6ZXF1aWVsIAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
