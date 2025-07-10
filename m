Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DFFC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 19:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktjy6cmSAZSvkg/LN2AFFWokOKLnpEhImzbJMe3BAPk=; b=ei6lt+CjxTI+JM
	9b2WlIvFNtBx2THa9b/9qcRgnuw/Cv353CrDP0R25OQLhf3oNstrR57KfOTtd8F1iyOD7tpMGZ2F4
	5L8z/D3an6chY/6PedWdJdXWxB3qpM4ym8QGDaBJpFo5++m4txPl1itzCieU9CkZSB5c9Vuvd5FRL
	/5Sl4ByJ65PAdHwV3JfcMFXajxmt3+hC8KIFGVEXtFbZHHa5AmYdfRYi7h1ECzkh+Q9wzpIDgMQug
	O/UNYQgwdLjjZV7590C73bHImZFKiAoyggbD1MXv7puvDV+Jyj+S/x78aTXQ/ap8SAUTxl+j3cQ8u
	6aFBDFH1+8gY31axEwdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZwi6-0000000CmuL-3v63;
	Thu, 10 Jul 2025 19:13:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZuK1-0000000CTwg-4BWF
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:40:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A8xKb4023135
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 16:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rBTG/80ituUWOqNVevH8q7s7UN0DFkGF9rfsMiylJyc=; b=A3IfB04rdOspZSph
	YfFzQX8nIIovs+lWueNxyWlgP0RIrMq7RwTogh9qJ9i724N7FYDXh8aU/ejIfbG2
	xjmdPsQJffatVi5fEWbxy5e8aWRYZz5JjFjOuA7eFep/CFlf1zdHhJLu/ebTMQnT
	RSlrEJmwpQhG99lYI5FTf4mpdxYtuxrgC3ghmyVFYCjFa+5bMqlhNB6WUCEynjrQ
	NXfkWeLbD4++UpWrrGWOH2KjLUohhLlNxOylWG6/c9YzD8k8iEUjrKpiP0XXArwd
	L54M4aqokyLNcSdHy40oNPu5BPdqnglCn/Us3mufkO2X0wcILJDff0c5qJSAA4kO
	IoBUxw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smbenq2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 16:40:33 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-748d96b974cso1046610b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:40:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752165632; x=1752770432;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rBTG/80ituUWOqNVevH8q7s7UN0DFkGF9rfsMiylJyc=;
        b=S/EfQf2Y6EkHdSK496vSq1dlg21ZWJ0t+HXivFzNdwTLK7Aqm69aTDoQHysgRaObfA
         SjYlSnAhFz3Q27mjQkzVfT5PUbMuoX75+aM1scLecYLyEVfUSIkt5RJD9P3A2WgiGNEQ
         rrXs+vzmFSgtvkzYM0ODJaV/KA2GarTxHBt6di/lBpdzjF8RDhJCdyZO3gRsW0Ld0hLh
         eO6B0maefhP56Jz1dwlS2lF/tqIwIZVS0OCj9sCKe7WYRSpgJLF9O4AprsdfoMr4obVb
         3gJJ+n3sNFpJwMSdSgMFX3RL0sh9F7hjoL9hAF5XEo2TcYIlvFUDrj8aALBk3JLEeIdT
         T4yg==
X-Forwarded-Encrypted: i=1; AJvYcCXKj2FT7uCRy+U590anROnsH3Ddn5r43DBJ/NXJP3oy72Wojf2e6Esq76S2oMXddDJBc+GI/AeB+BX1x2vVBw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyIU8BPLJC/ic7hpvID4LyFK0VlriPJdDv+svCvmW8XHcJbctb/
	+JXrtZ9Jjz+1f/j8msWXEC0b5vvLDm410RTr+LicHlNKMdQyfVeg8nivXL05lDBRt626EypqBWM
	0rNuiu8Lzv4gKmsdGx7PDrD7spdabYaUJC1gi/8GjmBtFcv2b+CkOvqllw1zS86b9r/1uZVHDAC
	8=
X-Gm-Gg: ASbGnctW09z88dZJmd7vnskWUIQaIcJQeVSdKeGsUqLbBkXWCuONCrRyaOp0j5C6S+T
	rw3KoqsujI6aJEROb15V2VUKtxd9jUtxorLfHY+m6PyvXPo/C6q6xwAPtc3aH9hFL/6xNpsY0MA
	9z7/k32+ts+intAXfLcxhFlHTAUs4MHMbU9u3+OwaFiAzkh+UE6kqH2ySLygidFBggPVrCK2dlo
	2ckxeMLilGk5WE4Qo6izOrCJGJncZvEAGEtAiJbCyqYsWuWxMXlqhrXwtt1/au08EGd2Goql7/W
	y5azm95exLdvLuDLM3Bve74af/L/JNf2A7FOHQTAaM/Skmugjna7GDZo
