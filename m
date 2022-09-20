Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82DE8C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zGxJydOurz29HsmVp7sW/97Yg3Wg4KmOqgVcAz2Mytc=; b=NnjS+fCkYoRQAf
	1b42rt1TLWpk5xkHZ8VFlPNqFXRYCXbhXdCx/lr+aQdmsvMNd46HNK7pRe0UAvQt/526hkBBf9u+M
	daKaiIsUmcnz7z9aguhsb8dSi4ywYJS9nOrKYiXG5bX4Du+Bqy5glh53smOlRXPXfIil3Ms6rbpgH
	MKqxHGEAadfA/2F1SHU2VjD8JBeypiFUM6gTrd5WUCeoveSVhqo1DCZtLNNf1CPYRzZORUCYxAaYC
	5udQ0p+VWaEsfo0UUcNjh31Pd9DzcPm7UlW6DcDZGBDMOrJ5+marAgtAwUaZPkrE7lLyWjmjHYTDv
	B4uv25x/EkxKfbmBSifg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabYt-003NtQ-2g; Tue, 20 Sep 2022 11:37:11 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQz-003IhE-O5; Tue, 20 Sep 2022 11:29:03 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K89WMQ025052;
	Tue, 20 Sep 2022 07:28:48 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r58-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:47 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 28KBSkpC060735
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:46 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 20 Sep
 2022 07:28:45 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:45 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4Ua021723;
	Tue, 20 Sep 2022 07:28:37 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
        <linux-iio@vger.kernel.org>
CC: Chunyan Zhang <zhang.lyra@gmail.com>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman <khilman@baylibre.com>,
        Vladimir Zapolskiy <vz@mleia.com>,
        Pengutronix Kernel Team
	<kernel@pengutronix.de>,
        Alexandru Ardelean <aardelean@deviqon.com>,
        Fabio
 Estevam <festevam@gmail.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Haibo Chen <haibo.chen@nxp.com>, Shawn
 Guo <shawnguo@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Miquel Raynal
	<miquel.raynal@bootlin.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Heiko
 Stuebner <heiko@sntech.de>,
        Florian Boor <florian.boor@kernelconcepts.de>,
        Ciprian Regus <ciprian.regus@analog.com>,
        Lars-Peter Clausen
	<lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jonathan
 Cameron <jic23@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Baolin
 Wang <baolin.wang@linux.alibaba.com>,
        Jyoti Bhayana <jbhayana@google.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Chen-Yu Tsai
	<wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: [PATCH 14/15] iio: health: max30102: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:20 +0200
