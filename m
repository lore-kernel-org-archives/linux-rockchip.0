Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70C9CFF885A
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 09:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IEQRSE9tE+1JoAVtmTo0s4qa8QG3ehCDjHXVAo5h/6c=; b=QwuGuS7RpLverK
	ocpuGxM8ybHbbiL1iHQ3eheBHJWs3C8X3bjsNuP0ABAcpfs6pNqtD1GH+u8YC8TEs3I2Jyqp8RF6G
	0apOfJWtPCX4xtdpFXuPich17aN9D17TXZ8mPoWN/F4A6qXDQEjAdOkrKeguvII2AgjmqPPH+9izx
	qLXC19jTAL2J9jUZiK1HFL4G+W0DKEzR09csvbd30cF4SmLPdRwnIE/jRJgXNO8v/Z+D/aiV9xY0m
	zzkg7OnrABsMOem/CYM2RIa7VKjgCepR+6iG96yAjphWwYVdzaZx8xk8Idj0UR1wfELz+wD/C7lm6
	LBWaJO3nbb2aCkPS+d5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCJX-0000000Fh6U-2zMj;
	Tue, 05 May 2026 09:43:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKCJU-0000000Fh5J-1pld
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 09:43:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6456lijp3187548
	for <linux-rockchip@lists.infradead.org>; Tue, 5 May 2026 09:43:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=SGD/HFe4mTKpac5JeH1c3n
	7+8zeZTKcLWhIAx/Ud8FE=; b=DFS576FXC3eYrl3DkypTZ87BSmW1W8nkSxGZiJ
	xoRfIKP8xQdULtctbkE/zWeSzQP5JnmrHagBE0/FKUt56cnN6xlURe3Um7FAARxJ
	1okDm7zZYa0dIlD0B/DPovsvEldeMMt/EMsyvSdUc1UQQ91yzhhFShFDpMrOZ6Ay
	oHEZ5dM++KftWBoSA95em8DsbXv7N/pIB2/rbJiSSif0sUNsFn0WpxP7jHVSZ1yK
	pzUerXWDav88/qtW9IBzcIPyDuR40vNoWRMCPutg+FLXZlUN05AVyoggSLdVrS1u
	FFTD9fLZgt5T8Y5SVz5d6jfuejjxTeywKD8RNvAEiTqca+ow==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dybkk8ke6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 09:43:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50ea1a7a5d0so127039891cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 02:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777974215; x=1778579015; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SGD/HFe4mTKpac5JeH1c3n7+8zeZTKcLWhIAx/Ud8FE=;
        b=VFqkavYBRFEApaJd1hlzFPpZQGislDhkdxODGgzhn5C9LafaP/fAHAIxZvpUwi1uL/
         orpOqqX/bEtuO6gXSlTRI2o+VOyyq1AJbUp9whNHaP0Xss5IbnOqrLtt5Tg73VgYMhSa
         9dnpSVKNxoBFG9a/QJMJme6x9M5ZuqazlYmTQ3QMBT7Kj4swGo/zPlpJBrYNCWHSrh/4
         bByKgarXQ8SQ5RRPZwO6TC9zDaBJdx0Q7QGjnczDjWCKwQOVnITkp7/hS/GcTLKJK6DK
         x+Rjmcj7rgOioThABlIFQgr1N+N4Kd/oIAsAmNAuAGIBXiK0co4kFEfM7GRj7cgNHxPC
         wbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777974215; x=1778579015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SGD/HFe4mTKpac5JeH1c3n7+8zeZTKcLWhIAx/Ud8FE=;
        b=DVWDkpj72x3biE2hdoPd9jtA7E+2r3YY3sBM3EY/Rukh5cvv0cV77/MbqlN3Eu/A64
         YRQr9cSVuFvgPToDs/OvXVcEtofFx9359ZzC8RECY2kuB0fUtFwgKth9ABXyv9Z9pYpe
         RgbUlOUPN09OHuJOqzIF49maMmVPi4U3os4sm1s1qK/XaGl87Vp0Y6pisMsNJD4dJLl4
         pTIuf4ElAt6BNhW7qS2WcPbAG/TSaYGYCpi5fG12aq00vW9Vx6MYWpWEgPrZ2ImUdi+K
         esSWj6vcAt1xoV0nPq22fLUJMCMoNWn6CxpvvIuHwNb1qByP0MjVYeCH0nDwixrDGLQc
         D2oA==
