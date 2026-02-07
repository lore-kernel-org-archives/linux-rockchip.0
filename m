Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 532A2EE0AF1
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 21:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLomGG/3HK5ickIK0H6XwYSpO/ypksXo9lkFQ565CeY=; b=ScPyQ5Mrf6R1xJ
	riRwObS/qWra8NIjT7H3dUrlZddXs2SP/gDlcgEEnAPR4+RKvXtaF5c1qhO26I/TbD+6wJK4tD9GG
	k7U5PRQ7gtFW67I/Ly7w+9S1TxG3t1p1NDOsHqzC2Jc1mMTRdfRrq9w6Xb8utWyYspjbl7Q2nO9YB
	kz7eP8mhxASjLjR7WJXruGnR07kKXB8EDPnr6zZQbdrfkzK0q5rEIt09g1ntrifovZMkAhaF7csKO
	G1HklJdV9nmMThFwtaMqx+J8BXCZJyftTSXVY1QKk/LzMoo2pzuSwZVQaGl7nriPyoa0acEVMhQh8
	g+3PA3CdmYsipWYViB7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vopWF-0000000CltX-1RXr;
	Sat, 07 Feb 2026 21:07:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vopWC-0000000Clsl-259X
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 21:07:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6174ch2m1050589
	for <linux-rockchip@lists.infradead.org>; Sat, 7 Feb 2026 21:07:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NLkQmVLBvyNbBHmHiDKvVsOWyByazQVf9dvs1Gy7bqY=; b=YP+DvK3FZhuJp1AK
	ht9wFsanQyhIjfCHJCX0nL+3StQ+Dt0uU1Bc3gACOaX1aVgpS/EiR9Y/g0W8QrVw
	7Fj1q7bPRwJ9i0mT+M9wO7otjMR6nG7NAQBulKiPQCaFKD3PYTpCTW1HULNH5BwM
	TOVN5aIxRiEdYZ+fffqc6EB2SYV9JxgJ0zJamqLDUuHBy4jkLdR477DgXpAKjjgJ
	ISVM/7y2OtHuKzE+jGw9vi5PkjUZ75BoFmx2rzgI7i+FEXHlfuGMt+AS8uqdsWGr
	lsUEWKnKBIwIbv2MISd/Ylpmu9w/oWYjOAsh62j9ekbD/TbdTBWzEGkervWI581v
	k1tDJw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xj19a6n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 21:07:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5e166fb75so1007432685a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 13:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770498421; x=1771103221; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NLkQmVLBvyNbBHmHiDKvVsOWyByazQVf9dvs1Gy7bqY=;
        b=XP+bD6J7bL0f8yDb2tewB2IGZcfj3Kfea7lNA29Vkmd0Gcg9AA+6VFlnCZG2pmbBDH
         6rOIYJTg4aaziQLOBwODL2TdSX24x9Y5HvnzjuVtFaysldD/SKKpObMtfARfftnZQuiA
         7TrUFsp9LCTjmrBtIWtkyViwMOjE/Rq2g6O0SnrAza8k6qEu2HhOk9YfOfqBygeBPsrh
         DoF07OvXuv7+tEYvNchUWipIynAPbbpauHtHAv5v9YHi8cwpcNwJgPYrzEra/ibDmVAh
         G8L8wwihxTGxdVw70mlZQjzhtFIHF67HCkLwH+tH+6jbanoSUjvJjnD1HrrkCFU5Rf/U
         i4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770498421; x=1771103221;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NLkQmVLBvyNbBHmHiDKvVsOWyByazQVf9dvs1Gy7bqY=;
        b=P6Gj8PCwDDV3eXP14e5tHxGXk33BZS5FJFdgU5z/BWdFDmC8W/BNV6wVTWG23usXT+
         L5j3bH4i1e9mbX1yB6WchNGxhSepW1XkCeJe1/DUps0GQdyrtwYCyV+qFJ5NOFt6fOOX
         Weiiy5KcMpxed/DL+Dbk/5W6Vku9nLccZMbczkoClxPQjbQUNAxLldnI8iU4fl7mEyOr
         3HKcfOKGWTmQbv7iFeZynwYwEd+kpD92q9gH+B/YUwC5GIRHQr5I17c8LR3PpYtmTKqj
         lBBooaZ8fJj9Ycedu9lTrjLTVS5sQjvQuHEcqDtWkJrI9IamRTss5n4GW5HDpbPTfhtq
         6tKw==
X-Forwarded-Encrypted: i=1; AJvYcCUIEzhrkevCDZFtJaF3ZkGKV/dwtSHGG1WLnlP+syTsuFsFpzBnXMRxFWBMa++A9fT3c3YMmR79d+xTjNUoNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YypFb1bi2ka0l78A+VSXY1FQhcvSNZn8EDIJSXtPJDdO7Cle+Dq
	uCDon0h8eJTTuhDn/gzVWMo9Ntee0ruJLMAVeSgn12tNa3H7ybuVFqLi4o50kmQx0kqLr+4Oygm
	EVmj9rLvYpVW+v+zWBt9GIc3fgBzEVngdZRiefvW/NARtTLybSWIN9DawZwEtWUMQvStLdh2DJN
	s=
X-Gm-Gg: AZuq6aI/4uFiHcE5nZN1GYQj0bpJ08EMatjVqkQHDvKzTjS99WG96mMc7YpmvU+JgUz
	upGJ0zMRkSMerJyqBtdpZFeKFVop+dolZ79IsFE/CUad9frrkLWHxeZJQtytJhezY5tgZArYq4a
	2IEzu+39EZDfg/qxPMDFKicB0NfoCEaeX592ATfK3xtT9DudMhooCnvKXo2yauL8AVbWwJRpd1K
	8vVH0/70JRB+M8+lP9yBZCAG18YZiOygyWN/L1TxkVL6IhISl5eTBigDlltS6+pqY8c7Y4+RP7k
	BhpRRas/IQ1vU/k+CDnSwf9FSVjTurg+ZjBEfwv3xRlSesfiPa3TY/yBJ+7NlrXrkQUZ5sJ9YHj
	4LmAx8n/Ii7XVMBb6W7KwvqfHcc/IUGS/dwFecQ==
