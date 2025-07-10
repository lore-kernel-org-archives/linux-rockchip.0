Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 573B7C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USoMiUBO7rddj0n3c7wAZYWWWfGFBmgwm/883efb/aw=; b=e92bNmCOk4vAKo
	dpQjmtlSat1TNnrHzRzbwcZCKNCf7jXrgWojkv7BVUnsymVhRTcbHRlmzUvG08CI82yvjSIgpXg7e
	T1SpM6qF8rd1Ec9oZOZtm9PVA/n2hgtPbWZaLyon4hgOolOnOryYAZFr7xfT+dYqI+XqIeK2bV1hx
	JnHPFXnSstaXHqhpjgtzHezGB0xR82BZgo3VA73RpTQ2j70WnG+N9P/JSOW88T9MQdsRSyh0xj115
	CHXV4tFbxBaagobGbWyXwkKG3Q9rIPiLk2pAEsyiDgQqIqDcdgjsMei930ev8MC3wL84ObHZocXhA
	Uijb31v2LcqpUs5TT3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoVT-0000000BU8f-2kCM;
	Thu, 10 Jul 2025 10:27:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnPD-0000000BJfp-1Lc0
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:17:28 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A9FNT1011560
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i1S0YgYBWkNzPgMtsFsB7pmoBXpykrq3h9FvayJsue4=; b=KoMnbHJwHusbb1Qt
	y2PFwsxuIQm6zGmnPcpqg+sVft6aVH0zNR7Yy9ShnB3fA+GXaB0BHbyRG7zNPdgg
	nuhvYKJK01osK5kPqkawUTY6mADECTNdPwcsys2xUYV1Wunoo7ZVGAIT5xyx8Yo0
	vNFjzoAcU0U4L8RWM//QM1jVVyl+ryExg3Rom5uSHPZ4oqiCZBPKauSZUmaejCAE
	MTVA7+SGRVuBGcU7HBnoU/fOVwaEVQQSDo7oAQL31zditLY+7kLpZF4Motuj39Tp
	U7m/fVN3hkmhaDq6gUnvwABeYLVLYOyyTXbt84iDbECpQHUQSoU3eHoSM71hWA9z
	QS3T9w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smafmaqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:26 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-23507382e64so8332265ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139045; x=1752743845;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1S0YgYBWkNzPgMtsFsB7pmoBXpykrq3h9FvayJsue4=;
        b=XN1h8TaUDzOr1xA42AF7UnObDOJWy3j6XmjtdHlpQGYcfLzgli08rFsvDJEHKiXlh6
         Cg4/GGFBst2X6tEZ2UuX7Nsw40+tS6M5hP5OoRiuW2h1gpYoW9IBLX9k3LHPCJ2hthSy
         wQ99g8LnFICon5hCAEzm6pGVh1PipUWfgVmus2i0cHtO2Utppjg6qSr4lCnYVC/johHl
         TYt3LWyzYJ5uPiG/XoLQ3FPIdMbLjHOIx2t+kPYbsd7D6FyiX5kVg7+hOg46A5Y+32YZ
         jL0D9PIF4BcAKP6ou4/xucm/akGy9IklmvzPaJJ/XCXpABdgP8AHER79tzJcf4TinLO+
         GfzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAm2Vnf3p0cczgb54wJvnxvrPtBRIU9VrsjQxZKj0vGJasi26LhjXpDwk3g8PMx/lANqPQu9EBSWmK9oAZpw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhVANJ+C8qgkQ33fd1NhLY8ZkTNnzcfQ1LrjOxhTPeecQWrkml
	pE7nhUl+BdagZGVUMwcktODKju3EE1kZIa1UTjIlo/kK8PH5rI4fMFmVCWNgZomjOZstdeVbCXM
	OwxxRdVZtbYs1fWKyVATmJNEAu69gSHdeEKJwyMPunxSVuBSkxXOcf6BnypkYOBf//N3wefIkpI
	A=
X-Gm-Gg: ASbGncuMjWQb5yeyTJwQSiLV9FWIWV8NPKPgqh6xRoTDVTYSC1pDh1fM8yRRH6YBLDm
	tw7Kdi+fYr9bkRLhdRMO1jMw5701BMf8jCCJ7JXsvr2hUtnG07gAbFG8VIKfQwNeUN8KZC+iMbt
	UkMnVM/AdwDQg/1ZtnI7z5Y0cI9PBGH7svmlwY0NA7i1kqVON+ZSZjfAs3po322LzYmvNuxYfZ3
	Lewef1Lq85abET9xbIj5bhQiZNQKHg1l7PmPSzJraYHji6K/QQbbkt1qj6MLZ33lM5HZKoMcZFa
	Wbi/U2SHvhZeG2MYjoYHzrDXzF13pxhX2KFvtFUCVSQP9SXTQY8333p4yV8=