Message-ID: <20220920112821.975359-15-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: MuvilLkh7mxYwEDAcPLub34gb4zuKQJ6
X-Proofpoint-GUID: MuvilLkh7mxYwEDAcPLub34gb4zuKQJ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042901_827293_83E1E166 
X-CRM114-Status: GOOD (  21.74  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBkb2VzIG5vdCBxdWl0ZSBmaXQgaW4gdGhl
Cmlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoKSB0eXBpY2FsIHVzYWdlLiBJbiB0aGlzIGNh
c2UsCmlpb19idWZmZXJfZW5hYmxlZCgpIHdhcyBiZWluZyB1c2VkIG5vdCB0byBwcmV2ZW50IHRo
ZSByYXcgYWNjZXNzCmJ1dCB0byBkZWNpZGUgd2hldGhlciBvciBub3QgdGhlIGRldmljZSBuZWVk
cyB0byBiZSBwb3dlcmVkIG9uIGJlZm9yZS4KSWYgYnVmZmVyaW5nLCB0aGVuIHRoZSBkZXZpY2Ug
aXMgYWxyZWFkeSBvbi4gVG8gZ3VhcmFudGVlIHRoZSBzYW1lCmJlaGF2aW9yLCBhIGNvbWJpbmF0
aW9uIG9mIGxvY2tzIGlzIGJlaW5nIHVzZWQ6CgoxLiBVc2UgaWlvX2RldmljZV9jbGFpbV9kaXJl
Y3RfbW9kZSgpIHRvIGNoZWNrIGlmIGRpcmVjdCBtb2RlIGNhbiBiZQpjbGFpbWVkIGFuZCBpZiB3
ZSBjYW4sIHRoZW4gd2Uga2VlcCBpdCB1bnRpbCB0aGUgcmVhZGluZyBpcyBkb25lICh3aGljaAph
bHNvIG1lYW5zIHRoZSBkZXZpY2Ugd2lsbCBiZSBwb3dlcmVkIG9uIGFuZCBvZmYpOwoyLiBJZiBh
bHJlYWR5IGJ1ZmZlcmluZywgd2UgbmVlZCB0byBtYWtlIHN1cmUgdGhhdCBidWZmZXJpbmcgaXMg
bm90CmRpc2FibGVkIChhbmQgaGVuY2UsIHBvd2VyaW5nIG9mZiB0aGUgZGV2aWNlKSB3aGlsZSBk
b2luZyBhIHJhdyByZWFkLiBGb3IKdGhhdCwgd2UgY2FuIG1ha2UgdXNlIG9mIHRoZSBsb2NhbCBs
b2NrIHRoYXQgYWxyZWFkeSBleGlzdHMuCgpTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5z
YUBhbmFsb2cuY29tPgotLS0KIGRyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMi5jIHwgMjUgKysr
KysrKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyks
IDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAy
LmMgYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDIuYwppbmRleCBhYmJjZWY1NjM4MDcuLmU5
ODRjNzhiOTlmNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMKKysr
IGIvZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMKQEAgLTIyNyw5ICsyMjcsMjAgQEAgc3Rh
dGljIGludCBtYXgzMDEwMl9idWZmZXJfcG9zdGVuYWJsZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9f
ZGV2KQogc3RhdGljIGludCBtYXgzMDEwMl9idWZmZXJfcHJlZGlzYWJsZShzdHJ1Y3QgaWlvX2Rl
diAqaW5kaW9fZGV2KQogewogCXN0cnVjdCBtYXgzMDEwMl9kYXRhICpkYXRhID0gaWlvX3ByaXYo
aW5kaW9fZGV2KTsKKwlpbnQgcmV0OworCisJLyoKKwkgKiBBcyBzdGF0ZWQgaW4gdGhlIGNvbW1l
bnQgaW4gdGhlIHJlYWRfcmF3KCkgZnVuY3Rpb24sIHRlbXBlcmF0dXJlCisJICogY2FuIG9ubHkg
YmUgYWNxdWlyZWQgaWYgdGhlIGVuZ2luZSBpcyBydW5uaW5nLiBBcyBzdWNoIHRoZSBtdXRleAor
CSAqIGlzIHVzZWQgdG8gbWFrZSBzdXJlIHdlIGRvIG5vdCBwb3dlciBkb3duIHdoaWxlIGRvaW5n
IGEgdGVtcGVyYXR1cmUKKwkgKiByZWFkaW5nLgorCSAqLworCW11dGV4X2xvY2soJmRhdGEtPmxv
Y2spOworCXJldCA9IG1heDMwMTAyX3NldF9wb3dlcm1vZGUoZGF0YSwgTUFYMzAxMDJfUkVHX01P
REVfQ09ORklHX01PREVfTk9ORSwKKwkJCQkgICAgIGZhbHNlKTsKKwltdXRleF91bmxvY2soJmRh
dGEtPmxvY2spOwogCi0JcmV0dXJuIG1heDMwMTAyX3NldF9wb3dlcm1vZGUoZGF0YSwgTUFYMzAx
MDJfUkVHX01PREVfQ09ORklHX01PREVfTk9ORSwKLQkJCQkgICAgICBmYWxzZSk7CisJcmV0dXJu
IHJldDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpaW9fYnVmZmVyX3NldHVwX29wcyBtYXgz
MDEwMl9idWZmZXJfc2V0dXBfb3BzID0gewpAQCAtNDc3LDEyICs0ODgsMTQgQEAgc3RhdGljIGlu
dCBtYXgzMDEwMl9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCQkgKiBUZW1w
ZXJhdHVyZSByZWFkaW5nIGNhbiBvbmx5IGJlIGFjcXVpcmVkIHdoZW4gbm90IGluCiAJCSAqIHNo
dXRkb3duOyBsZWF2ZSBzaHV0ZG93biBicmllZmx5IHdoZW4gYnVmZmVyIG5vdCBydW5uaW5nCiAJ
CSAqLwotCQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKLQkJaWYgKCFpaW9fYnVmZmVy
X2VuYWJsZWQoaW5kaW9fZGV2KSkKKwkJaWYgKCFpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2Rl
KGluZGlvX2RldikpIHsKIAkJCXJldCA9IG1heDMwMTAyX2dldF90ZW1wKGRhdGEsIHZhbCwgdHJ1
ZSk7Ci0JCWVsc2UKKwkJCWlpb19kZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYp
OworCQl9IGVsc2UgeworCQkJbXV0ZXhfbG9jaygmZGF0YS0+bG9jayk7CiAJCQlyZXQgPSBtYXgz
MDEwMl9nZXRfdGVtcChkYXRhLCB2YWwsIGZhbHNlKTsKLQkJbXV0ZXhfdW5sb2NrKCZpbmRpb19k
ZXYtPm1sb2NrKTsKKwkJCW11dGV4X3VubG9jaygmZGF0YS0+bG9jayk7CisJCX0KIAkJaWYgKHJl
dCkKIAkJCXJldHVybiByZXQ7CiAKLS0gCjIuMzcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
