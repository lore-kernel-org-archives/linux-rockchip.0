Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D936ED6E2A4
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Nov 2024 10:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IRn9ABxz+p4wrOcsWNApE+xVPzy56loTO7VA+yLFAHs=; b=1p986ZrLYUXvqnscvnqe0+cgC8
	MH8cQoPwsuFbsmrywSgTiqYPdnN+BX7ZI1OWuqMXHWFT+mF5vw3J13fHm0ywPgZ35yTNWyoLkCAcz
	FhLCyDah7AWmHmg4CAf5ie+Q7OF18ABWd2amhrm/twnqlLCErTEWAJiLwnj+bHjBO35JVpuZfCn+v
	w8CImnNyJdFXb6dgO0Pox8VonG+7IPnOdc/q+oV07CgoQJPZZ6HpqOKm3GBS0inApPzJ2hpFtkbzm
	Wgo929M1g8MMRTVLsnznqLhM4u7dCLiX31ktDfyCI/nRxN8FofFHw9/6xMgTc9NnVq4syz+2VX5xM
	jhGM1mcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tE482-0000000HJm1-1xfV;
	Thu, 21 Nov 2024 10:09:38 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tE47r-0000000HJix-1o95
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Nov 2024 10:09:28 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AL9h4Df009852;
	Thu, 21 Nov 2024 11:09:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	zWo2sYecNUbBd7STZ2QGAq2bQhy0GDw9Ky+/P/IZiUQ=; b=mrpi+rv29qlzNMzM
	PiR7kol/k4u+sV8vsdWDrBHrSZCYi19Mq7pCK1kDRxqXDrwQCTJGuNwz+zdvfPwl
	g6K55jaKrfOneUgP7tXHHTvgs7ourgqE6GJmMtB8eWOK/89DiomtmPV6o8wFBgHc
	AUSYy5SRaHgzZcaMUzU5AvJp4a/6b05R0ug5fPEEQ4iE+RosvG8Kau16A/KBa44+
	K6FXCJUx4+YQYcNHbn1l4CRihklivRKT7Old+fE8tA8pkoaG6v0H8KTc8nkl0ufK
	UwCEqEpRlqpvUDpw4aROFBWUn4F7xTBGPIXCaqtFBcVRXQp4T1gM6NxPwZu1Kua9
	9VKShA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 431bqxp0u9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Nov 2024 11:09:17 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C41A040044;
	Thu, 21 Nov 2024 11:08:02 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 877A2266425;
	Thu, 21 Nov 2024 11:07:07 +0100 (CET)
Received: from [10.48.86.208] (10.48.86.208) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Thu, 21 Nov
 2024 11:07:06 +0100
Message-ID: <cf81e5f2-45a4-4c82-890c-c8a4d17b22df@foss.st.com>
Date: Thu, 21 Nov 2024 11:07:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] media: verisilicon: add WebP decoding support
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Mauro Carvalho Chehab
	<mchehab@kernel.org>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Hans Verkuil
	<hverkuil-cisco@xs4all.nl>,
        Fritz Koenig <frkoenig@chromium.org>,
        Sebastian
 Fricke <sebastian.fricke@collabora.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20241120110105.244413-1-hugues.fruchet@foss.st.com>
 <20241120110105.244413-3-hugues.fruchet@foss.st.com>
 <c9f19faacccd47b8a72fc4a29a0f75b30bce1aa1.camel@collabora.com>
Content-Language: en-US
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <c9f19faacccd47b8a72fc4a29a0f75b30bce1aa1.camel@collabora.com>
X-Originating-IP: [10.48.86.208]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_020927_752953_D491BCEC 
X-CRM114-Status: GOOD (  17.82  )
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