X-Received: by 2002:a17:902:ce91:b0:236:6f5f:cab4 with SMTP id d9443c01a7336-23de47cd652mr30055565ad.5.1752139044888;
        Thu, 10 Jul 2025 02:17:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFg4RsjrMw/RBbJfUGCCXCUR+6pZ/OBaJOmKg8tfZNS55C/Jm0lOpHvhHWh1xVUlIOgo8dYHw==
X-Received: by 2002:a17:902:ce91:b0:236:6f5f:cab4 with SMTP id d9443c01a7336-23de47cd652mr30054705ad.5.1752139044303;
        Thu, 10 Jul 2025 02:17:24 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:17:23 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:47 +0530
Subject: [PATCH v10 05/10] firmware: psci: Implement vendor-specific
 reset-types as reboot-mode
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-5-b2d3b882be85@oss.qualcomm.com>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
In-Reply-To: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=4973;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=uCGaHKxMyCT6Fr1GicW0dawysRNXieqTwFGMzz+YiHM=;
 b=L6QqHX1809AdVxBa+yUIqV+KzAjQCF49Na14f6bM9oifTFAaCspHqvngk9jAg+lDYE0q+ZxwI
 FcFtJ72BHDNAXJDB5RiTwPW/EJPMBTS9YMfKspKEOgWPjTlQJLQUjhd
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=ZJ/XmW7b c=1 sm=1 tr=0 ts=686f8526 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=eXBxmsxbH67dAx2arOIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: vqfqUCJyIjKH0XvJBxrCfj3BtWFwcgnV
X-Proofpoint-GUID: vqfqUCJyIjKH0XvJBxrCfj3BtWFwcgnV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfX0yv9vL//e2s/
 GaWJwcfgny8iCZUgF98GVu+qeBBuERX8MCaN4kb3a1ZSjl/TZenk+3y+sZ+seI89q3UadVA4DzK
 Mi4tf7OCXZQLBOuqr/qOua2/CKCciVu+FlsOUvOsdHf3X8aAUbsxij+UJNtDgmiMa9m+eV1mouu
 ZBRlo4sp6FIOSkkq6X0E4hpzpzzSXZdrBlbm33eiij2Z2Yu1bRYd546+z30PmpLOKRoBgkDY6Ub
 dI3yPLF8TIG1WyKY+7oQZTXk4Z80VFO5RG27g7IJy2QFx0Dno6VfkbZpdbiMlxsLfBp68U9gz74
 iRjcO3KeP/UJjVdGn1442TWV/qDQ8LR5APaJtRE+w/FcwshsEcNjarZa9EYsOXaS87+ykhZHUg4
 INUd7mmOP2K3+tY2uyaKhBExJkskQJ+6AgtNH2iW94nwtvcmZ8PlFC7PGBGjhFD5/VaAfvTP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 impostorscore=0 spamscore=0 adultscore=0 clxscore=1011
 bulkscore=0 phishscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021727_475025_9219D92C 
X-CRM114-Status: GOOD (  26.06  )
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

