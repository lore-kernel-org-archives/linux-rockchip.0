Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97D89C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 13:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RuJvda4wKoQjSvkr56bYu/iWe+tweVAAsuJ2Nr+aMo=; b=ot/g6eeUUDYAkA
	SAyjWmTKeojbMfuXlM2j3EZz61u03GDziHGXPAyWCLpv+S35UehkbWWmcEYMFnz97HHGYBp5I4LLk
	CUCp8m4N1bbS/y3iuISzPeo04zhHGLTJu5bR/CHuGi6rKC2SKmlP9txLIj+wzkeD944K1swc+wXhQ
	pzmHcrtPkS0hX4sng8qrGuuCDQJUgd67KLnlIco7d/HksgjpiLEtdaoWNInFIzZLGgcSS9Z+n5oOD
	xgnYgX3F7QKifcIA7WTOJLSc8j7e89ltpmFVCCBuMbMe/iDaaPuAi4qqL6xkdbByYdLCQwC3I3IL5
	rHET9RqOZcD4FbEdxDSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiMm-009oYj-Je; Tue, 04 Oct 2022 13:53:48 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofiIn-009m4v-FD; Tue, 04 Oct 2022 13:49:44 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 294BJ1Is024406;
	Tue, 4 Oct 2022 09:49:27 -0400
