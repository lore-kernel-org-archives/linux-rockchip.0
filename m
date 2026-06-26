Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F38BCDE002
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNqoKSZLOWbkVSHeR/ZZ4Ma7dRuyzpDrkvz4hP2ouUs=; b=lWD/14kCe9hPBi
	MvWwKSm3512rf/4U6aR0kPLcebUpG6R/kbYXqa1/zuertDK1F++6y2/QUztHrBtX4wLE3gVR6kXBN
	g7JHLsohPdYVbr05rj1j3hlRUjAlAMHdg5LmaK7xKovpSmaF7k/atyH2JlXSdSF6AQNvH1+5m6ZgJ
	8Fn2MBpiEZBI7gicspnSTMP+r87oUTvJ7gumZm1eempBzMx3vo2eBWYwG8L+/7MUzBKstzz1VHieT
	wEoYoKUraRD8daMt5NnsJJuaB1b+k4VAZfVUGAZ+MPK/Soj5l+lLIyF53ICNB3JEXwDVrN0nVINVm
	i3g/3ytDOfV2HztKXpHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5hs-0000000BJFs-0x5s;
	Fri, 26 Jun 2026 12:30:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5hp-0000000BJEo-0KE1
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 12:30:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65QAcox53384293
	for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 12:30:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TTDIPGRvRpFqA1xlxZmp5V6MW6Dxq2QB3L1ZJBk3cjE=; b=NYO5Z8JHU0kLnVak
	jecJFGLGhVpR0hbUX6zKhS2mOwvu3eBGD2sS45i+Hav3qp+2t6pE+pFZ2XtSONov
	X4c4W7LDRDpqtWVzmdsTGslFZpTS3BKqmO4LGnnqliXgF1JEa/WwjDEU7/Ezrmid
	/9p6KuxaPEvOhSqpUkA5GVy8m8qG2l9rSHKtxrQJuoHEKNtgMtDVMTwqW8k0h4C4
	z8xYfav8q16kpDuWAc/V7zyurzFDGBPLE82T94+UU8v0ss6Q1pUZpwbdgr6iiq1G
	xZWHKsoWiebuVTcUtPxGLoPpb+LE34GExlbxY4iBcjVil9s5noXrKfGOTvviRZNV
	fOp4EA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f19m3uq44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 12:30:48 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5bd6a5aa467so47510e0c.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 05:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782477047; x=1783081847; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TTDIPGRvRpFqA1xlxZmp5V6MW6Dxq2QB3L1ZJBk3cjE=;
        b=MB/HEQdkIYHu6vWZkTNE7MquujuXZYb7TJDmL/3XHZEYvpTud3V7XTpzZA+gN0+kA0
         3BTQsE2pRkjM7n9YLxaVc1hOfen3HKMvfF1iRWOBNQAl861dtWCO0hWdPjbkvPRSoLX7
         0VGD5MQKZLCjQ4lNNUn3ua6akGG9MUPJeI5TCWWNip3kKwk8m8s6Zq5v1MkAa4+bgimo
         HKTXaSKsnhCm74w2DLqYVvpRxxFN3+XgOAdzzWMJgHisAnTIT5I3UaVJtAr+/sPqUYn2
         y8o9R9lqbVuI5ysTrQPplmbWRtBMI792HuEuw3ZHfBoi5tLU+RMVEQ8mQkU8HgDM0OPO
         ESrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782477047; x=1783081847;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TTDIPGRvRpFqA1xlxZmp5V6MW6Dxq2QB3L1ZJBk3cjE=;
        b=IJpPSHewtElQvozsOTTLbRFbr6Dh1b/DaEMvyBUevRDsoc6Xg0kzUegnptmpRXr4H5
         7UIO1PcOGlwUKaeX98HdjhFpuHE7+KppvLBCH7LMgH1qOTRdhhUCxHKJO7UEntBTGe60
         yLVUYmFC7Lfvni0G5c015sZZ2YJUjSX2tBFfEMJ6F2vpY2yJvLb4iqT+GGIi36gUnizr
         60Mdq33dfl8PB9mdt6AwaMnUeEHiuN8281fpBaTTWWa2iXgbhNO5u1DZwWZY0zK7qFEd
         53OlkaWBfEXA7clM0NeVnw8YsZzXNTwlZ9MDXEuEHzeH8eiw1k97h9rEldA2NrI/pflL
         ahtw==
X-Forwarded-Encrypted: i=1; AHgh+RrvbYzzmr4zSb4y+D1K46vBWJJjAuFYkN7opc5yduMLG/ddcLhnm8L3KGvZeqgJj8I2XXlVKM3jrNW+f7OgSw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCHGMvOp8VMKPeREtHSIdJaDhhJ2sJLEe0TQrsLhmt55ywq1ud
	mKGPP7/GbKxKri+qQrEqaGS+2qszgvBamP/zL/TVglxEKaLJGR88mDIV1X059I5tn0SuzP0cYwp
	DJ0hc1q5+Izfa+nfKgR/rFZSZkvg6Y3ydUT+BTv73xMRYXJALfLT05OxLAZc/BpCK6Q+glSNZFR
	k=
