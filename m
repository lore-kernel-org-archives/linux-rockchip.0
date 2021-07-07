Return-Path: <SRS0=2/VX=L7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CC4C07E96
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jul 2021 01:24:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29A5561A0F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jul 2021 01:24:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 29A5561A0F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WlBWFcYzzs/Hyr5A6y8JQzHxLJiRCICgbHFqKBIvFc8=; b=Jcfrg1sxKhO6ZQKQvpYlooH+ET
	2NPVzIMssZcqPByx51E8MHi80Rysa/Jp2CmxnDlw1RmjQ2OcEO1ZbomdGS3trklek2bWI+igCC4Mp
	ZixcLhRJ+43x14i08n3uOyPIp2cNOlQI1SGxGnkV62qt++1QZvq3mZR+Upo9ZYSLtj4x7YIqdwwuT
	x7lPmnsg7OpsFNiSMKfMEAGWwNDIlRt0UbCIN1oAqhMp7pdtokFIVih2OvSsJ/XGUzL/mzJM6SgJF
	NGZywNB+bz05RFtU8nXmtrX7mALVguiNzxNOewbwf+DqJtFMlnH0jvizyTezk+oFJtAd1IGRDpsQy
	p3VAX+rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0wIT-00D8C0-LZ; Wed, 07 Jul 2021 01:24:17 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0wIF-00D8B3-Dl; Wed, 07 Jul 2021 01:24:05 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id C2218828;
 Wed,  7 Jul 2021 09:23:51 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.39] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P30160T139874211661568S1625621030052233_; 
 Wed, 07 Jul 2021 09:23:51 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bf364529817dce1bbbc56a7b0d2126e9>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: kernel@collabora.com
X-RCPT-COUNT: 12
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_2/2=5d_drm/rockchip=3a_dw=5fhdmi=3a_add_rk?=
 =?UTF-8?B?MzU2OCBzdXBwb3J044CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2No?=
 =?UTF-8?Q?ip-bounces+algea=2ecao=3drock-chips=2ecom=40lists=2einfradead=2eo?=
 =?UTF-8?B?cmfku6Plj5HjgJE=?=
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hjc@rock-chips.com,
 heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210705140304.652929-1-benjamin.gaignard@collabora.com>
 <20210705140304.652929-3-benjamin.gaignard@collabora.com>
From: crj <algea.cao@rock-chips.com>
Message-ID: <f6d23bb9-fd31-7dd5-e8b9-aa24310e25da@rock-chips.com>
Date: Wed, 7 Jul 2021 09:23:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20210705140304.652929-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_182403_863529_A10B25DF 
X-CRM114-Status: GOOD (  16.35  )
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

