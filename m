Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB5C0C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+35WkznZMLuppBiUZ6C93/8l2j7Mz31HeXS0gebLcLs=; b=MeX3wlx5W42Y3C
	yArSDbm3ogq9oabgJmxhXOp6qWxUK38CUyYPtntCx54g7+YRLo7V5mB3c310mw8OFi6EJj1cniDpo
	s1QE8bF5XO1iBiUJKhGSQm+sHs0sKJUaNtHi/vdSn6G6REgBumb6qXIbyov/s7EtlMCwZ6Foxt8Jw
	Wl25S3RbNz55gLMT4a8Kwz+rC1qVhF1hYHbZRouo2HbN9+PGoZHKlmH16ipx7QAmyjvehi8ywD657
	JE8ddWqMrlM6CYgCwBYZhJGSZa6sjI4SYLIBZ8C8c91EaXnA2FjKxJitefmPMKjAkufjf2hNI5LYO
	tqTMjDYJvwdGRzGqKsgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabRX-003J2v-8Z; Tue, 20 Sep 2022 11:29:35 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabQB-003I60-08; Tue, 20 Sep 2022 11:28:12 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28K854bL006301;
	Tue, 20 Sep 2022 07:27:57 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jn835murn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Sep 2022 07:27:57 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 28KBRtT1060612
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Sep 2022 07:27:55 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Tue, 20 Sep
 2022 07:27:54 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 20 Sep 2022 07:27:54 -0400
Received: from nsa.ad.analog.com ([10.44.3.57])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 28KBR4UP021723;
	Tue, 20 Sep 2022 07:27:45 -0400
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
Subject: [PATCH 03/15] iio: adc: axp288_adc: do not use internal iio_dev lock
Date: Tue, 20 Sep 2022 13:28:09 +0200
Message-ID: <20220920112821.975359-4-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220920112821.975359-1-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: Lr7Gy0WxKZ95RG24F2TVDROVWu8PQRcW
X-Proofpoint-GUID: Lr7Gy0WxKZ95RG24F2TVDROVWu8PQRcW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-20_03,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209200068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_042811_089642_276F4057 
X-CRM114-Status: GOOD (  14.65  )
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
LS0tCiBkcml2ZXJzL2lpby9hZGMvYXhwMjg4X2FkYy5jIHwgOCArKysrKystLQogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2lpby9hZGMvYXhwMjg4X2FkYy5jIGIvZHJpdmVycy9paW8vYWRjL2F4cDI4OF9hZGMuYwpp
bmRleCA1ODAzNjFiZDk4NDkuLjNiYmI5NjE1NjczOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8v
YWRjL2F4cDI4OF9hZGMuYworKysgYi9kcml2ZXJzL2lpby9hZGMvYXhwMjg4X2FkYy5jCkBAIC05
LDYgKzksNyBAQAogCiAjaW5jbHVkZSA8bGludXgvZG1pLmg+CiAjaW5jbHVkZSA8bGludXgvbW9k
dWxlLmg+CisjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9rZXJuZWwu
aD4KICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4K
QEAgLTUwLDYgKzUxLDggQEAgZW51bSBheHAyODhfYWRjX2lkIHsKIHN0cnVjdCBheHAyODhfYWRj
X2luZm8gewogCWludCBpcnE7CiAJc3RydWN0IHJlZ21hcCAqcmVnbWFwOworCS8qIGxvY2sgdG8g
cHJvdGVjdCBhZ2FpbnN0IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCisJc3RydWN0
IG11dGV4IGxvY2s7CiAJYm9vbCB0c19lbmFibGVkOwogfTsKIApAQCAtMTYxLDcgKzE2NCw3IEBA
IHN0YXRpYyBpbnQgYXhwMjg4X2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2
LAogCWludCByZXQ7CiAJc3RydWN0IGF4cDI4OF9hZGNfaW5mbyAqaW5mbyA9IGlpb19wcml2KGlu
ZGlvX2Rldik7CiAKLQltdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKKwltdXRleF9sb2Nr
KCZpbmZvLT5sb2NrKTsKIAlzd2l0Y2ggKG1hc2spIHsKIAljYXNlIElJT19DSEFOX0lORk9fUkFX
OgogCQlpZiAoYXhwMjg4X2FkY19zZXRfdHMoaW5mbywgQVhQMjg4X0FEQ19UU19DVVJSRU5UX09O
X09OREVNQU5ELApAQCAtMTc4LDcgKzE4MSw3IEBAIHN0YXRpYyBpbnQgYXhwMjg4X2FkY19yZWFk
X3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCWRlZmF1bHQ6CiAJCXJldCA9IC1FSU5W
QUw7CiAJfQotCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisJbXV0ZXhfdW5sb2Nr
KCZpbmZvLT5sb2NrKTsKIAogCXJldHVybiByZXQ7CiB9CkBAIC0yNjQsNiArMjY3LDcgQEAgc3Rh
dGljIGludCBheHAyODhfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
CXJldHVybiAtRU5PTUVNOwogCiAJaW5mbyA9IGlpb19wcml2KGluZGlvX2Rldik7CisJbXV0ZXhf
aW5pdCgmaW5mby0+bG9jayk7CiAJaW5mby0+aXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCAw
KTsKIAlpZiAoaW5mby0+aXJxIDwgMCkKIAkJcmV0dXJuIGluZm8tPmlycTsKLS0gCjIuMzcuMwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
