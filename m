Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9C57C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 10:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZSLwP7z0o8eXfEdnNPFMFAiuRxJmW7uiUVzMyJEqhs=; b=EYEmqwG4aL2cRu
	9f0tTypLoftCXPGgi3ysaBWIGdfnYxW74q6hHYqg3HMzA4Jbz7Xj8kZzYuFtylCVOxV+93vCdxcm+
	WTUpfqh9HDN204EUI6kUR2FaUGgVYPcGIP7cwN0tuRr6+GuzboNAvCMu4zwg/ZPO6VwSDrDnkvKPk
	pLcYwVDMFbEOCH7ZPsKQ06l8nNPpJHnIqKVp9A876Io1TTrRgzUQO8U4KpSiq6ygCuuQ4AeO2jlEE
	kqIVbFCWpVaecgFBf804ctedNCRwXi3RzZ4+6T3Ud+m4VUCuEY4fJkI28M7f7bFG4XXfVEXSGLBeB
	jIk2bDlJ9+4QXRD2BiYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoQr-0000000BTDd-0Jxm;
	Thu, 10 Jul 2025 10:23:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnOz-0000000BJbw-1aI7
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 09:17:14 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A1MVXh031802
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+Mf1tUCyPlRBD7uh7eZr0NKbyyezdmIRIQMRpteYEvo=; b=VMahjaXqgpX68aY8
	Lb/ksRM5tnwkuGncVOPSKi/u1EmtxqbncDxA6/Jc7xl4hg5136BZtkBeKoBeXqZG
	QHyUDI25izQBtZSk/2FI45c8ypXLZAM1fkF3VYdAkjnBNJtekmLwnL2MSz1SeIf7
	Jm2eWkdg46hQ0rp9qt9d9vYF+PebWBD5h8/kMzdcU3dd6o+KihZ0lpu/dQ4nzkUN
	2mYf7Ne8VIzw1U/pIVDIzd4pByM+X/guU0AXAPmFeSy6l0A+nhCUmbIJEvZwFDg5
	XfpaS/w2SGcWuHY4ZWTe/bCTDGwfW2xehETqrEbu9oILa1ohGINfF7UTVsJRWvim
	WpFzeg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qxyrj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:17:10 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23638e1605dso7094455ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 02:17:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139024; x=1752743824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Mf1tUCyPlRBD7uh7eZr0NKbyyezdmIRIQMRpteYEvo=;
        b=YjcjGl+WJhJEavfu7wCdG3TDOd/se34Ii512e433xGwizrS9LhfY3if031FSQNvcd4
         7ijnmi64i36kV3FJFViFyzFvmrAi/ksxHbaOlL4+/vcQGPgF3DEJJwTP2cKHrE4h/58r
         TlQsskd3ZcMJsOdqfn+TzAWX1Jz3Ehw35Q8SZk2BptvdLgYdJtyxcbSs2uX034b8qgP6
         cNxNv1vPMS88g3r8Pxgz+ytoDDC/xMKk33JaxYkuhslxv99CYuf2T2slsMrZHhkGTwHt
         nf1ouKAjtXkZ6TUOBwEi4nURmfg12ERubiXDreYbgsiNoSMJ+eA5nws1eA2UU7LyM3b4
         aFBw==
X-Forwarded-Encrypted: i=1; AJvYcCVO7IfrC6lfdeRWIzdOCowq3O8TsyHge6x8+RWQMzPX1wpQAwj3zRNp5v6HQHaIsO5U6ss20F+AkXXFO6e/bQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxv5/cYzpxSAbYXRv+NRzQ6/QAwr39HjDPl86uDA5rXOs7sdxc3
	TmTTWqa4MP1usVL7tOKnroBM0GeGUthhdXA8uj90+L6KG3dHeV/jlyJWJwIdw5eyIMMwDsbRyNo
	OqmAaVJ4RWUkUnwlLpDi1HIYlJx0OU5eZ7I93F2yb/gNpg8V/SWyqOH7uKtIPQvkQhmrRObGWN3
	0=
