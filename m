Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA1AC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 19:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ua5hs/O17/C3NIQBDj7JKrrEPyohgrb7DgP5qsp2OLw=; b=dU7ky3FHb0v+qx
	ybpEIOVWYPRU2zQ/wGbDQX65AO3Joy8OoGmuzFpYrgx8CWmrmOcinYK53of+ndteFJ/FOtLL1N3hB
	Ul0SIKRfV7UrmpEoUmHM9+C4nEv6UiSeytYGdjQcH1FpTVtjQNLui4+6Wf3c1Q6KAHrjcnSbHOUDM
	Sd1/cYOBTZEDbvS1Nn8aA2trkQ/kItO9LiINVo6MvZpaWNNsuWD8Kce6fl3hBGxc0IMZzvwQ1nsc6
	ZoorqPMJhEPw+qFOWMbX0+2Ynlg8sESzcecRV7z6ZGQ1qTinCEQzqgT3nQYrUBZK86blMfktT3mPv
	9WPeaILHVRM/72U8piQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZwdV-0000000CmOS-0z7U;
	Thu, 10 Jul 2025 19:08:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZuDz-0000000CSvH-0tKV
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:34:20 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A95Hba009945
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 16:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7v+KOlxVQQuHrXP2BzwGqdrb5703hR1R+qZ3XSvsTjw=; b=TiuGIBY+SnjWlHzr
	SpwydSFznLuBhG8LBEgO1Ue0EtJ5+OYdCJkHMLN7KKjO64vG2Wx3zbblqK3noMpe
	JuDBJwojNhChgZKqIAh9XHREznOLHrFR3uBoX/3evqqAbfQqIB04NyJ/UDz8y7N7
	I33HJaPPCrLugdSyTnjHY7HgafayqwwgytzWaksUwV/TtnszfXmhFyAk2RJqfXiB
	/FQ80qAZJXSaz31ewu3sPKRQ2Uf6O9JEakaaJMVu3z/vDErDw85jYG7qmDn/MXuv
	xUepfDi9U4e4Xuw5gBxlYnuEjy+vXCRY7Amsf8KDJJRMUadsUY6uVGbFFKGzncro
	C8Ls3Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9dwmyx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 16:34:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23638e1605dso9467455ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:34:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752165257; x=1752770057;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7v+KOlxVQQuHrXP2BzwGqdrb5703hR1R+qZ3XSvsTjw=;
        b=b0URSlFGWMtGMI+HoEMRDN02lCgeldrukdlhfSY/IVtAXq6A5T9Ir7wmx6jBmQuiaA
         q8TbmDgB70/Es+Cuc1aOM1X7mzJqiT4ZFiA/pWXMhGVlRdo/1MnDb6FkaGngx6OI/tUM
         k2Segv/Slryige9sEgjHjrKpDsY3bTpuKzJO/h5DCaXi56nW8nvitS9GT2ag3xpk9BE+
         40ds9N+EY+TETaArKRFdvgF7cVI/8xOfzcCqSDhsxTrLVemavze9K4TsltQDMV5fEbSz
         vWzCJDA8hLiG+ia2JDRYOVeJfi3o19H6Ge2taHeZqpHkNW2iZb8LabXUJOAByvwtcvHF
         HpTw==
X-Forwarded-Encrypted: i=1; AJvYcCUASAgZxX6nh5vZxJ3fpcBgsXF2VDcYfg0tGcYrPo5joYQF1iOvGDjNszeu6f3ZTh1KF+r557lSphB8TXFIMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzIF30w9dRi7Pw9vY8Yp+9ymbRV+UNIh8pfWENc3InLixGsXumo
	tXT7gLu5oLw345ClvY+V280eKrBQRAXhi5mQoQsbHOS9rIpo6EKMhPYdkz12RoYvV2RuaX/mZ9P
	BTdWADYz2o51YJ4WpQtYE5miAmzQts3StKJBaogXAjmPJB5dBzFkkzLlDbGioF6ZrQCEdz7UZBX
	U=