X-Forwarded-Encrypted: i=1; AFNElJ8/dR2K2eRAgdAIL3sek+tRrxHIwirloe4PBaTzhhd7b5DyirB7JNt3diMUyb9cOabB3RPMti/Xnk409sOF/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOzFLommulZOQiz8GxxO5eRgDa/OgrP7GsEvgEJUYVSnty6POb
	kmYrIIzZNEB6S7S44QFocX4XS7xqvMZwpPA/Ey0RYlDUCStmyV8ReSPdpiSf8sXbj9yI0i+nIuR
	pZmGTJ+96byw7R+HodUjz1Q27SDXJrN7V8NjYq31fl/NYit7oebxU00TljzHgIkuV5y+qAi4mIL
	A=
X-Gm-Gg: AeBDietKbAK8hnHpGuo4YCCptEQStvB42JM5CEFIdo71iOPC6M7fwDqADLsrgUDFVex
	TJgr3MqPNiSR6UE8yyus5ZnV1FrqPXd/w15ZQFt/G6TKabGHEE1rFN4V91iqc9+6hOjRdkL8DYa
	jm7PAtvmN/QFTzdUsZbZqaZ2SurDreTZzcbnAupTSjpA5QPVQabp98MtttLWpKOw8P5x4ShnhCL
	ejhkJ18QR5iD5dODCOL83WTpeq+xPviZkWyer1ReJ6EaUuQzMMGqO/ZS7BGUufo595jK0vC8o4L
	cPzfWa2j4/qvVG9BLZhxlrtbgNf97iyXlvZNvHGAAC+IflRJhADM9Hc3L3raofqYfti3+/MEzUR
	LUzqiHJ/MYD8GEttlk6Rw5M/WfLxCEp/5McQt2LcOOAxfs5Y=
X-Received: by 2002:ac8:7d01:0:b0:50d:72e4:6df9 with SMTP id d75a77b69052e-5104bf6d329mr191358221cf.50.1777974214770;
        Tue, 05 May 2026 02:43:34 -0700 (PDT)
X-Received: by 2002:ac8:7d01:0:b0:50d:72e4:6df9 with SMTP id d75a77b69052e-5104bf6d329mr191358021cf.50.1777974214330;
        Tue, 05 May 2026 02:43:34 -0700 (PDT)
Received: from quoll ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a8eb69698sm603858135e9.1.2026.05.05.02.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 02:43:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
        Linus Walleij <linusw@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/2] pinctrl: bcm: Move MODULE_DEVICE_TABLE next to the table itself