X-Gm-Gg: ASbGncsoBOquapvPztv9ZwOXc7npqioIhNbrgStNEf/BgBlBKmDxQRmn1Naq6HA23vv
	z8guHfkTgxaKqs2NwHR6DVG1fotU27NTo4MzALNIyTc4kNerj+vnajjsxWdxAU+Ljy8T5eNEjuU
	fm4dPnoEl1qguechm3bcY4QZATTEcS0Z7z3cMo+JdZSJcIoyvjRSWFcl3yt65eVLzQRTVIwKBC9
	LUTntmGTwyfDUGw5RbbJT9fz0OA8EOQIeo9K6pcMoPTKSqr4vohNlQt7DYF3uw8NbkJ6P/A70YS
	9+aRY2JXyInwEvJxveKnxd+5D0Q4I9NUrl8uqtpFwLK9t4WELtkeBGGN/i0=
X-Received: by 2002:a17:903:11d0:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23de47cd531mr27606565ad.10.1752139024317;
        Thu, 10 Jul 2025 02:17:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaTKG1M836vj85DWnJt0R7I4oMnJq5iahq76ixet4o2OdBW9MxUH5ZENGIwQnEllXEhSYfyQ==
X-Received: by 2002:a17:903:11d0:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23de47cd531mr27605765ad.10.1752139023772;
        Thu, 10 Jul 2025 02:17:03 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:17:03 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:45 +0530
Subject: [PATCH v10 03/10] power: reset: reboot-mode: Add optional cookie
 argument
MIME-Version: 1.0
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-3-b2d3b882be85@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=4147;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Ybw+njJawUkDJ2EQIbedFhNekca67Tu3POKilli7L+k=;
 b=YFgAo1XczR69Kp0uIrUveOMYfDOdwaOYVutqLUFprgRmdRqIgHvcUhdeVirp5t0t+SejIfQMq
 ReHm/DNkrNjBb1zWeD+v46tG3Z6QZCEZi2q4dlboOoqyuJ8ZGkvyl9N
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfX1RwAZhREMu13
 K9gZWId/3brmdpqGJ51BOu6WVA4DG1koZe9RXNbz6Huby2M7+PrawXfTmZ1t0lcpxJ+IbN91NU+
 D9k+6jRTHcqE8bVCMSATR0uSy8haVbkxpW1zHap9E5qlj1UKTcs1aeauPRPchgfn3/eJOSKgYid
 zbDXRjBWQTASCbQBc9dOLCL9G5x6QpSijoMwtzK61DojB9jtBrrE/xWvwF5Nz4g2sjec+mGb/+N
 QGoKT56a36eCiytelQ6BeH38SFQ5LKZuFP9LJs79kYC4bGRsr8tEiahDfyi9g5PsMdeyWEmMrmN
 ZdXlLU10vheYU2EMDwkMXujakuRNpu57gIJCBM/vjrlAU5aExDdVCXjCvPSIEWmMcnwYodxjub7
 kYDKO1GwVJOZO0zskZCuK1hIFp1Z/+Lsa+gmbFK2Kxgac2usg4MbI7ATJWLRWc8xq94Tc7FK
X-Proofpoint-GUID: LShhxk3gJ9vLxOY5553ZtGKJ2urrQ1fy
X-Proofpoint-ORIG-GUID: LShhxk3gJ9vLxOY5553ZtGKJ2urrQ1fy
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686f8516 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VUHD6Ma6yzaK34Q8qnAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_021713_420780_4E6A1938 
X-CRM114-Status: GOOD (  21.40  )
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

