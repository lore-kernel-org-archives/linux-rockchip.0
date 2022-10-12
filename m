Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DE1C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 15:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OCeyCAUifh0Cn9oHK6sqzMBqgOzIr4FPufy8dmJyLA=; b=ej7u6lR776bD3T
	v+Ng9mhrddpZpzSo1YIXhRXYCL+OFj3E9EgX+xY6+eDaQGrlZjPJS3g7KdgrEJKDEngqHV4lZYQsA
	A2WPr9U01eQNi37muaJVpgRDFGW3dWjFapaJ+2W80WuPmrN0WmNu7uG60g7/sxgu6NTEolAAXn0O5
	QxQnRMlJQreXChrOpADilJtOlj4Fe7T52Hk5X8ldWbWLHGHmRUheb65mq5r8qbUQhQKDI/XddXSDX
	Uu1bYiTNSdNIBERKAol7HvVG+pixZtTofg6dmsci+6TvIaAG5u/QDE1PS0u3H24tF09gV8rWrp5mN
	b/nLAG084dTGO0Lv7xLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oidSr-008UdP-Qf; Wed, 12 Oct 2022 15:16:09 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oidSo-008Uat-HZ; Wed, 12 Oct 2022 15:16:08 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29CEa37s032678;
	Wed, 12 Oct 2022 11:15:43 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3k3645e141-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Oct 2022 11:15:42 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 29CFFfWt049221
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 12 Oct 2022 11:15:41 -0400
Received: from ASHBCASHYB4.ad.analog.com (10.64.17.132) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Wed, 12 Oct 2022 11:15:41 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB4.ad.analog.com (10.64.17.132) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Wed, 12 Oct 2022 11:15:40 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Wed, 12 Oct 2022 11:15:40 -0400
Received: from nsa.ad.analog.com ([10.44.3.62])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 29CFEunc022095;
	Wed, 12 Oct 2022 11:15:29 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>,
        <linux-amlogic@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-imx@nxp.com>
CC: Chen-Yu Tsai <wens@csie.org>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Ciprian Regus
	<ciprian.regus@analog.com>,
        Vladimir Zapolskiy <vz@mleia.com>, Cixi Geng
	<cixi.geng1@unisoc.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        "Miquel
 Raynal" <miquel.raynal@bootlin.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Heiko Stuebner <heiko@sntech.de>,
        =?UTF-8?q?Nuno=20S=C3=A1?=
	<nuno.sa@analog.com>,
        Fabio Estevam <festevam@gmail.com>,
        Jerome Brunet
	<jbrunet@baylibre.com>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Pengutronix Kernel Team
	<kernel@pengutronix.de>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        "Hans
 de Goede" <hdegoede@redhat.com>,
        Alexandru Ardelean <aardelean@deviqon.com>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Haibo Chen
	<haibo.chen@nxp.com>, Lars-Peter Clausen <lars@metafoo.de>,
        Jyoti Bhayana
	<jbhayana@google.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Andy Shevchenko
	<andy.shevchenko@gmail.com>,
        Florian Boor <florian.boor@kernelconcepts.de>,
        Chunyan Zhang <zhang.lyra@gmail.com>, Orson Zhai <orsonzhai@gmail.com>,
        "Shawn Guo" <shawnguo@kernel.org>, Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH v3 1/4] iio: core: introduce iio_device_{claim|release}_buffer_mode() APIs
Date: Wed, 12 Oct 2022 17:16:17 +0200
Message-ID: <20221012151620.1725215-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221012151620.1725215-1-nuno.sa@analog.com>
References: <20221012151620.1725215-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: 8l2VOtgy2CDwMw-gbeV9x-u9BpQMGK02
X-Proofpoint-ORIG-GUID: 8l2VOtgy2CDwMw-gbeV9x-u9BpQMGK02
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-12_07,2022-10-12_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501
 spamscore=0 suspectscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210120100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_081606_614279_09677D72 
X-CRM114-Status: GOOD (  14.15  )
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