X-Gm-Gg: ASbGnctEUrN2MrO2oGOi7tnGWYUrQvxyi6Ah9eOKXegJDU4p3KpFqGZnXENtjCbc/tg
	ncVIyLpCCH9gzi4LJlTT3cGwBQGkVnOqIcibhCSy4LEdTo1PmLG/hwyx1b4M9kXmiYh0gdD2mU1
	NB35glxrmqBG67Go87gJrCTb9UumSnuQEZKxLmF64hZdTBD6YpgHr72ca7cQAtdmr/IZeSbRaTe
	emcHGnfmel9MLtZqDxCyQ99JkQ+Z2PwbdkLW5URKYnpytai0XxZ9qaJAA+QtSC7D20x3Z2fdv+B
	R9kJ+JRpJSBbxReW/Lue+a/6dyneOJU/gUOoHD2EYd3jAF0vGxoN/ftK
X-Received: by 2002:a17:903:240a:b0:23c:8f21:ac59 with SMTP id d9443c01a7336-23de4870255mr58912675ad.29.1752165256710;
        Thu, 10 Jul 2025 09:34:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHB4rnPjqJKSrNHIQvF405YfcZfT/Y4T9Mez0G2+iXfOjNPRdQpTDwA1RKIVvdQzWG4WI0fXg==
X-Received: by 2002:a17:903:240a:b0:23c:8f21:ac59 with SMTP id d9443c01a7336-23de4870255mr58912015ad.29.1752165256183;
        Thu, 10 Jul 2025 09:34:16 -0700 (PDT)
