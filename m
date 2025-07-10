Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19E6C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 17:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oadb5IvF3iAaTGUZwadQHEKq14ru4Nhg7zFIiaJbVes=; b=l/+f6GKhJAa8+0
	5LyETHFuf7joluRJpK3lZUb6DzhQ7ksPdzQARI2TE5eqgNBTbsFuFpO6NQYrVUyDMmscBKK4ClceG
	5Mkvq/JCqgrPcoAMMyhhR6HnBCyP3MyVMW6AGzxIrWp0qjCh3uGNySFyOM3jobWSU4EQ+lse0u32F
	t57zQyqcSPx1VFPtH6YrDXR0NrGiewHnj9yDEgM9LgtgHay2q9Ftpic0RHLd2N679ZCu2jmmR5gcV
	BefI/c4B6RKzMRfzv9Pmqa3WsJcXX0m4L2suffA7BE30sduoG3D+oiVL1LhA4rKy96VNlqOsbMTSD
	uaSULQdI8t0kipJQ5tww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZvIS-0000000CcCs-4BS0;
	Thu, 10 Jul 2025 17:43:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtSa-0000000CIPL-1AkA
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 15:45:21 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A9F7N7016462
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 15:45:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Ncm63/MfiuPbDjDVklTQd8+kupDoVzcsE+k6jeIleo=; b=KnNb1FX5hzQYi1xI
	zA7Uh98UKUkyt/1X3LPA+iboHhUo60Q8NsuQ+j/+pYe+V7qm/tdkojBRTi5GoUkX
	nPMaDQzL3Wy8yMmK8Bke6qmNICNdt+b+pJEo7gOKKm7moVknA276ngxWtJI9K7ux
	hadHKYaTyBxM3ndfT+EmJPJxL4KWJbITB/2JWZbHJK6k1zpzRYszhYf366yP7Q5+
	VLnfL+zNUfcmJk7YHDU4yqMlV+1NhXfhYElD9wD5zJ6gWVPTKY3rqFj8xjkk4Hhf
	2hUhXMgwOTO0cGdte45iIxSOpCdFB+1zryLDHG6KpNvv0jVVCJ9ouQgDdAd50ChW
	t9iZYQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smap5gpu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 15:45:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a9b1f1fa5eso1707921cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 08:45:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752162318; x=1752767118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Ncm63/MfiuPbDjDVklTQd8+kupDoVzcsE+k6jeIleo=;
        b=tI6JMZwixjWPsKe+bHL22c0KfbziXIAS3MhG+HcESQorWsCxUhPX81HjnZjkzxY7AH
         ldimkIMpidsnurc8GsVH4VzmOzQE3z4AWvTcti4z9twF/NeUSWzo3iWa6dZ1zFSnvTsP
         949jbegIGFA8O/RBF4ozg6jlBGnjqu3XhVOumX+b5XqvkuCExZ07NveXO8nPbSEVg2Vj
         pSP8xcMI/VdcZPfXwzGYlXhqRnP6gPb7W0TMkKVPl1/sodPi0qy4eKqKBnX3PA2hdwb3
         ZOSktEbKzUD5ZY8w6wXcXxnwslBJ0+mlWE1tWf0UU77j8eHoqTHruf4g2nBLMXtaiVIU
         0l0w==
X-Forwarded-Encrypted: i=1; AJvYcCWBuQyLRB/SGhap5hoLxIfZJf8JKxhdOMfaK3J3l/EppwQIrtxJvU3Y6WM3xHxZJEcMQ1B/qfraantnHQhOBQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzDf17BIRa3vcDIgz5x/sR+3zcUGyjoLhDzBSSCfHUVCG344HEl
	mF8BLe3ih0Iqjv8CI4sel3yK5Jdm195t46Hi174WPQ4FtEmkz0699K/a6qE+CoyH0T0e8Ytvhvs
	H/wdgSujSVLsc6JQwiqeHi12PZ6NVgpdv65VO8wxpW8p7YwAniJECNFx0US3TXTYJXwEXR9F6xc
	w=
X-Gm-Gg: ASbGncsozjgJR2RFuwlwJPySvS5KzEgEr9KPGqbw9zEveXWEVtU/u1P96ErDMNqepzo
	dI3AVnbJKgWQGSpHaP2zu6ICALVF2iLWpLKOAIgTwy9gVJRfZOClspeeQboJGOJ5B3qM48Hi0hb
	dnvZdgNySQBDwbtS/U+FhmsFaszkQAAnt1DTy+GtRWVybE+7W2hJ0wyyDzAhEp1NVu5dSnTtpVy
	Bx+Q8g5Ov/VhdF57n/ss/X/CfI3qbPo0RfW78CdkptM84HUIZARmYFJEfP41GR+dh7ktj/0oAxA
	1YOyme1/GDrU22pLvyAOYfyBuwpkLPVaYIZjpilZGaS2BRFA7dkq/oFOAFGZH52ZcY0BY66bxEW
	nHnM=