VGhlc2UgQVBJcyBhcmUgYW5hbG9nb3VzIHRvIGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUo
KSBhbmQKaWlvX2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKCkgYnV0LCBhcyB0aGUgbmFtZSBz
dWdnZXN0cywgd2l0aCB0aGUKbG9naWMgZmxpcHBlZC4gV2hpbGUgdGhpcyBsb29rcyBvZGQgZW5v
dWdoLCBpdCB3aWxsIGhhdmUgYXQgbGVhc3QgdHdvCnVzZXJzIChpbiBmb2xsb3dpbmcgY2hhbmdl
cykgYW5kIGl0IHdpbGwgYmUgaW1wb3J0YW50IHRvIG1vdmUgdGhlIGlpbwptbG9jayB0byB0aGUg
cHJpdmF0ZSBzdHJ1Y3QuCgpTaWduZWQtb2ZmLWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cu
Y29tPgotLS0KIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLmMgfCAzOCArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKIGluY2x1ZGUvbGludXgvaWlvL2lpby5oICAgICAgICAg
fCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWNvcmUuYyBiL2RyaXZlcnMvaWlvL2luZHVzdHJpYWxp
by1jb3JlLmMKaW5kZXggMTUxZmYzOTkzMzU0Li5jZjgwZjgxZTQ2NjUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLmMKKysrIGIvZHJpdmVycy9paW8vaW5kdXN0cmlh
bGlvLWNvcmUuYwpAQCAtMjA4Myw2ICsyMDgzLDQ0IEBAIHZvaWQgaWlvX2RldmljZV9yZWxlYXNl
X2RpcmVjdF9tb2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCiB9CiBFWFBPUlRfU1lNQk9M
X0dQTChpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0X21vZGUpOwogCisvKioKKyAqIGlpb19kZXZp
Y2VfY2xhaW1fYnVmZmVyX21vZGUgLSBLZWVwIGRldmljZSBpbiBidWZmZXIgbW9kZQorICogQGlu
ZGlvX2RldjoJdGhlIGlpb19kZXYgYXNzb2NpYXRlZCB3aXRoIHRoZSBkZXZpY2UKKyAqCisgKiBJ
ZiB0aGUgZGV2aWNlIGlzIGluIGJ1ZmZlciBtb2RlIGl0IGlzIGd1YXJhbnRlZWQgdG8gc3RheQor
ICogdGhhdCB3YXkgdW50aWwgaWlvX2RldmljZV9yZWxlYXNlX2J1ZmZlcl9tb2RlKCkgaXMgY2Fs
bGVkLgorICoKKyAqIFVzZSB3aXRoIGlpb19kZXZpY2VfcmVsZWFzZV9idWZmZXJfbW9kZSgpCisg
KgorICogUmV0dXJuczogMCBvbiBzdWNjZXNzLCAtRUJVU1kgb24gZmFpbHVyZQorICovCitpbnQg
aWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9kZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQor
eworCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOworCisJaWYgKGlpb19idWZmZXJfZW5h
YmxlZChpbmRpb19kZXYpKQorCQlyZXR1cm4gMDsKKworCW11dGV4X3VubG9jaygmaW5kaW9fZGV2
LT5tbG9jayk7CisJcmV0dXJuIC1FQlVTWTsKK30KK0VYUE9SVF9TWU1CT0xfR1BMKGlpb19kZXZp
Y2VfY2xhaW1fYnVmZmVyX21vZGUpOworCisvKioKKyAqIGlpb19kZXZpY2VfcmVsZWFzZV9idWZm
ZXJfbW9kZSAtIHJlbGVhc2VzIGNsYWltIG9uIGJ1ZmZlciBtb2RlCisgKiBAaW5kaW9fZGV2Ogl0
aGUgaWlvX2RldiBhc3NvY2lhdGVkIHdpdGggdGhlIGRldmljZQorICoKKyAqIFJlbGVhc2UgdGhl
IGNsYWltLiBEZXZpY2UgaXMgbm8gbG9uZ2VyIGd1YXJhbnRlZWQgdG8gc3RheQorICogaW4gYnVm
ZmVyIG1vZGUuCisgKgorICogVXNlIHdpdGggaWlvX2RldmljZV9jbGFpbV9idWZmZXJfbW9kZSgp
CisgKi8KK3ZvaWQgaWlvX2RldmljZV9yZWxlYXNlX2J1ZmZlcl9tb2RlKHN0cnVjdCBpaW9fZGV2
ICppbmRpb19kZXYpCit7CisJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKK30KK0VY
UE9SVF9TWU1CT0xfR1BMKGlpb19kZXZpY2VfcmVsZWFzZV9idWZmZXJfbW9kZSk7CisKIC8qKgog
ICogaWlvX2RldmljZV9nZXRfY3VycmVudF9tb2RlKCkgLSBoZWxwZXIgZnVuY3Rpb24gcHJvdmlk
aW5nIHJlYWQtb25seSBhY2Nlc3MgdG8KICAqCQkJCSAgIHRoZSBvcGFxdWUgQGN1cnJlbnRtb2Rl
IHZhcmlhYmxlCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2lpby9paW8uaCBiL2luY2x1ZGUv
bGludXgvaWlvL2lpby5oCmluZGV4IGYwZWM4YTVlNWE3YS4uOWQzYmQ2Mzc5ZWI4IDEwMDY0NAot
LS0gYS9pbmNsdWRlL2xpbnV4L2lpby9paW8uaAorKysgYi9pbmNsdWRlL2xpbnV4L2lpby9paW8u
aApAQCAtNjI5LDYgKzYyOSw4IEBAIGludCBfX2Rldm1faWlvX2RldmljZV9yZWdpc3RlcihzdHJ1
Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiBpbnQgaWlvX3B1c2hf
ZXZlbnQoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwgdTY0IGV2X2NvZGUsIHM2NCB0aW1lc3Rh
bXApOwogaW50IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoc3RydWN0IGlpb19kZXYgKmlu
ZGlvX2Rldik7CiB2b2lkIGlpb19kZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShzdHJ1Y3QgaWlv
X2RldiAqaW5kaW9fZGV2KTsKK2ludCBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2RlKHN0cnVj
dCBpaW9fZGV2ICppbmRpb19kZXYpOwordm9pZCBpaW9fZGV2aWNlX3JlbGVhc2VfYnVmZmVyX21v
ZGUoc3RydWN0IGlpb19kZXYgKmluZGlvX2Rldik7CiAKIGV4dGVybiBzdHJ1Y3QgYnVzX3R5cGUg
aWlvX2J1c190eXBlOwogCi0tIAoyLjM4LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
