Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E95D2C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 May 2022 10:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrxrUxfnilRULdLcggpJOAOomEYjygoQb/bvf7VhZoc=; b=z8hMvnHTkLnPRt
	TiXuy7QOxX5gige/LGocqA2a0CvxoG209ZG7NxpZpqBg3YeBoWICN5s3hy4R11M+grFm8nU4JmwAv
	SXZU3HVt2zpj4PTvPP16hjceQYiqAG2NxP1MPvWILL+JQc1TnrL2rAoU237zRsGpJ0fbtmQ8iJnX7
	IctBe8fXNsr395xj27mjnKjuevso5bs4nFTU8KcoWJAKxV+ZKLUvgG2SsCT1iuw9XkX1Rm77ehBbW
	E7Fer4AVeQVOy1VFLdJ/o8um2Uos3cWnI4uGc3md+V6TEGKqLePNbkHJbS8JWnoa8z1KDp8zAwE8E
	B2Zhd5dTE6ZxYwL4xivQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnHOQ-006kkV-8N; Sat, 07 May 2022 10:10:30 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnHOE-006kiK-GI; Sat, 07 May 2022 10:10:20 +0000
Received: from dggpeml500023.china.huawei.com (unknown [172.30.72.54])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4KwNSd3tbvz1JBwq;
 Sat,  7 May 2022 18:09:05 +0800 (CST)
