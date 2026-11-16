Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A031B606A323
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 10:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jNhL9Ez7;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=QfMIkUsa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KDmmMovq4Z546ojKI2YL2WUblDlCN6Swnr+2hMN9EVQ=; b=jNhL9Ez7S8wSHwRoQ1Gm2pOUeA
	3OqZJEqrIhDCy2hH7kl0x08KtRZrdkOWOCiMi74F908l7Fw+xpGQtu62wirD8xrgN9avrFMiwvw/K
	dve0JCyKSd7V8NxoWvkqZ6Wl+Nxenp+5XVWrjKv75ZgBHkb04QTRUKhKEhRUWYYJqiN+UBMoyMkzO
	yWSlXUok+djcqec6zTnaxqTOM0lzpNgVBx6SLsYoaMOVlvLCHH833ZK/CpjS1R4+x/3g9W2HmZeCz
	rvtfia0Jct9zjYqXi8igexN/JZQUfRajttBJ1KiRhJlC2F2G78CmT8j3R5CLZWA5PENJNHrvfkkFr
	Sj2szwVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStap-00000001tSu-0Ynl;
	Mon, 16 Nov 2026 10:05:43 +0000
Received: from mail-m3288.qiye.163.com ([220.197.32.88])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xStam-00000001tRR-22vw;
	Mon, 16 Nov 2026 10:05:42 +0000
Received: from [172.16.12.74] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54d53c117;
	Mon, 16 Nov 2026 17:50:26 +0800 (GMT+08:00)
Message-ID: <2e46d108-ebbe-4824-a428-94d146c66911@rock-chips.com>
Date: Mon, 16 Nov 2026 17:50:25 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS: Add two reviewers to the Rockchip DRM entry
To: Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, hjc@rock-chips.com, andyshrk@163.com,
 chaoyi.chen@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de
References: <20261110101554.1809467-1-heiko@sntech.de>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20261110101554.1809467-1-heiko@sntech.de>
X-HM-Tid: 0aa1e3c3dbc103a8kunmf0affbbc2161f8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUhNHVZISBpMSEpIGU
	wYSEtWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QfMIkUsatJerA45O7rKlgR4Q53F50PWHQdkRUXAyfpBML9rQ6CmltukIokIvCdq5OZlK+U4gZBnFfBMUyG0DzsRyF4EXKWfc6P5e7h6V6drCs/bq0zy+/EV80lWjclX5RMNWFsN7fPat+zhubFarG71CrC5b5v17Bh/6Vt80esM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=bvUfi2oQHvIeYYvb6jd/QY++S5Ve+5EUv86wa8p023s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_020541_022001_2493B685 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSGVpa28sCgpPbiAxMS8xMC8yMDI2IDY6MTUgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+
IENoYW95aSBDaGVuIGFuZCBEYW1vbiBEaW5nIHZvbHVudGVlcmVkIHRvIGJlY29tZSByZXZpZXdl
cnMgZm9yIHRoZQo+IFJvY2tjaGlwIERSTSBkcml2ZXJzLCBzbyBhZGQgdGhlbSB0byB0aGUgTUFJ
TlRBSU5FUlMgZW50cnkuCj4gCj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KPiAtLS0KPiAgIE1BSU5UQUlORVJTIHwgMiArKwo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5U
QUlORVJTCj4gaW5kZXggOTNhYmJiMzE1MDY1Li45OTE0MmE5MTEzNTAgMTAwNjQ0Cj4gLS0tIGEv
TUFJTlRBSU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC05MTM5LDYgKzkxMzksOCBAQCBE
Uk0gRFJJVkVSUyBGT1IgUk9DS0NISVAKPiAgIE06CVNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlw
cy5jb20+Cj4gICBNOglIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPgo+ICAgTToJQW5k
eSBZYW4gPGFuZHlzaHJrQDE2My5jb20+Cj4gK1I6CUNoYW95aSBDaGVuIDxjaGFveWkuY2hlbkBy
b2NrLWNoaXBzLmNvbT4KPiArUjoJRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNv
bT4KPiAgIEw6CWRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiAgIEw6CWxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAgIFM6CU1haW50YWluZWQKClJldmlld2VkLWJ5
OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgoKQmVzdCByZWdhcmRzLApE
YW1vbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