U29DIHZlbmRvcnMgaGF2ZSBkaWZmZXJlbnQgdHlwZXMgb2YgcmVzZXRzIHdoaWNoIGFyZSBjb250
cm9sbGVkCnRocm91Z2ggdmFyaW91cyBoYXJkd2FyZSByZWdpc3RlcnMuIEZvciBpbnN0YW5jZSwg
UXVhbGNvbW0gU29DCm1heSBoYXZlIGEgcmVxdWlyZW1lbnQgdGhhdCByZWJvb3Qgd2l0aCDigJxi
b290bG9hZGVy4oCdIGNvbW1hbmQKc2hvdWxkIHJlYm9vdCB0aGUgZGV2aWNlIHRvIGJvb3Rsb2Fk
ZXIgZmxhc2hpbmcgbW9kZSBhbmQgcmVib290CndpdGgg4oCcZWRs4oCdIHNob3VsZCByZWJvb3Qg
dGhlIGRldmljZSBpbnRvIEVtZXJnZW5jeSBmbGFzaGluZyBtb2RlLgpTZXR0aW5nIHVwIHN1Y2gg
cmVib290cyBvbiBRdWFsY29tbSBkZXZpY2VzIGNhbiBiZSBpbmNvbnNpc3RlbnQKYWNyb3NzIFNv
QyBwbGF0Zm9ybXMgYW5kIG1heSByZXF1aXJlIHNldHRpbmcgZGlmZmVyZW50IEhXCnJlZ2lzdGVy
cywgd2hlcmUgc29tZSBvZiB0aGVzZSByZWdpc3RlcnMgbWF5IG5vdCBiZSBhY2Nlc3NpYmxlIHRv
CkhMT1MuIFRoZXNlIGtub2JzIGV2b2x2ZSBvdmVyIHByb2R1Y3QgZ2VuZXJhdGlvbnMgYW5kIHJl
cXVpcmUKbW9yZSBkcml2ZXJzLiBQU0NJIHNwZWMgZGVmaW5lcywgU1lTVEVNX1JFU0VUMiwgdmVu
ZG9yLXNwZWNpZmljCnJlc2V0IHdoaWNoIGNhbiBoZWxwIGFsaWduIHRoaXMgcmVxdWlyZW1lbnQu
IEFkZCBzdXBwb3J0IGZvciBQU0NJClNZU1RFTV9SRVNFVDIsIHZlbmRvci1zcGVjaWZpYyByZXNl
dHMgYW5kIGFsaWduIHRoZSBpbXBsZW1lbnRhdGlvbgp0byBhbGxvdyB1c2VyLXNwYWNlIGluaXRp
YXRlZCByZWJvb3RzIHRvIHRyaWdnZXIgdGhlc2UgcmVzZXRzLgoKSW50cm9kdWNlIGEgbGF0ZV9p
bml0Y2FsbCB0byByZWdpc3RlciBQU0NJIHZlbmRvci1zcGVjaWZpYyByZXNldHMKYXMgcmVib290
LW1vZGUgYXJndW1lbnRzIGxpa2UgcmVzZXRfdHlwZSBhbmQgY29va2llLiBGb3IgYSBTb0MKd2hl
cmUsIFBTQ0kgdmVuZG9yLXNwZWNpZmljIHN5c3RlbV9yZXNldDIgaXMgc3VwcG9ydGVkLCB0aGUK
YXBwcm9wcmlhdGUgdmFsdWUgZ2V0cyBmaWxsZWQgdG8gcmVzZXRfdHlwZSBhbmQgY29va2llIGR1
cmluZwp0aGlzIHJlYm9vdC1tb2RlIGhvb2sgcmVnaXN0cmF0aW9uLiBJZiB0aGUgc2VjdXJlIGZp
cm13YXJlCnN1cHBvcnRzIFBTQ0kgc3lzdGVtX3Jlc2V0MiwgcmVzdGFydCBub3RpZmllciB3aWxs
IG1ha2Ugc2VjdXJlCmNhbGwgdG8gdHJpZ2dlciBhcHByb3ByaWF0ZSByZXF1ZXN0ZWQgcmVzZXQg
dHlwZS4KCkJ5IHVzaW5nIHRoZSBhYm92ZSBpbXBsZW1lbnRhdGlvbiwgdXNlc3BhY2Ugd2lsbCBi
ZSBhYmxlIHRvIGlzc3VlCnN1Y2ggcmVzZXRzIHVzaW5nIHRoZSByZWJvb3QoKSBzeXN0ZW0gY2Fs
bCB3aXRoIHRoZSAiKmFyZyIKcGFyYW1ldGVyIGFzIGEgc3RyaW5nIGJhc2VkIGNvbW1hbmQuIFRo
ZSBjb21tYW5kcyBjYW4gYmUgZGVmaW5lZAppbiBQU0NJIGRldmljZSB0cmVlIG5vZGUgYXMg4oCc
cmVzZXQtdHlwZXPigJ0gYW5kIGFyZSBiYXNlZCBvbiB0aGUKcmVib290LW1vZGUgYmFzZWQgY29t
bWFuZHMuCgpTaWduZWQtb2ZmLWJ5OiBTaGl2ZW5kcmEgUHJhdGFwIDxzaGl2ZW5kcmEucHJhdGFw
QG9zcy5xdWFsY29tbS5jb20+Ci0tLQogZHJpdmVycy9maXJtd2FyZS9wc2NpL0tjb25maWcgfCAg
MSArCiBkcml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaS5jICB8IDUzICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9L
Y29uZmlnIGIvZHJpdmVycy9maXJtd2FyZS9wc2NpL0tjb25maWcKaW5kZXggOTc5NDQxNjhiNWU2
NmFlYTFlMzhhN2ViMmQ0Y2VkODM0OGZjZTY0Yi4uOWQ2NWZlN2IwNmE2NDI5ZGU4YTI2ZDA2Zjkz
ODRlNWM5M2YzNmU1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJtd2FyZS9wc2NpL0tjb25maWcK
KysrIGIvZHJpdmVycy9maXJtd2FyZS9wc2NpL0tjb25maWcKQEAgLTEsNiArMSw3IEBACiAjIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKIGNvbmZpZyBBUk1fUFNDSV9GVwog
CWJvb2wKKwlzZWxlY3QgUkVCT09UX01PREUKIAogY29uZmlnIEFSTV9QU0NJX0NIRUNLRVIKIAli
b29sICJBUk0gUFNDSSBjaGVja2VyIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9maXJtd2FyZS9wc2Np
L3BzY2kuYyBiL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpLmMKaW5kZXggMzhjYTE5MGQ0YTIy
ZDZlN2UwZjA2NDIwZTg0NzhhMmIwZWMyZmU2Zi4uODcyOTNmNzhlZDgzZWIzM2JhNjdkZWQ3Mzcy
ODcyOTgxMTY5M2VhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9maXJtd2FyZS9wc2NpL3BzY2kuYwor
KysgYi9kcml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaS5jCkBAIC0xMywxMCArMTMsMTMgQEAKICNp
bmNsdWRlIDxsaW51eC9lcnJuby5oPgogI2luY2x1ZGUgPGxpbnV4L2xpbmthZ2UuaD4KICNpbmNs
dWRlIDxsaW51eC9vZi5oPgorI2luY2x1ZGUgPGxpbnV4L29mX3BsYXRmb3JtLmg+CisjaW5jbHVk
ZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvcG0uaD4KICNpbmNs
dWRlIDxsaW51eC9wcmludGsuaD4KICNpbmNsdWRlIDxsaW51eC9wc2NpLmg+CiAjaW5jbHVkZSA8
bGludXgvcmVib290Lmg+CisjaW5jbHVkZSA8bGludXgvcmVib290LW1vZGUuaD4KICNpbmNsdWRl
IDxsaW51eC9zbGFiLmg+CiAjaW5jbHVkZSA8bGludXgvc3VzcGVuZC5oPgogCkBAIC01MSw2ICs1
NCwxNCBAQCBzdGF0aWMgaW50IHJlc2lkZW50X2NwdSA9IC0xOwogc3RydWN0IHBzY2lfb3BlcmF0
aW9ucyBwc2NpX29wczsKIHN0YXRpYyBlbnVtIGFybV9zbWNjY19jb25kdWl0IHBzY2lfY29uZHVp
dCA9IFNNQ0NDX0NPTkRVSVRfTk9ORTsKIAorc3RydWN0IHBzY2lfdmVuZG9yX3N5c3Jlc2V0MiB7
CisJdTMyIHJlc2V0X3R5cGU7CisJdTMyIGNvb2tpZTsKKwlib29sIHZhbGlkOworfTsKKworc3Rh
dGljIHN0cnVjdCBwc2NpX3ZlbmRvcl9zeXNyZXNldDIgdmVuZG9yX3Jlc2V0OworCiBib29sIHBz
Y2lfdG9zX3Jlc2lkZW50X29uKGludCBjcHUpCiB7CiAJcmV0dXJuIGNwdSA9PSByZXNpZGVudF9j
cHU7CkBAIC0zMDksNyArMzIwLDE0IEBAIHN0YXRpYyBpbnQgZ2V0X3NldF9jb25kdWl0X21ldGhv
ZChjb25zdCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogc3RhdGljIGludCBwc2NpX3N5c19yZXNl
dChzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLCB1bnNpZ25lZCBsb25nIGFjdGlvbiwKIAkJCSAg
dm9pZCAqZGF0YSkKIHsKLQlpZiAoKHJlYm9vdF9tb2RlID09IFJFQk9PVF9XQVJNIHx8IHJlYm9v
dF9tb2RlID09IFJFQk9PVF9TT0ZUKSAmJgorCWlmICh2ZW5kb3JfcmVzZXQudmFsaWQgJiYgcHNj
aV9zeXN0ZW1fcmVzZXQyX3N1cHBvcnRlZCkgeworCQkvKgorCQkgKiBpZiB2ZW5kb3JfcmVzZXQu
dmFsaWQgaXMgdHJ1ZSBjYWxsIHN5cyByZXNldDIgd2l0aAorCQkgKiB0aGUgdmVuZG9yX3Jlc2V0
KHJlc2V0X3R5cGUgYW5kIGNvb2tpZSkuCisJCSAqLworCQlpbnZva2VfcHNjaV9mbihQU0NJX0ZO
X05BVElWRSgxXzEsIFNZU1RFTV9SRVNFVDIpLCB2ZW5kb3JfcmVzZXQucmVzZXRfdHlwZSwKKwkJ
CSAgICAgICB2ZW5kb3JfcmVzZXQuY29va2llLCAwKTsKKwl9IGVsc2UgaWYgKChyZWJvb3RfbW9k
ZSA9PSBSRUJPT1RfV0FSTSB8fCByZWJvb3RfbW9kZSA9PSBSRUJPT1RfU09GVCkgJiYKIAkgICAg
cHNjaV9zeXN0ZW1fcmVzZXQyX3N1cHBvcnRlZCkgewogCQkvKgogCQkgKiByZXNldF90eXBlWzMx
XSA9IDAgKGFyY2hpdGVjdHVyYWwpCkBAIC01NDcsNiArNTY1LDM5IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgcGxhdGZvcm1fc3VzcGVuZF9vcHMgcHNjaV9zdXNwZW5kX29wcyA9IHsKIAkuZW50ZXIg
ICAgICAgICAgPSBwc2NpX3N5c3RlbV9zdXNwZW5kX2VudGVyLAogfTsKIAorc3RhdGljIGludCBw
c2NpX3NldF92ZW5kb3Jfc3lzX3Jlc2V0MihzdHJ1Y3QgcmVib290X21vZGVfZHJpdmVyICpyZWJv
b3QsCisJCQkJICAgICAgdTMyIHJlc2V0X3R5cGUsIHUzMiBjb29raWUpCit7CisJaWYgKHBzY2lf
c3lzdGVtX3Jlc2V0Ml9zdXBwb3J0ZWQpIHsKKwkJdmVuZG9yX3Jlc2V0LnJlc2V0X3R5cGUgPSBQ
U0NJXzFfMV9SRVNFVF9UWVBFX1ZFTkRPUl9TVEFSVCB8IHJlc2V0X3R5cGU7CisJCXZlbmRvcl9y
ZXNldC5jb29raWUgPSBjb29raWU7CisJCXZlbmRvcl9yZXNldC52YWxpZCA9IHRydWU7CisJfQor
CisJcmV0dXJuIE5PVElGWV9ET05FOworfQorCitzdGF0aWMgaW50IF9faW5pdCBwc2NpX2luaXRf
dmVuZG9yX3Jlc2V0KHZvaWQpCit7CisJc3RydWN0IHJlYm9vdF9tb2RlX2RyaXZlciAqcmVib290
OworCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnA7CisKKwlucCA9IG9mX2ZpbmRfbm9kZV9ieV9uYW1l
KE5VTEwsICJyZXNldC10eXBlcyIpOworCWlmICghbnApCisJCXJldHVybiAtRU5PREVWOworCisJ
cmVib290ID0ga3phbGxvYyhzaXplb2YoKnJlYm9vdCksIEdGUF9LRVJORUwpOworCWlmICghcmVi
b290KSB7CisJCW9mX25vZGVfcHV0KG5wKTsKKwkJcmV0dXJuIC1FTk9NRU07CisJfQorCisJcmVi
b290LT53cml0ZV93aXRoX2Nvb2tpZSA9IHBzY2lfc2V0X3ZlbmRvcl9zeXNfcmVzZXQyOworCisJ
cmV0dXJuIHJlYm9vdF9tb2RlX3JlZ2lzdGVyKHJlYm9vdCwgbnApOworfQorbGF0ZV9pbml0Y2Fs
bChwc2NpX2luaXRfdmVuZG9yX3Jlc2V0KQorCiBzdGF0aWMgdm9pZCBfX2luaXQgcHNjaV9pbml0
X3N5c3RlbV9yZXNldDIodm9pZCkKIHsKIAlpbnQgcmV0OwoKLS0gCjIuMzQuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
