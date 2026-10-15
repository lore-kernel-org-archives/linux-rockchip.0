Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22034CC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 09:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4LJCLbqClWmmvAkZ0EebCzVdP+eJHio8IF/clcaS6E=; b=noKgjmaHsHzwN9
	ldfbiKp3fNaYeyJZ4BIfOMxRmmFgTrmwvCNY3yZfh4UlYR1NT4UZpQdqwGTLXv92RqOsZG3W0TDnw
	+OsrI2iEtv4PTAzsYUBpJdvHnvCqY1F2pH+RtFVwOD012phmaAxFZJehOLzc6hxsINocAs1yEUJgQ
	sc76LoojC7Xwj7VW0vC42yMnWa7GzlCKuOUXZpbGIsR3eoWd2SjTgq9lc1FxvRPPf+brt2jNzgGFm
	3IAxDa/ZkESb9mKRviiLqzcvh0rP2RvMLDZbmFXcnXF9FVwCVA5LTz3WJ8McifUCyYLYumgAeT5iM
	G6vQohDBexOUMsQLu1Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI4k-0000000HKbt-1gvR;
	Thu, 15 Oct 2026 09:48:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI4h-0000000HKaW-3w6m
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 09:48:37 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69F9jThX2809295
	for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 09:48:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m3KAG7YDGqOBR2D8Zn+sxc9jTExC3PMBl+koNYY0A4Q=; b=PYQ2LI9aj27depOZ
	qeweAXNBoA1cgejsFBYuNOalTEdQi3dhHBovBh4X5s67yygNgxEewsmXMGVxJwUJ
	xknMYhgUc0U7Sl1gvwmfoSE5dAGNJJuDkn+GDtdTh7un98iVQ654iXublSoIG3Sg
	f8/PFJQdbcAqm40e55coyKkeZVOK6GRgywvAcUQXGRBcvkXlnuBLxfiHkaHOdsz1
	wmwCWbaM+/YW1xU8d9Nq/H2ax0JHCw5413mffdzYSGHYgbysfsd7RDtp7UYVhM9L
	wNHziNWZ6WJxj9qi4gJBZqjatGt/8HL8VCV/ZVmkfN3Qytu6KTQuq4NVby86xgfi
	1zT+xg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4han54swk1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 09:48:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91b89618384so6344986d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 02:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792057714; x=1792662514; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m3KAG7YDGqOBR2D8Zn+sxc9jTExC3PMBl+koNYY0A4Q=;
        b=JM/6MUG4lsxwHUss9MLFJYAQbPygn48G5iafPI95Yp2dqmvwPxtB/xrW5ubsW+eVua
         SimpYMDoBJpuvAiL0r+b5kT/TY8J5HUnuRffuP0DLyY0yeFwh946xDZzCA2YsIQBTu2u
         uhaJiI7JqtI98c4EFLqjg8LnrLs4np1bso1dZYJ6JCZxpNu5IapNy1YiUS0T7PViREZA
         A6NdtDGM1movQj9/qfGUh6URr3Y/m3UZyON4p+OSt6ZsuMF5OkUhbujv2cxNXn2o4cD7
         1cznDsR2uTqtZfDACdHkG/LYxShtIdHW9zhRmg+bbG2ipLBdzp6uD/xb8+oNxRbf7osG
         CSTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792057714; x=1792662514;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m3KAG7YDGqOBR2D8Zn+sxc9jTExC3PMBl+koNYY0A4Q=;
        b=XT4lCTxBhND1O+2UD1JePwgsXK5XFC2hk2312WWZbjkzPAuMxY6Byu8DO/VBQgYNRG
         3sY8jhKmxjW7dmuDkTCY/yur8EA8ebYLALsJJP+wqMwrVMjF95YyL1TGXTYIGYaZxcpi
         SHTk3nWMPN2cruAMw80oJYfjwu9jRtlIooi/Qp/2N8mDKNfruzvji36kCvTnEqbeLgnG
         nYxGKH3HctuYoZIlNdgvS35UWhE0/RBelahOmyDmtRhjKA0/y92vVJtww4M7B6Utx1k/
         zba98ruwTmmtjlDiFssqki3wy9b1/aU+H99NtTjldgYkACiwg6ZcpbBlx99KjxYw1SHK
         cxAg==
X-Forwarded-Encrypted: i=1; AKwUvBxRsZ1o74ks302PhqY7P7r+pAk/BE9P7mvm2Zt/aONOVwT55dUFhsr2TPEla3Y5HCUKUwVVGEcxTySZWVdrsA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKA5+NKleslB4XUBe6wGuL8HMvQ0LrAHJfk5BgepaRZmHamOj5w
	6mpslZJfR/9VQh7ICbiT7CeYp2wFoi0oido6bwAxPCTSu3DzmyUHyo+fK3BlLc6gp1UAEnGKab2
	FzNaJmn9IMPKQLigDphz//Ku66HFbqIjcaRltuOgh5m9C3Tr227chXxo2eqpcBN6wQXCbVgC54t
	0uTgBt06Q=