Received: from [192.168.29.115] ([49.43.229.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4365b10sm24645205ad.240.2025.07.10.09.34.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 09:34:14 -0700 (PDT)
Message-ID: <62cd2efe-2a82-72b0-c4e0-df8a0d8fcfe4@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 22:04:00 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 05/10] firmware: psci: Implement vendor-specific
 reset-types as reboot-mode
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
 <4ca0df4e-7697-4cfe-ada4-6eee8224938f@oss.qualcomm.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <4ca0df4e-7697-4cfe-ada4-6eee8224938f@oss.qualcomm.com>
X-Proofpoint-GUID: skRB5HNNLtI5eVuisrAlaL7rfqHDSjIZ
X-Authority-Analysis: v=2.4 cv=W7k4VQWk c=1 sm=1 tr=0 ts=686feb8a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=8g6h00HoWaIZ3EdQG8aEvw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=IRR_k5T4b-fJqLONmWgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: skRB5HNNLtI5eVuisrAlaL7rfqHDSjIZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDE0MSBTYWx0ZWRfX5e2IciY8wwQT
 oVy1V3Dlo2HP3zUAqle4+easWYSvLYVrNgtnjnBE2yefGxZmtOt2gbdCB8I3tfKhYipFx+UIy4H
 ubJzKuNBH7qzEatoVOEWCGhP8HRDQpOTf9MIwKPqDyjNTw6RA1QS+nw/r1WEZiHJ0Ytf4Y00Ddb
 WAAfCDZJ4bXNz5DLi6D1PMOByWC5R0YEjHfUufmOMabpLnGssZQlRZjQZk5WPAVpgEqwcanF9Ov
 cxiWAwSWwAHCd5sBMjZi7yGOnr6hKuQYkirO1iOKPbzNYoMUCgZuW5iovdEErAILwEUVWr40uDu
 IRd5+NaUaBO0zgLBtiPZb1u4zP1ynguERHKhn9MVg7vuPbF/q+7qDxGa7RjUgs4oVrfkt6hDyKw
 t7yS+wIoNttAZUkqnDJhkRQApU8PseiO50azM79coYwYnug478371bP+/rNTcS7qvNZexHDE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_093419_365557_2BACD581 
X-CRM114-Status: GOOD (  29.22  )
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

CgpPbiA3LzEwLzIwMjUgOToxNSBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA3LzEwLzI1
IDExOjE1IEFNLCBTaGl2ZW5kcmEgUHJhdGFwIHdyb3RlOgo+PiBTb0MgdmVuZG9ycyBoYXZlIGRp
ZmZlcmVudCB0eXBlcyBvZiByZXNldHMgd2hpY2ggYXJlIGNvbnRyb2xsZWQKPj4gdGhyb3VnaCB2
YXJpb3VzIGhhcmR3YXJlIHJlZ2lzdGVycy4gRm9yIGluc3RhbmNlLCBRdWFsY29tbSBTb0MKPj4g
bWF5IGhhdmUgYSByZXF1aXJlbWVudCB0aGF0IHJlYm9vdCB3aXRoIOKAnGJvb3Rsb2FkZXLigJ0g
Y29tbWFuZAo+PiBzaG91bGQgcmVib290IHRoZSBkZXZpY2UgdG8gYm9vdGxvYWRlciBmbGFzaGlu
ZyBtb2RlIGFuZCByZWJvb3QKPj4gd2l0aCDigJxlZGzigJ0gc2hvdWxkIHJlYm9vdCB0aGUgZGV2
aWNlIGludG8gRW1lcmdlbmN5IGZsYXNoaW5nIG1vZGUuCj4+IFNldHRpbmcgdXAgc3VjaCByZWJv
b3RzIG9uIFF1YWxjb21tIGRldmljZXMgY2FuIGJlIGluY29uc2lzdGVudAo+PiBhY3Jvc3MgU29D
IHBsYXRmb3JtcyBhbmQgbWF5IHJlcXVpcmUgc2V0dGluZyBkaWZmZXJlbnQgSFcKPj4gcmVnaXN0
ZXJzLCB3aGVyZSBzb21lIG9mIHRoZXNlIHJlZ2lzdGVycyBtYXkgbm90IGJlIGFjY2Vzc2libGUg
dG8KPj4gSExPUy4gVGhlc2Uga25vYnMgZXZvbHZlIG92ZXIgcHJvZHVjdCBnZW5lcmF0aW9ucyBh
bmQgcmVxdWlyZQo+PiBtb3JlIGRyaXZlcnMuIFBTQ0kgc3BlYyBkZWZpbmVzLCBTWVNURU1fUkVT
RVQyLCB2ZW5kb3Itc3BlY2lmaWMKPj4gcmVzZXQgd2hpY2ggY2FuIGhlbHAgYWxpZ24gdGhpcyBy
ZXF1aXJlbWVudC4gQWRkIHN1cHBvcnQgZm9yIFBTQ0kKPj4gU1lTVEVNX1JFU0VUMiwgdmVuZG9y
LXNwZWNpZmljIHJlc2V0cyBhbmQgYWxpZ24gdGhlIGltcGxlbWVudGF0aW9uCj4+IHRvIGFsbG93
IHVzZXItc3BhY2UgaW5pdGlhdGVkIHJlYm9vdHMgdG8gdHJpZ2dlciB0aGVzZSByZXNldHMuCj4+
Cj4+IEludHJvZHVjZSBhIGxhdGVfaW5pdGNhbGwgdG8gcmVnaXN0ZXIgUFNDSSB2ZW5kb3Itc3Bl
Y2lmaWMgcmVzZXRzCj4+IGFzIHJlYm9vdC1tb2RlIGFyZ3VtZW50cyBsaWtlIHJlc2V0X3R5cGUg
YW5kIGNvb2tpZS4gRm9yIGEgU29DCj4+IHdoZXJlLCBQU0NJIHZlbmRvci1zcGVjaWZpYyBzeXN0
ZW1fcmVzZXQyIGlzIHN1cHBvcnRlZCwgdGhlCj4+IGFwcHJvcHJpYXRlIHZhbHVlIGdldHMgZmls
bGVkIHRvIHJlc2V0X3R5cGUgYW5kIGNvb2tpZSBkdXJpbmcKPj4gdGhpcyByZWJvb3QtbW9kZSBo
b29rIHJlZ2lzdHJhdGlvbi4gSWYgdGhlIHNlY3VyZSBmaXJtd2FyZQo+PiBzdXBwb3J0cyBQU0NJ
IHN5c3RlbV9yZXNldDIsIHJlc3RhcnQgbm90aWZpZXIgd2lsbCBtYWtlIHNlY3VyZQo+PiBjYWxs
IHRvIHRyaWdnZXIgYXBwcm9wcmlhdGUgcmVxdWVzdGVkIHJlc2V0IHR5cGUuCj4+Cj4+IEJ5IHVz
aW5nIHRoZSBhYm92ZSBpbXBsZW1lbnRhdGlvbiwgdXNlc3BhY2Ugd2lsbCBiZSBhYmxlIHRvIGlz
c3VlCj4+IHN1Y2ggcmVzZXRzIHVzaW5nIHRoZSByZWJvb3QoKSBzeXN0ZW0gY2FsbCB3aXRoIHRo
ZSAiKmFyZyIKPj4gcGFyYW1ldGVyIGFzIGEgc3RyaW5nIGJhc2VkIGNvbW1hbmQuIFRoZSBjb21t
YW5kcyBjYW4gYmUgZGVmaW5lZAo+PiBpbiBQU0NJIGRldmljZSB0cmVlIG5vZGUgYXMg4oCccmVz
ZXQtdHlwZXPigJ0gYW5kIGFyZSBiYXNlZCBvbiB0aGUKPj4gcmVib290LW1vZGUgYmFzZWQgY29t
bWFuZHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoaXZlbmRyYSBQcmF0YXAgPHNoaXZlbmRyYS5w
cmF0YXBAb3NzLnF1YWxjb21tLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2Zpcm13YXJlL3BzY2kv
S2NvbmZpZyB8ICAxICsKPj4gIGRyaXZlcnMvZmlybXdhcmUvcHNjaS9wc2NpLmMgIHwgNTMgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+PiAgMiBmaWxlcyBjaGFu
Z2VkLCA1MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2Zpcm13YXJlL3BzY2kvS2NvbmZpZyBiL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9LY29u
ZmlnCj4+IGluZGV4IDk3OTQ0MTY4YjVlNjZhZWExZTM4YTdlYjJkNGNlZDgzNDhmY2U2NGIuLjlk
NjVmZTdiMDZhNjQyOWRlOGEyNmQwNmY5Mzg0ZTVjOTNmMzZlNWYgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZmlybXdhcmUvcHNjaS9LY29uZmlnCj4+ICsrKyBiL2RyaXZlcnMvZmlybXdhcmUvcHNj
aS9LY29uZmlnCj4+IEBAIC0xLDYgKzEsNyBAQAo+PiAgIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTIuMC1vbmx5Cj4+ICBjb25maWcgQVJNX1BTQ0lfRlcKPj4gIAlib29sCj4+ICsJc2Vs
ZWN0IFJFQk9PVF9NT0RFCj4+ICAKPj4gIGNvbmZpZyBBUk1fUFNDSV9DSEVDS0VSCj4+ICAJYm9v
bCAiQVJNIFBTQ0kgY2hlY2tlciIKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZmlybXdhcmUvcHNj
aS9wc2NpLmMgYi9kcml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaS5jCj4+IGluZGV4IDM4Y2ExOTBk
NGEyMmQ2ZTdlMGYwNjQyMGU4NDc4YTJiMGVjMmZlNmYuLjg3MjkzZjc4ZWQ4M2ViMzNiYTY3ZGVk
NzM3Mjg3Mjk4MTE2OTNlYTMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZmlybXdhcmUvcHNjaS9w
c2NpLmMKPj4gKysrIGIvZHJpdmVycy9maXJtd2FyZS9wc2NpL3BzY2kuYwo+PiBAQCAtMTMsMTAg
KzEzLDEzIEBACj4+ICAjaW5jbHVkZSA8bGludXgvZXJybm8uaD4KPj4gICNpbmNsdWRlIDxsaW51
eC9saW5rYWdlLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4gKyNpbmNsdWRlIDxsaW51
eC9vZl9wbGF0Zm9ybS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+
PiAgI2luY2x1ZGUgPGxpbnV4L3BtLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvcHJpbnRrLmg+Cj4+
ICAjaW5jbHVkZSA8bGludXgvcHNjaS5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3JlYm9vdC5oPgo+
PiArI2luY2x1ZGUgPGxpbnV4L3JlYm9vdC1tb2RlLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3N1c3BlbmQuaD4KPj4gIAo+PiBAQCAtNTEsNiArNTQs
MTQgQEAgc3RhdGljIGludCByZXNpZGVudF9jcHUgPSAtMTsKPj4gIHN0cnVjdCBwc2NpX29wZXJh
dGlvbnMgcHNjaV9vcHM7Cj4+ICBzdGF0aWMgZW51bSBhcm1fc21jY2NfY29uZHVpdCBwc2NpX2Nv
bmR1aXQgPSBTTUNDQ19DT05EVUlUX05PTkU7Cj4+ICAKPj4gK3N0cnVjdCBwc2NpX3ZlbmRvcl9z
eXNyZXNldDIgewo+PiArCXUzMiByZXNldF90eXBlOwo+PiArCXUzMiBjb29raWU7Cj4+ICsJYm9v
bCB2YWxpZDsKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBzdHJ1Y3QgcHNjaV92ZW5kb3Jfc3lzcmVz
ZXQyIHZlbmRvcl9yZXNldDsKPj4gKwo+PiAgYm9vbCBwc2NpX3Rvc19yZXNpZGVudF9vbihpbnQg
Y3B1KQo+PiAgewo+PiAgCXJldHVybiBjcHUgPT0gcmVzaWRlbnRfY3B1Owo+PiBAQCAtMzA5LDcg
KzMyMCwxNCBAQCBzdGF0aWMgaW50IGdldF9zZXRfY29uZHVpdF9tZXRob2QoY29uc3Qgc3RydWN0
IGRldmljZV9ub2RlICpucCkKPj4gIHN0YXRpYyBpbnQgcHNjaV9zeXNfcmVzZXQoc3RydWN0IG5v
dGlmaWVyX2Jsb2NrICpuYiwgdW5zaWduZWQgbG9uZyBhY3Rpb24sCj4+ICAJCQkgIHZvaWQgKmRh
dGEpCj4+ICB7Cj4+IC0JaWYgKChyZWJvb3RfbW9kZSA9PSBSRUJPT1RfV0FSTSB8fCByZWJvb3Rf
bW9kZSA9PSBSRUJPT1RfU09GVCkgJiYKPj4gKwlpZiAodmVuZG9yX3Jlc2V0LnZhbGlkICYmIHBz
Y2lfc3lzdGVtX3Jlc2V0Ml9zdXBwb3J0ZWQpIHsKPj4gKwkJLyoKPj4gKwkJICogaWYgdmVuZG9y
X3Jlc2V0LnZhbGlkIGlzIHRydWUgY2FsbCBzeXMgcmVzZXQyIHdpdGgKPj4gKwkJICogdGhlIHZl
bmRvcl9yZXNldChyZXNldF90eXBlIGFuZCBjb29raWUpLgo+PiArCQkgKi8KPiAKPiBUaGlzIGNv
bW1lbnQgcmVwZWF0cyB0aGUgbGluZSBhYm92ZSBhbmQgYmVsb3cgaXQgd2l0aG91dAo+IGJyaW5n
aW5nIGFkZGl0aW9uYWwgdmFsdWUKQWNrLiB3aWxsIHJlbW92ZSBvciBtb2RpZnkgdGhlIGNvbW1l
bnQgdG8gbWFrZSBtb3JlIHNlbnNlLgp0aGFua3MuCj4gCj4gS29ucmFkCj4gCj4+ICsJCWludm9r
ZV9wc2NpX2ZuKFBTQ0lfRk5fTkFUSVZFKDFfMSwgU1lTVEVNX1JFU0VUMiksIHZlbmRvcl9yZXNl
dC5yZXNldF90eXBlLAo+PiArCQkJICAgICAgIHZlbmRvcl9yZXNldC5jb29raWUsIDApOwo+PiAr
CX0gZWxzZSBpZiAoKHJlYm9vdF9tb2RlID09IFJFQk9PVF9XQVJNIHx8IHJlYm9vdF9tb2RlID09
IFJFQk9PVF9TT0ZUKSAmJgo+PiAgCSAgICBwc2NpX3N5c3RlbV9yZXNldDJfc3VwcG9ydGVkKSB7
Cj4+ICAJCS8qCj4+ICAJCSAqIHJlc2V0X3R5cGVbMzFdID0gMCAoYXJjaGl0ZWN0dXJhbCkKPj4g
QEAgLTU0Nyw2ICs1NjUsMzkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBwbGF0Zm9ybV9zdXNwZW5k
X29wcyBwc2NpX3N1c3BlbmRfb3BzID0gewo+PiAgCS5lbnRlciAgICAgICAgICA9IHBzY2lfc3lz
dGVtX3N1c3BlbmRfZW50ZXIsCj4+ICB9Owo+PiAgCj4+ICtzdGF0aWMgaW50IHBzY2lfc2V0X3Zl
bmRvcl9zeXNfcmVzZXQyKHN0cnVjdCByZWJvb3RfbW9kZV9kcml2ZXIgKnJlYm9vdCwKPj4gKwkJ
CQkgICAgICB1MzIgcmVzZXRfdHlwZSwgdTMyIGNvb2tpZSkKPj4gK3sKPj4gKwlpZiAocHNjaV9z
eXN0ZW1fcmVzZXQyX3N1cHBvcnRlZCkgewo+PiArCQl2ZW5kb3JfcmVzZXQucmVzZXRfdHlwZSA9
IFBTQ0lfMV8xX1JFU0VUX1RZUEVfVkVORE9SX1NUQVJUIHwgcmVzZXRfdHlwZTsKPj4gKwkJdmVu
ZG9yX3Jlc2V0LmNvb2tpZSA9IGNvb2tpZTsKPj4gKwkJdmVuZG9yX3Jlc2V0LnZhbGlkID0gdHJ1
ZTsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gTk9USUZZX0RPTkU7Cj4+ICt9Cj4+ICsKPj4gK3N0
YXRpYyBpbnQgX19pbml0IHBzY2lfaW5pdF92ZW5kb3JfcmVzZXQodm9pZCkKPj4gK3sKPj4gKwlz
dHJ1Y3QgcmVib290X21vZGVfZHJpdmVyICpyZWJvb3Q7Cj4+ICsJc3RydWN0IGRldmljZV9ub2Rl
ICpucDsKPj4gKwo+PiArCW5wID0gb2ZfZmluZF9ub2RlX2J5X25hbWUoTlVMTCwgInJlc2V0LXR5
cGVzIik7Cj4+ICsJaWYgKCFucCkKPj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4+ICsKPj4gKwlyZWJv
b3QgPSBremFsbG9jKHNpemVvZigqcmVib290KSwgR0ZQX0tFUk5FTCk7Cj4+ICsJaWYgKCFyZWJv
b3QpIHsKPj4gKwkJb2Zfbm9kZV9wdXQobnApOwo+PiArCQlyZXR1cm4gLUVOT01FTTsKPj4gKwl9
Cj4+ICsKPj4gKwlyZWJvb3QtPndyaXRlX3dpdGhfY29va2llID0gcHNjaV9zZXRfdmVuZG9yX3N5
c19yZXNldDI7Cj4+ICsKPj4gKwlyZXR1cm4gcmVib290X21vZGVfcmVnaXN0ZXIocmVib290LCBu
cCk7Cj4+ICt9Cj4+ICtsYXRlX2luaXRjYWxsKHBzY2lfaW5pdF92ZW5kb3JfcmVzZXQpCj4+ICsK
Pj4gIHN0YXRpYyB2b2lkIF9faW5pdCBwc2NpX2luaXRfc3lzdGVtX3Jlc2V0Mih2b2lkKQo+PiAg
ewo+PiAgCWludCByZXQ7Cj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