Date: Tue,  5 May 2026 11:43:17 +0200
Message-ID: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2272; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=kTPdwnhKuNvHpmfP9POcSBXwBjHDEIhQtQKaGHQH30k=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBp+bu5fs2LviISk/bfFVysKywPwafP6tJYWzBkA
 vRImsN8bsSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCafm7uQAKCRDBN2bmhouD
 15wAD/9JHy/+Uo95Bt46jXbX3rueLq4cQYwnEWLU/koZn4xZ/CU2IFQhvbZ9jpeiTpB4vCoHzyC
 PeTgGi7nL2mX6YXaHqPriK1iMl0kxvF4QxCToTXPKcgShyKm/rC/ySSMh5ANl5iL5+4g61o0ew/
 /ZVk4EIigHjBaPmcLtlR+mvnuH/fEvumaN9dWrQGtADGjtxQ8TfVj3oGS9pZ/T3HcXUSQmc9AmP
 84zMrR9ooc2LPLFG62kwfx27anwp863O5cXPXpMs88rnGTHwvvcxdayckZJCPBJnmrioCLBsSKC
 NrjEapO83TwLJF45MYHjLvJz2E4u9fjwAYhq9T2Aw7dlnNpk7GflhePGju273tCSzgQv739O8vd
 6WoJumVyOg1PwRe83m2+htLjo8L829UZYkv8IuSxMheVVKeh8V6Bf6cJBsHr9wZtDsGbt/myOZj
 ocGLW3gQZ3ZV0GOkU3UabNW0wYwWX0jYHaMZYYJl3Npik09MNkAPYUPdGnbUnm3oDd5J79cjdO2
 Tj/gNCPr9kW5nA4n0HjEl4ag68o5p6JFLPKRkuPSWO2kYCMgPXK8AvRWzPQCT9mMTFCFixPTMF/
 a2xYuPBi1E5z+7usWvMqhlexiGWdoBt65MZndTjG8uPzWAYbr2BKpa1TD0J6elRyPfYQXg44b5O pm0peE90HU+IomA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDA5MCBTYWx0ZWRfX06j/nEaY8p5R
 5eJfOMehCW3vhvJ/oDA0R/CBvF/F74OKlWEkvNb3ToLoGHPYB3WSVLr9gnlb8JrVQd6dfkVdXlA
 vawoxwRxcpPiRrWe5OogEHaAsDtPuVgsBSUFKHfUOokoOm6sPXsjOct5ACmOLQDr1JAEp7o0la/
 UTY5CdndcRPmj75yPfguJC6Y5RQkaRk8UrcK8yzOarDuG0dARVbC7oVl8mw/007+P50t4zlKSb0
 TJKcKZqxzMn6ws0zsKHHc2yuA4/VmqFhJG4KY++xw5/YSkvDpUPItKS6X09HUqliznmbbTF192X
 FPe4iiY1FTZYAaYyB3eOWubIC6p3qoA3M5bp2uzayJn8s7mNq1jinbDZ4NdNZ6i9BhPPC/NekyR
 BFZzrxd6hJP5mqxleYJJqxrNsjVt4A/8yy3wALwVwn2GdtyKNmM3QJ8f8x58nyDL0Ze+xF1Uen8
 MsgUk956N2S3iP8TGuA==
X-Authority-Analysis: v=2.4 cv=SPBykuvH c=1 sm=1 tr=0 ts=69f9bbc7 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=UPwjdVLwzqKTMXskr54A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 9XX08vClkBa28t1JdN9Oyhz9fvjdpT3I
X-Proofpoint-ORIG-GUID: 9XX08vClkBa28t1JdN9Oyhz9fvjdpT3I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_02,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1011 priorityscore=1501 malwarescore=0
 bulkscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605050090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_024336_653390_4A170629 
X-CRM114-Status: GOOD (  17.57  )
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

