Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF85AD0E6EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 13:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfkHLqtD0jBpt6t9KabtF1zpDc1+OW3ixKuZEixxu8g=; b=ihg+R2F7C0BYDa
	8aahwYD0zX1TeRFWYh60dHU/vOGYK1CMjNVClI4RjWryqoFM7l6z4p+RTb8dHs2rNz6nwlA8J3e6N
	6b58WTuIdqTLBvHpO72YfbNFDoEIQNxBWqUGYO7amE5aCzjPGHfPHNSR2n2afiygO7gu0GFmY72P4
	la9KtP2LgyZ4DRJ9jI7Hx4uArB+CW+klW45gK6PqOpCVd+hAOD6pel6UWd6nniG3rsW1vcFyauJXM
	6rVCQAcZFD2WVIwDRaSfJr2lGdCPCaA4gRGE4DmYrQsuWdvIkuMEc50uoh3eTCOBiMudpDXq/4pSI
	2HHLUWn9iRvk+/xPPA4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNtZ9-0000000DOD7-2FgK;
	Tue, 25 Nov 2025 13:58:47 +0000
Received: from mail-m49207.qiye.163.com ([45.254.49.207])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNtZ5-0000000DOCm-1kyh
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 13:58:45 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ad997f34;
	Tue, 25 Nov 2025 21:58:38 +0800 (GMT+08:00)
Message-ID: <7b05327d-fc76-471e-9148-3dfc0cd17623@rock-chips.com>
Date: Tue, 25 Nov 2025 21:58:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-dwcmshc: reduce CIT for better
 performance
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com>
 <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9abb4f27ad09cckunm12df2b434ad7a2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhLTlYdGR1OSExCH04aQk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hj7c5wStwSHEN1rnNOXYYhScbWfiEoaeglZx+TqNXPEQJbRkt5an2hv6FIgrrXYAJLcW7autTRrsU87x+iIxjU9W9ppxglv4ApDwNem3EHcvAswmDoxtBJI827CaGs2Vkv9kPgK6i9RJXaEH9T6kcLf/j759vmA95fp0X+rBO+Q=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=JJ6TIdpKrVgfuKBVFMvJrAS7fl67i9hCloV/D5SATc0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_055844_638440_26CDFAD4 
X-CRM114-Status: GOOD (  13.48  )
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

