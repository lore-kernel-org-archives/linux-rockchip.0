Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A59AC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIy1ea286oqS7aJUY+6NVIoHmH58SWlf05rC7jzCaUg=; b=feiz0QwP+t2U7I
	7ZN+dMPEN4LF8CnnQWVqwx7rT9jtS2m2F23W8+AUfCxQ7jCBL+jjIwxRD9PrCDafnVsxl0T6vQWTF
	27E8HxtXwvEKCueHOUvXzfZGSO99WzIB5V4+jl6RVUt6gCuf0aEltwvqpOPnfP8OY7gztGCfzL79y
	hf/R/6FxhOBbgcRRGGsbeoaoKrB1I5haA7XyjqVSLisafv1fVq0OKXGxIW+tmWnhcRmmTlUZvzqrf
	IluosuYUMhM/EdPBZamdJDUV5uVaG8B5B5NLu60icD8FAsoCKHF+wAepHZi0ZXH0hm+UnR2oFKCh2
	9bP4cycyJiFeYgb4RH1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabUt-003LNB-5i; Tue, 20 Sep 2022 11:33:03 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQg-003IQM-0t; Tue, 20 Sep 2022 11:28:43 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K89WML025052;
	Tue, 20 Sep 2022 07:28:27 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r3k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:27 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 28KBSQru062574
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:26 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 20 Sep
 2022 07:28:25 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:25 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UV021723;
	Tue, 20 Sep 2022 07:28:13 -0400
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
Subject: [PATCH 09/15] iio: adc: sc27xx_adc: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:15 +0200
Message-ID: <20220920112821.975359-10-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: cBnTArGRWGARgFOqooRNAnx6Ez_S-zjG
X-Proofpoint-GUID: cBnTArGRWGARgFOqooRNAnx6Ez_S-zjG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=834 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042842_100374_D410993F 
X-CRM114-Status: GOOD (  15.71  )
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

VGhlIGlpb19kZXZpY2UgbG9jayBpcyBvbmx5IG1lYW50IGZvciBpbnRlcm5hbCB1c2UuIEhlbmNl
IGRlZmluZSBhCmRldmljZSBsb2NhbCBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBjb25jdXJyZW50
IGFjY2Vzc2VzLgoKU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4K
LS0tCiBkcml2ZXJzL2lpby9hZGMvc2MyN3h4X2FkYy5jIHwgMTIgKysrKysrKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvaWlvL2FkYy9zYzI3eHhfYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMvc2MyN3h4X2Fk
Yy5jCmluZGV4IGY4NDIxY2JiYThmYS4uMWNkYjRlODNhYWYzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2lpby9hZGMvc2MyN3h4X2FkYy5jCisrKyBiL2RyaXZlcnMvaWlvL2FkYy9zYzI3eHhfYWRjLmMK
QEAgLTQsNiArNCw3IEBACiAjaW5jbHVkZSA8bGludXgvaHdzcGlubG9jay5oPgogI2luY2x1ZGUg
PGxpbnV4L2lpby9paW8uaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KKyNpbmNsdWRlIDxs
aW51eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L252bWVtLWNvbnN1bWVyLmg+CiAjaW5jbHVk
ZSA8bGludXgvb2YuaD4KICNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KQEAgLTgzLDYgKzg0
LDggQEAgc3RydWN0IHNjMjd4eF9hZGNfZGF0YSB7CiAJc3RydWN0IGRldmljZSAqZGV2OwogCXN0
cnVjdCByZWd1bGF0b3IgKnZvbHJlZjsKIAlzdHJ1Y3QgcmVnbWFwICpyZWdtYXA7CisJLyogbG9j
ayB0byBwcm90ZWN0IGFnYWluc3QgbXVsdGlwbGUgYWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KKwlz
dHJ1Y3QgbXV0ZXggbG9jazsKIAkvKgogCSAqIE9uZSBoYXJkd2FyZSBzcGlubG9jayB0byBzeW5j
aHJvbml6ZSBiZXR3ZWVuIHRoZSBtdWx0aXBsZQogCSAqIHN1YnN5c3RlbXMgd2hpY2ggd2lsbCBh
Y2Nlc3MgdGhlIHVuaXF1ZSBBREMgY29udHJvbGxlci4KQEAgLTY2NCw5ICs2NjcsOSBAQCBzdGF0
aWMgaW50IHNjMjd4eF9hZGNfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIAog
CXN3aXRjaCAobWFzaykgewogCWNhc2UgSUlPX0NIQU5fSU5GT19SQVc6Ci0JCW11dGV4X2xvY2so
JmluZGlvX2Rldi0+bWxvY2spOworCQltdXRleF9sb2NrKCZkYXRhLT5sb2NrKTsKIAkJcmV0ID0g
c2MyN3h4X2FkY19yZWFkKGRhdGEsIGNoYW4tPmNoYW5uZWwsIHNjYWxlLCAmdG1wKTsKLQkJbXV0
ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfdW5sb2NrKCZkYXRhLT5sb2Nr
KTsKIAogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKQEAgLTY3NSwxMCArNjc4LDEwIEBAIHN0
YXRpYyBpbnQgc2MyN3h4X2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAog
CQlyZXR1cm4gSUlPX1ZBTF9JTlQ7CiAKIAljYXNlIElJT19DSEFOX0lORk9fUFJPQ0VTU0VEOgot
CQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfbG9jaygmZGF0YS0+bG9j
ayk7CiAJCXJldCA9IHNjMjd4eF9hZGNfcmVhZF9wcm9jZXNzZWQoZGF0YSwgY2hhbi0+Y2hhbm5l
bCwgc2NhbGUsCiAJCQkJCQkmdG1wKTsKLQkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2Nr
KTsKKwkJbXV0ZXhfdW5sb2NrKCZkYXRhLT5sb2NrKTsKIAogCQlpZiAocmV0KQogCQkJcmV0dXJu
IHJldDsKQEAgLTg3Niw2ICs4NzksNyBAQCBzdGF0aWMgaW50IHNjMjd4eF9hZGNfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJcmV0dXJuIC1FTk9NRU07CiAKIAlzYzI3eHhf
ZGF0YSA9IGlpb19wcml2KGluZGlvX2Rldik7CisJbXV0ZXhfaW5pdCgmc2MyN3h4X2RhdGEtPmxv
Y2spOwogCiAJc2MyN3h4X2RhdGEtPnJlZ21hcCA9IGRldl9nZXRfcmVnbWFwKGRldi0+cGFyZW50
LCBOVUxMKTsKIAlpZiAoIXNjMjd4eF9kYXRhLT5yZWdtYXApIHsKLS0gCjIuMzcuMwoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
