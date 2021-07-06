Return-Path: <SRS0=gh3A=L6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E38C07E99
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 01:05:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C00D461973
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jul 2021 01:05:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C00D461973
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OzT5+LaUWteoqduKLImBQdRAXMwji7Mw3UtV62DDW7E=; b=t04GnBpWcns1rSkXBgUcLh7McC
	eD2dv1mxC2tRTF0gwyHvE9Whcux4qmfgh/x1VxmIX2ZdRD+sRwcFnFAGPzeqDyoi+X8sT3OmNr+6L
	GTNj1nRN9cOs/6ROpSpF6QD9ag3r8nnQD92EnQNWpPGwZgvkYA4IrGZYvlVpPjT3FXRcIPo7+7TOS
	x5ek7iC85J/t3ciQf2zuET9hGNFkcxDDU9ftTwk+kf4NlEfAn4hmg/Yxw+FAJJPRvb9vNbgaraaFL
	y/SrF70RF6KbyDUea0wnpXGN62sqj4JqHW1UCuMF/wfVHucCE8FApqGqmNVmguxCmmbSoDhzDecC8
	cgNoDTNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0ZWB-00A6RU-Pc; Tue, 06 Jul 2021 01:04:55 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0ZVy-00A6Qp-A3; Tue, 06 Jul 2021 01:04:44 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 9A18F128E;
 Tue,  6 Jul 2021 09:04:25 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P12345T139823465625344S1625533463012840_; 
 Tue, 06 Jul 2021 09:04:24 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7837a5db55880232f5007aae733043e7>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-RCPT-COUNT: 14
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH 2/2] drm/rockchip: dw_hdmi: add rk3568 support
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, heiko@sntech.de,
 airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
 =?UTF-8?B?5pON55Ge5p2w?= <algea.cao@rock-chips.com>,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210705140304.652929-1-benjamin.gaignard@collabora.com>
 <20210705140304.652929-3-benjamin.gaignard@collabora.com>