Received: from nwd2mta3.analog.com ([137.71.173.56])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3jxjf733qx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Oct 2022 09:49:27 -0400
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta3.analog.com (8.14.7/8.14.7) with ESMTP id 294DnQRr004139
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 4 Oct 2022 09:49:26 -0400
Received: from ASHBCASHYB5.ad.analog.com (10.64.17.133) by
 ASHBMBX8.ad.analog.com (10.64.17.5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:25 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by
 ASHBCASHYB5.ad.analog.com (10.64.17.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.14; Tue, 4 Oct 2022 09:49:25 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Tue, 4 Oct 2022 09:49:25 -0400
Received: from nsa.ad.analog.com ([10.44.3.52])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 294DlkVk032663;
	Tue, 4 Oct 2022 09:49:18 -0400
From: =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
To: <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
        <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>
CC: Heiko Stuebner <heiko@sntech.de>,
        Martin Blumenstingl
	<martin.blumenstingl@googlemail.com>,
        Neil Armstrong
	<narmstrong@baylibre.com>,
        Shawn Guo <shawnguo@kernel.org>,
        "Lars-Peter
 Clausen" <lars@metafoo.de>,
        Jyoti Bhayana <jbhayana@google.com>,
        Hans de
 Goede <hdegoede@redhat.com>,
        Andriy Tryshnivskyy
	<andriy.tryshnivskyy@opensynergy.com>,
        Pengutronix Kernel Team
	<kernel@pengutronix.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Cixi Geng
	<cixi.geng1@unisoc.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        "Ciprian Regus" <ciprian.regus@analog.com>,
        Fabio Estevam
	<festevam@gmail.com>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
        Sascha
 Hauer <s.hauer@pengutronix.de>,
        Alexandru Ardelean <aardelean@deviqon.com>,
        "Florian Boor" <florian.boor@kernelconcepts.de>,
        Michael Hennerich
	<Michael.Hennerich@analog.com>,
        Orson Zhai <orsonzhai@gmail.com>, "Chen-Yu
 Tsai" <wens@csie.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        "Vladimir
 Zapolskiy" <vz@mleia.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        "Jerome Brunet" <jbrunet@baylibre.com>,
        Haibo Chen <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>,
        Jonathan Cameron <jic23@kernel.org>
Subject: [PATCH v2 13/16] iio: core: introduce iio_device_{claim|release}_buffer_mode() APIs
Date: Tue, 4 Oct 2022 15:49:06 +0200
Message-ID: <20221004134909.1692021-14-nuno.sa@analog.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004134909.1692021-1-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
MIME-Version: 1.0
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-GUID: ChmT1XlIn5bXPESCNWLX96Xy6pt4Cbcv
X-Proofpoint-ORIG-GUID: ChmT1XlIn5bXPESCNWLX96Xy6pt4Cbcv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-04_06,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210040089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_064941_618923_B649AA19 
X-CRM114-Status: GOOD (  14.24  )
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
by1jb3JlLmMKaW5kZXggMTUxZmYzOTkzMzU0Li5jMjNkM2FiYjMzYzUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvaWlvL2luZHVzdHJpYWxpby1jb3JlLmMKKysrIGIvZHJpdmVycy9paW8vaW5kdXN0cmlh
bGlvLWNvcmUuYwpAQCAtMjA4Myw2ICsyMDgzLDQ0IEBAIHZvaWQgaWlvX2RldmljZV9yZWxlYXNl
X2RpcmVjdF9tb2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCiB9CiBFWFBPUlRfU1lNQk9M
X0dQTChpaW9fZGV2aWNlX3JlbGVhc2VfZGlyZWN0X21vZGUpOwogCisvKioKKyAqIGlpb19kZXZp
Y2VfY2xhaW1fYnVmZmVyZWRfbW9kZSAtIEtlZXAgZGV2aWNlIGluIGJ1ZmZlciBtb2RlCisgKiBA
aW5kaW9fZGV2Ogl0aGUgaWlvX2RldiBhc3NvY2lhdGVkIHdpdGggdGhlIGRldmljZQorICoKKyAq
IElmIHRoZSBkZXZpY2UgaXMgaW4gYnVmZmVyIG1vZGUgaXQgaXMgZ3VhcmFudGVlZCB0byBzdGF5
CisgKiB0aGF0IHdheSB1bnRpbCBpaW9fZGV2aWNlX3JlbGVhc2VfYnVmZmVyX21vZGUoKSBpcyBj
YWxsZWQuCisgKgorICogVXNlIHdpdGggaWlvX2RldmljZV9yZWxlYXNlX2J1ZmZlcl9tb2RlKCkK
KyAqCisgKiBSZXR1cm5zOiAwIG9uIHN1Y2Nlc3MsIC1FQlVTWSBvbiBmYWlsdXJlCisgKi8KK2lu
dCBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2RlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYp
Cit7CisJbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7CisKKwlpZiAoaWlvX2J1ZmZlcl9l
bmFibGVkKGluZGlvX2RldikpCisJCXJldHVybiAwOworCisJbXV0ZXhfdW5sb2NrKCZpbmRpb19k
ZXYtPm1sb2NrKTsKKwlyZXR1cm4gLUVCVVNZOworfQorRVhQT1JUX1NZTUJPTF9HUEwoaWlvX2Rl
dmljZV9jbGFpbV9idWZmZXJfbW9kZSk7CisKKy8qKgorICogaWlvX2RldmljZV9yZWxlYXNlX2J1
ZmZlcl9tb2RlIC0gcmVsZWFzZXMgY2xhaW0gb24gYnVmZmVyIG1vZGUKKyAqIEBpbmRpb19kZXY6
CXRoZSBpaW9fZGV2IGFzc29jaWF0ZWQgd2l0aCB0aGUgZGV2aWNlCisgKgorICogUmVsZWFzZSB0
aGUgY2xhaW0uIERldmljZSBpcyBubyBsb25nZXIgZ3VhcmFudGVlZCB0byBzdGF5CisgKiBpbiBi
dWZmZXIgbW9kZS4KKyAqCisgKiBVc2Ugd2l0aCBpaW9fZGV2aWNlX2NsYWltX2J1ZmZlcl9tb2Rl
KCkKKyAqLwordm9pZCBpaW9fZGV2aWNlX3JlbGVhc2VfYnVmZmVyX21vZGUoc3RydWN0IGlpb19k
ZXYgKmluZGlvX2RldikKK3sKKwltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOworfQor
RVhQT1JUX1NZTUJPTF9HUEwoaWlvX2RldmljZV9yZWxlYXNlX2J1ZmZlcl9tb2RlKTsKKwogLyoq
CiAgKiBpaW9fZGV2aWNlX2dldF9jdXJyZW50X21vZGUoKSAtIGhlbHBlciBmdW5jdGlvbiBwcm92
aWRpbmcgcmVhZC1vbmx5IGFjY2VzcyB0bwogICoJCQkJICAgdGhlIG9wYXF1ZSBAY3VycmVudG1v
ZGUgdmFyaWFibGUKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaWlvL2lpby5oIGIvaW5jbHVk
ZS9saW51eC9paW8vaWlvLmgKaW5kZXggZjBlYzhhNWU1YTdhLi45ZDNiZDYzNzllYjggMTAwNjQ0
Ci0tLSBhL2luY2x1ZGUvbGludXgvaWlvL2lpby5oCisrKyBiL2luY2x1ZGUvbGludXgvaWlvL2lp
by5oCkBAIC02MjksNiArNjI5LDggQEAgaW50IF9fZGV2bV9paW9fZGV2aWNlX3JlZ2lzdGVyKHN0
cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwKIGludCBpaW9fcHVz
aF9ldmVudChzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LCB1NjQgZXZfY29kZSwgczY0IHRpbWVz
dGFtcCk7CiBpbnQgaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZShzdHJ1Y3QgaWlvX2RldiAq
aW5kaW9fZGV2KTsKIHZvaWQgaWlvX2RldmljZV9yZWxlYXNlX2RpcmVjdF9tb2RlKHN0cnVjdCBp
aW9fZGV2ICppbmRpb19kZXYpOworaW50IGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21vZGUoc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2Rldik7Cit2b2lkIGlpb19kZXZpY2VfcmVsZWFzZV9idWZmZXJf
bW9kZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KTsKIAogZXh0ZXJuIHN0cnVjdCBidXNfdHlw
ZSBpaW9fYnVzX3R5cGU7CiAKLS0gCjIuMzcuMwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
