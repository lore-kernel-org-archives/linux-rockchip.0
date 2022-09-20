Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF565C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/WkjClMRO9zBl8o2nlNeD1xFxtp5l4rAjsMy3NQCZo=; b=jbK6AwS4UZXxGl
	57yIvjpW9rU39Xlh+1Smu0JHweTR0r9dFy7gkOMYJ7xMLL7OBQAG7RLOHzUlt+w0FOBHQSI2r753S
	oC6x9F7Gu9KwEeIeB7Oms9zkjkcDd8ReRk6aaGVJt9s1IfwGCGGdPDPnBTXoRA8j+10V71whN2BQt
	FFewvIVasP8qA10Q7jwg5//BI4H/Esonl4HnhXCk/YREiDLlvlx6GbRTpwqAQmFNwTq560vglU9b3
	7RVgUlNSBHjj1bpyyMqKQU6iw3SeNRxVgCfud2Spzafr52tdm9dH76Bv+jyaKt7LpU9YgG/lgH/vm
	ojkQV+BFGbkeQHlQaD3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQc-003ING-Ks; Tue, 20 Sep 2022 11:28:38 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQ7-003I3N-BY; Tue, 20 Sep 2022 11:28:11 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K8NZGc006310;
	Tue, 20 Sep 2022 07:27:53 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jn835murg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:27:53 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 28KBRpY2060601
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:27:51 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:27:50 -0400
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:27:50 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:27:50 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UN021723;
	Tue, 20 Sep 2022 07:27:36 -0400
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
        "Fabio
 Estevam" <festevam@gmail.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Haibo Chen <haibo.chen@nxp.com>, "Shawn Guo" <shawnguo@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Jerome Brunet
	<jbrunet@baylibre.com>,
        "Heiko Stuebner" <heiko@sntech.de>,
        Florian Boor
	<florian.boor@kernelconcepts.de>,
        Ciprian Regus <ciprian.regus@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko
	<andy.shevchenko@gmail.com>,
        "Jonathan Cameron" <jic23@kernel.org>,
        Neil
 Armstrong <narmstrong@baylibre.com>,
        "Baolin Wang"
	<baolin.wang@linux.alibaba.com>,
        Jyoti Bhayana <jbhayana@google.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Chen-Yu Tsai
	<wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: [PATCH 01/15] iio: adc: ad_sigma_delta: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:07 +0200
Message-ID: <20220920112821.975359-2-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: _o-qdo5zWP6ZLi3cj7D0MO9Xcq21eEyu
X-Proofpoint-GUID: _o-qdo5zWP6ZLi3cj7D0MO9Xcq21eEyu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_03,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=805 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042807_477434_9FEF1D80 
X-CRM114-Status: GOOD (  12.96  )
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

RHJvcCAnbWxvY2snIHVzYWdlIGJ5IG1ha2luZyB1c2Ugb2YgaWlvX2RldmljZV9jbGFpbV9kaXJl
Y3RfbW9kZSgpLgpUaGlzIGNoYW5nZSBhY3R1YWxseSBtYWtlcyBzdXJlIHdlIGNhbm5vdCBkbyBh
IHNpbmdsZSBjb252ZXJzaW9uIHdoaWxlCmJ1ZmZlcmluZyBpcyBlbmFibGUuIE5vdGUgdGhlcmUg
d2FzIGEgcG90ZW50aWFsIHJhY2UgaW4gdGhlIHByZXZpb3VzCmNvZGUgc2luY2Ugd2Ugd2VyZSBv
bmx5IGFjcXVpcmluZyB0aGUgbG9jayBhZnRlciBjaGVja2luZyBpZiB0aGUgYnVzIGlzCmVuYWJs
ZWQuCgpGaXhlczogYWYzMDA4NDg1ZWEwICgiaWlvOmFkYzogQWRkIGNvbW1vbiBjb2RlIGZvciBB
REkgU2lnbWEgRGVsdGFkZXZpY2VzIikKU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FA
YW5hbG9nLmNvbT4KLS0tCiBkcml2ZXJzL2lpby9hZGMvYWRfc2lnbWFfZGVsdGEuYyB8IDggKysr
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL2FkX3NpZ21hX2RlbHRhLmMgYi9kcml2ZXJzL2lp
by9hZGMvYWRfc2lnbWFfZGVsdGEuYwppbmRleCAyNjFhOWE2YjQ1ZTEuLmQ4NTcwZjYyMDc4NSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkX3NpZ21hX2RlbHRhLmMKKysrIGIvZHJpdmVy
cy9paW8vYWRjL2FkX3NpZ21hX2RlbHRhLmMKQEAgLTI4MSwxMCArMjgxLDEwIEBAIGludCBhZF9z
aWdtYV9kZWx0YV9zaW5nbGVfY29udmVyc2lvbihzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAog
CXVuc2lnbmVkIGludCBkYXRhX3JlZzsKIAlpbnQgcmV0ID0gMDsKIAotCWlmIChpaW9fYnVmZmVy
X2VuYWJsZWQoaW5kaW9fZGV2KSkKLQkJcmV0dXJuIC1FQlVTWTsKKwlyZXQgPSBpaW9fZGV2aWNl
X2NsYWltX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsK
IAotCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwogCWFkX3NpZ21hX2RlbHRhX3NldF9j
aGFubmVsKHNpZ21hX2RlbHRhLCBjaGFuLT5hZGRyZXNzKTsKIAogCXNwaV9idXNfbG9jayhzaWdt
YV9kZWx0YS0+c3BpLT5tYXN0ZXIpOwpAQCAtMzIzLDcgKzMyMyw3IEBAIGludCBhZF9zaWdtYV9k
ZWx0YV9zaW5nbGVfY29udmVyc2lvbihzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCWFkX3Np
Z21hX2RlbHRhX3NldF9tb2RlKHNpZ21hX2RlbHRhLCBBRF9TRF9NT0RFX0lETEUpOwogCXNpZ21h
X2RlbHRhLT5idXNfbG9ja2VkID0gZmFsc2U7CiAJc3BpX2J1c191bmxvY2soc2lnbWFfZGVsdGEt
PnNwaS0+bWFzdGVyKTsKLQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworCWlpb19k
ZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwogCiAJaWYgKHJldCkKIAkJcmV0
dXJuIHJldDsKLS0gCjIuMzcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