X-Gm-Gg: AfdE7clPbslchZ8PmzYB78vl7i1mwmsbUnwMR0wduzT8g/So37J0NQrilaSkOy8HokF
	IwimRwroq5PML6FUE+cCgqOrkiTJDIpF43Z4AGdE0b7ejaOf2jUBcofv39nRMq98eC0qa12a7Cz
	YPc9MZxZlCEr8PsymLbOwLfe/surpIB23C0VGJ7XufHLKLCVYTavOPXNzpUtnk4GoaRnxLjJixu
	D+Oc4r6kQUBgQnWwg8zsfO5YxtXeU7V+oqH5ar6UUND0c7FWk3nI6uH3bPauF5OwkYySG86Woud
	+m+ZgLY9kv1tXHaJ2oqApNs+uWDuPV1bcgEUB1fpCR2tlTuOsj4hU6wwpXGGMKL1nE/kGwsGANT
	2e4xvnIynVy6mQh6XAk2EksTgHp+I3hhIFWk=
X-Received: by 2002:a05:6102:50aa:b0:634:11ac:12ca with SMTP id ada2fe7eead31-734362a85b9mr1107947137.5.1782477047285;
        Fri, 26 Jun 2026 05:30:47 -0700 (PDT)
X-Received: by 2002:a05:6102:50aa:b0:634:11ac:12ca with SMTP id ada2fe7eead31-734362a85b9mr1107909137.5.1782477046707;
        Fri, 26 Jun 2026 05:30:46 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c11fbbe5f73sm325659766b.17.2026.06.26.05.30.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2026 05:30:45 -0700 (PDT)
Message-ID: <b74b3123-367e-4f22-a910-a2ceccebdf9a@oss.qualcomm.com>
Date: Fri, 26 Jun 2026 14:30:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: Convert to new media orientation
 definitions
To: Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Jimmy Su <jimmy.su@intel.com>, Matthias Fend <matthias.fend@emfend.at>,
        Mikhail Rudenko <mike.rudenko@gmail.com>,
        Daniel Scally <dan.scally@ideasonboard.com>,
        Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        Michael Riesch <michael.riesch@collabora.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
        Sylvain Petinot <sylvain.petinot@foss.st.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Martin Kepplinger <martin.kepplinger@puri.sm>,
        Quentin Schulz <quentin.schulz@theobroma-systems.com>,
        Tommaso Merciai <tomm.merciai@gmail.com>,
        Svyatoslav Ryhel <clamor95@gmail.com>,
        Richard Acayan <mailingradian@gmail.com>,
        Thierry Reding <thierry.reding@kernel.org>,
        Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux@ew.tq-group.com, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com>
 <20260626-kbingham-orientation-v2-6-47178be927b4@ideasonboard.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260626-kbingham-orientation-v2-6-47178be927b4@ideasonboard.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI2MDEwMiBTYWx0ZWRfX2OoMSR9H1zHs
 ZfLGrg9bWBW/vIfHrd6rnsdXmvqKcpy0J5cWnGOJ4cOOIXL3uVOn246q+2x6iym3VKZeM3SvPPt
 4qNgTvi4H9q3FcKpg1+2+s8g6ynZ4O4=
X-Proofpoint-GUID: U4yYWxdg7VyspIZpQ7BbyUDGVfOxFKvG
X-Proofpoint-ORIG-GUID: U4yYWxdg7VyspIZpQ7BbyUDGVfOxFKvG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI2MDEwMiBTYWx0ZWRfX9AIN0xcs7cmj
 i8hXDEhIjjorWMe4zQbNZyCENPZatgyc2FVcGogAHfqJMzjhFZpOj+p04FCH4jm47HysohE2xCj
 MXrNcYA58F5QDojKEbfZHpfBT+oymkemJMD2r98L/A7EBMJNBjRP32v5iofeac+Tp6JQyvXv+UY
 wf2YGHgpaulQ81SAAjzqkjn3GXGdPHWwngSrombAPmLT9ON/7WsCwN2RqF2d6qOHFDpAPwLCmzJ
 szAsPZLl3CgOpG4KQZJOr6/DUGp+0grHL/Z+jTivOfIymgHuo+wfwoXa4TARpizhl2Ff0ZdpBrg
 r7ubwPWwrNqmjacFZ2jSVoqejune7hIYOe75y9cY21pWNGDYszMUOAIx4RsVqb85dUUtxyQzPOd
 b+sYnzeXBl0FxQSzruNioGmTBQGGOlw1KhJFCWRrNfZ/I2/qsAi2Rwj1BBMYoM8Ld+SEuPoV8c+
 6ptpDnypruQ3Aq3IdIA==
X-Authority-Analysis: v=2.4 cv=Vv0Txe2n c=1 sm=1 tr=0 ts=6a3e70f8 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=P1BnusSwAAAA:8 a=EUspDBNiAAAA:8 a=O-OUeni-LN-QTous_GcA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-26_03,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 clxscore=1011 priorityscore=1501
 adultscore=0 malwarescore=0 impostorscore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606260102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_053049_133878_B5844795 
X-CRM114-Status: GOOD (  10.26  )
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

On 6/26/26 2:07 PM, Kieran Bingham wrote:
> The orientation property for video interface devices now has definitions
> to prevent hardcoded integer values for the enum options.
> 
> Update the users throughout the qualcomm device trees to use the new
> definitions.
> 
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> ---

Finally someone shaved this yak, thank you

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
