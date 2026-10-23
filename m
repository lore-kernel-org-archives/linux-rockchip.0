Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9671606A319
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 01:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ajOo1F7U;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=SM24z1Mt
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5iX3/u3LyHCzjqOJffeMz9gjEssn9CQ2HkziL4X2VGc=; b=ajOo1F7UUGQM/0raTSHP1NU4nT
	4Q1+Low2irRmkY5WmrhiwqmaEFUmo54QYdGuRw96QHHpa6xhNQU1tW34zAx7kU/j2vXOwvJvdGAgk
	CuVH5I2f3Zjrdf1UyLwBQytQ+DbrHsPQXrcya3MmpGCnDi0rYM0S1JuL/MYZpfg1aEfiB1eTsdj1D
	JAmUaY1Dq1ArsJWStY1zsRtuOdl2Lh4PiAo8CKvjc5zsSKrE1c8MFZbIdb1y+1ZGwyhRdtWmVrold
	SxgIA5aVPHojFRSbjok6HvssraBuwSl/supj7gWdyZ5SJW6Ae+uU9ITTrzOzpXgTy59VBpCoAQlGh
	e2gwKvhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK3oL-0000000FFlm-1Kkt;
	Fri, 23 Oct 2026 01:11:09 +0000
Received: from mail-m25497.xmail.ntesmail.com ([103.129.254.97])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK3oG-0000000FFlF-25c4;
	Fri, 23 Oct 2026 01:11:07 +0000
Received: from [127.0.0.1] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 520edd00c;
	Fri, 23 Oct 2026 09:10:50 +0800 (GMT+08:00)
Message-ID: <7338211c-d354-40a2-a6a3-624472f34611@rock-chips.com>
Date: Fri, 23 Oct 2026 09:10:32 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/rockchip: vop2: Use drm_format_info_min_pitch()
 for plane offsets
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20261022071737.508-1-kernel@airkyi.com>
 <20261022071737.508-2-kernel@airkyi.com> <2024729.6tgchFWduM@diego>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <2024729.6tgchFWduM@diego>
X-HM-Tid: 0aa1664f856503a7kunm07c92d492d1190
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQh5KVh9JSUgYTE4aGR9MQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SM24z1MtDKUdbCHONbq797C3zM0OxGSPuDeKnj0a0orBg9Cnt0r723J3KgLwR9jM7icBaxNI+5FRwFvW7p9XeKJeYyqd8I32L941XvKrOePmyVnulomxv7KudfHyBSKxaPnEYOZVmM++xGXQQ7tLzfTnoEyqEag7Pu7JjpjPRkM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=o9iVjpbRGMBUkX1zQ4j+Bu+fth+Q4PLJuT63aIhz70s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_181105_066834_67E675F6 
X-CRM114-Status: GOOD (  11.95  )
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
Cc: Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, David Airlie <airlied@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-20.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSGVpa28sCgpPbiAxMC8yMi8yMDI2IDg6NTkgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+
IEhpIENoYW95aSwKPiAKPiBBbSBEb25uZXJzdGFnLCAyMi4gT2t0b2JlciAyMDI2LCAwOToxNzoz
NSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+PiBG
cm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IFVzZSB0
aGUgYmxvY2sgYXdhcmUgaGVscGVyIGluc3RlYWQgb2YgY3BwW10sIHRoZSBsYXR0ZXIgYWxpYXNl
cwo+PiBjaGFyX3Blcl9ibG9jayBhbmQgaXMgd3JvbmcgZm9yIHBhY2tlZCAxMC1iaXQgZm9ybWF0
cyBsaWtlIE5WMTUsCj4+IE5WMjAgYW5kIE5WMzAuCj4+Cj4+IFRlc3RlZCB3aXRoIG1vZGV0ZXN0
WzBdOgo+Pgo+PiBgYGAKPj4gCW1vZGV0ZXN0IC1zIDg2OjM4NDB4MjE2MCAtUCBcCj4+IAk1OUA4
MzozOTQweDIxNjB+OTYsMCwzODQwLDIxNjArMCswQE5WMjAgLWEKPj4gYGBgCj4+Cj4+IGZiIHNp
emUgKDM5NDB4MjE2MCksIHNyYyBhdCAoOTYsIDApIHdpdGggc2l6ZSAoMzg0MHgyMTYwKSwKPj4g
ZHN0IGF0ICgwLCAwKSB3aXRoIHNpemUgKDM4NDB4MjE2MCkKPj4KPj4gWzBdOiBodHRwczovL2dp
dGh1Yi5jb20vd2luZG93c2Fpci9saWJkcm0vdHJlZS9zcmMtcG9zLXN1cHBvcnQKPj4KPj4gQXNz
aXN0ZWQtYnk6IExMTQo+PiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5A
cm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AyLmMgfCAzICsrLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcDIuYwo+PiBpbmRleCA0Y2NlM2UzMzZmNWIuLjQ4MGFhOGM4YThkMiAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4gQEAg
LTEyOTAsNyArMTI5MCw3IEBAIHN0YXRpYyB2b2lkIHZvcDJfcGxhbmVfYXRvbWljX3VwZGF0ZShz
dHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPj4gIAo+PiAgCWFmYmNfZW4gPSBkcm1faXNfYWZiYyhm
Yi0+bW9kaWZpZXIpOwo+PiAgCj4+IC0Jb2Zmc2V0ID0gKHNyYy0+eDEgPj4gMTYpICogZmItPmZv
cm1hdC0+Y3BwWzBdOwo+PiArCW9mZnNldCA9IGRybV9mb3JtYXRfaW5mb19taW5fcGl0Y2goZmIt
PmZvcm1hdCwgMCwgc3JjLT54MSA+PiAxNik7Cj4+ICAKPj4gIAkvKgo+PiAgCSAqIEFGQkMgSERS
X1BUUiBtdXN0IHNldCB0byB0aGUgemVybyBvZmZzZXQgb2YgdGhlIGZyYW1lYnVmZmVyLgo+PiBA
QCAtMTMwOSw2ICsxMzA5LDcgQEAgc3RhdGljIHZvaWQgdm9wMl9wbGFuZV9hdG9taWNfdXBkYXRl
KHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAo+PiAgCQlpbnQgaHN1YiA9IGZiLT5mb3JtYXQtPmhz
dWI7Cj4+ICAJCWludCB2c3ViID0gZmItPmZvcm1hdC0+dnN1YjsKPj4gIAo+PiArCQlvZmZzZXQg
PSBkcm1fZm9ybWF0X2luZm9fbWluX3BpdGNoKGZiLT5mb3JtYXQsIDEsIHNyYy0+eDEgPj4gMTYp
IC8gaHN1YjsKPj4gIAkJb2Zmc2V0ID0gKHNyYy0+eDEgPj4gMTYpICogZmItPmZvcm1hdC0+Y3Bw
WzFdIC8gaHN1YjsKPiAKPiBtaXNzaW5nIHJlbW92YWwgb2YgdGhlIHJlcGxhY2VkIGxpbmU/Cj4g
CgpPaCwgaXQgaXMuIFdpbGwgZml4IGluIHYyLgoKPiAKPiBIZWlrbwo+IAo+PiAgCQlvZmZzZXQg
Kz0gKHNyYy0+eTEgPj4gMTYpICogZmItPnBpdGNoZXNbMV0gLyB2c3ViOwo+PiAgCj4+Cj4gCgot
LSAKQmVzdCwgCkNoYW95aQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