QnkgY29udmVudGlvbiBNT0RVTEVfREVWSUNFX1RBQkxFKCkgaW1tZWRpYXRlbHkgZm9sbG93cyB0
aGUgSUQgdGFibGUgaXQKZXhwb3J0cywgYmVjYXVzZSB0aGlzIGlzIGVhc2llciB0byByZWFkIGFu
ZCB2ZXJpZnkuICBJdCBhbHNvIG1ha2VzIG1vcmUKc2Vuc2Ugc2luY2UgI2lmZGVmIGZvciBBQ1BJ
IG9yIE9GIGNvdWxkIGhpZGUgYm90aCBvZiB0aGVtLgoKTW9zdCBvZiB0aGUgcGluIGNvbnRyb2xs
ZXIgZHJpdmVycyBhbHJlYWR5IGhhdmUgdGhpcyBjb3JyZWN0bHkgcGxhY2VkLApzbyBhZGp1c3Qg
dGhlIG90aGVyIGRyaXZlcnMuICBObyBmdW5jdGlvbmFsIGltcGFjdC4KClNpZ25lZC1vZmYtYnk6
IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNv
bT4KCi0tLQoKQXBvbG9naWVzIGZvciBzZW5kaW5nIGl0IGltbWVkaWF0ZWx5IGFmdGVyIHByZXZp
b3VzIFF1YWxjb21tIHBhdGNoCndpdGhvdXQgZ3JvdXBpbmcgYXMgcGF0Y2hzZXQuIEluaXRpYWxs
eSBJIGZpeGVkIG9ubHkgUXVhbGNvbW0gYnV0IHRoZW4KZmlndXJlIG91dCB0aGF0IHBvb3IgcGF0
dGVybnMgbGlrZSB0byBzcHJlYWQgYW5kIEkgY2FuIGFsc28gaW52ZXN0aWdhdGUKb3RoZXIgZmls
ZXMuCi0tLQogZHJpdmVycy9waW5jdHJsL2JjbS9waW5jdHJsLWJjbTQ5MDguYyB8IDIgKy0KIGRy
aXZlcnMvcGluY3RybC9iY20vcGluY3RybC1ucy5jICAgICAgfCAyICstCiAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3BpbmN0cmwvYmNtL3BpbmN0cmwtYmNtNDkwOC5jIGIvZHJpdmVycy9waW5jdHJsL2JjbS9waW5j
dHJsLWJjbTQ5MDguYwppbmRleCAxMmY3YTI1M2VhNGQuLjU3OTY5Y2RiYzYzNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waW5jdHJsL2JjbS9waW5jdHJsLWJjbTQ5MDguYworKysgYi9kcml2ZXJzL3Bp
bmN0cmwvYmNtL3BpbmN0cmwtYmNtNDkwOC5jCkBAIC00NjYsNiArNDY2LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYmNtNDkwOF9waW5jdHJsX29mX21hdGNoX3RhYmxlW10g
PSB7CiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJjbTQ5MDgtcGluY3RybCIsIH0sCiAJeyB9CiB9
OworTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgYmNtNDkwOF9waW5jdHJsX29mX21hdGNoX3RhYmxl
KTsKIAogc3RhdGljIGludCBiY200OTA4X3BpbmN0cmxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIHsKQEAgLTU2MSw0ICs1NjIsMyBAQCBtb2R1bGVfcGxhdGZvcm1fZHJpdmVy
KGJjbTQ5MDhfcGluY3RybF9kcml2ZXIpOwogTU9EVUxFX0FVVEhPUigiUmFmYcWCIE1pxYJlY2tp
Iik7CiBNT0RVTEVfREVTQ1JJUFRJT04oIkJyb2FkY29tIEJDTTQ5MDggcGlubXV4IGRyaXZlciIp
OwogTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwotTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgYmNt
NDkwOF9waW5jdHJsX29mX21hdGNoX3RhYmxlKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3Ry
bC9iY20vcGluY3RybC1ucy5jIGIvZHJpdmVycy9waW5jdHJsL2JjbS9waW5jdHJsLW5zLmMKaW5k
ZXggMDNiZDAxYjRhOTQ1Li5lMTM0YzljNzM0NTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGluY3Ry
bC9iY20vcGluY3RybC1ucy5jCisrKyBiL2RyaXZlcnMvcGluY3RybC9iY20vcGluY3RybC1ucy5j
CkBAIC0yMDQsNiArMjA0LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgbnNf
cGluY3RybF9vZl9tYXRjaF90YWJsZVtdID0gewogCXsgLmNvbXBhdGlibGUgPSAiYnJjbSxiY201
MzAxMi1waW5tdXgiLCAuZGF0YSA9ICh2b2lkICopRkxBR19CQ001MzAxMiwgfSwKIAl7IH0KIH07
CitNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBuc19waW5jdHJsX29mX21hdGNoX3RhYmxlKTsKIAog
c3RhdGljIGludCBuc19waW5jdHJsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiB7CkBAIC0yOTUsNCArMjk2LDMgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgbnNf
cGluY3RybF9kcml2ZXIgPSB7CiBtb2R1bGVfcGxhdGZvcm1fZHJpdmVyKG5zX3BpbmN0cmxfZHJp
dmVyKTsKIAogTU9EVUxFX0FVVEhPUigiUmFmYcWCIE1pxYJlY2tpIik7Ci1NT0RVTEVfREVWSUNF
X1RBQkxFKG9mLCBuc19waW5jdHJsX29mX21hdGNoX3RhYmxlKTsKLS0gCjIuNTEuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