SGkgQmVuamFtaW4sCgogwqDCoMKgIMKgwqDCoCBSSzM1NjggaGRtaSBwaHkgcmVmIGNsb2NrIHNv
dXJjZSBpcyBIUExMLiBIUExMIG11c3QgYmUgc2V0IHdoZW4gCnN3aXRjaGluZyByZXNvbHV0aW9u
IG9yIHBsdWdnaW5nLgoKV2hldGhlciB0byBhZGQgdGhlIGNvbmZpZ3VyYXRpb24gZm9yIEhQTEw/
CgoKIMKgwqDCoCDCoMKgwqAgVGhhbmtzIQoKCuWcqCAyMDIxLzcvNSAyMjowMywgQmVuamFtaW4g
R2FpZ25hcmQg5YaZ6YGTOgo+IEFkZCBhIG5ldyBkd19oZG1pX3BsYXRfZGF0YSBzdHJ1Y3QgYW5k
IG5ldyBjb21wYXRpYmxlIGZvciByazM1NjguCj4KPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgfCAyOCArKysrKysrKysrKysr
KysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKPiBpbmRleCA4MzBiZGQ1ZTli
N2NlLi41ODE3YzNhOWZlNjRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kd19oZG1pLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdf
aGRtaS1yb2NrY2hpcC5jCj4gQEAgLTUwLDYgKzUwLDEwIEBACj4gICAjZGVmaW5lIFJLMzM5OV9H
UkZfU09DX0NPTjIwCQkweDYyNTAKPiAgICNkZWZpbmUgUkszMzk5X0hETUlfTENEQ19TRUwJCUJJ
VCg2KQo+ICAgCj4gKyNkZWZpbmUgUkszNTY4X0dSRl9WT19DT04xCQkweDAzNjQKPiArI2RlZmlu
ZSBSSzM1NjhfSERNSV9TREFJTl9NU0sJCUJJVCgxNSkKPiArI2RlZmluZSBSSzM1NjhfSERNSV9T
Q0xJTl9NU0sJCUJJVCgxNCkKPiArCj4gICAjZGVmaW5lIEhJV09SRF9VUERBVEUodmFsLCBtYXNr
KQkodmFsIHwgKG1hc2spIDw8IDE2KQo+ICAgCj4gICAvKioKPiBAQCAtNDY3LDYgKzQ3MSwxOSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGR3X2hkbWlfcGxhdF9kYXRhIHJrMzM5OV9oZG1pX2Rydl9k
YXRhID0gewo+ICAgCS51c2VfZHJtX2luZm9mcmFtZSA9IHRydWUsCj4gICB9Owo+ICAgCj4gK3N0
YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9jaGlwX2RhdGEgcmszNTY4X2NoaXBfZGF0YSA9IHsK
PiArCS5sY2RzZWxfZ3JmX3JlZyA9IC0xLAo+ICt9Owo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBkd19oZG1pX3BsYXRfZGF0YSByazM1NjhfaGRtaV9kcnZfZGF0YSA9IHsKPiArCS5tb2RlX3Zh
bGlkID0gZHdfaGRtaV9yb2NrY2hpcF9tb2RlX3ZhbGlkLAo+ICsJLm1wbGxfY2ZnICAgPSByb2Nr
Y2hpcF9tcGxsX2NmZywKPiArCS5jdXJfY3RyICAgID0gcm9ja2NoaXBfY3VyX2N0ciwKPiArCS5w
aHlfY29uZmlnID0gcm9ja2NoaXBfcGh5X2NvbmZpZywKPiArCS5waHlfZGF0YSA9ICZyazM1Njhf
Y2hpcF9kYXRhLAo+ICsJLnVzZV9kcm1faW5mb2ZyYW1lID0gdHJ1ZSwKPiArfTsKPiArCj4gICBz
dGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBkd19oZG1pX3JvY2tjaGlwX2R0X2lkc1td
ID0gewo+ICAgCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjI4LWR3LWhkbWkiLAo+ICAg
CSAgLmRhdGEgPSAmcmszMjI4X2hkbWlfZHJ2X2RhdGEKPiBAQCAtNDgwLDYgKzQ5Nyw5IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGR3X2hkbWlfcm9ja2NoaXBfZHRfaWRzW10g
PSB7Cj4gICAJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZHctaGRtaSIsCj4gICAJ
ICAuZGF0YSA9ICZyazMzOTlfaGRtaV9kcnZfZGF0YQo+ICAgCX0sCj4gKwl7IC5jb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzU2OC1kdy1oZG1pIiwKPiArCSAgLmRhdGEgPSAmcmszNTY4X2hkbWlf
ZHJ2X2RhdGEKPiArCX0sCj4gICAJe30sCj4gICB9Owo+ICAgTU9EVUxFX0RFVklDRV9UQUJMRShv
ZiwgZHdfaGRtaV9yb2NrY2hpcF9kdF9pZHMpOwo+IEBAIC01MzYsNiArNTU2LDE0IEBAIHN0YXRp
YyBpbnQgZHdfaGRtaV9yb2NrY2hpcF9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRl
dmljZSAqbWFzdGVyLAo+ICAgCQlyZXR1cm4gcmV0Owo+ICAgCX0KPiAgIAo+ICsJaWYgKGhkbWkt
PmNoaXBfZGF0YSA9PSAmcmszNTY4X2NoaXBfZGF0YSkgewo+ICsJCXJlZ21hcF93cml0ZShoZG1p
LT5yZWdtYXAsIFJLMzU2OF9HUkZfVk9fQ09OMSwKPiArCQkJICAgICBISVdPUkRfVVBEQVRFKFJL
MzU2OF9IRE1JX1NEQUlOX01TSyB8Cj4gKwkJCQkJICAgUkszNTY4X0hETUlfU0NMSU5fTVNLLAo+
ICsJCQkJCSAgIFJLMzU2OF9IRE1JX1NEQUlOX01TSyB8Cj4gKwkJCQkJICAgUkszNTY4X0hETUlf
U0NMSU5fTVNLKSk7Cj4gKwl9Cj4gKwo+ICAgCWhkbWktPnBoeSA9IGRldm1fcGh5X29wdGlvbmFs
X2dldChkZXYsICJoZG1pIik7Cj4gICAJaWYgKElTX0VSUihoZG1pLT5waHkpKSB7Cj4gICAJCXJl
dCA9IFBUUl9FUlIoaGRtaS0+cGh5KTsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