Received: from dggpeml500008.china.huawei.com (7.185.36.147) by
 dggpeml500023.china.huawei.com (7.185.36.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Sat, 7 May 2022 18:10:12 +0800
Received: from [127.0.0.1] (10.67.111.83) by dggpeml500008.china.huawei.com
 (7.185.36.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Sat, 7 May
 2022 18:10:12 +0800
Message-ID: <07b347c4-11dd-6f7f-7a3b-c9f9ed21bb84@huawei.com>
Date: Sat, 7 May 2022 18:10:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH -next] drm/rockchip: Fix Kconfig dependencies
To: Andy Yan <andy.yan@rock-chips.com>, <hjc@rock-chips.com>,
 <heiko@sntech.de>, <airlied@linux.ie>, <daniel@ffwll.ch>, <lyude@redhat.com>, 
 <tzimmermann@suse.de>
CC: <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>, 
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20220507010039.117310-1-renzhijie2@huawei.com>
 <45058759-13dd-aa43-ac88-2a7c60baa22b@rock-chips.com>
From: Ren Zhijie <renzhijie2@huawei.com>
In-Reply-To: <45058759-13dd-aa43-ac88-2a7c60baa22b@rock-chips.com>
X-Originating-IP: [10.67.111.83]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500008.china.huawei.com (7.185.36.147)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220507_031018_744710_ED2732B0 
X-CRM114-Status: GOOD (  14.65  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CuWcqCAyMDIyLzUvNyAxNDozOSwgQW5keSBZYW4g5YaZ6YGTOgo+IEhpIFpoaWppZToKPgo+IE9u
IDUvNy8yMiAwOTowMCwgUmVuIFpoaWppZSB3cm90ZToKPj4gSWYgQ09ORklHX1JPQ0tDSElQX0FO
QUxPR0lYX0RQIGlzIG5vdCBzZXQsIHRoZSByb2NrY2hpcCBkcm0gZHJpdmVyCj4+IHdpbGwgZmFp
bCB0byBsaW5rOgo+Pgo+PiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUubzog
SW4gZnVuY3Rpb24gCj4+IGBjZG5fZHBfY29ubmVjdG9yX21vZGVfdmFsaWQnOgo+PiBjZG4tZHAt
Y29yZS5jOigudGV4dCsweDFlMSk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gCj4+IGBkcm1fZHBf
YndfY29kZV90b19saW5rX3JhdGUnCj4+IGNkbi1kcC1jb3JlLmM6KC50ZXh0KzB4MWY0KTogdW5k
ZWZpbmVkIHJlZmVyZW5jZSB0byAKPj4gYGRybV9kcF9id19jb2RlX3RvX2xpbmtfcmF0ZScKPj4g
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLm86IEluIGZ1bmN0aW9uIAo+PiBg
Y2RuX2RwX3BkX2V2ZW50X3dvcmsnOgo+PiBjZG4tZHAtY29yZS5jOigudGV4dCsweDEzOGUpOiB1
bmRlZmluZWQgcmVmZXJlbmNlIHRvIAo+PiBgZHJtX2RwX2NoYW5uZWxfZXFfb2snCj4+IGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtcmVnLm86IEluIGZ1bmN0aW9uIGBjZG5fZHBfdHJh
aW5fbGluayc6Cj4+IGNkbi1kcC1yZWcuYzooLnRleHQrMHhkNWEpOiB1bmRlZmluZWQgcmVmZXJl
bmNlIHRvIAo+PiBgZHJtX2RwX2J3X2NvZGVfdG9fbGlua19yYXRlJwo+Pgo+PiBUaGUgcHJvYmxl
bSBpcyB0aGF0IHRoZSBEUC1oZWxwZXIgbW9kdWxlIGhhcyBiZWVuIHJlcGxhY2VkIGJ5IHRoZSAK
Pj4gZGlzcGxheS1oZWxwZXIgbW9kdWxlLgo+PiBTbyB0aGUgZHJpdmVyIGhhdmUgdG8gc2VsZWN0
IGl0Lgo+Pgo+PiBSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1YXdlaS5jb20+Cj4+
IEZpeGVzOiAxZTBmNjY0MjBiMTMoImRybS9kaXNwbGF5OiBJbnRyb2R1Y2UgYSBEUk0gZGlzcGxh
eS1oZWxwZXIgCj4+IG1vZHVsZSIpCj4+IFNpZ25lZC1vZmYtYnk6IFJlbiBaaGlqaWUgPHJlbnpo
aWppZTJAaHVhd2VpLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9L
Y29uZmlnIHwgMiArKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyAKPj4gYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+PiBpbmRleCA1YWZhYjQ5ZGM0ZjIuLmViOWZm
YTllMzU3ZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPj4gQEAgLTQ3LDYgKzQ3
LDggQEAgY29uZmlnIFJPQ0tDSElQX0FOQUxPR0lYX0RQCj4+IMKgIGNvbmZpZyBST0NLQ0hJUF9D
RE5fRFAKPj4gwqDCoMKgwqDCoCBib29sICJSb2NrY2hpcCBjZG4gRFAiCj4+IMKgwqDCoMKgwqAg
ZGVwZW5kcyBvbiBFWFRDT049eSB8fCAoRVhUQ09OPW0gJiYgRFJNX1JPQ0tDSElQPW0pCj4+ICvC
oMKgwqAgc2VsZWN0IERSTV9ESVNQTEFZX0hFTFBFUgo+PiArwqDCoMKgIHNlbGVjdCBEUk1fRElT
UExBWV9EUF9IRUxQRVIKPgo+Cj4gVGhlcmUgYXJlIHR3byBkcChBTkFMT0dJWF9EUCBhbmQgQ0RO
X0RQKSBhdCByb2NrY2hpcCBkcm0gbWFpbmxpbmUsCj4KPiBmb3IgYSB0b3RhbGx5IGNsZWFudXAg
YW5kIGFsaWdubWVudCwgSSB0aGluayBpdCdzIGJldHRlciB0byByZW1vdmUgCj4gInNlbGVjdCBE
Uk1fRElTUExBWV9IRUxQRVIgaWYgUk9DS0NISVBfQU5BTE9HSVhfRFAiIHVuZGVyIAo+IERSTV9S
T0NLQ0hJUMKgIGF0IHRoZSBoZWFkLAo+Cj4gYW5kIHNlcGFyYXRlbHkgYWRkIHRoZSBzZWxlY3Qg
Zm9yIFJPQ0tDSElQX0FOQUxPR0lYX0RQIGFuZCAKPiBST0NLQ0hJUF9DRE5fRFAuCj4KU3VyZSwg
d2lsbCBkbyB0aGF0IGluIHYyLgo+PiDCoMKgwqDCoMKgIGhlbHAKPj4gwqDCoMKgwqDCoMKgwqAg
VGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFNvQyBzcGVjaWZpYyBleHRlbnNpb25z
Cj4+IMKgwqDCoMKgwqDCoMKgIGZvciB0aGUgY2RuIERQIGRyaXZlci4gSWYgeW91IHdhbnQgdG8g
ZW5hYmxlIERwIG9uCj4gLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