X-Received: by 2002:a05:620a:46a1:b0:8c9:ea1c:f21a with SMTP id af79cd13be357-8caef40967cmr778037285a.9.1770498420687;
        Sat, 07 Feb 2026 13:07:00 -0800 (PST)
X-Received: by 2002:a05:620a:46a1:b0:8c9:ea1c:f21a with SMTP id af79cd13be357-8caef40967cmr778035185a.9.1770498420227;
        Sat, 07 Feb 2026 13:07:00 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296b25d5sm15948755f8f.2.2026.02.07.13.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Feb 2026 13:06:59 -0800 (PST)
Message-ID: <5d7ef1c7-1d37-4ff5-8aab-ec4b70cea4ca@oss.qualcomm.com>
Date: Sat, 7 Feb 2026 22:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: rockchip: Add RV1103B
 compatible
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: jonas@kwiboo.se, Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Fabio Estevam <festevam@nabladev.com>, linusw@kernel.org,
        Fabio Estevam <festevam@gmail.com>
References: <20260207130642.2833312-1-festevam@gmail.com>
 <cadee46d-589b-4833-8650-691f7a0f8321@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <cadee46d-589b-4833-8650-691f7a0f8321@kernel.org>
X-Proofpoint-GUID: MF1Yf-UE9Xi3Y27OOMRy9mcSQOVFCqpy
X-Proofpoint-ORIG-GUID: MF1Yf-UE9Xi3Y27OOMRy9mcSQOVFCqpy
X-Authority-Analysis: v=2.4 cv=F/tat6hN c=1 sm=1 tr=0 ts=6987a975 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Zk3OmFfbAAAA:8 a=p-LfKV-GAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=69EAbJreAAAA:8 a=UqCG9HQmAAAA:8 a=2o1m50Tkw6fHcJrSExoA:9 a=QEXdDO2ut3YA:10
 a=fTqvnDP52ccA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=97BuGM4RKn6GwmfqMd6i:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA3MDE3NSBTYWx0ZWRfX1KYaCbyURVzp
 NfDXRGRVmh2k5PXbyHxsVC1AREWtquGqSIeImc4hr3xtyMinFJvwxau7D2e+8Wq+VsIBAPpFDv9
 oG3NT0ztzNEV9v2+6ATh6jZhCdeYbqK1+/i17bM+S3KkpdPafFdtV6yDIbPRjHXcm3nrtXoMA2d
 DxsXG9lE0zWvnzT1+1dgaNcdnhRXhkMV+iFcTCMPdrbLDFNQux2DnIM5U+dsqLjlK9jY8fsZILc
 BFT5W/moIrgcyJnx43vI2CsLLZJAGoQEv+ngg9h9f4UdEYH41qpeCtpbRJSP2S2RLx6e3/I0Av7
 /SioNS3avt0/OuTMc7ScR6ohn93YTRj3WdBg/+3JSARbivkdCyDK+R6agECtkpJUA9sUGygjXy+
 YSgh6FTXgVagghVvSTUN/zR7YucW6h9+QzpGROiHJF3nMbo8biYNkAiOgohkt2KViDbM5wTeyd0
 AwA8YBbaLSrHK0wusig==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-07_01,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602070175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_130704_675407_3B3EA390 
X-CRM114-Status: GOOD (  14.07  )
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

On 07/02/2026 19:37, Krzysztof Kozlowski wrote:
> On 07/02/2026 14:06, Fabio Estevam wrote:
>> From: Fabio Estevam <festevam@nabladev.com>
>>
>> Document the compatible string for the RV1103B SoC.
>>
>> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
>> ---
>> Changes since v1:
>>  - None
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


Jonas,

FYI, as you are a maintainer, it seems your provider is blocking
kernel.org, so my email bounced:

<jonas@kwiboo.se>: host
    65cfe723d4a24d862c1ddb1ee54a60.pamx1.hotmail.com[52.101.42.8] said: 550
    5.7.1 Unfortunately, messages from [172.105.4.254] weren't sent. Please
    contact your Internet service provider since part of their network is on
    our block list (S3140). You can also refer your provider to
    http://mail.live.com/mail/troubleshooting.aspx#errors. [Name=Protocol
    Filter Agent][AGT=PFA][MxId=11BCC1D39AD7E160]
    [CO1PEPF000044F2.namprd05.prod.outlook.com 2026-02-07T18:37:25.857Z
    08DE60E9D47B9C8B] (in reply to MAIL FROM command)

172.105.4.254 is kernel.org.

Konstantin knows that it's difficult to send to @gmail and @outlook.com,
and probably already spends way too much time on this... Well, if you
are using outlook, as the trace points, I suggest abandon it.


Sidenote,
We talked with Konstantin on IRC and to mitigate it I moved my setup
away from Gmail, because both - Google/Gmail and Microsoft/Outlook -
probably should be considered as evil and non-cooperative email
providers. The migration will cost me few bucks but more important quite
a bit of time, so I understand not everyone is willing to do that.

I think maintainers/reviewers should soon revise their email setups and
do not rely on direct receive on email.

Solution is to switch to @linux.dev emails or receive emails via
lei/lore or korgalore.

In the long time we will not be able to use excuse "I did not receive
the email, even though you addressed it correctly".

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