X-Received: by 2002:a05:6a21:6b0d:b0:21f:4ecc:11ab with SMTP id adf61e73a8af0-2311e53470dmr106335637.9.1752165632435;
        Thu, 10 Jul 2025 09:40:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHydOYOyhSewH56uQb9WOivpcBapw9P+fJbdPXdbKRn77lJVLdsVx7hajLvC2ylRUs5DaV0Pg==
X-Received: by 2002:a05:6a21:6b0d:b0:21f:4ecc:11ab with SMTP id adf61e73a8af0-2311e53470dmr106276637.9.1752165631958;
        Thu, 10 Jul 2025 09:40:31 -0700 (PDT)
Received: from [192.168.29.115] ([49.43.229.152])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f8f878sm2576220b3a.166.2025.07.10.09.40.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 09:40:31 -0700 (PDT)
Message-ID: <23323fac-7ff7-0179-3cf3-99bc070f8778@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 22:10:17 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 03/10] power: reset: reboot-mode: Add optional cookie
 argument
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>,
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
        Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        =?UTF-8?Q?Andr=c3=a9_Draszik?= <andre.draszik@linaro.org>,
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
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-3-b2d3b882be85@oss.qualcomm.com>
 <12c9a69c-7e27-4d43-9b1b-542e735176ec@app.fastmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <12c9a69c-7e27-4d43-9b1b-542e735176ec@app.fastmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDE0MiBTYWx0ZWRfX5SAZtpnnbVpm
 VfLz4OfL7XH3bqbfUFBrkFEaU0XAA0dBvaevi108qss6V1HnOiYyd/B+brhVsx0swWdrFdbgIIw
 cXbfZ6KQ402NVLuJxRQsL0oZaUPTN72Foa2VdPPlV11Nix4kIWfaZ6bM/OoYelAvewsGFjhFRIB
 DKqxZb3+rUJ76K7amFSGUDTP7wipjKvQtQldZolmoUJHTSNXQ4HeuYQw5SjLhfLEAYr5MTeLJIO
 sKyYIJjOjWBX4MR11uzVIJuXzvsiKGDiBYgyLSOl1IPUq8qccnCeLs8QU8HjepmDdtCmZyZf0q9
 GagLXxmM5N2KUqLMQfWy/wIC7HpyF1VivFfyUSqGIXwBXe3DGBV82Uv55iWSzk3jCcFxs8iMCTM
 SXA6Haw1EQQy9hjwnkM/HIPzvAFQniFRkuAfGDVsK+0tTF+j0u7QtCrWmYH0HezO1Xj3YJcN
X-Proofpoint-GUID: wPVU8w3mCgy6zgC98PaXsOmaG2ikr6II
X-Proofpoint-ORIG-GUID: wPVU8w3mCgy6zgC98PaXsOmaG2ikr6II
X-Authority-Analysis: v=2.4 cv=VpQjA/2n c=1 sm=1 tr=0 ts=686fed01 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=8g6h00HoWaIZ3EdQG8aEvw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=sDLv-8AjHc169E3Bnz4A:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_094034_057724_35F1DD2F 
X-CRM114-Status: GOOD (  17.60  )
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



On 7/10/2025 8:59 PM, Arnd Bergmann wrote:
> On Thu, Jul 10, 2025, at 11:15, Shivendra Pratap wrote:
> 
>>  static int reboot_mode_notify(struct notifier_block *this,
>>  			      unsigned long mode, void *cmd)
>>  {
>>  	struct reboot_mode_driver *reboot;
>> -	unsigned int magic;
>> +	struct mode_info *info;
>>
>>  	reboot = container_of(this, struct reboot_mode_driver, reboot_notifier);
>> -	magic = get_reboot_mode_magic(reboot, cmd);
>> -	if (magic)
>> -		reboot->write(reboot, magic);
>> +	info = get_reboot_mode_info(reboot, cmd);
>> +	if (info) {
>> +		if (info->is_cookie_valid) {
>> +			reboot->write_with_cookie(reboot, info->magic, info->cookie);
>> +		} else {
>> +			if (info->magic)
>> +				reboot->write(reboot, info->magic);
>> +		}
>> +	}
> 
> I don't quite see why we need two possible callbacks here, could
> this be done with a single '->write' callback when you either
> add another argument, or extend the existing 'magic' value
> to 64 bit?
> 
> There are only a couple of drivers that provide this callback,
> so it should be easy to just change them all at once.
yes. Three driver. Ok. Will modify these driver's write function
prototype to accommodate the second argument.

thanks.
> 
>      Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