From: Huang Jiachai <hjc@rock-chips.com>
Message-ID: <2658816b-e6c1-06f7-03c2-3ec76fa49217@rock-chips.com>
Date: Tue, 6 Jul 2021 09:04:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210705140304.652929-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_180442_884387_204BD721 
X-CRM114-Status: GOOD (  16.55  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

YWRkIGFsZ2VhLmNhbyBhbmQgYW5keS55YW4KCtTaIDIwMjEvNy81IDIyOjAzLCBCZW5qYW1pbiBH
YWlnbmFyZCDQtLXAOgo+IEFkZCBhIG5ldyBkd19oZG1pX3BsYXRfZGF0YSBzdHJ1Y3QgYW5kIG5l
dyBjb21wYXRpYmxlIGZvciByazM1NjguCj4KPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWln
bmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgfCAyOCArKysrKysrKysrKysrKysr
KysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPiBpbmRleCA4MzBiZGQ1ZTliN2Nl
Li41ODE3YzNhOWZlNjRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9k
d19oZG1pLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jCj4gQEAgLTUwLDYgKzUwLDEwIEBACj4gICAjZGVmaW5lIFJLMzM5OV9HUkZf
U09DX0NPTjIwCQkweDYyNTAKPiAgICNkZWZpbmUgUkszMzk5X0hETUlfTENEQ19TRUwJCUJJVCg2
KQo+ICAgCj4gKyNkZWZpbmUgUkszNTY4X0dSRl9WT19DT04xCQkweDAzNjQKPiArI2RlZmluZSBS
SzM1NjhfSERNSV9TREFJTl9NU0sJCUJJVCgxNSkKPiArI2RlZmluZSBSSzM1NjhfSERNSV9TQ0xJ
Tl9NU0sJCUJJVCgxNCkKPiArCj4gICAjZGVmaW5lIEhJV09SRF9VUERBVEUodmFsLCBtYXNrKQko
dmFsIHwgKG1hc2spIDw8IDE2KQo+ICAgCj4gICAvKioKPiBAQCAtNDY3LDYgKzQ3MSwxOSBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGR3X2hkbWlfcGxhdF9kYXRhIHJrMzM5OV9oZG1pX2Rydl9kYXRh
ID0gewo+ICAgCS51c2VfZHJtX2luZm9mcmFtZSA9IHRydWUsCj4gICB9Owo+ICAgCj4gK3N0YXRp
YyBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9jaGlwX2RhdGEgcmszNTY4X2NoaXBfZGF0YSA9IHsKPiAr
CS5sY2RzZWxfZ3JmX3JlZyA9IC0xLAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBk
d19oZG1pX3BsYXRfZGF0YSByazM1NjhfaGRtaV9kcnZfZGF0YSA9IHsKPiArCS5tb2RlX3ZhbGlk
ID0gZHdfaGRtaV9yb2NrY2hpcF9tb2RlX3ZhbGlkLAo+ICsJLm1wbGxfY2ZnICAgPSByb2NrY2hp
cF9tcGxsX2NmZywKPiArCS5jdXJfY3RyICAgID0gcm9ja2NoaXBfY3VyX2N0ciwKPiArCS5waHlf
Y29uZmlnID0gcm9ja2NoaXBfcGh5X2NvbmZpZywKPiArCS5waHlfZGF0YSA9ICZyazM1NjhfY2hp
cF9kYXRhLAo+ICsJLnVzZV9kcm1faW5mb2ZyYW1lID0gdHJ1ZSwKPiArfTsKPiArCj4gICBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBkd19oZG1pX3JvY2tjaGlwX2R0X2lkc1tdID0g
ewo+ICAgCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjI4LWR3LWhkbWkiLAo+ICAgCSAg
LmRhdGEgPSAmcmszMjI4X2hkbWlfZHJ2X2RhdGEKPiBAQCAtNDgwLDYgKzQ5Nyw5IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGR3X2hkbWlfcm9ja2NoaXBfZHRfaWRzW10gPSB7
Cj4gICAJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZHctaGRtaSIsCj4gICAJICAu
ZGF0YSA9ICZyazMzOTlfaGRtaV9kcnZfZGF0YQo+ICAgCX0sCj4gKwl7IC5jb21wYXRpYmxlID0g
InJvY2tjaGlwLHJrMzU2OC1kdy1oZG1pIiwKPiArCSAgLmRhdGEgPSAmcmszNTY4X2hkbWlfZHJ2
X2RhdGEKPiArCX0sCj4gICAJe30sCj4gICB9Owo+ICAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwg
ZHdfaGRtaV9yb2NrY2hpcF9kdF9pZHMpOwo+IEBAIC01MzYsNiArNTU2LDE0IEBAIHN0YXRpYyBp
bnQgZHdfaGRtaV9yb2NrY2hpcF9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmlj
ZSAqbWFzdGVyLAo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCX0KPiAgIAo+ICsJaWYgKGhkbWktPmNo
aXBfZGF0YSA9PSAmcmszNTY4X2NoaXBfZGF0YSkgewo+ICsJCXJlZ21hcF93cml0ZShoZG1pLT5y
ZWdtYXAsIFJLMzU2OF9HUkZfVk9fQ09OMSwKPiArCQkJICAgICBISVdPUkRfVVBEQVRFKFJLMzU2
OF9IRE1JX1NEQUlOX01TSyB8Cj4gKwkJCQkJICAgUkszNTY4X0hETUlfU0NMSU5fTVNLLAo+ICsJ
CQkJCSAgIFJLMzU2OF9IRE1JX1NEQUlOX01TSyB8Cj4gKwkJCQkJICAgUkszNTY4X0hETUlfU0NM
SU5fTVNLKSk7Cj4gKwl9Cj4gKwo+ICAgCWhkbWktPnBoeSA9IGRldm1fcGh5X29wdGlvbmFsX2dl
dChkZXYsICJoZG1pIik7Cj4gICAJaWYgKElTX0VSUihoZG1pLT5waHkpKSB7Cj4gICAJCXJldCA9
IFBUUl9FUlIoaGRtaS0+cGh5KTsKCi0tIApCZXN0IFJlZ2FyZAoKu8a80u7OClNhbmR5IEh1YW5n
CkFkZHI6ILij1t3K0LnEwqXH+M2txczCt8jtvP6087XAODm6xbij1t3I7bz+1LBBx/gyMbrFwqUo
MzUwMDAzKQogICAgICAgTm8uIDIxIEJ1aWxkaW5nLCBBIERpc3RyaWN0LCBOby44OSxzb2Z0d2Fy
ZSBCb3VsZXZhcmQgRnV6aG91LEZ1amlhbixQUkMKVGVso7orODYgMDU5MS04Nzg4NDkxOSAgODY5
MApFLW1haWyjumhqY0Byb2NrLWNoaXBzLmNvbQoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