SGkgTmljb2xhcywKCk9uIDExLzIwLzI0IDE1OjI1LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+
IExlIG1lcmNyZWRpIDIwIG5vdmVtYnJlIDIwMjQgw6AgMTI6MDEgKzAxMDAsIEh1Z3VlcyBGcnVj
aGV0IGEgw6ljcml0wqA6Cj4+IEFkZCBXZWJQIHBpY3R1cmUgZGVjb2Rpbmcgc3VwcG9ydCB0byBW
UDggc3RhdGVsZXNzIGRlY29kZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEh1Z3VlcyBGcnVjaGV0
IDxodWd1ZXMuZnJ1Y2hldEBmb3NzLnN0LmNvbT4KPj4gLS0tCj4+ICAgLi4uL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMV9yZWdzLmggfCAgMSArCj4+ICAgLi4uL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19nMV92cDhfZGVjLmMgICAgfCAxNCArKysrKysrKysrKysrKwo+
PiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jICAgIHwgIDIg
KysKPj4gICAuLi4vcGxhdGZvcm0vdmVyaXNpbGljb24vc3RtMzJtcDI1X3ZwdV9ody5jICAgICB8
IDE3ICsrKysrKysrKysrKysrKy0tCj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfcmVncy5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfcmVncy5oCj4+IGluZGV4IGM2MjNiM2IwYmUxOC4uZTdk
NGRiNzg4ZTU3IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19nMV9yZWdzLmgKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fZzFfcmVncy5oCj4+IEBAIC0yMzIsNiArMjMyLDcgQEAKPj4gICAjZGVm
aW5lICAgICBHMV9SRUdfREVDX0NUUkw3X0RDVDdfU1RBUlRfQklUKHgpCQkoKCh4KSAmIDB4M2Yp
IDw8IDApCj4+ICAgI2RlZmluZSBHMV9SRUdfQUREUl9TVFIJCQkJCTB4MDMwCj4+ICAgI2RlZmlu
ZSBHMV9SRUdfQUREUl9EU1QJCQkJCTB4MDM0Cj4+ICsjZGVmaW5lIEcxX1JFR19BRERSX0RTVF9D
SFJPTUEJCQkJMHgwMzgKPj4gICAjZGVmaW5lIEcxX1JFR19BRERSX1JFRihpKQkJCQkoMHgwMzgg
KyAoKGkpICogMHg0KSkKPj4gICAjZGVmaW5lICAgICBHMV9SRUdfQUREUl9SRUZfRklFTERfRQkJ
CUJJVCgxKQo+PiAgICNkZWZpbmUgICAgIEcxX1JFR19BRERSX1JFRl9UT1BDX0UJCQlCSVQoMCkK
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2cxX3ZwOF9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2cxX3ZwOF9kZWMuYwo+PiBpbmRleCA4NTFlYjY3ZjE5ZjUuLmM4M2VlNmY1ZWRjOCAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfdnA4
X2RlYy5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2cxX3ZwOF9kZWMuYwo+PiBAQCAtMzA3LDYgKzMwNywxMiBAQCBzdGF0aWMgdm9pZCBjZmdfcGFy
dHMoc3RydWN0IGhhbnRyb19jdHggKmN0eCwKPj4gICAJCQkgICBHMV9SRUdfREVDX0NUUkwzX1NU
UkVBTV9MRU4oZGN0X3BhcnRfdG90YWxfbGVuKSwKPj4gICAJCQkgICBHMV9SRUdfREVDX0NUUkwz
KTsKPj4gICAKPj4gKwlpZiAoY3R4LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZN
VF9XRUJQX0ZSQU1FKQo+PiArCQl2ZHB1X3dyaXRlX3JlbGF4ZWQodnB1LAo+PiArCQkJCSAgIEcx
X1JFR19ERUNfQ1RSTDNfU1RSRUFNX0xFTl9FWFQKPj4gKwkJCQkJKGRjdF9wYXJ0X3RvdGFsX2xl
biA+PiAyNCksCj4+ICsJCQkJICAgRzFfUkVHX0RFQ19DVFJMMyk7Cj4+ICsKPj4gICAJLyogRENU
IHBhcnRpdGlvbnMgYmFzZSBhZGRyZXNzICovCj4+ICAgCWZvciAoaSA9IDA7IGkgPCBoZHItPm51
bV9kY3RfcGFydHM7IGkrKykgewo+PiAgIAkJdTMyIGJ5dGVfb2Zmc2V0ID0gZGN0X3BhcnRfb2Zm
c2V0ICsgZGN0X3NpemVfcGFydF9zaXplICsgY291bnQ7Cj4+IEBAIC00MjcsNiArNDMzLDEyIEBA
IHN0YXRpYyB2b2lkIGNmZ19idWZmZXJzKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4+ICAgCj4+
ICAgCWRzdF9kbWEgPSBoYW50cm9fZ2V0X2RlY19idWZfYWRkcihjdHgsICZ2YjJfZHN0LT52YjJf
YnVmKTsKPj4gICAJdmRwdV93cml0ZV9yZWxheGVkKHZwdSwgZHN0X2RtYSwgRzFfUkVHX0FERFJf
RFNUKTsKPj4gKwo+PiArCWlmIChjdHgtPnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhf
Rk1UX1dFQlBfRlJBTUUpCj4+ICsJCXZkcHVfd3JpdGVfcmVsYXhlZCh2cHUsIGRzdF9kbWEgKwo+
PiArCQkJCSAgIGN0eC0+ZHN0X2ZtdC5wbGFuZV9mbXRbMF0uYnl0ZXNwZXJsaW5lICoKPj4gKwkJ
CQkgICBjdHgtPmRzdF9mbXQuaGVpZ2h0LAo+PiArCQkJCSAgIEcxX1JFR19BRERSX0RTVF9DSFJP
TUEpOwo+PiAgIH0KPj4gICAKPj4gICBpbnQgaGFudHJvX2cxX3ZwOF9kZWNfcnVuKHN0cnVjdCBo
YW50cm9fY3R4ICpjdHgpCj4+IEBAIC00NzEsNiArNDgzLDggQEAgaW50IGhhbnRyb19nMV92cDhf
ZGVjX3J1bihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+PiAgIAkJcmVnIHw9IEcxX1JFR19ERUNf
Q1RSTDBfU0tJUF9NT0RFOwo+PiAgIAlpZiAoaGRyLT5sZi5sZXZlbCA9PSAwKQo+PiAgIAkJcmVn
IHw9IEcxX1JFR19ERUNfQ1RSTDBfRklMVEVSSU5HX0RJUzsKPj4gKwlpZiAoY3R4LT52cHVfc3Jj
X2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9XRUJQX0ZSQU1FKQo+PiArCQlyZWcgfD0gRzFf
UkVHX0RFQ19DVFJMMF9XRUJQX0U7Cj4+ICAgCXZkcHVfd3JpdGVfcmVsYXhlZCh2cHUsIHJlZywg
RzFfUkVHX0RFQ19DVFJMMCk7Cj4+ICAgCj4+ICAgCS8qIEZyYW1lIGRpbWVuc2lvbnMgKi8KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0
bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+
PiBpbmRleCAyNTEzYWRmYmQ4MjUuLjcwNzViMmJhMWVjMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+PiBAQCAtNDcwLDYg
KzQ3MCw3IEBAIGhhbnRyb191cGRhdGVfcmVxdWlyZXNfcmVxdWVzdChzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4LCB1MzIgZm91cmNjKQo+PiAgIAkJYnJlYWs7Cj4+ICAgCWNhc2UgVjRMMl9QSVhfRk1U
X01QRUcyX1NMSUNFOgo+PiAgIAljYXNlIFY0TDJfUElYX0ZNVF9WUDhfRlJBTUU6Cj4+ICsJY2Fz
ZSBWNEwyX1BJWF9GTVRfV0VCUF9GUkFNRToKPj4gICAJY2FzZSBWNEwyX1BJWF9GTVRfSDI2NF9T
TElDRToKPj4gICAJY2FzZSBWNEwyX1BJWF9GTVRfSEVWQ19TTElDRToKPj4gICAJY2FzZSBWNEwy
X1BJWF9GTVRfVlA5X0ZSQU1FOgo+PiBAQCAtNDkyLDYgKzQ5Myw3IEBAIGhhbnRyb191cGRhdGVf
cmVxdWlyZXNfaG9sZF9jYXB0dXJlX2J1ZihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LCB1MzIgZm91
cmNjKQo+PiAgIAljYXNlIFY0TDJfUElYX0ZNVF9KUEVHOgo+PiAgIAljYXNlIFY0TDJfUElYX0ZN
VF9NUEVHMl9TTElDRToKPj4gICAJY2FzZSBWNEwyX1BJWF9GTVRfVlA4X0ZSQU1FOgo+PiArCWNh
c2UgVjRMMl9QSVhfRk1UX1dFQlBfRlJBTUU6Cj4+ICAgCWNhc2UgVjRMMl9QSVhfRk1UX0hFVkNf
U0xJQ0U6Cj4+ICAgCWNhc2UgVjRMMl9QSVhfRk1UX1ZQOV9GUkFNRToKPj4gICAJCXZxLT5zdWJz
eXN0ZW1fZmxhZ3MgJj0gfihWQjJfVjRMMl9GTF9TVVBQT1JUU19NMk1fSE9MRF9DQVBUVVJFX0JV
Rik7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0
bTMybXAyNV92cHVfaHcuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vc3Rt
MzJtcDI1X3ZwdV9ody5jCj4+IGluZGV4IDgzMzgyMTEyMGIyMC4uNDhkNjkxMmMzYmFiIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMybXAyNV92
cHVfaHcuYwo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3N0bTMy
bXAyNV92cHVfaHcuYwo+PiBAQCAtMjIsMTAgKzIyLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aGFudHJvX2ZtdCBzdG0zMm1wMjVfdmRlY19mbXRzW10gPSB7Cj4+ICAgCQkuY29kZWNfbW9kZSA9
IEhBTlRST19NT0RFX05PTkUsCj4+ICAgCQkuZnJtc2l6ZSA9IHsKPj4gICAJCQkubWluX3dpZHRo
ID0gRk1UX01JTl9XSURUSCwKPj4gLQkJCS5tYXhfd2lkdGggPSBGTVRfRkhEX1dJRFRILAo+PiAr
CQkJLm1heF93aWR0aCA9IEZNVF80S19XSURUSCwKPj4gICAJCQkuc3RlcF93aWR0aCA9IE1CX0RJ
TSwKPj4gICAJCQkubWluX2hlaWdodCA9IEZNVF9NSU5fSEVJR0hULAo+PiAtCQkJLm1heF9oZWln
aHQgPSBGTVRfRkhEX0hFSUdIVCwKPj4gKwkJCS5tYXhfaGVpZ2h0ID0gRk1UXzRLX0hFSUdIVCwK
PiAKPiBJJ20gYSBsaXR0bGUgc3VycHJpc2VkIG9mIHRoaXMgY2hhbmdlLCBzaW5jZSB0aGlzIGlz
IG1vZGlmeWluZyBWUDhfRlJBTUUsIHdoaWxlCj4gd2Ugc2hvdWxkIGluc3RlYWQgaW50cm9kdWNl
IFdFQlBfRlJBTUUuCgpUaGlzIGlzIHRoZSByZXNvbHV0aW9uIG9mIHRoZSBZVVYgb3V0cHV0IG9m
IGRlY29kZXIsIG5vdCB0aGUgV2ViUCBpbnB1dCwgCmFuZCBiZWNhdXNlIG9mIGxhY2sgb2YgcG9z
dC1wcm9jZXNzb3IsIHRoZSBvdXRwdXQgaXMgbm90IHNjYWxlZCwgc28gY2FuIApnbyB1cCB0byA0
SyB3aXRoIFdlYlAuCkJlZm9yZSBXZWJQIGludHJvZHVjdGlvbiwgdGhlIG1heGltdW0gb3V0cHV0
IHJlc29sdXRpb24gd2FzIEZIRCBmb3IgYWxsIApjb2RlY3MuIE5vdyBXZWJQIGFsbG93cyB1cCB0
byA0SyBidXQgRkhEIGNvbnN0cmFpbnQgcmVtYWlucyBmb3IgCkgyNjQvVlA4LiBJIGRvbid0IHNl
ZSByZWFsIHByb2JsZW1zIGJlY2F1c2UgVlA4L0gyNjQgY29tcHJlc3NlZCBpbnB1dHMgCmFyZSB3
ZWxsIGxpbWl0ZWQgdG8gRkhEIGFuZCBvbmx5IFdlYlAgYWxsb3dzIDRLLi4uCgo+IAo+PiAgIAkJ
CS5zdGVwX2hlaWdodCA9IE1CX0RJTSwKPj4gICAJCX0sCj4+ICAgCX0sCj4+IEBAIC02OCw2ICs2
OCwxOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgc3RtMzJtcDI1X3ZlbmNfZm10
c1tdID0gewo+PiAgIAkJLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+PiAgIAkJLmVu
Y19mbXQgPSBST0NLQ0hJUF9WUFVfRU5DX0ZNVF9ZVVY0MjBTUCwKPj4gICAJfSwKPj4gKwl7Cj4+
ICsJCS5mb3VyY2MgPSBWNEwyX1BJWF9GTVRfV0VCUF9GUkFNRSwKPj4gKwkJLmNvZGVjX21vZGUg
PSBIQU5UUk9fTU9ERV9WUDhfREVDLAo+PiArCQkubWF4X2RlcHRoID0gMiwKPj4gKwkJLmZybXNp
emUgPSB7Cj4+ICsJCQkubWluX3dpZHRoID0gRk1UX01JTl9XSURUSCwKPj4gKwkJCS5tYXhfd2lk
dGggPSBGTVRfNEtfV0lEVEgsCj4+ICsJCQkuc3RlcF93aWR0aCA9IE1CX0RJTSwKPj4gKwkJCS5t
aW5faGVpZ2h0ID0gRk1UX01JTl9IRUlHSFQsCj4+ICsJCQkubWF4X2hlaWdodCA9IEZNVF80S19I
RUlHSFQsCj4+ICsJCQkuc3RlcF9oZWlnaHQgPSBNQl9ESU0sCj4+ICsJCX0sCj4+ICsJfSwKPiAK
PiBUaGlzIGlzIHZlbmNfZm10IChlbmNvZGVyKSwgdGhpcyBzaG91bGRuJ3QgYmUgdGhlcmUuCgpB
bGwgYXBvbG9naXplcyBmb3IgdGhpcyByZWJhc2UgaXNzdWUsIGl0IGlzIG9mIGNvdXJzZSBwYXJ0
IG9mIApzdG0zMm1wMjVfdmRlY19mbXRzLgoKPiAKPj4gICAJewo+PiAgIAkJLmZvdXJjYyA9IFY0
TDJfUElYX0ZNVF9ZVVlWLAo+PiAgIAkJLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05FLAo+
IAoKQlIsCkh1Z3Vlcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