Q3VycmVudCByZWJvb3QtbW9kZSBkcml2ZXIgc3VwcG9ydHMgYSBzaW5nbGUgYXJndW1lbnQobWFn
aWMpIGZvcgplYWNoIHJlYm9vdC1tb2RlLiBUaGVyZSBtYXkgYmUgdXNlcy1jYXNlcyB3aGVyZSBh
IG1vZGUgcmVxdWlyZXMKYW4gYWRkaXRpb25hbCBhcmd1bWVudCBhbmQgaGVuY2UgbWF5IG5vdCBi
ZSBhYmxlIHRvIHVzZSB0aGUKcmVib290LW1vZGUgZHJpdmVyLiBGb3IgZXhhbXBsZSwgQVJNIFBT
Q0kgdmVuZG9yLXNwZWNpZmljIHJlc2V0cywKbmVlZCB0d28gYXJndW1lbnRzIGZvciBpdHMgb3Bl
cmF0aW9uIOKAkyByZXNldF90eXBlIGFuZCBjb29raWUsIHRvCmNvbXBsZXRlIHRoZSByZXNldCBv
cGVyYXRpb24uIElmIGEgZHJpdmVyIHdhbnRzIHRvIGltcGxlbWVudCB0aGlzCmZpcm13YXJlLWJh
c2VkIHJlc2V0LCBpdCBjYW5ub3QgdXNlIHJlYm9vdC1tb2RlIGZyYW1ld29yay4KCkFkZCBzdXBw
b3J0IGZvciBzdG9yaW5nIGFuIGFkZGl0aW9uYWwgb3B0aW9uYWwgYXJndW1lbnQgKGNvb2tpZSkK
Zm9yIGVhY2ggcmVib290LW1vZGUgYW5kIGludHJvZHVjZSBhIHdyaXRlIGZ1bmN0aW9uIGluCnJl
Ym9vdC1tb2RlIHRoYXQgd3JpdGVzIHR3byBhcmd1bWVudHMgZm9yIGVhY2ggcmVib290LW1vZGUK
Y29tbWFuZC4gSW1wbGVtZW50IHRoZSByZWFkIGFuZCBzdG9yZSBvZiBhZGRpdGlvbmFsIGNvb2tp
ZSB2YWx1ZQpmb3IgZWFjaCByZWJvb3QtbW9kZSBkZWZpbmVkIGluIHRoZSBkZXZpY2UgdHJlZS4g
SW4gY2FzZSB0aGVyZSBpcwpubyBjb29raWUgc3BlY2lmaWVkIGluIHRoZSByZWJvb3QtbW9kZSBk
ZXZpY2UgdHJlZSwgbWFyayB0aGUKY29va2llIGFzIGludmFsaWQgdG8gc3VwcG9ydCBiYWNrd2Fy
ZCBjb21wYXRpYmlsaXR5LgoKU2lnbmVkLW9mZi1ieTogU2hpdmVuZHJhIFByYXRhcCA8c2hpdmVu
ZHJhLnByYXRhcEBvc3MucXVhbGNvbW0uY29tPgotLS0KIGRyaXZlcnMvcG93ZXIvcmVzZXQvcmVi
b290LW1vZGUuYyB8IDMyICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCiBpbmNsdWRl
L2xpbnV4L3JlYm9vdC1tb2RlLmggICAgICAgfCAgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCAyNCBp
bnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Bvd2Vy
L3Jlc2V0L3JlYm9vdC1tb2RlLmMgYi9kcml2ZXJzL3Bvd2VyL3Jlc2V0L3JlYm9vdC1tb2RlLmMK
aW5kZXggNjFmNjQ3YjIzOTU5Nzg5YTMxM2YzYWYwYmQ5NjdhYmNhZDQ1ZmE0My4uYWZhZGQ4MjNk
NjJkMGY3ZTdlNjQ1NzQ2Yjk3OGNjOGZlY2ZiOWFjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wb3dl
ci9yZXNldC9yZWJvb3QtbW9kZS5jCisrKyBiL2RyaXZlcnMvcG93ZXIvcmVzZXQvcmVib290LW1v
ZGUuYwpAQCAtMTcsMTEgKzE3LDEyIEBACiBzdHJ1Y3QgbW9kZV9pbmZvIHsKIAljb25zdCBjaGFy
ICptb2RlOwogCXUzMiBtYWdpYzsKKwl1MzIgY29va2llOworCWJvb2wgaXNfY29va2llX3ZhbGlk
OwogCXN0cnVjdCBsaXN0X2hlYWQgbGlzdDsKIH07CiAKLXN0YXRpYyB1bnNpZ25lZCBpbnQgZ2V0
X3JlYm9vdF9tb2RlX21hZ2ljKHN0cnVjdCByZWJvb3RfbW9kZV9kcml2ZXIgKnJlYm9vdCwKLQkJ
CQkJICBjb25zdCBjaGFyICpjbWQpCitzdGF0aWMgc3RydWN0IG1vZGVfaW5mbyAqZ2V0X3JlYm9v
dF9tb2RlX2luZm8oc3RydWN0IHJlYm9vdF9tb2RlX2RyaXZlciAqcmVib290LCBjb25zdCBjaGFy
ICpjbWQpCiB7CiAJY29uc3QgY2hhciAqbm9ybWFsID0gIm5vcm1hbCI7CiAJc3RydWN0IG1vZGVf
aW5mbyAqaW5mbzsKQEAgLTMyLDExICszMywxMSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGdldF9y
ZWJvb3RfbW9kZV9tYWdpYyhzdHJ1Y3QgcmVib290X21vZGVfZHJpdmVyICpyZWJvb3QsCiAKIAls
aXN0X2Zvcl9lYWNoX2VudHJ5KGluZm8sICZyZWJvb3QtPmhlYWQsIGxpc3QpCiAJCWlmICghc3Ry
Y21wKGluZm8tPm1vZGUsIGNtZCkpCi0JCQlyZXR1cm4gaW5mby0+bWFnaWM7CisJCQlyZXR1cm4g
aW5mbzsKIAogCS8qIHRyeSB0byBtYXRjaCBhZ2FpbiwgcmVwbGFjaW5nIGNoYXJhY3RlcnMgaW1w
b3NzaWJsZSBpbiBEVCAqLwogCWlmIChzdHJzY3B5KGNtZF8sIGNtZCwgc2l6ZW9mKGNtZF8pKSA9
PSAtRTJCSUcpCi0JCXJldHVybiAwOworCQlyZXR1cm4gTlVMTDsKIAogCXN0cnJlcGxhY2UoY21k
XywgJyAnLCAnLScpOwogCXN0cnJlcGxhY2UoY21kXywgJywnLCAnLScpOwpAQCAtNDQsMjEgKzQ1
LDI3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgZ2V0X3JlYm9vdF9tb2RlX21hZ2ljKHN0cnVjdCBy
ZWJvb3RfbW9kZV9kcml2ZXIgKnJlYm9vdCwKIAogCWxpc3RfZm9yX2VhY2hfZW50cnkoaW5mbywg
JnJlYm9vdC0+aGVhZCwgbGlzdCkKIAkJaWYgKCFzdHJjbXAoaW5mby0+bW9kZSwgY21kXykpCi0J
CQlyZXR1cm4gaW5mby0+bWFnaWM7CisJCQlyZXR1cm4gaW5mbzsKIAotCXJldHVybiAwOworCXJl
dHVybiBOVUxMOwogfQogCiBzdGF0aWMgaW50IHJlYm9vdF9tb2RlX25vdGlmeShzdHJ1Y3Qgbm90
aWZpZXJfYmxvY2sgKnRoaXMsCiAJCQkgICAgICB1bnNpZ25lZCBsb25nIG1vZGUsIHZvaWQgKmNt
ZCkKIHsKIAlzdHJ1Y3QgcmVib290X21vZGVfZHJpdmVyICpyZWJvb3Q7Ci0JdW5zaWduZWQgaW50
IG1hZ2ljOworCXN0cnVjdCBtb2RlX2luZm8gKmluZm87CiAKIAlyZWJvb3QgPSBjb250YWluZXJf
b2YodGhpcywgc3RydWN0IHJlYm9vdF9tb2RlX2RyaXZlciwgcmVib290X25vdGlmaWVyKTsKLQlt
YWdpYyA9IGdldF9yZWJvb3RfbW9kZV9tYWdpYyhyZWJvb3QsIGNtZCk7Ci0JaWYgKG1hZ2ljKQot
CQlyZWJvb3QtPndyaXRlKHJlYm9vdCwgbWFnaWMpOworCWluZm8gPSBnZXRfcmVib290X21vZGVf
aW5mbyhyZWJvb3QsIGNtZCk7CisJaWYgKGluZm8pIHsKKwkJaWYgKGluZm8tPmlzX2Nvb2tpZV92
YWxpZCkgeworCQkJcmVib290LT53cml0ZV93aXRoX2Nvb2tpZShyZWJvb3QsIGluZm8tPm1hZ2lj
LCBpbmZvLT5jb29raWUpOworCQl9IGVsc2UgeworCQkJaWYgKGluZm8tPm1hZ2ljKQorCQkJCXJl
Ym9vdC0+d3JpdGUocmVib290LCBpbmZvLT5tYWdpYyk7CisJCX0KKwl9CiAKIAlyZXR1cm4gTk9U
SUZZX0RPTkU7CiB9CkBAIC05NSw2ICsxMDIsMTEgQEAgaW50IHJlYm9vdF9tb2RlX3JlZ2lzdGVy
KHN0cnVjdCByZWJvb3RfbW9kZV9kcml2ZXIgKnJlYm9vdCwgc3RydWN0IGRldmljZV9ub2RlICoK
IAkJCWNvbnRpbnVlOwogCQl9CiAKKwkJaWYgKG9mX3Byb3BlcnR5X3JlYWRfdTMyX2luZGV4KG5w
LCBwcm9wLT5uYW1lLCAxLCAmaW5mby0+Y29va2llKSkKKwkJCWluZm8tPmlzX2Nvb2tpZV92YWxp
ZCA9IGZhbHNlOworCQllbHNlCisJCQlpbmZvLT5pc19jb29raWVfdmFsaWQgPSB0cnVlOworCiAJ
CWluZm8tPm1vZGUgPSBrc3RyZHVwX2NvbnN0KHByb3AtPm5hbWUgKyBsZW4sIEdGUF9LRVJORUwp
OwogCQlpZiAoIWluZm8tPm1vZGUpIHsKIAkJCXJldCA9ICAtRU5PTUVNOwpkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9yZWJvb3QtbW9kZS5oIGIvaW5jbHVkZS9saW51eC9yZWJvb3QtbW9kZS5o
CmluZGV4IDM2ZjA3MWY0YjgyZTFmYzI1NWQ4ZGQ2NzlhMThlNTM3NjU1YzMxNzkuLmNmZTE4Y2Rj
MjU1OWJlMjQ5OTY5YmJhNmMwMjI5NDBhNTA4ZGQxODggMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGlu
dXgvcmVib290LW1vZGUuaAorKysgYi9pbmNsdWRlL2xpbnV4L3JlYm9vdC1tb2RlLmgKQEAgLTYs
NiArNiw4IEBAIHN0cnVjdCByZWJvb3RfbW9kZV9kcml2ZXIgewogCXN0cnVjdCBkZXZpY2UgKmRl
djsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGhlYWQ7CiAJaW50ICgqd3JpdGUpKHN0cnVjdCByZWJvb3Rf
bW9kZV9kcml2ZXIgKnJlYm9vdCwgdW5zaWduZWQgaW50IG1hZ2ljKTsKKwlpbnQgKCp3cml0ZV93
aXRoX2Nvb2tpZSkoc3RydWN0IHJlYm9vdF9tb2RlX2RyaXZlciAqcmVib290LAorCQkJCSB1bnNp
Z25lZCBpbnQgbWFnaWMsIHVuc2lnbmVkIGludCBjb29raWUpOwogCXN0cnVjdCBub3RpZmllcl9i
bG9jayByZWJvb3Rfbm90aWZpZXI7CiB9OwogCgotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