X-Gm-Gg: AYBFou3/6DdDhICncnZyPezsrYHFY/yNGeK+yuIZGIawS5Nl74MLQpxLA9YHyIJzRwu
	KFPwKfY68kU/lQ/wJHVN4yRJcQHAsOj2hNCPOToV4t/T7dU1q0LfwBJ2OFrJ2xJvt4C7dLRwyqA
	UdzbcnnyFdDTXiue6mnuxqKWTl8SI6Zo0ZqIPr6mccpIWDgwITi5Mqclf5xfuXo+ZvjcItisqGy
	eDVuq8hs/72LFVpjdN8lJVZknKR7U3iYfMs1HS0pqDLrPrbLTS4amJv0oG4nq6X5/R2AbOvl8hJ
	MnMqlmPMiwqOtl6A0giaWQc+T4YXgzeqDrNKJymfj5sO+1PTCy+k4W2Q8HIjYxoa5OsqA21f+87
	ANyiqi3M0TufnrJDunNsUGA==
X-Received: by 2002:a05:622a:507:b0:532:d67e:bc2e with SMTP id d75a77b69052e-5359f0634femr356797941cf.0.1792057714113;
        Thu, 15 Oct 2026 02:48:34 -0700 (PDT)
X-Received: by 2002:a05:622a:507:b0:532:d67e:bc2e with SMTP id d75a77b69052e-5359f0634femr356797601cf.0.1792057713501;
        Thu, 15 Oct 2026 02:48:33 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c3eda622246sm102601366b.70.2026.10.15.02.48.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2026 02:48:32 -0700 (PDT)
Message-ID: <812d0272-db2a-4dd4-8e6c-e66145af2db5@oss.qualcomm.com>
Date: Thu, 15 Oct 2026 11:48:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: Use DP AltMode defines
To: Sebastian Reichel <sre@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, kernel@collabora.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20261014-dp-altmode-dt-defines-v1-0-b657c9b6e4c3@collabora.com>
 <20261014-dp-altmode-dt-defines-v1-4-b657c9b6e4c3@collabora.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261014-dp-altmode-dt-defines-v1-4-b657c9b6e4c3@collabora.com>
X-Authority-Analysis: v=2.4 cv=RYQFmFtv c=1 sm=1 tr=0 ts=6ad0a172 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=C_hJBzH1aKR8969NbtkA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE1MDAzOCBTYWx0ZWRfX2+m9SeMhYmR9
 BRgofp4fPXNHkVd0n5BL+62Cw9QpUbwRVWdhidIG3V4BKZDahHqGnAEQwnogl1F6EH4dm0ynUFP
 T7RjvbGAPIHy757qsitZT+TAhpsf3yCki2AgC/GI0RsqgvttRtoIv83fVcxk0KUSjTsbRAahKFP
 kvgSlecnlFuDDKdrQ3VQO5hWEc83T/jkIcGKNNbtpWhEGppSkDQV8d4VvnZmOTXdCd3alCWIcDQ
 6j+tmJht5ZQuI9TaawLjIN1/c9xzClrGfoqcIhLXcLlQsxuiK/zl95HB4S3ACb8gHnQs0mkz1L4
 eszZlAl6SkZIZRZUPacGXCD3U1S4ylob6kUExt5FNifoMseVy4NraLCorYBbteen/VYNIMK42qi
 qxQxsdQC2MMnfF9Eramf4Ri+Syow5oOKEa/yQsN9L5ajZA1yPi4c6eVrioycr1r/UXwAv80NYl+
 VPSJhy9qtfrUYGMLlTA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE1MDAzOCBTYWx0ZWRfXzdJLEUPcybO7
 khD3C5zN979TmPUv5dCUpzaGhAAGnhqX6rFjrmgbtkejafecP9D2nekS8OcUwG6jhO3SnUtfL+k
 0ioZjTE5NVbB6qHTBnuQvexfxXIDeOk=
X-Proofpoint-GUID: VZ-uO1Hn9OvVPLNZ8bk0-vLhTh3wvQEN
X-Proofpoint-ORIG-GUID: VZ-uO1Hn9OvVPLNZ8bk0-vLhTh3wvQEN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-14_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610150038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_024836_099034_373F975F 
X-CRM114-Status: GOOD (  10.62  )
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

On 10/14/26 11:31 PM, Sebastian Reichel wrote:
> From: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Use the new USB-C DP AltMode defines for the SVID and the capabilities
> VDO to make the DTs more readable.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
