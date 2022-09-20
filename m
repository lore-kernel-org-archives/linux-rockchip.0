Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC6F2C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85w7sKdOCLka3o7Nzk9I8R9m8n/D0OdaCxEO1JEgVrY=; b=Y+/2v5v90zBoKQ
	e+aynJ2U8eMHht99Lty076gi2dIT3wujTZnp0WTh++N0niPoOGAbDXEkbbh4vq+FnZP89rzgzhzHm
	cY+XZUBzrLMf3NXHa6Fcwfc77n4VRBS5tDEo5u7mE6VoZiqZHGLr+L0+/5vkHTu1+P15HJW+Xtal1
	afv+IPv8H1WaIH0E2Q64b960PT1qHBIkfz0AVBViSr6qaoKJW/eTrRbVHVTV8mMqjNBaeVIMEp+Tk
	RPWKQ4rj0W/DeLZnP61If5vtVQQz13PhSlWhJ8lgE5aHwnh73gLcg3zlZkBxTymjKkNblr+5LqtCu
	nfeyfkThgTt69CQGwRFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabUD-003Kub-RO; Tue, 20 Sep 2022 11:32:21 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQc-003INS-Jh; Tue, 20 Sep 2022 11:28:40 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K8A4BW025074;
	Tue, 20 Sep 2022 07:28:24 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jpn468r39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:28:24 -0400
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 28KBSN6W062559
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:28:23 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX9.ad.analog.com (10.64.17.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:22 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 20 Sep 2022 07:28:21 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:28:21 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UU021723;
	Tue, 20 Sep 2022 07:28:09 -0400
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
Subject: [PATCH 08/15] iio: adc: rockchip_saradc: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:14 +0200
Message-ID: <20220920112821.975359-9-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: KpCxPLroO0z1AeMGtfRLRBo6ExycW7Pb
X-Proofpoint-GUID: KpCxPLroO0z1AeMGtfRLRBo6ExycW7Pb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_02,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 phishscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042838_694902_345353E4 
X-CRM114-Status: GOOD (  15.81  )
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
LS0tCiBkcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMgfCAxNCArKysrKysrKystLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMgYi9kcml2ZXJzL2lpby9h
ZGMvcm9ja2NoaXBfc2FyYWRjLmMKaW5kZXggYjg3ZWE3MTQ4YjU4Li4wNjgxMjI2NTM2YzkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYworKysgYi9kcml2ZXJz
L2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMKQEAgLTUsNiArNSw3IEBACiAgKi8KIAogI2luY2x1
ZGUgPGxpbnV4L21vZHVsZS5oPgorI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+CiAj
aW5jbHVkZSA8bGludXgvaW8uaD4KQEAgLTQ5LDYgKzUwLDggQEAgc3RydWN0IHJvY2tjaGlwX3Nh
cmFkYyB7CiAJc3RydWN0IGNsawkJKmNsazsKIAlzdHJ1Y3QgY29tcGxldGlvbgljb21wbGV0aW9u
OwogCXN0cnVjdCByZWd1bGF0b3IJKnZyZWY7CisJLyogbG9jayB0byBwcm90ZWN0IGFnYWluc3Qg
bXVsdGlwbGUgYWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KKwlzdHJ1Y3QgbXV0ZXgJCWxvY2s7CiAJ
aW50CQkJdXZfdnJlZjsKIAlzdHJ1Y3QgcmVzZXRfY29udHJvbAkqcmVzZXQ7CiAJY29uc3Qgc3Ry
dWN0IHJvY2tjaGlwX3NhcmFkY19kYXRhICpkYXRhOwpAQCAtOTQsMTcgKzk3LDE3IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfc2FyYWRjX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYs
CiAKIAlzd2l0Y2ggKG1hc2spIHsKIAljYXNlIElJT19DSEFOX0lORk9fUkFXOgotCQltdXRleF9s
b2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJbXV0ZXhfbG9jaygmaW5mby0+bG9jayk7CiAKIAkJ
cmV0ID0gcm9ja2NoaXBfc2FyYWRjX2NvbnZlcnNpb24oaW5mbywgY2hhbik7CiAJCWlmIChyZXQp
IHsKIAkJCXJvY2tjaGlwX3NhcmFkY19wb3dlcl9kb3duKGluZm8pOwotCQkJbXV0ZXhfdW5sb2Nr
KCZpbmRpb19kZXYtPm1sb2NrKTsKKwkJCW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7CiAJCQly
ZXR1cm4gcmV0OwogCQl9CiAKIAkJKnZhbCA9IGluZm8tPmxhc3RfdmFsOwotCQltdXRleF91bmxv
Y2soJmluZGlvX2Rldi0+bWxvY2spOworCQltdXRleF91bmxvY2soJmluZm8tPmxvY2spOwogCQly
ZXR1cm4gSUlPX1ZBTF9JTlQ7CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1NDQUxFOgogCQkqdmFsID0g
aW5mby0+dXZfdnJlZiAvIDEwMDA7CkBAIC0yNzAsNyArMjczLDcgQEAgc3RhdGljIGlycXJldHVy
bl90IHJvY2tjaGlwX3NhcmFkY190cmlnZ2VyX2hhbmRsZXIoaW50IGlycSwgdm9pZCAqcCkKIAlp
bnQgcmV0OwogCWludCBpLCBqID0gMDsKIAotCW11dGV4X2xvY2soJmlfZGV2LT5tbG9jayk7CisJ
bXV0ZXhfbG9jaygmaW5mby0+bG9jayk7CiAKIAlmb3JfZWFjaF9zZXRfYml0KGksIGlfZGV2LT5h
Y3RpdmVfc2Nhbl9tYXNrLCBpX2Rldi0+bWFza2xlbmd0aCkgewogCQljb25zdCBzdHJ1Y3QgaWlv
X2NoYW5fc3BlYyAqY2hhbiA9ICZpX2Rldi0+Y2hhbm5lbHNbaV07CkBAIC0yODcsNyArMjkwLDcg
QEAgc3RhdGljIGlycXJldHVybl90IHJvY2tjaGlwX3NhcmFkY190cmlnZ2VyX2hhbmRsZXIoaW50
IGlycSwgdm9pZCAqcCkKIAogCWlpb19wdXNoX3RvX2J1ZmZlcnNfd2l0aF90aW1lc3RhbXAoaV9k
ZXYsICZkYXRhLCBpaW9fZ2V0X3RpbWVfbnMoaV9kZXYpKTsKIG91dDoKLQltdXRleF91bmxvY2so
JmlfZGV2LT5tbG9jayk7CisJbXV0ZXhfdW5sb2NrKCZpbmZvLT5sb2NrKTsKIAogCWlpb190cmln
Z2VyX25vdGlmeV9kb25lKGlfZGV2LT50cmlnKTsKIApAQCAtMzMyLDYgKzMzNSw3IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfc2FyYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJCXJldHVybiAtRU5PTUVNOwogCX0KIAlpbmZvID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKKwlt
dXRleF9pbml0KCZpbmZvLT5sb2NrKTsKIAogCW1hdGNoID0gb2ZfbWF0Y2hfZGV2aWNlKHJvY2tj
aGlwX3NhcmFkY19tYXRjaCwgJnBkZXYtPmRldik7CiAJaWYgKCFtYXRjaCkgewotLSAKMi4zNy4z
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