X-Received: by 2002:ac8:5e46:0:b0:4a9:f582:dc03 with SMTP id d75a77b69052e-4a9f582dfcemr10046471cf.9.1752162318036;
        Thu, 10 Jul 2025 08:45:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGMNtJ4drdObgcfuSdkFknAQN4Odw7/i1HjVhwWIis053P28UmmNK+qrTjCWD2/caZ4V7w5g==
X-Received: by 2002:ac8:5e46:0:b0:4a9:f582:dc03 with SMTP id d75a77b69052e-4a9f582dfcemr10046111cf.9.1752162317396;
        Thu, 10 Jul 2025 08:45:17 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7ee44basm152828266b.42.2025.07.10.08.45.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 08:45:16 -0700 (PDT)
Message-ID: <4ca0df4e-7697-4cfe-ada4-6eee8224938f@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 17:45:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 05/10] firmware: psci: Implement vendor-specific
 reset-types as reboot-mode
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
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
        Srinivas Kandagatla <srini@kernel.org>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-5-b2d3b882be85@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710-arm-psci-system_reset2-vendor-reboots-v10-5-b2d3b882be85@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=686fe00f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=GLYJuuS3cqMp142eAlYA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: DAtDfxO6cXSCnP_cSMBLvKx70s1Y5Kj3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDEzNiBTYWx0ZWRfX8MKNfgkvcit2
 Sgk11puOWpx8PdionM7aJc99eUEQRFAtkSD1fEBn99UAxceKyD4gDGi8YOWJ1h4AOTllUWunaIy
 CM/vIojqvl3ELWZ5kzvJ/JQtdGFOEnJrWJcMbCbmHSsZ69rYeA1NdtTfLRzMpyTiM9bCB1xg6eq
 fRbxI7J2ECNWyJF9vtKchyoqVT4cyhSdaxksLBLNJpRmHi3TG5KFH5/YK6JstqIKCJs76uiR3dr
 h9EO1Elqcfvz87K4vElE2NqSyAiK+c1zEp8lQHy41wmAX5Sv+zsxFZE533B/ThDYbSgcsd6p2zj
 Bodpp5fK0akB+Rppno0MgilC0+bvm6Y5nrdHNxkEv4AVflg94sBGi1ozX13ZdIj1FzMFJYsivHS
 LYHtl+/tr1gEFHaWVNXWCwXT+otnqheSgdKaYupJr0jz6UZ7suHvSIAbwe0lmC++uF24aKV5
X-Proofpoint-GUID: DAtDfxO6cXSCnP_cSMBLvKx70s1Y5Kj3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_084520_446950_8C7306C2 
X-CRM114-Status: GOOD (  35.56  )
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

