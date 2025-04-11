Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5D1C369A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 09:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgKLTgaXosbaoSyLHquU+jHO3WaW/bOVTTNJPh0YGt8=; b=gJgTIuiN52GHPT
	cLh6yUO75gLmiflSpernI3ETBv034QaPaWhRtq+bQt5JaXB9y159yRPyrXczdN05ijecboSv5kRY4
	XCd2QF7DfECSEFU893o/pkfq4Fc64c8M64Vyk32YXulJG74pR6ffzsvSZTIuaoURZa/Z6yK7gQr7P
	7a4q6kNNeL22BRJYxPV0SMl61jueVob4RW34x+dnP8RXpQHrBjfDiibAlWPayEHCl68yYbRKu+kbB
	VkRHiyYOvIV7XHMqDCoWSpSGuwWJ1NkeCBLSNnL75kboptq48GofNlhLIcVNje9ti2KORnuSXrR4F
	70Kc0wgEe16cK39KcxnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3AUa-0000000DA8B-1BsG;
	Fri, 11 Apr 2025 09:16:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3AUX-0000000DA5v-2FEM
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 09:16:06 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B4llgQ019725
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Apr 2025 09:16:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SdbE/DxPDX7mmNIDt0tfMeaCACq/2F5Z7OVDEZCEKFI=; b=CaBRntvbdhZ+mLK+
	32w3o9t6//xksqnuukljgPuRd7Hq+WALFw/v5QZG5GddIFAhyBhORz3cozSk7+H/
	Mk7Z+K4RMDSnWXxpPUbMnYjPNsYUSJpPTQctEPWdd8Pk5ph2c2j6Du4s/VBxtavM
	veEDpkd2Zx5eNPaDorHFNXTWfJsdkrfGIxOj7FsErkptHEPU0y0/wGjPf23WuxPL
	mHCM5CPWie6RqW9Y9j6ZYzI9+IL0NBjEJvCJLVRZzKCBoULFNZIEbxLHzR06SWlr
	rv1LM9yqps4Z1nPCWdYbu0LlFB7366avWO8WAyMph4z2uOmWQRlM0LXz3zBj5h5N
	HG5GQQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrt1qx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Apr 2025 09:16:03 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6ead1d6fd54so2184436d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Apr 2025 02:16:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744362962; x=1744967762;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SdbE/DxPDX7mmNIDt0tfMeaCACq/2F5Z7OVDEZCEKFI=;
        b=rxxsxQlWCFLkEpYlvIxTBQm0VdgRp/7H7BD4I3c/sMGKkED737R0rtlZN5HHgNKKtt
         spHG3z9FqShjz6NiT66bER+j1bRnn6WPMHSR3XM4bqGJor+c9OT/T7hMnsr/iLa18p3B
         FBXxvQXYsou22htfcohCscj4OOoUHDa/NoWGAmHa8dlnPEV5h3pnG1gWwiZvXGvKUnyz
         SC16/zIZpzgXjTTA+IySUfIz/l9MJR5DoKj9o2BSRLJGkpiG2E+KrB/0Bx+8F0KextDK
         BfbQVT/GOrvbngF683ZdY9DJAvK1DASeV7uOeJo42a8NJnJY3d/r9J2LOM+pKUk85Hwi
         +sWw==
X-Forwarded-Encrypted: i=1; AJvYcCX4j0suv3lCQI8wmAHzmhe9C3aF7TT+pFuBo3J0lwpJko2vVleBOOKioqx0HJVxTjVdeyO11BWDLZBmV+VUXg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4BGIUG2dZ1KTuj6qQYvYMh4LJBiFHOlcOJSHz0q8JbXcJsfpe
	hV5VO92dny9QDJ2LVJHxnaauDA4KyaXGNcgbGQV8MJdbaqsygLEcoBuDZFSrtg+WvtztiBRmO+Z
	ss8TKvKDpdj+cmcbR7unm2bHo221ognVn4VEFcyRMrsSN9ZsYggjqleYbExa9yzeQRkYv6r8=
X-Gm-Gg: ASbGncstHxKeSPz3IPsmmavJ0N1jfzFqz3DzPwPSq4mSb/G0BZ0Tcom3D1z62g1H4R/
	tBkuW66VL3AaRVTDA7zSW6BWijM0CabuXSV6izBqKcseYHbPGI7tR9V+ZiIyS8h8oVynHS+25wa
	J6u9XjFDgnrynjL1z7AhC/QA+pgLB6+JDTB/L8/aFefqBkfR/feC4FaHQUOc7lK3+XQ4AWDojL5
	GnoBhDteH/CNmc24iB0AjOxOuFFCESgwsWqwylBbpWmZ+Sxi1YG0MMMSB3Ku9TG6m8PhoXTWtuk
	pohtgIv1QJNG7Sqiw4d0+cBqHgYr1yopF4kKn/MlF8y3VHdRmm4dhjbdKQNdyFXDZQ==
X-Received: by 2002:a05:6214:21a7:b0:6e8:fa58:85fc with SMTP id 6a1803df08f44-6f283b06981mr4226116d6.3.1744362962486;
        Fri, 11 Apr 2025 02:16:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1S3Lj2+VP6zkrr/KAvVwoc07b2Dhiowu/+1L4K8SRDlWx9F5wmlXB5hv0kwshKe1D92mPDw==
X-Received: by 2002:a05:6214:21a7:b0:6e8:fa58:85fc with SMTP id 6a1803df08f44-6f283b06981mr4225926d6.3.1744362962091;
        Fri, 11 Apr 2025 02:16:02 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccd2c4sm406829166b.129.2025.04.11.02.15.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 02:16:01 -0700 (PDT)
Message-ID: <088891de-cff9-4cbe-81d4-f94bf09df61d@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 11:15:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/17] arm64: dts: qcom: msm8939: Fix CPU node
 "enable-method" property dependencies
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>, Conor Dooley <conor@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
        linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
        linux-renesas-soc@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
 <20250410-dt-cpu-schema-v2-5-63d7dc9ddd0a@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250410-dt-cpu-schema-v2-5-63d7dc9ddd0a@kernel.org>
X-Proofpoint-ORIG-GUID: WBB1ifg8_hfuhV6Z9mLdKDt4riPelvXf
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f8ddd3 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Rt0Z8iD2R8SC1h9hphoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: WBB1ifg8_hfuhV6Z9mLdKDt4riPelvXf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 mlxlogscore=769 bulkscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_021605_693292_2E056C6D 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/10/25 5:47 PM, Rob Herring (Arm) wrote:
> The "spin-table" enable-method requires "cpu-release-addr" property,
> so add a dummy entry. It is assumed the bootloader will fill in the
> correct values.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