5ZyoIDIwMjUvMTEvMTIg5pif5pyf5LiJIDE1OjQ0LCBTaGF3biBMaW4g5YaZ6YGTOgo+IENRSENJ
X1NTQzEuQ0lUIGluZGljYXRlcyB0byB0aGUgQ1FFIHRoZSBwb2xsaW5nIHBlcmlvZCB0byB1c2Ug
Zm9yCj4gcGVyaW9kaWMgU0VORF9RVUVVRV9TVEFUVVMgKENNRDEzKSBwb2xsaW5nLiBTb21lIGVN
TUNzIGhhdmUgb25seSBvbmUKPiBoYXJkd2FyZSBxdWV1ZSwgYW5kIENNRDEzIGNhbiBvbmx5IHF1
ZXJ5IG9uZSBzbG90IGF0IGEgdGltZSBmb3IgZGF0YQo+IHRyYW5zbWlzc2lvbiwgd2hpY2ggY2Fu
bm90IGJlIHByb2Nlc3NlZCBpbiBwYXJhbGxlbC4gTW9kaWZ5aW5nIHRoZQo+IENNRDEzIHF1ZXJ5
IGludGVydmFsIGNhbiBpbmNyZWFzZSB0aGUgcXVlcnkgZnJlcXVlbmN5IGFuZCBpbXByb3ZlCj4g
cmFuZG9tIHdyaXRlIHBlcmZvcm1hbmNlLgo+IAoKUGluZy4uLgoKQWRyYWluIGFja2VkIHRoZXNl
IHR3byBwYXRjaGVzLCBzbyB3aWxsIHRoZW0gYmUgY2FuZGlkYXRlcyBmb3IgNi4xOQpnaXZlbiB0
aGUgbWVyZ2Ugd2luZG93cyBpcyBjb21pbmcgc29vbj8KCj4gU2lnbmVkLW9mZi1ieTogU2hhd24g
TGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gCj4gICBkcml2ZXJzL21tYy9o
b3N0L2NxaGNpLmggICAgICAgICAgICB8IDEgKwo+ICAgZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1v
Zi1kd2Ntc2hjLmMgfCA1ICsrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L2NxaGNpLmggYi9kcml2ZXJzL21t
Yy9ob3N0L2NxaGNpLmgKPiBpbmRleCBjZTE4OWExLi4zNjY4ODU2IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbW1jL2hvc3QvY3FoY2kuaAo+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvY3FoY2kuaAo+
IEBAIC05Myw2ICs5Myw3IEBACj4gICAvKiBzZW5kIHN0YXR1cyBjb25maWcgMSAqLwo+ICAgI2Rl
ZmluZSBDUUhDSV9TU0MxCQkJMHg0MAo+ICAgI2RlZmluZSBDUUhDSV9TU0MxX0NCQ19NQVNLCQlH
RU5NQVNLKDE5LCAxNikKPiArI2RlZmluZSBDUUhDSV9TU0MxX0NJVF9NQVNLCQlHRU5NQVNLKDE1
LCAwKQo+ICAgCj4gICAvKiBzZW5kIHN0YXR1cyBjb25maWcgMiAqLwo+ICAgI2RlZmluZSBDUUhD
SV9TU0MyCQkJMHg0NAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3
Y21zaGMuYyBiL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jCj4gaW5kZXggZTI3
NmE0ZS4uY2FkNTE2NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3
Y21zaGMuYwo+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jCj4gQEAg
LTYzMSw2ICs2MzEsMTEgQEAgc3RhdGljIHZvaWQgcmszNXh4X3NkaGNpX2NxZV9wcmVfZW5hYmxl
KHN0cnVjdCBtbWNfaG9zdCAqbW1jKQo+ICAgCXN0cnVjdCBkd2Ntc2hjX3ByaXYgKmR3Y19wcml2
ID0gc2RoY2lfcGx0Zm1fcHJpdihwbHRmbV9ob3N0KTsKPiAgIAl1MzIgcmVnOwo+ICAgCj4gKwkv
KiBTZXQgU2VuZCBTdGF0dXMgQ29tbWFuZCBJZGxlIFRpbWVyIHRvIDEwLjY2dXMgKDI1NiAqIDEg
LyAyNCkgKi8KPiArCXJlZyA9IHNkaGNpX3JlYWRsKGhvc3QsIGR3Y19wcml2LT52ZW5kb3Jfc3Bl
Y2lmaWNfYXJlYTIgKyBDUUhDSV9TU0MxKTsKPiArCXJlZyA9IChyZWcgJiB+Q1FIQ0lfU1NDMV9D
SVRfTUFTSykgfCAweDAxMDA7Cj4gKwlzZGhjaV93cml0ZWwoaG9zdCwgcmVnLCBkd2NfcHJpdi0+
dmVuZG9yX3NwZWNpZmljX2FyZWEyICsgQ1FIQ0lfU1NDMSk7Cj4gKwo+ICAgCXJlZyA9IHNkaGNp
X3JlYWRsKGhvc3QsIGR3Y19wcml2LT52ZW5kb3Jfc3BlY2lmaWNfYXJlYTIgKyBDUUhDSV9DRkcp
Owo+ICAgCXJlZyB8PSBDUUhDSV9FTkFCTEU7Cj4gICAJc2RoY2lfd3JpdGVsKGhvc3QsIHJlZywg
ZHdjX3ByaXYtPnZlbmRvcl9zcGVjaWZpY19hcmVhMiArIENRSENJX0NGRyk7CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