T24gNy8xMC8yNSAxMToxNSBBTSwgU2hpdmVuZHJhIFByYXRhcCB3cm90ZToKPiBTb0MgdmVuZG9y
cyBoYXZlIGRpZmZlcmVudCB0eXBlcyBvZiByZXNldHMgd2hpY2ggYXJlIGNvbnRyb2xsZWQKPiB0
aHJvdWdoIHZhcmlvdXMgaGFyZHdhcmUgcmVnaXN0ZXJzLiBGb3IgaW5zdGFuY2UsIFF1YWxjb21t
IFNvQwo+IG1heSBoYXZlIGEgcmVxdWlyZW1lbnQgdGhhdCByZWJvb3Qgd2l0aCDigJxib290bG9h
ZGVy4oCdIGNvbW1hbmQKPiBzaG91bGQgcmVib290IHRoZSBkZXZpY2UgdG8gYm9vdGxvYWRlciBm
bGFzaGluZyBtb2RlIGFuZCByZWJvb3QKPiB3aXRoIOKAnGVkbOKAnSBzaG91bGQgcmVib290IHRo
ZSBkZXZpY2UgaW50byBFbWVyZ2VuY3kgZmxhc2hpbmcgbW9kZS4KPiBTZXR0aW5nIHVwIHN1Y2gg
cmVib290cyBvbiBRdWFsY29tbSBkZXZpY2VzIGNhbiBiZSBpbmNvbnNpc3RlbnQKPiBhY3Jvc3Mg
U29DIHBsYXRmb3JtcyBhbmQgbWF5IHJlcXVpcmUgc2V0dGluZyBkaWZmZXJlbnQgSFcKPiByZWdp
c3RlcnMsIHdoZXJlIHNvbWUgb2YgdGhlc2UgcmVnaXN0ZXJzIG1heSBub3QgYmUgYWNjZXNzaWJs
ZSB0bwo+IEhMT1MuIFRoZXNlIGtub2JzIGV2b2x2ZSBvdmVyIHByb2R1Y3QgZ2VuZXJhdGlvbnMg
YW5kIHJlcXVpcmUKPiBtb3JlIGRyaXZlcnMuIFBTQ0kgc3BlYyBkZWZpbmVzLCBTWVNURU1fUkVT
RVQyLCB2ZW5kb3Itc3BlY2lmaWMKPiByZXNldCB3aGljaCBjYW4gaGVscCBhbGlnbiB0aGlzIHJl
cXVpcmVtZW50LiBBZGQgc3VwcG9ydCBmb3IgUFNDSQo+IFNZU1RFTV9SRVNFVDIsIHZlbmRvci1z
cGVjaWZpYyByZXNldHMgYW5kIGFsaWduIHRoZSBpbXBsZW1lbnRhdGlvbgo+IHRvIGFsbG93IHVz
ZXItc3BhY2UgaW5pdGlhdGVkIHJlYm9vdHMgdG8gdHJpZ2dlciB0aGVzZSByZXNldHMuCj4gCj4g
SW50cm9kdWNlIGEgbGF0ZV9pbml0Y2FsbCB0byByZWdpc3RlciBQU0NJIHZlbmRvci1zcGVjaWZp
YyByZXNldHMKPiBhcyByZWJvb3QtbW9kZSBhcmd1bWVudHMgbGlrZSByZXNldF90eXBlIGFuZCBj
b29raWUuIEZvciBhIFNvQwo+IHdoZXJlLCBQU0NJIHZlbmRvci1zcGVjaWZpYyBzeXN0ZW1fcmVz
ZXQyIGlzIHN1cHBvcnRlZCwgdGhlCj4gYXBwcm9wcmlhdGUgdmFsdWUgZ2V0cyBmaWxsZWQgdG8g
cmVzZXRfdHlwZSBhbmQgY29va2llIGR1cmluZwo+IHRoaXMgcmVib290LW1vZGUgaG9vayByZWdp
c3RyYXRpb24uIElmIHRoZSBzZWN1cmUgZmlybXdhcmUKPiBzdXBwb3J0cyBQU0NJIHN5c3RlbV9y
ZXNldDIsIHJlc3RhcnQgbm90aWZpZXIgd2lsbCBtYWtlIHNlY3VyZQo+IGNhbGwgdG8gdHJpZ2dl
ciBhcHByb3ByaWF0ZSByZXF1ZXN0ZWQgcmVzZXQgdHlwZS4KPiAKPiBCeSB1c2luZyB0aGUgYWJv
dmUgaW1wbGVtZW50YXRpb24sIHVzZXNwYWNlIHdpbGwgYmUgYWJsZSB0byBpc3N1ZQo+IHN1Y2gg
cmVzZXRzIHVzaW5nIHRoZSByZWJvb3QoKSBzeXN0ZW0gY2FsbCB3aXRoIHRoZSAiKmFyZyIKPiBw
YXJhbWV0ZXIgYXMgYSBzdHJpbmcgYmFzZWQgY29tbWFuZC4gVGhlIGNvbW1hbmRzIGNhbiBiZSBk
ZWZpbmVkCj4gaW4gUFNDSSBkZXZpY2UgdHJlZSBub2RlIGFzIOKAnHJlc2V0LXR5cGVz4oCdIGFu
ZCBhcmUgYmFzZWQgb24gdGhlCj4gcmVib290LW1vZGUgYmFzZWQgY29tbWFuZHMuCj4gCj4gU2ln
bmVkLW9mZi1ieTogU2hpdmVuZHJhIFByYXRhcCA8c2hpdmVuZHJhLnByYXRhcEBvc3MucXVhbGNv
bW0uY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Zpcm13YXJlL3BzY2kvS2NvbmZpZyB8ICAxICsKPiAg
ZHJpdmVycy9maXJtd2FyZS9wc2NpL3BzY2kuYyAgfCA1MyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL3BzY2kv
S2NvbmZpZyBiL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9LY29uZmlnCj4gaW5kZXggOTc5NDQxNjhi
NWU2NmFlYTFlMzhhN2ViMmQ0Y2VkODM0OGZjZTY0Yi4uOWQ2NWZlN2IwNmE2NDI5ZGU4YTI2ZDA2
ZjkzODRlNWM5M2YzNmU1ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Zpcm13YXJlL3BzY2kvS2Nv
bmZpZwo+ICsrKyBiL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9LY29uZmlnCj4gQEAgLTEsNiArMSw3
IEBACj4gICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQo+ICBjb25maWcg
QVJNX1BTQ0lfRlcKPiAgCWJvb2wKPiArCXNlbGVjdCBSRUJPT1RfTU9ERQo+ICAKPiAgY29uZmln
IEFSTV9QU0NJX0NIRUNLRVIKPiAgCWJvb2wgIkFSTSBQU0NJIGNoZWNrZXIiCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3BzY2kv
cHNjaS5jCj4gaW5kZXggMzhjYTE5MGQ0YTIyZDZlN2UwZjA2NDIwZTg0NzhhMmIwZWMyZmU2Zi4u
ODcyOTNmNzhlZDgzZWIzM2JhNjdkZWQ3MzcyODcyOTgxMTY5M2VhMyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaS5jCj4gKysrIGIvZHJpdmVycy9maXJtd2FyZS9wc2Np
L3BzY2kuYwo+IEBAIC0xMywxMCArMTMsMTMgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+
Cj4gICNpbmNsdWRlIDxsaW51eC9saW5rYWdlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+
ICsjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRm
b3JtX2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcG0uaD4KPiAgI2luY2x1ZGUgPGxpbnV4
L3ByaW50ay5oPgo+ICAjaW5jbHVkZSA8bGludXgvcHNjaS5oPgo+ICAjaW5jbHVkZSA8bGludXgv
cmVib290Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9yZWJvb3QtbW9kZS5oPgo+ICAjaW5jbHVkZSA8
bGludXgvc2xhYi5oPgo+ICAjaW5jbHVkZSA8bGludXgvc3VzcGVuZC5oPgo+ICAKPiBAQCAtNTEs
NiArNTQsMTQgQEAgc3RhdGljIGludCByZXNpZGVudF9jcHUgPSAtMTsKPiAgc3RydWN0IHBzY2lf
b3BlcmF0aW9ucyBwc2NpX29wczsKPiAgc3RhdGljIGVudW0gYXJtX3NtY2NjX2NvbmR1aXQgcHNj
aV9jb25kdWl0ID0gU01DQ0NfQ09ORFVJVF9OT05FOwo+ICAKPiArc3RydWN0IHBzY2lfdmVuZG9y
X3N5c3Jlc2V0MiB7Cj4gKwl1MzIgcmVzZXRfdHlwZTsKPiArCXUzMiBjb29raWU7Cj4gKwlib29s
IHZhbGlkOwo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBwc2NpX3ZlbmRvcl9zeXNyZXNldDIg
dmVuZG9yX3Jlc2V0Owo+ICsKPiAgYm9vbCBwc2NpX3Rvc19yZXNpZGVudF9vbihpbnQgY3B1KQo+
ICB7Cj4gIAlyZXR1cm4gY3B1ID09IHJlc2lkZW50X2NwdTsKPiBAQCAtMzA5LDcgKzMyMCwxNCBA
QCBzdGF0aWMgaW50IGdldF9zZXRfY29uZHVpdF9tZXRob2QoY29uc3Qgc3RydWN0IGRldmljZV9u
b2RlICpucCkKPiAgc3RhdGljIGludCBwc2NpX3N5c19yZXNldChzdHJ1Y3Qgbm90aWZpZXJfYmxv
Y2sgKm5iLCB1bnNpZ25lZCBsb25nIGFjdGlvbiwKPiAgCQkJICB2b2lkICpkYXRhKQo+ICB7Cj4g
LQlpZiAoKHJlYm9vdF9tb2RlID09IFJFQk9PVF9XQVJNIHx8IHJlYm9vdF9tb2RlID09IFJFQk9P
VF9TT0ZUKSAmJgo+ICsJaWYgKHZlbmRvcl9yZXNldC52YWxpZCAmJiBwc2NpX3N5c3RlbV9yZXNl
dDJfc3VwcG9ydGVkKSB7Cj4gKwkJLyoKPiArCQkgKiBpZiB2ZW5kb3JfcmVzZXQudmFsaWQgaXMg
dHJ1ZSBjYWxsIHN5cyByZXNldDIgd2l0aAo+ICsJCSAqIHRoZSB2ZW5kb3JfcmVzZXQocmVzZXRf
dHlwZSBhbmQgY29va2llKS4KPiArCQkgKi8KClRoaXMgY29tbWVudCByZXBlYXRzIHRoZSBsaW5l
IGFib3ZlIGFuZCBiZWxvdyBpdCB3aXRob3V0CmJyaW5naW5nIGFkZGl0aW9uYWwgdmFsdWUKCktv
bnJhZAoKPiArCQlpbnZva2VfcHNjaV9mbihQU0NJX0ZOX05BVElWRSgxXzEsIFNZU1RFTV9SRVNF
VDIpLCB2ZW5kb3JfcmVzZXQucmVzZXRfdHlwZSwKPiArCQkJICAgICAgIHZlbmRvcl9yZXNldC5j
b29raWUsIDApOwo+ICsJfSBlbHNlIGlmICgocmVib290X21vZGUgPT0gUkVCT09UX1dBUk0gfHwg
cmVib290X21vZGUgPT0gUkVCT09UX1NPRlQpICYmCj4gIAkgICAgcHNjaV9zeXN0ZW1fcmVzZXQy
X3N1cHBvcnRlZCkgewo+ICAJCS8qCj4gIAkJICogcmVzZXRfdHlwZVszMV0gPSAwIChhcmNoaXRl
Y3R1cmFsKQo+IEBAIC01NDcsNiArNTY1LDM5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGxhdGZv
cm1fc3VzcGVuZF9vcHMgcHNjaV9zdXNwZW5kX29wcyA9IHsKPiAgCS5lbnRlciAgICAgICAgICA9
IHBzY2lfc3lzdGVtX3N1c3BlbmRfZW50ZXIsCj4gIH07Cj4gIAo+ICtzdGF0aWMgaW50IHBzY2lf
c2V0X3ZlbmRvcl9zeXNfcmVzZXQyKHN0cnVjdCByZWJvb3RfbW9kZV9kcml2ZXIgKnJlYm9vdCwK
PiArCQkJCSAgICAgIHUzMiByZXNldF90eXBlLCB1MzIgY29va2llKQo+ICt7Cj4gKwlpZiAocHNj
aV9zeXN0ZW1fcmVzZXQyX3N1cHBvcnRlZCkgewo+ICsJCXZlbmRvcl9yZXNldC5yZXNldF90eXBl
ID0gUFNDSV8xXzFfUkVTRVRfVFlQRV9WRU5ET1JfU1RBUlQgfCByZXNldF90eXBlOwo+ICsJCXZl
bmRvcl9yZXNldC5jb29raWUgPSBjb29raWU7Cj4gKwkJdmVuZG9yX3Jlc2V0LnZhbGlkID0gdHJ1
ZTsKPiArCX0KPiArCj4gKwlyZXR1cm4gTk9USUZZX0RPTkU7Cj4gK30KPiArCj4gK3N0YXRpYyBp
bnQgX19pbml0IHBzY2lfaW5pdF92ZW5kb3JfcmVzZXQodm9pZCkKPiArewo+ICsJc3RydWN0IHJl
Ym9vdF9tb2RlX2RyaXZlciAqcmVib290Owo+ICsJc3RydWN0IGRldmljZV9ub2RlICpucDsKPiAr
Cj4gKwlucCA9IG9mX2ZpbmRfbm9kZV9ieV9uYW1lKE5VTEwsICJyZXNldC10eXBlcyIpOwo+ICsJ
aWYgKCFucCkKPiArCQlyZXR1cm4gLUVOT0RFVjsKPiArCj4gKwlyZWJvb3QgPSBremFsbG9jKHNp
emVvZigqcmVib290KSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIXJlYm9vdCkgewo+ICsJCW9mX25v
ZGVfcHV0KG5wKTsKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCX0KPiArCj4gKwlyZWJvb3QtPndy
aXRlX3dpdGhfY29va2llID0gcHNjaV9zZXRfdmVuZG9yX3N5c19yZXNldDI7Cj4gKwo+ICsJcmV0
dXJuIHJlYm9vdF9tb2RlX3JlZ2lzdGVyKHJlYm9vdCwgbnApOwo+ICt9Cj4gK2xhdGVfaW5pdGNh
bGwocHNjaV9pbml0X3ZlbmRvcl9yZXNldCkKPiArCj4gIHN0YXRpYyB2b2lkIF9faW5pdCBwc2Np
X2luaXRfc3lzdGVtX3Jlc2V0Mih2b2lkKQo+ICB7Cj4gIAlpbnQgcmV0Owo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
